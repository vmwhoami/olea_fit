import "vuetify/styles"; // Global CSS
import { createVuetify } from "vuetify";
import { aliases, mdi } from "vuetify/iconsets/mdi";
 

const vuetify = createVuetify({
  icons: {
    defaultSet: "mdi",
    aliases,
    sets: {
      mdi,
    },
  },
});

export default {
  install(app) {
    app.use(vuetify);
  },
};