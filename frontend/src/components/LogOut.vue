<template>
    <div class="logout-container">
        <h2>logout</h2>
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
    name: 'logout-item',

    setup() {
        const handleLogOut = async () => {

        };

        return {

        };
    },
};
</script>