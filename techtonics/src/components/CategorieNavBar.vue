<template>

<html>
  <div >
   
      
        <b-navbar class="forcol" toggleable="lg" type="dark" variant="light" >
     <b-navbar-brand  href="/">Our Product Categories</b-navbar-brand>

    <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

    <b-collapse id="nav-collapse" is-nav>

      <div>

        
  <b-nav tabs   fill>
    
    <b-nav-item-dropdown id="my-nav-dropdown"
      :text="post.familyName"
      toggle-class="nav-link-custom"
      right  v-for="post of posts.slice(0, 5)"  style="color:black;font-weight: bold;">


      <b-dropdown-item v-for="clothes in cloth_arr" v-if="clothes.familyName == post.familyName" >
      
    {{clothes.commodityName}}
</b-dropdown-item>
        
      <b-dropdown-item v-for="footware in footware_arr" v-if="footware.familyName == post.familyName" href="/about" >{{footware.commodityName}}</b-dropdown-item>
      <b-dropdown-item v-for="lagguage in lagguage_arr" v-if="lagguage.familyName == post.familyName">{{lagguage.commodityName}}</b-dropdown-item>
      <b-dropdown-item v-for="care in care_arr" v-if="care.familyName == post.familyName">{{care.commodityName}}</b-dropdown-item>
      <b-dropdown-item v-for="sweing in sweing_arr" v-if="sweing.familyName == post.familyName">{{sweing.commodityName}}</b-dropdown-item>
      
      </b-nav-item-dropdown>
   
  </b-nav>
</div>

      
  </b-collapse>
</b-navbar>

  </div>
</html>
</template>


<script>
import axios from 'axios';
import NavigationBar from '@/components/NavigatonBar.vue';
import EmployeeTable from '@/components/EmployeeTable.vue'
import ExampleComponent from '@/components/ExampleComponent.vue'

import FamilyImage from '@/components/FamilyImage.vue'
import Categories from '@/components/Categories.vue'
export default {
  components: {
     NavigationBar
    },
    preserveWhitespace: false,
    components: {
      EmployeeTable,ExampleComponent,NavigationBar,FamilyImage,Categories
    },
   
  data() {
      
    return {
      cloth_arr: [],
      posts:[],
      footware_arr:[],
      lagguage_arr:[],
      sweing_arr:[],
      care_arr:[],
      errors: []
      
    }
}
,
created() {
  const options = {
  headers: {'Access-Control-Allow-Origin': '*'}
};
  axios.get(process.env.VUE_APP_URL.concat("/api/hello"),options).then(response => {
      // JSON responses are automatically parsed.
      this.posts = response.data
    }),
    axios.get(process.env.VUE_APP_URL.concat("/api/commodities/commoditybyFamilyID/53100000"),options).then(response => {
      // JSON responses are automatically parsed.
      this.cloth_arr = response.data
    }),
    axios.get(process.env.VUE_APP_URL.concat("/api/commodities/commoditybyFamilyID/53110000"),options).then(response => {
      // JSON responses are automatically parsed.
      this.footware_arr = response.data
    }),
    
    axios.get(process.env.VUE_APP_URL.concat("/api/commodities/commoditybyFamilyID/53120000"),options).then(response => {
      // JSON responses are automatically parsed.
      this.lagguage_arr = response.data
    }),
    axios.get(process.env.VUE_APP_URL.concat("/api/commodities/commoditybyFamilyID/53130000"),options).then(response => {
      // JSON responses are automatically parsed.
      this.care_arr = response.data
    }),
    axios.get(process.env.VUE_APP_URL.concat("/api/commodities/commoditybyFamilyID/53140000"),options).then(response => {
      // JSON responses are automatically parsed.
      this.sweing_arr = response.data
    })
},

}

</script>
<!-- styling for the component -->

<style>


</style>