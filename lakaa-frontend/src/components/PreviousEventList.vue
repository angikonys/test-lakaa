<template>
  {{foodCollects}}}
  {{organizations}}
  <div class="food-collects">

    <h2>Food Collects</h2>
    <ul>
      <li v-for="foodCollect in foodCollects" :key="foodCollect.id" class="food-collect-item">
        <div class="image-container">
        <img :src="getOrganization(foodCollect.organization_id).logo_url" :alt="getOrganization(foodCollect.organization_id).name" />
        </div>
        <div class="content">
          <h3>{{ foodCollect.name }}</h3>
          <p>Date: {{ formatDate(foodCollect.date) }}</p>
          <p>Organization: {{ getOrganization(foodCollect.organization_id).name }}</p>
        </div>
      </li>
    </ul>
  </div>
</template>

<script>
import {getAllFoodCollects} from "@/api_request/food_collect";
import {getAllOrgs} from "@/api_request/organization";

export default {
  props: {
    organizations: {
      type: Array,
      required: true
    },
    foodCollects: {
      type: Array,
      required: true
    }
  },
  mounted() {
  },
  methods: {
    getOrganization(organizationId) {
      return  this.organizations.find(org => org.id === organizationId);
    },
    formatDate(date) {
      return new Date(date).toLocaleDateString('en-US', {
        year: 'numeric',
        month: 'long',
        day: 'numeric',
      });
    },
  },
};
</script>

<style>
.food-collects {
  font-family: Arial, sans-serif;
}

.food-collect-item {
  display: flex;
  align-items: center;
  margin-bottom: 10px;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
}

.image-container {
  margin-right: 10px;
}

.image-container img {
  width: 50px;
  height: 50px;
  object-fit: cover;
  border-radius: 50%;
}

.content {
  flex: 1;
}

h2 {
  font-size: 20px;
  margin-bottom: 10px;
}

h3 {
  margin: 0;
  font-size: 16px;
}

p {
  margin: 5px 0;
}
</style>