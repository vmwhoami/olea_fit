import { createRouter, createWebHistory } from 'vue-router';
import Login from '../components/Login.vue'; // Import Login component
import Register from '../components/Register.vue'; // Import Register component
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
      path: '/about',
      name: 'about',
      component: () => import('../views/AboutView.vue'), // Lazy loading
      meta: { requiresAuth: true }, // This route is protected
    },
  ],
});

// Navigation guard for protected routes
router.beforeEach((to, from, next) => {
  const authStore = useAuthStore();
  if (to.meta.requiresAuth && !authStore.token) {
    next({ name: 'login' }); // Redirect to login if not authenticated
  } else {
    next(); // Proceed to the next route
  }
});

export default router;
