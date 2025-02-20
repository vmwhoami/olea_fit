// routes.js
import { createRouter, createWebHistory } from "vue-router";

// Route components
const Login = () => import("@/views/Login.vue");
const Register = () => import("@/views/Register.vue");
const Home = () => import("@/views/Home.vue");
const About = () => import("@/views/About.vue");
const Movies = () => import("@/views/Movies.vue");
const Main = () => import("@/views/Main.vue");

const routes = [
  { 
    path: "/login",
    component: Login, 
    meta: { title: "Login" }
  },
  { 
    path: "/register", 
    component: Register, 
    meta: { title: "Register" }
  },
  { 
    path: "/", 
    component: Home, 
    meta: { title: "Home" }},
  { 
    path: "/about", 
    component: About, 
    meta: { title: "About" }},
  { 
    path: "/movies", 
    component: Movies, 
    meta: { title: "Movies" }},
  { 
    path: "/main", 
    component: Main, 
    meta: { title: "Main" }
 }];

const router = createRouter({
    history: createWebHistory(),
    routes,
});

export default router;