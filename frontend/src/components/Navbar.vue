<template>
  <nav
    class="fixed top-0 flex w-full items-center py-2 dark:shadow-black/10 lg:flex-wrap lg:py-4"
  >
    <router-link
      to="/"
      class="block py-2 px-3 text-white rounded-sm md:bg-transparent md:text-blue-700 md:p-0 md:dark:text-blue-500 dark:bg-blue-600 md:dark:bg-transparent"
      aria-current="page"
      ><icon-olea-fit-logo myFill="#b4b4b4"
    /></router-link>

    <div class="hidden w-full md:block md:w-auto" id="navbar-dropdown">
      <ul
        class="flex flex-col font-medium p-4 md:p-0 mt-4 border border-gray-100 rounded-lg md:space-x-8 md:flex-row md:mt-0 md:border-0 dark:bg-gray-800 md:dark:bg-gray-900 dark:border-gray-700"
      >
        <li>
          <router-link
            to="/"
            class="block py-2 px-3 text-white rounded-sm md:bg-transparent md:text-blue-700 md:p-0 md:dark:text-blue-500 dark:bg-blue-600 md:dark:bg-transparent"
            aria-current="page"
            >Home</router-link
          >
        </li>
        <li>
          <router-link
            to="/about"
            class="block py-2 px-3 text-white rounded-sm md:bg-transparent md:text-blue-700 md:p-0 md:dark:text-blue-500 dark:bg-blue-600 md:dark:bg-transparent"
            aria-current="page"
            >About</router-link
          >
        </li>

        <li>
          <router-link
            to="/movies"
            class="block py-2 px-3 text-white rounded-sm md:bg-transparent md:text-blue-700 md:p-0 md:dark:text-blue-500 dark:bg-blue-600 md:dark:bg-transparent"
            aria-current="page"
            >Movies</router-link
          >
        </li>
        <li>
          <router-link
            to="/main"
            class="block py-2 px-3 text-white rounded-sm md:bg-transparent md:text-blue-700 md:p-0 md:dark:text-blue-500 dark:bg-blue-600 md:dark:bg-transparent"
            aria-current="page"
            >Main</router-link
          >
        </li>
      </ul>
    </div>
  </nav>
</template>

<script setup>
import IconOleaFitLogo from "@/assets/icons/IconOleaFitLogo.vue";
import IconBurger from "@/assets/icons/IconBurger.vue";
</script>
