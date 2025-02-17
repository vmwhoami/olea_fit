<template>
  <div>
    <nav v-if="!isLoggedIn">
      <router-link to="/">Login</router-link>
      <router-link to="/register">Register</router-link>
    </nav>
    <router-view></router-view>
    <Logout v-if="!!isLoggedIn" />
  </div>
</template>

<script setup>
import { RouterLink, RouterView } from 'vue-router';
import { useAuthStore } from './stores/auth';
import { computed } from 'vue'; // Import computed from Vue const 
import Logout from './components/LogOut.vue'
let authStore = useAuthStore();
const isLoggedIn = computed(() => authStore.isLoggedIn);
</script>