<template>
  <div class="font-sans text-gray-700 pt-20">
    <IntroMain />

    <TrainingPrograms />
    <AboutSection />
    <GroupClass />
    <TrainerPostSection />



    <!-- PersonalShop & Program Diet -->
    <section class="bg-gray-50 py-12">
      <div class="container mx-auto px-6 flex flex-col md:flex-row items-center">
        <!-- Text content -->
        <div class="md:w-1/2 md:pr-8 mb-8 md:mb-0">
          <h2 class="text-2xl md:text-3xl font-bold mb-4">
            Emmafit. <br class="hidden md:block" />
            PersonalShop & Program Diet
          </h2>
          <p class="text-gray-600 mb-6">
            Across USA and Canada, fitness athletes, professional athletes, competitive
            athletes, top athletes and anyone who wants to lose weight rely on the BODY
            ATTACK Sports Nutrition fitness shop as a supplier of sports nutrition,
            fitness products and diet products.
          </p>
          <button class="bg-black text-white px-4 py-2 rounded hover:bg-gray-800">
            Go to Shop
          </button>
        </div>

        <!-- Product image placeholder -->
        <div class="md:w-1/2 flex justify-center">
          <div
            class="w-80 h-64 bg-white rounded-md shadow-md p-4 flex items-center justify-center"
          >
            <div class="flex flex-col items-center">
              <div
                class="w-24 h-24 bg-gray-200 rounded-md flex items-center justify-center"
              >
                <span class="text-gray-500 text-sm">[Product]</span>
              </div>
              <span class="text-orange-500 font-bold mt-2">1</span>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- What our Happy Client Say -->
    <section class="container mx-auto px-6 py-12">
      <h2 class="text-2xl md:text-3xl font-bold text-center mb-2">
        What our Happy Client Say
      </h2>
      <p class="text-center text-gray-600 mb-8">
        Things that make it the best place to start training
      </p>

      <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
        <!-- Testimonial 1 -->
        <div class="bg-white p-6 rounded shadow-md text-center">
          <div class="flex justify-center mb-4">
            <div
              class="w-16 h-16 bg-gray-200 rounded-full flex items-center justify-center"
            >
              <span class="text-gray-500 text-sm">[Img]</span>
            </div>
          </div>
          <h3 class="font-semibold text-lg mb-2">Jesika Sky</h3>
          <div class="flex justify-center mb-2">
            <!-- 5-star rating example -->
            <span class="text-yellow-400 mr-1">★</span>
            <span class="text-yellow-400 mr-1">★</span>
            <span class="text-yellow-400 mr-1">★</span>
            <span class="text-yellow-400 mr-1">★</span>
            <span class="text-yellow-400">★</span>
          </div>
          <p class="text-gray-600 text-sm">
            This gym is by far the best gym I’ve ever been to, and I’ve been to a lot of
            gyms! The workouts are amazing...
          </p>
        </div>

        <!-- Testimonial 2 -->
        <div class="bg-white p-6 rounded shadow-md text-center">
          <div class="flex justify-center mb-4">
            <div
              class="w-16 h-16 bg-gray-200 rounded-full flex items-center justify-center"
            >
              <span class="text-gray-500 text-sm">[Img]</span>
            </div>
          </div>
          <h3 class="font-semibold text-lg mb-2">Tyron Son</h3>
          <div class="flex justify-center mb-2">
            <span class="text-yellow-400 mr-1">★</span>
            <span class="text-yellow-400 mr-1">★</span>
            <span class="text-yellow-400 mr-1">★</span>
            <span class="text-yellow-400 mr-1">★</span>
            <span class="text-gray-300">★</span>
            <!-- 4 stars, 1 empty -->
          </div>
          <p class="text-gray-600 text-sm">
            If you want body, mind, and soul fitness this is the place. Love this gym. It
            had everything you will need.
          </p>
        </div>

        <!-- Testimonial 3 -->
        <div class="bg-white p-6 rounded shadow-md text-center">
          <div class="flex justify-center mb-4">
            <div
              class="w-16 h-16 bg-gray-200 rounded-full flex items-center justify-center"
            >
              <span class="text-gray-500 text-sm">[Img]</span>
            </div>
          </div>
          <h3 class="font-semibold text-lg mb-2">Joanna Fox</h3>
          <div class="flex justify-center mb-2">
            <span class="text-yellow-400 mr-1">★</span>
            <span class="text-yellow-400 mr-1">★</span>
            <span class="text-yellow-400 mr-1">★</span>
            <span class="text-yellow-400 mr-1">★</span>
            <span class="text-gray-300">★</span>
          </div>
          <p class="text-gray-600 text-sm">
            A good coach makes sure that they have the right incentive before taking on a
            client
          </p>
        </div>
      </div>
    </section>

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
</script>
