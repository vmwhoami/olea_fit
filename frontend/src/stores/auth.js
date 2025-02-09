import { defineStore } from 'pinia';

export const useAuthStore = defineStore('auth', {
  state: () => ({
    isLoggedIn: localStorage.getItem('isLoggedIn') === 'true',
     // Retrieve from localStorage
  }),
  actions: {
    login() {
      this.isLoggedIn = true;
      localStorage.setItem('isLoggedIn', 'true'); // Store in localStorage
    },
    logout() {
      this.isLoggedIn = false;
      localStorage.removeItem('isLoggedIn'); // Remove from localStorage
    },
  },
});

// SET TOKE NOT A FUNCTION so you need to se the token in the login function




// // 
// import { defineStore } from 'pinia';
// import apiClient from '@/utils/api';
// import { useUserStore } from '@/stores/user';

// export const useAuthStore = defineStore('auth', {
//     state: () => ({
//         isLoggedIn: null,
//         token: null, // Add token to the state
//     }),
//     actions: {
//         async login(credentials) {
//             try {
//                 const response = await apiClient.post('/login', credentials);
//                 const { jwt, user } = response.data;

//                 // Store JWT token and mark as logged in
//                 this.setToken(jwt); // Use setToken method
//                 this.isLoggedIn = true;

//                 // Set user data in the user store
//                 const userStore = useUserStore();
//                 userStore.setUser(user);

//                 return true; // Indicate success
//             } catch (error) {
//                 console.error('Login error:', error);
//                 this.logout();
//                 return false; // Indicate failure
//             }
//         },

//         setToken(token) {
//             this.token = token;
//             localStorage.setItem('token', token);
//         },


//         logout() {
//             console.log('Reached this part for some reason');
//             localStorage.removeItem('token');
//             this.token = null; // Clear token
//             this.isLoggedIn = false;

//             const userStore = useUserStore();
//             userStore.clearUser();
//         },
//     },
// });