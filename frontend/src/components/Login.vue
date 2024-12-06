<template>
  <div class="login-container">
    <h2>Login</h2>
    <form @submit.prevent="login">
      <div class="form-group">
        <label for="email">Email:</label>
        <input type="text" id="email" v-model="email" required placeholder="Enter your email" />
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
import { ref } from 'vue';
import { useUserStore } from '@/stores/user';
import { useAuthStore } from '@/stores/auth';
import { toast } from 'vue3-toastify';
import 'vue3-toastify/dist/index.css';

export default {
  setup() {
    const email = ref('');
    const password = ref('');
    const userStore = useUserStore();
    const useAuth = useAuthStore();

    const notify = (message) => {
      toast(message, {
        autoClose: 2000,
      });
    };

    const login = async () => {
      try {
        // Send login request to the backend
        const response = await fetch('http://localhost:3000/api/v1/login', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({
            email: email.value, // Use email instead of email
            password: password.value,
          }),
        });

        if (!response.ok) {
          const error = await response.json();
          const errorMessage = error.message || 'Login failed';
          notify(`Error: ${errorMessage}`);
          return;
        }

        const data = await response.json();
        userStore.setUser(data.user); // Store user data in the store

        useAuth.setToken(data.jwt)
        notify('Loggein successful! Redirecting to main page...');
        window.location.href = '/main'; // Redirect to main page
      } catch (error) {
        console.error('Error during login:', error);
        notify('An error occurred. Please try again later.');
      }
    };

    return { email, password, login };
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
