import { createRouter, createWebHistory } from 'vue-router';
import Login from '../components/Login.vue'; // Import Login component
import Register from '../components/Register.vue'; // Import Register component
import NotFound from '../views/NotFound.vue';
import { useAuthStore } from '../stores/auth'; // Import the auth store

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'login', // Set login as the default front page
      component: Login,
  
    },
    {
      path: '/register',
      name: 'register',
      component: Register,
  
    },
    {
      path: '/main',
      name: 'main',
      component: () => import('../views/Main.vue'), // Lazy loading
 
    },
    {
      path: '/:pathMatch(.*)*', // Catch-all route
      name: 'NotFound',
 
    },
  ],
});

// Navigation guard for protected routes
router.beforeEach((to, from, next) => {
 
});

export default router;
