<template>

  <div id="Clothing">
<navigation-bar/>
<categorie-nav-bar/>
<slider-temp-cloth/>
<clothing-page-commodities/>
<!--<slider-cloth/>-->
<!--
<div class="flex-contain">
    <b-row>
        <b-col>
  <router-link v-for ="post of posts.slice(0, 5)"  :to="post.family">{{post.familyName}}</router-link >
        </b-col>
    </b-row>
  </div> -->
<!-- <br/>

<b-navbar class="forcol" toggleable="lg" type="dark" variant="dark">
     <b-navbar-brand href="/">Container Crush:Team Enceladus</b-navbar-brand>

    <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

    <b-collapse id="nav-collapse" is-nav>
      <b-navbar-nav>
<div class="flex-contain">
 <!--  <b-row>
       
        <div><b-col>
  <router-link to="/53100000">Clothing</router-link> </b-col></div>
  <div><b-col>
  <router-link to="/53110000">Footware</router-link> </b-col></div>
  <div><b-col>
  <router-link to="/53100000">Clothing</router-link> </b-col></div>
  <div><b-col>
  <router-link to="/53100000">Clothing</router-link> </b-col></div>
  <div><b-col>
  <router-link to="/53100000">Clothing</router-link> </b-col></div>
  <div><b-col>
  <router-link to="/53100000">Clothing</router-link> </b-col></div>
     </b-row>   -->
    <!-- <b-row>
       
        <div v-for="post of posts.slice(0, 5)"><b-col>
  <router-link :to="post.familyID">{{post.familyName}}</router-link> </b-col></div>

     </b-row>   
    
  </div>
  
  </b-navbar-nav>
  </b-collapse> 
</b-navbar>-->
      
  <!--      <b-navbar class="forcol" toggleable="lg" type="dark" variant="light">
     <b-navbar-brand  href="/">Our Product Categories</b-navbar-brand>

    <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

    <b-collapse id="nav-collapse" is-nav>

      <div>
  <b-nav tabs   fill>
    <b-nav-item-dropdown id="my-nav-dropdown"
      :text="post.familyName"
      toggle-class="nav-link-custom"
      right  v-for="post of posts.slice(0, 5)"  >

      <b-dropdown-item v-for="clothes in cloth_arr" v-if="clothes.familyName == post.familyName">{{clothes.commodityName}}</b-dropdown-item>
      <b-dropdown-item v-for="footware in footware_arr" v-if="footware.familyName == post.familyName">{{footware.commodityName}}</b-dropdown-item>
      <b-dropdown-item v-for="lagguage in lagguage_arr" v-if="lagguage.familyName == post.familyName">{{lagguage.commodityName}}</b-dropdown-item>
      <b-dropdown-item v-for="care in care_arr" v-if="care.familyName == post.familyName">{{care.commodityName}}</b-dropdown-item>
      <b-dropdown-item v-for="sweing in sweing_arr" v-if="sweing.familyName == post.familyName">{{sweing.commodityName}}</b-dropdown-item>
      
      </b-nav-item-dropdown>
   
  </b-nav>
</div>
    
 <!--     <b-navbar-nav>
<div class="flex-contain">
   <b-row>
       
        <div v-for="post of posts.slice(0, 5)"><b-col>
  <router-link :to="post.familyID">{{post.familyName}}</router-link> </b-col></div>

     </b-row>   
    
  </div>
  
  </b-navbar-nav>
      
  </b-collapse>
</b-navbar> -->

 

</div>


</template>

<script>
import CategorieNavBar from '@/components/CategorieNavBar.vue'
import NavigationBar from '@/components/NavigatonBar.vue';
import SliderCloth from "@/components/SliderCloth.vue";
import SliderTempCloth from "@/components/SliderTempCloth.vue";
import ClothingPageCommodities from "@/components/ClothingPageCommodities.vue";
import axios from 'axios';
export default {
   components: {
      NavigationBar,CategorieNavBar,SliderCloth,SliderTempCloth,ClothingPageCommodities
    },
  name: 'clothing-page',
  data() {
      
    return {
      items: [
          {
            text: 'Home',
            href: '/'
          },
          {
            text: 'Clothing',
            active: true
          }
        ],
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
computed:{
  groupedCloth:function() {
          console.log(this.cloth_arr[0]);
    return  _.chunk(this.cloth_arr,14)
    // returns a nested array: 
    // [[article, article, article], [article, article, article], ...]
  }
}
}
</script>
<!-- styling for the component -->

<style>
#clothing {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
* {margin: 0 !important;}
.img-responsive {
  border: 1px solid #ddd;
  border-radius: 4px;
  padding: 5px;
  width: 150px;
}
.btn{
  padding: 0px;
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
}
.flex-container {
  display: flex;
  flex-direction: row;
 justify-content: space-between;
 margin: 5px 0px 10px 0px!important;
   padding: 10px 20px 10px 20px;
 
}
.flex-nav1
{
 
   margin: 5px 0px 10px 0px!important;
   padding: 10px 20px 10px 20px;
}
.flex-container-row {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
   margin: 2px !important;
  padding: 0px 20px 0px 20px;
}
.img-load{
   margin-right: -15px !important;
   margin-left: -15px !important;
}
.flex-contain{
   display: flex;
  flex-direction: row;

 
  flex-wrap: wrap;
  

}
.flex-filter
{
   display: flex;
  flex-direction: column;
 
  flex-wrap: wrap;
  margin-left: 40px !important;
  



}
.flex-img{
   display: flex;
  flex-direction: row;
 
  flex-wrap: wrap;
  margin-left: 200px !important;
 margin-right: 40px !important;


}
.filter-list{
  list-style-type: none;
  padding-left: 0;
}
</style>