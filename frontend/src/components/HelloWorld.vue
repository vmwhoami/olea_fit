<template>
  <div class="greetings">
   <h1>You are here</h1>
  </div>
</template>

<script setup>
 

defineProps({
  msg: {
    type: String,
    required: true
  }
})
</script>
<style scoped>
 
</style>
