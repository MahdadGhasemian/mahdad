<template>
  <footer>
    <div class="flex flex-col items-center mt-16">
      <div class="flex mb-3 space-x-4">
        <a
          class="text-sm text-gray-500 transition hover:text-gray-600"
          target="_blank"
          rel="noopener noreferrer"
          :href="metaData.github"
          ><span class="sr-only">github</span>
          <img class="w-8 h-8" src="~assets/icon/github_new.svg" /> </a
        ><a
          class="text-sm text-gray-500 transition hover:text-gray-600"
          target="_blank"
          rel="noopener noreferrer"
          :href="metaData.linkedin"
          ><span class="sr-only">Linkedin</span>
          <img class="w-8 h-8" src="~assets/icon/linkeding.svg" /> </a
        ><a
          class="text-sm text-gray-500 transition hover:text-gray-600"
          target="_blank"
          rel="noopener noreferrer"
          :href="`mailto:${metaData.email}`"
          ><span class="sr-only">mail</span>
          <img class="w-8 h-8" src="~assets/icon/mail.svg"
        /></a>
      </div>
      <div class="mb-8 text-sm text-gray-500 dark:text-gray-400">
        <a
          target="_blank"
          rel="noopener noreferrer"
          href="https://github.com/MahdadGhasemian"
        ></a>
      </div>
    </div>
  </footer>
</template>

<script>
import metaData from "@/data/metaData";
export default {
  data() {
    return {
      metaData,
    };
  },
};
</script>
