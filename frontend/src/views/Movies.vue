<script setup>
import { ref, onMounted } from 'vue';
import MovieCard from '@/components/MovieCard.vue';
const movieList = ref([]);
const isLoading = ref(true);

onMounted(async () => {
    let result = await fetch('http://localhost:8000/movies')
    const response = await result.json();
    movieList.value = response;
    isLoading.value = false;
});
</script>

<template>
 <div>
  <div class="container mx-auto p-30">
  <h1 class="h1">Movies</h1>
  <div class="text-center" v-if="isLoading"><h2>Is loading...</h2></div>

   <div v-else class="grid w-full  grid-cols-3 flex-row justify-center gap-5 py-12">
    <MovieCard v-for="movie in movieList" :key="movie.id" :movie="movie" />
   </div>
  </div>
 </div>
</template>

