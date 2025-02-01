<template>
  <div class="login-container">
    <h2>Login</h2>
    <form @submit.prevent="handleLogin">
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
import { useLogin } from '@/composables/useLogin'; // Import the useLogin composable
import { useUserStore } from '@/stores/user';
import { useAuthStore } from '@/stores/auth';

export default {
  name: 'login-item',

  setup() {
    const { email, password, notify, loginData } = useLogin();
    const userStore = useUserStore();
    const authStore = useAuthStore();

    const handleLogin = async () => {
      try {
        const data = await loginUser(loginData());
        userStore.setUser(data.user);
        userStore.setUserToLocalStorage(data.user)// Store user data in the store
        authStore.setToken(data.jwt);

        notify('Login successful! Redirecting to main page...');
        window.location.href = '/main'; // Redirect to main page
      } catch (error) {
        handleError(error);
      }
    };

    const handleError = (error) => {
      console.error('Error during login:', error);
      notify(`Error: ${error.message}`);
    };

    const loginUser = async (loginData) => {
      const response = await fetch(`${import.meta.env.VITE_API_BASE_URL}/api/v1/login`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(loginData),
      });

      if (!response.ok) {
        const error = await response.json();
        throw new Error(error.message || 'Login failed');
      }

      return response.json();
    };

    return {
      email,
      password,
      handleLogin,
    };
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
