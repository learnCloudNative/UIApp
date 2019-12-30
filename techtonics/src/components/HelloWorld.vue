<template>
<html>
<navigation-bar/>
<h1>{{msg}}</h1>
<p>This is the product search page</p>
<!--<employee-table />--->
<!--<aside><example-component/></aside>-->
<div class="fam"><family-image/></div>
<aside><employee-table /></aside>
</html>
</template>

<script>
import EmployeeTable from '@/components/EmployeeTable.vue'
import ExampleComponent from '@/components/ExampleComponent.vue'
import NavigationBar from '@/components/NavigatonBar.vue'
import FamilyImage from '@/components/FamilyImage.vue'

export default {
methods: {
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
      EmployeeTable,ExampleComponent,NavigationBar,FamilyImage
    },
  data () {
    return {
      msg: 'Welcome to team Enceladus'
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style>
h1, h2 {
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
}

aside {
 /* float: auto;

            position: fixed; 
            background-color: yellow; 
            top: 50%; 
            left: 50%; 
            margin-top: -100px; 
            margin-left: -200px; */
            position: absolute;
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
