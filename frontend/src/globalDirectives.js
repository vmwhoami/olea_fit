import vClickOutside from "v-click-outside";

/**
 * You can register global components here and use them as a plugin in your main Vue instance
 */

const GlobalDirectives = {
  install(app) {
    app.directive("click-outside", vClickOutside.directive);
  },
};

export default GlobalDirectives;