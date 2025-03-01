<template>
  <div
    class="max-w-sm bg-white rounde-lg shadow-md dark:bg-gray-800 m-2"
    style="border-radius: 20px"
  >
    <div class="flex justify-center pt-3">
      <img
        :src="movie.poster"
        alt="poster"
        class="w-full h-64 object-cover"
        style="border-top-left-radius: 10px; border-top-right-radius: 10px"
      />
    </div>
    <div class="p-5">
      <h2 class="text-2x">{{ movie.name }}</h2>
      <p class="mt-2 text-sm text-gray-600 dark:text-gray-400">{{ movie.plot }}</p>
      <div class="grid grid-cols-3 gap-6">
        <div class="bg-gray-200 rounded-lg p-2">
          <h2>Year</h2>
          <p>
            {{ movie.year }}
          </p>
        </div>
        <div class="bg-red-200 rounded-lg p-2">
          <h2>Duration</h2>
          <p>
            {{ movie.duration }}
          </p>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
defineProps({
  movie: Object,
});
</script>
