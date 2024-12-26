import { defineStore } from 'pinia';
import apiClient from '@/utils/api';
import { useUserStore } from '@/stores/user';

export const useAuthStore = defineStore('auth', {
    state: () => ({
        isLoggedIn: false,
        token: null, // Add token to the state
    }),
    actions: {
        async login(credentials) {
            try {
                const response = await apiClient.post('/login', credentials);
                const { jwt, user } = response.data;

                // Store JWT token and mark as logged in
                this.setToken(jwt); // Use setToken method
                this.isLoggedIn = true;

                // Set user data in the user store
                const userStore = useUserStore();
                userStore.setUser(user);

                return true; // Indicate success
            } catch (error) {
                console.error('Login error:', error);
                this.logout();
                return false; // Indicate failure
            }
        },

        setToken(token) {
            this.token = token;
            localStorage.setItem('token', token);
        },

        logout() {
            localStorage.removeItem('token');
            this.token = null; // Clear token
            this.isLoggedIn = false;

            const userStore = useUserStore();
            userStore.clearUser();
        },
    },
});