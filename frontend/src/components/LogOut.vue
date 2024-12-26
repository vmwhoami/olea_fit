<template>
    <button @click="logout">Logout</button>
</template>

<script>
import { useAuthStore } from '@/stores/auth';

export default {
    name: 'Logout',

    setup() {

        const authStore = useAuthStore();

        const logout = () => {
            authStore.clearToken();
            window.location.href = '/'; // Redirect to login page
        };

        return {
            logout,
        };
    },
};
</script>

<style scoped>
button {
    padding: 0.5rem 1rem;
    background-color: #f44336;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

button:hover {
    background-color: #d32f2f;
}
</style>