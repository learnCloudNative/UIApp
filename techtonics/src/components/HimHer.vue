<template>

  <div>

 <div class="flex-container">
  <div ><img  src="@/assets/clothing_logo_img.jpg" alt="" ></a></div>
</div>
  <div class="flex-container">
  <div v-on:click="putData('women')" ><a href="/about"><img  src="@/assets/cloth_her.png" alt="" ></a></div>
  <div v-on:click="putData('men')" ><a href="/about"><img  src="@/assets/cloth_him.png" alt="" ></a></div>
</div>
 <div class="flex-container">
  <div> <img  src="@/assets/clothing_logo_img.jpg" alt="" ></div>
</div>
 <div class="flex-container">
  <div><a href="FootwarePage"> <img  src="@/assets/footware_her.png" alt="" ></a></div>
  <div><a href="FootwarePage"> <img  src="@/assets/footware_him.png" alt="" ></a></div>
</div>
 <div class="flex-container">
  <div><img  src="@/assets/clothing_logo_img.jpg" alt="" ></div>
</div>

<div class="flex-container">
  <div><a href="LagguagePage"> <img  src="@/assets/lagguage_her.png" alt="" ></a></div>
  <div><a href="LagguagePage"><img  src="@/assets/lagguage_him.png" alt="" ></a></div>
</div>
 <div class="flex-container">
  <div><img  src="@/assets/clothing_logo_img.jpg" alt="" ></div>
</div>
</div>



</template>


<script>
const options = {
  headers: {'Access-Control-Allow-Origin': '*'}
};
import axios from 'axios';
  export default {
  preserveWhitespace: false,
    name: 'him-her',
    
    data() {
      return {

        picked:null,

        
        
      }
    },
    methods: {
      
    putData:function(text) {
      console.log(text)
     axios.get("http://localhost:9000/api/uiSearchPOST/".concat(text),options).then(response => {
      // JSON responses are automatically parsed.
      this.commodities = response.data
       this.$forceUpdate();
    })
    setTimeout( () => this.$router.push({ href: '/about'}), 2000);
      
    }},
  }
</script>

<style scoped>
.flex-container {
  display: flex;
  flex-wrap: nowrap;
  justify-content: center;
}
</style>
