<template>
   <!-- <header
    class="flex-no-wrap fixed top-0 z-10 flex w-full items-center justify-between bg-[#FBFBFB] py-2 shadow-md shadow-black/5 dark:bg-neutral-600 dark:shadow-black/10 lg:flex-wrap lg:justify-start lg:py-4"
  >
    <a href="#" class="flex items-center space-x-3 rtl:space-x-reverse">
      <icon-olea-fit-logo myFill="#b4b4b4" />
    </a>
      <nav>
        <ul class="flex space-x-4 text-gray-600 text-sm md:text-base">
          <li>
          <router-link to="/" class="hover:text-gray-900" aria-current="page">Home Page</router-link>
       
          </li>
          <li><a href="#" class="hover:text-gray-900">Class Time</a></li>
          <li><a href="#" class="hover:text-gray-900">Review</a></li>
          <li><a href="#" class="hover:text-gray-900">Last Post</a></li>
          <li><a href="#" class="hover:text-gray-900">About</a></li>
          <li><a href="#" class="hover:text-gray-900">Contact</a></li>
        </ul>
      </nav>
    </header> -->



    
  <nav
    class="flex-no-wrap fixed top-0 z-10 flex w-full items-center justify-between bg-[#FBFBFB] py-2 shadow-md shadow-black/5 dark:bg-neutral-600 dark:shadow-black/10 lg:flex-wrap lg:justify-start lg:py-4"
  >
    <a href="#" class="flex items-center space-x-3 rtl:space-x-reverse">
      <icon-olea-fit-logo myFill="#b4b4b4" />
    </a>
    <button
      data-collapse-toggle="navbar-dropdown"
      type="button"
      class="inline-flex items-center p-2 w-10 h-10 justify-center text-sm text-gray-500 rounded-lg md:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600"
      aria-controls="navbar-dropdown"
      aria-expanded="false"
    >
      <span class="sr-only">Open main menu</span>
      <svg
        class="w-5 h-5"
        aria-hidden="true"
        xmlns="http://www.w3.org/2000/svg"
        fill="none"
        viewBox="0 0 17 14"
      >
        <path
          stroke="currentColor"
          stroke-linecap="round"
          stroke-linejoin="round"
          stroke-width="2"
          d="M1 1h15M1 7h15M1 13h15"
        />
      </svg>
    </button>
    <div class="hidden w-full md:block md:w-auto" id="navbar-dropdown">
      <ul
        class="flex flex-col font-medium p-4 md:p-0 mt-4 border border-gray-100 rounded-lg bg-gray-50 md:space-x-8 rtl:space-x-reverse md:flex-row md:mt-0 md:border-0 md:bg-white dark:bg-gray-800 md:dark:bg-gray-900 dark:border-gray-700"
      >
        <li>
          <router-link
            to="/"
            class="block py-2 px-3 text-white bg-blue-700 rounded-sm md:bg-transparent md:text-blue-700 md:p-0 md:dark:text-blue-500 dark:bg-blue-600 md:dark:bg-transparent"
            aria-current="page"
            >Home</router-link
          >
        </li>
        <li>
          <router-link
            to="/about"
            class="block py-2 px-3 text-white bg-blue-700 rounded-sm md:bg-transparent md:text-blue-700 md:p-0 md:dark:text-blue-500 dark:bg-blue-600 md:dark:bg-transparent"
            aria-current="page"
            >About</router-link
          >
        </li>

        <li>
          <router-link
            to="/movies"
            class="block py-2 px-3 text-white bg-blue-700 rounded-sm md:bg-transparent md:text-blue-700 md:p-0 md:dark:text-blue-500 dark:bg-blue-600 md:dark:bg-transparent"
            aria-current="page"
            >Movies</router-link
          >
        </li>
        <li>
          <router-link
            to="/main"
            class="block py-2 px-3 text-white bg-blue-700 rounded-sm md:bg-transparent md:text-blue-700 md:p-0 md:dark:text-blue-500 dark:bg-blue-600 md:dark:bg-transparent"
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
</script>
