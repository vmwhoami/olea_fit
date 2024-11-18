// src/stores/user.js
import { defineStore } from 'pinia';

export const useUserStore = defineStore('user', {
  state: () => ({
    user: null, // Object to hold user data
    isLoggedIn: false, // Login status
    token: null, // Auth token, if using JWT
  }),

  actions: {
    login(userData, token) {
      this.user = userData;
      this.token = token;
      this.isLoggedIn = true;
    },
    logout() {
      this.user = null;
      this.token = null;
      this.isLoggedIn = false;
    },
    async fetchUser() {
      try {
        const response = await fetch('/api/user', {
          headers: {
            Authorization: `Bearer ${this.token}`,
          },
        });
        const data = await response.json();
        this.user = data;
      } catch (error) {
        console.error('Error fetching user:', error);
      }
    },
  },
});
