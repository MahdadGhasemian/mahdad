<template>
  <!-- Section 1 -->
  <section class="w-full px-2 md:px-6 pb-12 antialiased bg-white">
    <div class="w-full mx-auto">
      <TheHeader />
      <Nuxt />
      <TheFooter />
    </div>
  </section>
</template>

<script>
import TheHeader from "../components/TheHeader.vue";
import TheFooter from "../components/TheFooter.vue";

export default {
  component: {
    TheHeader,
    TheFooter,
  },
};
</script>

<style></style>
