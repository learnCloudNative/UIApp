<template>
<html>
  <div>
<navigation-bar/>
</div>
<div>
  <categorie-nav-bar/>
  </div>
    
    <div>
      <slider-temp/>
    </div>
      
 <!-- <div>
    <slide-home-page/>
    </div> -->

    <div>
      <him-her/>
    </div>
  




    
<!--<h1>{{msg}}</h1>
<p>This is the product search page</p>


<!--<employee-table />--->
<!--<aside><example-component/></aside>-->
<!--<div class="fam"><family-image/></div> -->

<button v-on:click="login">Hi</button>
<p>{{posts}}</p>
<!--<div>
<aside><employee-table /></aside></div> -->

<div class="foo">
  <employee-table />
</div>
</html>

</template>

<script>
import EmployeeTable from '@/components/EmployeeTable.vue'
import ExampleComponent from '@/components/ExampleComponent.vue'
import NavigationBar from '@/components/NavigatonBar.vue'
import FamilyImage from '@/components/FamilyImage.vue'
import Categories from '@/components/Categories.vue'
import CategorieNavBar from '@/components/CategorieNavBar.vue'
import SlideHomePage from '@/components/SlideHomePage.vue'
import HimHer from '@/components/HimHer.vue'
import axios from 'axios';
import { Hooper, Slide } from  'hooper'
import HooperSlide from '@/components/HooperSlide.vue'
import SliderTemp from '@/components/SliderTemp.vue'

const options = {
  headers: {'Access-Control-Allow-Origin': '*'}
};

export default {
  
methods: {
  login: function() {
    
     // axios.get("http://127.0.0.1:5000/voiceSearch/",options)
      //  .then(response => {
      // JSON responses are automatically parsed.
     // this.posts = response.data
    //})
    },
    handleScroll (event) {
      // Any code to be executed when the window is scrolled
    }
  },
  created () {
    window.addEventListener('scroll', this.handleScroll);
  },
  destroyed () {
    window.removeEventListener('scroll', this.handleScroll);
  },
  name: 'HelloWorld',
  name: 'Markdown',
  preserveWhitespace: false,
  components: {
      EmployeeTable,ExampleComponent,NavigationBar,FamilyImage,Categories,CategorieNavBar,SlideHomePage,HimHer,  Hooper,HooperSlide,
      Slide,SliderTemp
    },
  data () {
    return {
      msg: 'Welcome to team Enceladus',
      posts:[]
    }
  }
}
console.log("AAAAAAAAAA");
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style>
/*h1, h2 {
  font-weight: normal;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}*/

aside {
 /* float: auto;

            position: fixed; 
            background-color: yellow; 
            top: 50%; 
            left: 50%; 
            margin-top: -100px; 
            margin-left: -200px; 
            position: absolute;*/
            position: fixed;
            bottom:0px;
            right:0px;
}

.fam {

            position: fixed; 
            top: 50%; 
             
            margin-top: -100px !important;; 
			margin-left : 200px !important;;
            
}
* {margin: 0 !important;}


</style>
