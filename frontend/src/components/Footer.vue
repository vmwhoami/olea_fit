<template>
  <footer class="bg-white border-t border-gray-200 py-6">
    <div class="container mx-auto px-6 text-center">
      <ul class="flex justify-center space-x-4 mb-4 text-gray-600 text-sm md:text-base">
        <li><a href="#" class="hover:text-gray-900">Home Page</a></li>
        <li><a href="#" class="hover:text-gray-900">Class Time</a></li>
        <li><a href="#" class="hover:text-gray-900">Review</a></li>
        <li><a href="#" class="hover:text-gray-900">Last Post</a></li>
        <li><a href="#" class="hover:text-gray-900">Contact</a></li>
      </ul>
      <p class="text-gray-500 text-sm">
        &copy;vmwhoami {{ currentYerar }}. All rights reserved.
      </p>
    </div>
  </footer>
</template>

<script setup>
const currentYerar = new Date().getFullYear();
</script>
