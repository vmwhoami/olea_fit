<template>
  <div class="font-sans text-gray-700 pt-20">
    <IntroMain />

    <TrainingPrograms />
    <AboutSection />
    <GroupClass />
    <TrainerPostSection />

    <PersonalShop />

 
    <ClientSay/>
 

    <!-- Trainer Personal App -->
    <section class="bg-gray-50 py-12">
      <div class="container mx-auto px-6 flex flex-col md:flex-row items-center">
        <!-- Left column: text + social icons + store buttons -->
        <div class="md:w-1/2 mb-8 md:mb-0">
          <h2 class="text-2xl md:text-3xl font-bold mb-2">Trainer Personal App</h2>
          <p class="text-gray-500 mb-6">
            “If it doesn’t challenge you, it won’t change you” is my Slogan and I will
            help you be the best you can be I’m Emma Jones.
          </p>
          <div class="flex items-center space-x-4 mb-4">
            <span class="text-gray-600 font-semibold">Social Network</span>
            <a href="#" class="hover:text-gray-800">F</a>
            <a href="#" class="hover:text-gray-800">T</a>
            <a href="#" class="hover:text-gray-800">I</a>
            <a href="#" class="hover:text-gray-800">N</a>
          </div>
          <div class="flex space-x-4">
            <button class="bg-black text-white px-4 py-2 rounded hover:bg-gray-800">
              Get it on Google Play
            </button>
            <button class="bg-black text-white px-4 py-2 rounded hover:bg-gray-800">
              Get it on App Store
            </button>
          </div>
        </div>

        <!-- Right column: phone mockup placeholder + stats -->
        <div class="md:w-1/2 flex justify-center relative">
          <!-- Phone mockup -->
          <div class="w-64 h-96 bg-gray-200 rounded-md flex items-center justify-center">
            <span class="text-gray-500">[Phone Mockup]</span>
          </div>
          <!-- Floating stats (example) -->
          <div class="absolute top-8 right-0 bg-white rounded-md shadow p-2 text-sm">
            <p class="font-bold">4.5</p>
            <p class="text-gray-500">Rate in Review</p>
          </div>
          <div class="absolute top-24 right-0 bg-white rounded-md shadow p-2 text-sm">
            <p class="font-bold">+130</p>
            <p class="text-gray-500">VideoTutorial</p>
          </div>
          <div class="absolute bottom-8 right-0 bg-white rounded-md shadow p-2 text-sm">
            <p class="font-bold">12/h</p>
            <p class="text-gray-500">PerWeek</p>
          </div>
        </div>
      </div>
    </section>

    <!-- Footer -->
    <footer class="bg-white border-t border-gray-200 py-6">
      <div class="container mx-auto px-6 text-center">
        <!-- Menu links -->
        <ul class="flex justify-center space-x-4 mb-4 text-gray-600 text-sm md:text-base">
          <li><a href="#" class="hover:text-gray-900">Home Page</a></li>
          <li><a href="#" class="hover:text-gray-900">Class Time</a></li>
          <li><a href="#" class="hover:text-gray-900">Review</a></li>
          <li><a href="#" class="hover:text-gray-900">Last Post</a></li>
          <li><a href="#" class="hover:text-gray-900">Contact</a></li>
        </ul>
        <p class="text-gray-500 text-sm">&copy;2021 AvidWorkouts. All rights reserved.</p>
      </div>
    </footer>
  </div>
</template>

<script setup>
import IntroMain from "@/components/mainPage/IntroMain.vue";
import TrainingPrograms from "@/components/mainPage/TrainingPrograms.vue";
import AboutSection from "@/components/mainPage/AboutSection.vue";
import GroupClass from "@/components/mainPage/GroupClass.vue";
import TrainerPostSection from "@/components/mainPage/TrainerPostSection.vue";
import PersonalShop from "@/components/mainPage/PersonalShop.vue";
import ClientSay from "@/components/mainPage/ClientSay.vue";
</script>
