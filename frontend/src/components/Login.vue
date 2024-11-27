<template>
  <div class="login-container">
    <h2>Username</h2>
    <form @submit.prevent="handleSubmit">
      <div class="form-group">
        <label for="username">Username:</label>
        <input type="username" id="username" v-model="Username" required placeholder="Enter your Username" />
      </div>

      <div class="form-group">
        <label for="password">Password:</label>
        <input type="password" id="password" v-model="password" required placeholder="Enter your password" />
      </div>

      <button type="submit">Login</button>
    </form>
    <p>Don't have an account? <router-link to="/register">Register here</router-link></p>
  </div>
</template>

<script>

import { useUserStore } from '@/stores/user';
export default {
  name: 'login-item',

  data() {
    return {
      username: '',
      password: '',
    };
  },
  setup() {
    const userStore = useUserStore();

    const login = async (userData) => {
      try {
        await userStore.login(userData); // Assuming you define a `register` action in your store
        alert('Registration successful! Redirecting to login...');
      } catch (error) {
        alert('Registration failed. Please try again.');
      }
    };

    return {
      login,
    };
  },
  // setup() {
  // // Access the counter store
  // const user = useUserStore();
  // return { user };

  // },
  actions: {

  },
  methods: {
    async handleLogin() {

      const userData = {
        user: {
          name: this.name,
          password: this.password,
        },
      };
      try {
        const response = await fetch('http://localhost:3000/api/v1/register', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify(userData),
        });

        if (!response.ok) {
          const error = await response.json();
          alert(`Error: ${error.message || 'Registration failed'}`);
          return;
        }

        const data = await response.json();
        console.log('Registration successful:', data);
        alert('Registration successful! Please log in.');
      } catch (error) {
        console.error('Error during registration:', error);
        alert('An error occurred. Please try again later.');
      }
    },
  },
  // methods: {
  //   handleSubmit() {
  //     // Placeholder login logic - replace with API call as needed
  //     console.log('Login attempt with:', this.username, this.password);

  //   },

  // },
};
</script>

<style scoped>
.login-container {
  max-width: 400px;
  margin: 0 auto;
  padding: 2rem;
  border: 1px solid #ddd;
  border-radius: 8px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  text-align: center;
}

h2 {
  margin-bottom: 1.5rem;
  color: #333;
}

.form-group {
  margin-bottom: 1rem;
  text-align: left;
}

label {
  display: block;
  margin-bottom: 0.5rem;
  color: #555;
}

input {
  width: 100%;
  padding: 0.5rem;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

button {
  width: 100%;
  padding: 0.75rem;
  background-color: #4CAF50;
  color: white;
  border: none;
  border-radius: 4px;
  font-size: 1rem;
  cursor: pointer;
  margin-top: 1rem;
}

button:hover {
  background-color: #45a049;
}

p {
  margin-top: 1.5rem;
  color: #555;
}
</style>