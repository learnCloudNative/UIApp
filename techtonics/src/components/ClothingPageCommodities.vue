<template>


  <div>
    <div><img  src="@/assets/clothing_logo_img.jpg" alt="" >
    <img  class='banner' src="@/assets/dis_img.png" alt="" >
    </div>
<div class="flex-container-dis">
<a href="#"><img class="dis-img" src="@/assets/dis_im.jpg" alt="" ></a>
<a href="#"><img class="dis" src="@/assets/dis_5.png" alt="" ></a>
<a href="#"><img class="dis" src="@/assets/dis_10.png" alt="" ></a>
<a href="#"><img class="dis" src="@/assets/dis_15.png" alt="" ></a>
<a href="#"><img class="dis" src="@/assets/dis_20.png" alt="" ></a>
</div>

  <div>
    <img  src="@/assets/clothing_logo_img.jpg" alt="" >
    <img  class='banner' src="@/assets/dis_prod.png" alt="" >
    </div>

<div class="flex-container">
 
 <a href="/about"><div class="flex-container1" v-on:click="putData('jacket')" > 

  <img class="jkt" src="@/assets/sale_jacket.jpg" alt="" >
 
  </div> </a>
  <a href="/about"><div class="flex-container2" v-on:click="putData('shirt')">
<img class="tee" src="@/assets/tshirt_men.png" alt="" >
</div></a>
<a href="/about"><div class="flex-container3" v-on:click="putData('formal')">
<img  class="womenformal" src="@/assets/women_formal.png" alt="" >
</div></a>
<a href="/about"><div class="flex-container4" v-on:click="putData('cole')">
<img  class="menformal" src="@/assets/mens_formal.png" alt="" >
</div></a>
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
    name: 'clothing-page-commodities',
    
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
.flex-container-dis{
  display: flex;
  flex-direction: row;
  flex-wrap: nowrap;
  align-items: center;
  justify-content: center;
}
.flex-container{
  display: flex;
  flex-direction: column;
  flex-wrap: nowrap;
  align-items: center;
}
.flex-container1 {
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
   justify-content: flex-end;
}
.flex-container2 {
  display: flex;
  flex-direction: row;
  flex-wrap: nowrap;
   justify-content: flex-start;
}
.flex-container3 {
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
   justify-content: flex-end;
}
.flex-container4 {
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
   justify-content: flex-start;
}
.jkt {
  height:400px;
  width:50%
}
.tee {
  height:400px;
  width:50%
}
.womenformal{
  height:400px;
  width:50%
}
.menformal{
  height:400px;
  width:50%
}
.dis-img{
   height:200px;
  width:100%
}
.banner
{
  height:80px;
   width:90%
  
}

</style>
