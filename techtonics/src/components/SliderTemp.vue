<template>
   <div>
 <b-carousel
      id="carousel-1"
      v-model="slide"
      :interval="4000"
      controls
      indicators
      no-animation

    >
    <b-carousel-slide>
        <template v-slot:img>
          <a href="ClothingPage">
          <img
            class=" img-fluid"
            
            src="@/assets/fashion_off.png"
            alt="image slot"
          ></a>
        </template>
      </b-carousel-slide>
  <b-carousel-slide>
        <template v-slot:img>
         <a href="LagguagePage">
          <img
            class="img-fluid"
            
            src="@/assets/lagguage_acc.png"
            alt="image slot"
          ></a>
        </template>
      </b-carousel-slide>
  </b-carousel>
</div>
  

</template>
<script>
export default {
  name: "SliderTemp",
  data() {
    return {
    
    };
  },


};
</script>

<style scoped>
img {
  height:400px;
  width:95%
}


</style>