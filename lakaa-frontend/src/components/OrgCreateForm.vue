<template>
  <div>
    <h2>Register Organization</h2>
    <form @submit.prevent="submitForm">
      <div>
        <label for="name">Organization Name:</label>
        <input type="text" id="name" v-model="organization.name" required>
      </div>

      <div>
        <label for="logo">Logo URL:</label>
        <input type="text" id="logo" v-model="organization.logo_url" required>
      </div>

      <div>
        <label for="site">Site URL:</label>
        <input type="text" id="site" v-model="organization.site_url" required>
      </div>

      <button type="submit">Register</button>
    </form>
  </div>
</template>

<script>
import {addOrg} from "@/api_request/organization";

export default {
  data() {
    return {
      organization: {
        name: '',
        logo_url: '',
        site_url: '',
      },
    };
  },
  methods: {
    submitForm() {
     addOrg(this.organization)
    }
  },
};
</script>
