<!-- /frontend/src/components/Register.vue -->
<template>
    <div class="register-container">
      <h2>Register</h2>
      <form @submit.prevent="handleRegister">
        <div class="form-group">
          <label for="name">Name:</label>
          <input
            type="text"
            id="name"
            v-model="name"
            required
            placeholder="Enter your name"
          />
        </div>
  
        <div class="form-group">
          <label for="email">Email:</label>
          <input
            type="email"
            id="email"
            v-model="email"
            required
            placeholder="Enter your email"
          />
        </div>
  
        <div class="form-group">
          <label for="password">Password:</label>
          <input
            type="password"
            id="password"
            v-model="password"
            required
            placeholder="Create a password"
          />
        </div>
  
        <div class="form-group">
          <label for="confirm-password">Confirm Password:</label>
          <input
            type="password"
            id="confirm-password"
            v-model="confirmPassword"
            required
            placeholder="Confirm your password"
          />
        </div>
  
        <button type="submit">Register</button>
      </form>
      <p>Already have an account? <router-link to="/">Login here</router-link></p>
    </div>
  </template>
  
  <script>
 import { useUserStore } from '@/stores/user';
  export default {
    name: 'register-item',
    data() {
      return {
        user:{
        name: '',
        email: '',
        password: '',
        confirmPassword: '',
        }
      };
    },
    setup() {
    const userStore = useUserStore();

    const registerUser = async (userData) => {
      try {
        await userStore.register(userData); // Assuming you define a `register` action in your store
        alert('Registration successful! Redirecting to login...');
      } catch (error) {
        alert('Registration failed. Please try again.');
      }
    };

    return {
      registerUser,
    };
  },
  methods: {
    async handleRegister() {
      if (this.password !== this.confirmPassword) {
        alert("Passwords don't match");
        return;
      }
      const userData = {
        user: {
          name: this.name,
          email: this.email,
          password: this.password,
        },
      };
      try {
        const response = await fetch('http://localhost:3003/api/v1/register', {
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
  