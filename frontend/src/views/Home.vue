<template>
  <div class="font-sans text-gray-700 pt-20">
    <!-- Hero Section -->
    <section class="container mx-auto px-6 py-12">
      <div class="flex flex-col-reverse md:flex-row items-center">
        <!-- Text Column -->
        <div class="md:w-1/2 mt-8 md:mt-0">
          <h1 class="text-4xl md:text-5xl font-bold mb-4">Hey! I’M OLYA</h1>
          <p class="italic text-gray-500 mb-6">
            “If it doesn’t challenge you, it won’t change you.”
          </p>
          <p class="mb-6">
            It’s my Slogan and I will help you be the best you can be. I’m Olya Melnic,
            I’ve been a Fitness Trainer since 2020, Fitness, Health mother and wife.
          </p>
          <div class="flex space-x-4">
            <button class="bg-black text-white px-4 py-2 rounded hover:bg-gray-800">
              Get it on Google Play
            </button>
            <button class="bg-black text-white px-4 py-2 rounded hover:bg-gray-800">
              Get it on App Store
            </button>
          </div>
        </div>

        <!-- Placeholder Image Column -->
        <div class="md:w-1/2 flex justify-center mb-8 md:mb-0">
          <div
            class="w-72 h-72 bg-gray-200 flex items-center justify-center rounded shadow-md"
          >
            <span class="text-gray-400">[Image Placeholder]</span>
          </div>
        </div>
      </div>
    </section>

    <!-- Training Programs -->
    <section class="bg-gray-50 py-12">
      <div class="container mx-auto px-6">
        <h2 class="text-2xl md:text-3xl font-bold mb-4">
          Training Programs we offer for you.
        </h2>
        <p class="text-gray-600 mb-8">
          Starting a fitness routine can be intimidating, but it helps to have an idea of
          what to expect before joining any class.
        </p>

        <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
          <!-- Card 1 -->
          <div class="bg-white p-6 rounded shadow hover:shadow-lg transition-shadow">
            <div class="mb-4">
              <!-- Icon (replace with any icon you prefer) -->
              <svg
                class="w-12 h-12 text-orange-500"
                fill="currentColor"
                viewBox="0 0 20 20"
              >
                <path
                  d="M2 5a3 3 0 013-3h10a3 3 0 013 3v3a3 3 0 01-3 3h-1v2h2a1 1 0 010 2h-2v2a1 1 0 11-2 0v-2H8v2a1 1 0 11-2 0v-2H4a3 3 0 01-3-3V5z"
                />
              </svg>
            </div>
            <h3 class="text-xl font-semibold mb-2">Private Session</h3>
            <p class="text-gray-600">
              My creative personal training program where all bodies can move.
            </p>
          </div>

          <!-- Card 2 -->
          <div class="bg-white p-6 rounded shadow hover:shadow-lg transition-shadow">
            <div class="mb-4">
              <svg
                class="w-12 h-12 text-orange-500"
                fill="currentColor"
                viewBox="0 0 20 20"
              >
                <path
                  d="M10 2a6 6 0 00-6 6v1a4 4 0 001.528 3.172 2 2 0 01.54 1.76l-.436 3.058A1 1 0 006.618 18h6.764a1 1 0 00.986-.83l.436-3.058a2 2 0 01.54-1.76A4 4 0 0016 9V8a6 6 0 00-6-6z"
                />
              </svg>
            </div>
            <h3 class="text-xl font-semibold mb-2">Group Class</h3>
            <p class="text-gray-600">
              We offer an array of different group fitness class types.
            </p>
          </div>

          <!-- Card 3 -->
          <div class="bg-white p-6 rounded shadow hover:shadow-lg transition-shadow">
            <div class="mb-4">
              <svg
                class="w-12 h-12 text-orange-500"
                fill="currentColor"
                viewBox="0 0 20 20"
              >
                <path
                  d="M4 3a2 2 0 00-2 2v3a4 4 0 004 4h2a2 2 0 110 4H5a1 1 0 100 2h3a4 4 0 000-8H8a2 2 0 01-2-2V5a2 2 0 114 0v2a1 1 0 102 0V5a4 4 0 00-4-4H4z"
                />
              </svg>
            </div>
            <h3 class="text-xl font-semibold mb-2">Program & Diet</h3>
            <p class="text-gray-600">
              You need to begin thinking of the amount of protein.
            </p>
          </div>
        </div>
      </div>
    </section>

    <!-- About Section -->
    <section class="container mx-auto px-6 py-12">
      <div class="flex flex-col md:flex-row items-center">
        <!-- Placeholder Image -->
        <div class="md:w-1/2 flex justify-center mb-8 md:mb-0">
          <div
            class="w-72 h-72 bg-gray-200 flex items-center justify-center rounded shadow-md"
          >
            <span class="text-gray-400">[Image Placeholder]</span>
          </div>
        </div>
        <!-- About Text -->
        <div class="md:w-1/2 md:ml-8">
          <h2 class="text-2xl md:text-3xl font-bold mb-4">About Emma Trainer.</h2>
          <p class="text-gray-600 mb-4">
            With the release of Letraset sheets containing Lorem Ipsum passages, and more
            recently with desktop publishing software like Aldus PageMaker including
            versions, we approach our projects with strategic and creative thinking. We
            partner with our clients to create big ideas and digital experiences. And we
            spend each day doing so by sharpening the tools of the digital trade.
          </p>
        </div>
      </div>
    </section>

    <!-- Last Trainer Group Class -->
    <section class="bg-gray-50 py-12">
      <div class="container mx-auto px-6">
        <h2 class="text-2xl md:text-3xl font-bold mb-4">Last Trainer Group Class.</h2>
        <p class="text-gray-600 mb-6">
          They also provide insights about the profession's most colorful personalities
          and powerful institutions, as well as original commentary on breaking legal
          developments...
        </p>
        <button
          class="bg-orange-500 text-white px-6 py-2 rounded hover:bg-orange-600 mb-8"
        >
          Start !
        </button>

        <!-- Class Table -->
        <div class="overflow-x-auto">
          <table class="min-w-full bg-white rounded shadow">
            <thead class="bg-orange-500 text-white">
              <tr>
                <th class="py-3 px-4 text-left">Class Title</th>
                <th class="py-3 px-4 text-left">Days Start</th>
                <th class="py-3 px-4 text-left">Time</th>
                <th class="py-3 px-4 text-left">Duration</th>
              </tr>
            </thead>
            <tbody class="text-gray-700">
              <tr class="border-b">
                <td class="py-3 px-4">Bellyfats-wights</td>
                <td class="py-3 px-4">Fridays</td>
                <td class="py-3 px-4">22:30</td>
                <td class="py-3 px-4">60 minutes</td>
              </tr>
              <tr class="border-b">
                <td class="py-3 px-4">Belly fat</td>
                <td class="py-3 px-4">Saturdays</td>
                <td class="py-3 px-4">15:30</td>
                <td class="py-3 px-4">60 minutes</td>
              </tr>
              <tr>
                <td class="py-3 px-4">Lower Body</td>
                <td class="py-3 px-4">Saturdays</td>
                <td class="py-3 px-4">08:30</td>
                <td class="py-3 px-4">60 minutes</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </section>

    <!-- Last Trainer Upload Post Section -->
    <section class="container mx-auto px-6 py-12">
      <div class="flex flex-col md:flex-row items-center md:items-start">
        <!-- Row of example images -->
        <div
          class="flex space-x-2 overflow-x-auto md:overflow-hidden md:w-2/3 mb-6 md:mb-0"
        >
          <!-- Replace these with actual images or placeholders -->
          <div class="w-40 h-24 bg-gray-300 flex items-center justify-center rounded-md">
            <span class="text-gray-500 text-sm">[Image 1]</span>
          </div>
          <div class="w-40 h-24 bg-gray-300 flex items-center justify-center rounded-md">
            <span class="text-gray-500 text-sm">[Image 2]</span>
          </div>
          <div class="w-40 h-24 bg-gray-300 flex items-center justify-center rounded-md">
            <span class="text-gray-500 text-sm">[Image 3]</span>
          </div>
          <div class="w-40 h-24 bg-gray-300 flex items-center justify-center rounded-md">
            <span class="text-gray-500 text-sm">[Image 4]</span>
          </div>
          <div class="w-40 h-24 bg-gray-300 flex items-center justify-center rounded-md">
            <span class="text-gray-500 text-sm">[Image 5]</span>
          </div>
        </div>

        <!-- Text description -->
        <div class="md:ml-8 md:w-1/3">
          <h2 class="text-2xl md:text-3xl font-bold mb-2">Last Trainer Upload Post.</h2>
          <p class="text-gray-600">
            Exercise with certified personal trainers whether you’re at home or on the
            road.
          </p>
        </div>
      </div>
    </section>

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

<script setup></script>
