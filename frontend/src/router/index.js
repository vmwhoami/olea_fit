
import { createRouter, createWebHistory } from 'vue-router'
import Login from '../components/Login.vue' // Import your Login component
import Register from '../components/Register.vue' // Import your Register component

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'login',  // Set login as the default front page
      component: Login
    },
    {
      path: '/register',
      name: 'register',
      component: Register
    },
    {
      path: '/about',
      name: 'about',
      component: () => import('../views/AboutView.vue')
    },
    // Add other routes if needed
  ]
});

export default router;