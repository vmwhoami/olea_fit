<template>
  <div class="register-container">
    <h2>Register</h2>
    <form @submit.prevent="handleRegister">
      <div class="form-group">
        <label for="username">Username:</label>
        <input type="text" id="username" v-model="username" required placeholder="Enter your username" />
      </div>

      <div class="form-group">
        <label for="email">Email:</label>
        <input type="email" id="email" v-model="email" required placeholder="Enter your email" />
      </div>

      <div class="form-group">
        <label for="password">Password:</label>
        <input type="password" id="password" v-model="password" required placeholder="Create a password" />
      </div>

      <div class="form-group">
        <label for="confirm-password">Confirm Password:</label>
        <input type="password" id="confirm-password" v-model="confirmPassword" required
          placeholder="Confirm your password" />
      </div>

      <button type="submit">Register</button>
    </form>
    <p>Already have an account? <router-link to="/">Login here</router-link></p>
  </div>
</template>

<script>
import { ref } from 'vue';
import { useUserStore } from '@/stores/user';
import { useAuthStore } from '@/stores/auth';
import { toast } from 'vue3-toastify';
import 'vue3-toastify/dist/index.css';

export default {
  name: 'register-item',

  setup() {
    const username = ref('');
    const email = ref('');
    const password = ref('');
    const confirmPassword = ref('');
    const userStore = useUserStore();
    const useAuth = useAuthStore();

    const userData = () => ({
      user: {
        username: username.value,
        email: email.value,
        password: password.value,
      },
    });

    const notify = (message) => {
      toast(message, {
        autoClose: 2000,
      });
    };

    const handleRegister = async () => {
      if (password.value !== confirmPassword.value) {
        notify("Passwords don't match");
        return;
      }

      try {
        const response = await fetch('http://localhost:3000/api/v1/register', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify(userData()),
        });

        if (!response.ok) {
          const error = await response.json();
          const errorMessage = error.errors && error.errors.length > 0 ? error.errors[0] : 'Registration failed';

          notify(`${errorMessage}`);
          return;
        }

        const data = await response.json();
        userStore.setUser(data.user); // Store user data in the store
        useAuth.setToken(data.token)
        notify('Registration successful! Redirecting to main page...');
        window.location.href = '/main'; // Redirect to main page
      } catch (error) {
        console.error('Error during registration:', error);
        notify('An error occurred. Please try again later.');
      }
    };

    return {
      username,
      email,
      password,
      confirmPassword,
      notify,
      handleRegister,
    };
  },
};
</script>

<style scoped>
.register-container {
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
