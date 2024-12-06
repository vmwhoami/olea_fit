import { defineStore } from 'pinia';

export const useAuthStore = defineStore('auth', {
    state: () => ({
        token: localStorage.getItem('token') || null,
    }),
    getters: {
        isLoggedIn: (state) => !!state.token,
    },
    actions: {
        setToken(token) {
            this.token = token;
            localStorage.setItem('token', token);
        },
        clearToken() {
            this.token = null;
            localStorage.removeItem('token');
        },
        async verifyToken() {
            if (!this.token) return false;

            try {
                const response = await fetch(`${import.meta.env.VITE_API_BASE_URL}/api/v1/verify-token`, {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json', 'Authorization': `Bearer ${this.token}` },
                });

                if (!response.ok) {
                    this.clearToken();
                    return false;
                }

                return true;
            } catch (error) {
                console.error('Error verifying token:', error);
                this.clearToken();
                return false;
            }
        },
    },
});
