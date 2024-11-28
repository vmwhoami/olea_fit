<template>
  <div class="login-container">
    <h2>Login</h2>
    <form @submit.prevent="login">
      <div class="form-group">
        <label for="username">Username:</label>
        <input
          type="text"
          id="username"
          v-model="username"
          required
          placeholder="Enter your username"
        />
      </div>

      <div class="form-group">
        <label for="password">Password:</label>
        <input
          type="password"
          id="password"
          v-model="password"
          required
          placeholder="Enter your password"
        />
      </div>

      <button type="submit">Login</button>
    </form>
    <p>Don't have an account? <router-link to="/register">Register here</router-link></p>
  </div>
</template>


<script>
import { ref } from 'vue';
import apiClient from '../services/api'; // Your reusable API service
import { useAuthStore } from '../stores/auth';

export default {
  setup() {
    const username = ref('');
    const password = ref('');
    const authStore = useAuthStore();

    const login = async () => {
      try {
        // Send login request to the backend
        const response = await apiClient.post('/api/v1/auth/login', {
          username: username.value,
          password: password.value,
        });

        // Store the returned token in the auth store
        authStore.setToken(response.data.token);
        alert('Login successful!');
      } catch (error) {
        if (error.response?.status === 401) {
          alert('Invalid username or password. Please try again.');
        } else {
          alert('Something went wrong. Please try again later.');
        }
      }
    };

    return { username, password, login };
  },
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