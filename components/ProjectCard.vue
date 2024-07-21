<template>
  <div
    class="col-span-1 flex flex-col bg-white rounded-xl shadow-xl transition ease-in-out delay-150 hover:-translate-y-1 hover:scale-110 hover:shadow-2xl duration-300"
  >
    <nuxt-img
      :src="projectImage"
      loading="lazy"
      :alt="projectTitle"
      class="object-cover"
    />

    <div class="px-6 pt-4 pb-2 flex flex-wrap text-xs">
      <div class="font-bold text-xl mb-2">{{ projectTitle }}</div>
      <div class="mx-1">
        <a
          class="text-sm text-gray-500 transition hover:text-gray-600"
          target="_blank"
          rel="noopener noreferrer"
          :href="projectHref"
          ><span class="sr-only"></span
          ><img class="w-6 h-6" src="~assets/icon/external.svg"
        /></a>
      </div>
      <p class="text-gray-700 text-base">
        {{ projectDescription }}
      </p>
    </div>

    <div class="px-6 pt-4 pb-2 mt-auto flex flex-wrap text-xs">
      <span
        v-for="tag in projectTags"
        :key="tag"
        class="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2 mb-2"
        >#{{ tag }}</span
      >
    </div>
  </div>
</template>

<script>
import Folder from "../assets/icon/folder.svg?inline";
import External from "../assets/icon/external.svg?inline";
import Github from "../assets/icon/github.svg?inline";
export default {
  props: ["title", "description", "image", "href", "github", "tags"],
  components: { Folder, External, Github },
  data() {
    return {
      projectTitle: this.title,
      projectDescription: this.description,
      projectImage: this.image,
      projectHref: this.href,
      projectGithub: this.github,
      projectTags: this.tags,
    };
  },
};
</script>

<style></style>
