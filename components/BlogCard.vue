<template>
  <div
    class="col-span-1 flex flex-col bg-white rounded-xl shadow-xl transition ease-in-out delay-80 hover:-translate-y-1 hover:scale-110 hover:shadow-2xl duration-300"
  >
    <nuxt-link
      :to="`/blog/${slug}`"
      class="text-slate-900 dark:text-slate-100"
    >
      <div class="relative h-56 m-2.5 overflow-hidden text-white rounded-md">
        <nuxt-img :src="img" loading="lazy" :alt="title" class="object-cover" />
      </div>
      <div class="p-4">
        <h6 class="mb-2 text-slate-800 text-xl font-semibold">
          {{ title }}
        </h6>
        <p class="text-slate-600 leading-normal font-light">
          {{ description }}
        </p>
      </div>
    </nuxt-link>
  </div>
</template>

<script>
export default {
  props: {
    title: {
      type: String,
      required: true,
    },
    description: {
      type: String,
      required: true,
    },
    date: {
      type: String,
      required: true,
    },
    slug: {
      type: String,
      required: true,
    },
    img: {
      type: String,
      default: null,
    },
  },
  methods: {
    formatDate(dateString) {
      const date = new Date(dateString);
      return date.toLocaleDateString("en-US", {
        year: "numeric",
        month: "long",
        day: "numeric",
      });
    },
  },
};
</script>

<style scoped>
/* Add any additional styles here */
</style>
