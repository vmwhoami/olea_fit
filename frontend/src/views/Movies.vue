<script setup>
import { ref, onMounted } from 'vue';
import MovieCard from '@/components/MovieCard.vue';
const movieList = ref([]);

onMounted(() => {
fetch('http://localhost:8000/Movies')
    .then(response => response.json())
    .then(apiMovies => { movieList.value = apiMovies; });
});
</script>

<template>
 <div>
  <div class="container mx-auto p-10">
  <h1 class="h1 ">Movies</h1>
   <div class="flex flex-wrap justify-center">
    <MovieCard v-for="movie in movieList" :key="movie.id" :movie="movie" />
   </div>
  </div>
 </div>
</template>

