
<script>

import CreateForm from "@/components/CreateForm.vue";
import PreviousEventList from "@/components/PreviousEventList.vue"
import OrgCreateForm from "@/components/OrgCreateForm.vue";
import {getAllOrgs} from "@/api_request/organization";
import {getAllFoodCollects} from "@/api_request/food_collect";

export default {
  data() {
    return {
      foodCollects: [],
      organizations: [],
    };
  },
  mounted() {
    this.getAllFoodCollects()
    this.getAllOrganizations()
  },
  components : {
    OrgCreateForm,
    CreateForm,
    PreviousEventList
  },
  methods : {
    updateComps() {
      this.getAllFoodCollects()
      this.getAllOrganizations()

    },
    async getAllFoodCollects() {
      try {
        this.foodCollects = await getAllFoodCollects()
      } catch (error) {
        console.error('Error fetching food collects:', error);
      }
    },
    async getAllOrganizations() {
      try {
        this.organizations= await getAllOrgs();
      } catch (error) {
        console.error('Error fetching organizations:', error);
      }

    },
  }

}
</script>


<template>
  {{foodCollects}}}
  {{organizations}}
  <org-create-form></org-create-form>
  <create-form v-on:updateCSRvue="updateComps" ></create-form>
  <previous-event-list :organizations="organizations"
                       :foodCollects="foodCollects"></previous-event-list>
</template>



<style scoped>

</style>