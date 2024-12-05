import { defineStore } from 'pinia';

export const useAuthStore = defineStore('auth', {
    state: () => ({
        token: localStorage.getItem('token') || null,
    }),
    actions: {
        setToken(token) {
            this.token = token;
            localStorage.setItem('token', token);
        },
        clearToken() {
            this.token = null;
            this.user = null;
            localStorage.removeItem('token');
        },
        // setUser(userData) {
        //     this.user = userData;
        // },
        // async fetchUser() {
        //     try {
        //         const response = await fetch('/api/user', {
        //             headers: {
        //                 Authorization: `Bearer ${this.token}`,
        //             },
        //         });
        //         const data = await response.json();
        //         this.user = data;
        //     } catch (error) {
        //         console.error('Error fetching user:', error);
        //     }
        // },
    },
});
