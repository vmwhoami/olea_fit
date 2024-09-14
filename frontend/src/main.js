import { createApp } from "vue";
import { createRouter, createWebHistory } from "vue-router";
import App from "./App.vue"; // Ensure the correct file extension is used
import SocialSharing from 'vue-social-sharing';
import VueGitHubButtons from 'vue-github-buttons';
import 'vue-github-buttons/dist/vue-github-buttons.css';
// router setup
import routes from "./router"; 
// Plugins
import GlobalComponents from "./globalComponents";
import GlobalDirectives from "./globalDirectives";
import Notifications from "./components/NotificationPlugin";

// MaterialDashboard plugin

import vuetify from "./material-dashboard"; // Import your Vuetify setup
import Chartist from "chartist";

// configure router
const router = createRouter({
  history: createWebHistory(),
  routes,
  linkExactActiveClass: "nav-item active",
});

const app = createApp(App);

// Set global properties in Vue 3
app.config.globalProperties.$Chartist = Chartist;

// Use the necessary plugins
app.use(router);
app.use(MaterialDashboard);
app.use(GlobalComponents);
app.use(GlobalDirectives);
app.use(Notifications);
app.use(vuetify);
app.use(SocialSharing);
app.use(VueGitHubButtons, { useCache: true });
// Mount the app
app.mount("#app");
