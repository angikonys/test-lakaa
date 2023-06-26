<template>

  <div>
    <h2>Register Food Collect</h2>
    <form @submit.prevent="submitForm">
      <label for="event-name">Event Name:</label>
      <input type="text" id="event-name" v-model="eventName" required>

      <label for="event-date">Event Date:</label>
      <input type="date" id="event-date" v-model="eventDate" required>

      <label for="org-select">Select Organization:</label>
      <select v-model="selectedOrg">
        <option disabled value="">Select an organization</option>
        <option v-for="org in orgs" :key="org.id" :value="org">{{ org.name }}</option>
      </select>
      <button type="submit">Submit</button>
    </form>
  </div>




</template>

<script>
import {getAllOrgs} from "@/api_request/organization";
import {addFoodCollect} from "@/api_request/food_collect";

export default {
  data() {
    return {
      orgs: [],
      selectedOrg: null,
      eventName: '',
      eventDate: '',
    };
  },
  mounted() {
    this.getOptions();
  },
  methods: {
    async getOptions() {
      try {
        this.orgs = await getAllOrgs()
      } catch (error) {
        console.error('Error fetching organizations:', error);
      }
    },
    submitForm() {
      console.log('init')
      const res = addFoodCollect({
        name: this.eventName,
        date: this.eventDate,
        organization_id: this.selectedOrg.id
      })
      this.$emit('updateCSRvue')
    }
  },
};
</script>
