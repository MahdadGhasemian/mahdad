<template>
  <div class="mt-8">
    <!-- Backend -->
    <div class="mt-4">
      <h2
        class="mb-2 text-xl text-gray-700 font-bold dark:text-blue-200 capitalize"
      >
        Backend
      </h2>
      <ul class="mb-6 flex flex-wrap gap-4">
        <li class="flex items-center">
          <Node class="h-10 w-10"></Node>
        </li>
        <li class="flex items-center">
          <Typescript class="h-10 w-10"></Typescript>
        </li>
        <li class="flex items-center">
          <Express class="h-10 w-10"></Express>
        </li>
        <li class="flex items-center">
          <Nest class="h-10 w-10"></Nest>
        </li>
        <li class="flex items-center">
          <MongoDB class="h-10 w-10"></MongoDB>
        </li>
        <li class="flex items-center">
          <PostgreSql class="h-10 w-10"></PostgreSql>
        </li>
      </ul>
    </div>
    <!-- DevOps -->
    <div class="mt-4">
      <h2
        class="mb-2 text-xl text-gray-700 font-bold dark:text-blue-200 capitalize"
      >
        DevOps
      </h2>
      <ul class="mb-6 flex flex-wrap gap-4">
        <li class="flex items-center">
          <Linux class="h-10 w-10"></Linux>
        </li>
        <li class="flex items-center">
          <Docker class="h-10 w-10"></Docker>
        </li>
        <li class="flex items-center">
          <Kubernetes class="h-10 w-10"></Kubernetes>
        </li>
        <li class="flex items-center">
          <Bash class="h-10 w-10"></Bash>
        </li>
        <li class="flex items-center">
          <Nginx class="h-10 w-10"></Nginx>
        </li>
        <li class="flex items-center">
          <Ansible class="h-10 w-10"></Ansible>
        </li>
        <li class="flex items-center">
          <Terraform class="h-10 w-10"></Terraform>
        </li>
        <li class="flex items-center">
          <GoLang class="h-10 w-10"></GoLang>
        </li>
      </ul>
    </div>
    <!-- Frontend -->
    <div class="mt-4">
      <h2
        class="mb-2 text-xl text-gray-700 font-bold dark:text-blue-200 capitalize"
      >
        Frontend
      </h2>

      <ul class="flex flex-wrap gap-4 items-center">
        <li class="flex items-center">
          <TailwindCss class="h-10 w-10"></TailwindCss>
        </li>
        <li class="flex items-center">
          <Javascript class="h-10 w-10"></Javascript>
        </li>
        <li class="flex items-center">
          <Vuejs class="h-10 w-10"></Vuejs>
        </li>
        <li class="flex items-center">
          <Nuxt class="h-10 w-10"></Nuxt>
        </li>
        <li class="flex items-center">
          <Nextjs class="h-10 w-10"></Nextjs>
        </li>
      </ul>
    </div>
    <!-- Embedded -->
    <div class="mt-4">
      <h2
        class="mb-2 text-xl text-gray-700 font-bold dark:text-blue-200 capitalize"
      >
        Embedded
      </h2>
      <ul class="mb-6 flex flex-wrap gap-4">
        <li class="flex items-center">
          <EmbeddedC class="h-10 w-10"></EmbeddedC>
        </li>
        <li class="flex items-center">
          <RaspberryPi class="h-10 w-10"></RaspberryPi>
        </li>
        <li class="flex items-center">
          <Arduino class="h-10 w-10"></Arduino>
        </li>
      </ul>
    </div>
    <!-- Crypto -->
    <div class="mt-4">
      <h2
        class="mb-2 text-xl text-gray-700 font-bold dark:text-blue-200 capitalize"
      >
        Crypto
      </h2>
      <ul class="mb-6 flex flex-wrap gap-4">
        <li class="flex items-center">
          <Solidity class="h-10 w-10"></Solidity>
        </li>
        <li class="flex items-center">
          <Ipfs class="h-10 w-10"></Ipfs>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
import Javascript from "../assets/devicon/javascript.svg?inline";
import Typescript from "../assets/devicon/typescript.svg?inline";
import Html from "../assets/devicon/html.svg?inline";
import Css from "../assets/devicon/css.svg?inline";
import Vuejs from "../assets/devicon/vuejs.svg?inline";
import Nextjs from "../assets/devicon/nextjs.svg?inline";
import TailwindCss from "../assets/devicon/tailwindcss.svg?inline";
import Nuxt from "../assets/devicon/nuxt.svg?inline";
import Bootstrap from "../assets/devicon/bootstrap.svg?inline";
import GoLang from "../assets/devicon/golang.svg?inline";
import Node from "../assets/devicon/node.svg?inline";
import MongoDB from "../assets/devicon/mongodb.svg?inline";
import PostgreSql from "../assets/devicon/postgresql.svg?inline";
import Linux from "../assets/devicon/linux.svg?inline";
import RaspberryPi from "../assets/devicon/raspberrypi.svg?inline";
import EmbeddedC from "../assets/devicon/embeddedc.svg?inline";
import Docker from "../assets/devicon/docker.svg?inline";
import Kubernetes from "../assets/devicon/kubernetes.svg?inline";
import Ansible from "../assets/devicon/ansible.svg?inline";
import Terraform from "../assets/devicon/terraform.svg?inline";
import Bash from "../assets/devicon/bash.svg?inline";
import Arduino from "../assets/devicon/arduino.svg?inline";
import Nginx from "../assets/devicon/nginx.svg?inline";
import Solidity from "../assets/devicon/solidity.svg?inline";
import Ipfs from "../assets/devicon/ipfs.svg?inline";
import Express from "../assets/devicon/express.svg?inline";
import Nest from "../assets/devicon/nest.svg?inline";
export default {
  components: {
    Javascript,
    Typescript,
    Html,
    Css,
    Bootstrap,
    Vuejs,
    Nextjs,
    TailwindCss,
    Nuxt,
    GoLang,
    Node,
    MongoDB,
    PostgreSql,
    Linux,
    RaspberryPi,
    EmbeddedC,
    Docker,
    Kubernetes,
    Ansible,
    Terraform,
    Bash,
    Arduino,
    Nginx,
    Solidity,
    Ipfs,
    Express,
    Nest,
  },
};
</script>
