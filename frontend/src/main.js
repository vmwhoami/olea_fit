import { createApp } from "vue";
import App from "./App.vue";
import routes from "@/router/index.js";

createApp(App).use(routes).mount("#app");