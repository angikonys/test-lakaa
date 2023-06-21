<script setup>
import * as food_collect from '@/api_request/food_collect'
function yep() {
  food_collect.getAll().then( resp => {
    console.log(resp[0])
      }
  )
}
</script>

<template>
  <main>
    <div @click="yep">hello</div>
  </main>
</template>
