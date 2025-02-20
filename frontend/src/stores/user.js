import { defineStore } from 'pinia';
import apiClient from '@/utils/api';

export const useUserStore = defineStore('user', {
  state: () => ({
    user: null,
  }),
  actions: {
    setUser(userData) {
      this.user = userData;
    },
    clearUser() {
      this.user = null;
    },

    setUserToLocalStorage(userData) {
      localStorage.setItem('user', JSON.stringify(userData));
    },

    clearUserFromLocalStorage() {
      localStorage.removeItem('user');
    },

    async fetchUser() {
      try {
        const response = await apiClient.get('/user');
        this.setUser(response.data);
        console.log('User fetched:', response.data);
      } catch (error) {
        console.error('Failed to fetch user:', error);
        throw error;
      }
    },
  },
});
