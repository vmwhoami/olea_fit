<template>
  <div class="bg-gray-100 flex items-center justify-center min-h-screen">
    <div class="bg-white shadow-lg rounded-2xl p-8 max-w-md w-full text-center">
      <h2 class="text-3xl font-bold text-gray-800 mb-6">Welcome Back!</h2>
      <p class="text-gray-500 mb-4">Login to continue to your dashboard</p>

      <form>
        <div class="mb-4">
          <input
            type="email"
            placeholder="Email"
            class="w-full px-4 py-3 border rounded-lg focus:ring-2 focus:ring-blue-500 focus:outline-none"
          />
        </div>
        <div class="mb-4">
          <input
            type="password"
            placeholder="Password"
            class="w-full px-4 py-3 border rounded-lg focus:ring-2 focus:ring-blue-500 focus:outline-none"
          />
        </div>
        <div class="flex justify-between items-center mb-4">
          <label class="flex items-center space-x-2">
            <input type="checkbox" class="form-checkbox text-blue-500" />
            <span class="text-gray-600 text-sm">Remember me</span>
          </label>
          <a href="#" class="text-sm text-blue-500 hover:underline">Forgot Password?</a>
        </div>
        <button
          class="w-full bg-blue-600 text-white py-3 rounded-lg font-semibold hover:bg-blue-700 transition">
          Login
        </button>
      </form>

      <p class="text-gray-500 text-sm mt-4">
        Don't have an account?
        <router-link class="text-blue-500 hover:underline">Sign up </router-link>
      </p>
    </div>
  </div>
</template>

<script setup>
s;
</script>
