Vue.forceUpdate();
<template>

  <b-navbar class="forcol" toggleable="lg" type="dark" variant="dark" >
    <b-navbar-brand href="/"><img src="@/assets/team_logo.png"  width="100" height="40">Container Crush:Team Enceladus
</b-navbar-brand>

    <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

    <b-collapse id="nav-collapse" is-nav>
      <b-navbar-nav>
        <!--<b-nav-item href="#">Link</b-nav-item> -->
	<!--	<b-nav-item-dropdown text="Team Members" right>
          <b-dropdown-item href="#">Swarajit</b-dropdown-item>
		  <hr>
      
          <b-dropdown-item href="#">Susmita</b-dropdown-item>
		  <hr>
          <b-dropdown-item href="#">Oilivi</b-dropdown-item>
		  <hr>
          <b-dropdown-item href="#">Abhidip</b-dropdown-item>
		  <hr>
		  <b-dropdown-item href="#">Abinash</b-dropdown-item>
	
        </b-nav-item-dropdown>

        <b-nav-item-dropdown text="Categories" right>
          <b-dropdown-item href="#">Swarajit</b-dropdown-item>
		  <hr>
          <b-dropdown-item href="#">Susmita</b-dropdown-item>
		  <hr>
          <b-dropdown-item href="#">Oilivi</b-dropdown-item>
		  <hr>
          <b-dropdown-item href="#">Abhidip</b-dropdown-item>
		  <hr>
		  <b-dropdown-item href="#">Abinash</b-dropdown-item> 
	
        </b-nav-item-dropdown>-->
      <family-list/>

      <b-navbar-nav>
        
    

 <!--       <div>
     
     <b-dropdown text="Categories" variant="primary" >

                 
                    
            
            
               <b-dropdown-item  v-for ="post of posts.slice(0, 5)" :href="post.familyID">{{post.familyName}}
                 
                </b-dropdown-item >
                
                

                  

              
            </b-dropdown>
            </div>-->
            </b-navbar-nav>
   

<!--
      <b-form-select  v-model="selected" >
        <option :value="null">Please select a Category</option>
        <option v-for="post in posts.slice(0,5)" href="/about">
    {{ post.familyName }}
  </option>
      </b-form-select> -->

      </b-navbar-nav>

      <!-- Right aligned nav items -->
      <b-navbar-nav class="ml-auto">
       <!-- <b-nav-form  action="/about"> -->
       <b-nav-form >
          <b-form-input size="sm" class="mr-sm-2" placeholder="Search" v-model="picked" v-on:keyup.enter="putData"></b-form-input>
          
          <!--<a href="/about"><b-form-input size="sm" class="mr-sm-2" placeholder="Voice Search" v-model="picked"></b-form-input></a>-->

          <!--<b-button size="sm" class="my-2 my-sm-0" v-on:click="changeHeader"> -->
 <b-button  v-on:click="putData" ><a href="/about">Search </a>

           <!-- <b-button size="sm" class="my-2 my-sm-0" v-on:click="addTodo()">Search-->
            
            
            
            </b-button>
             <b-button  v-on:click="audioFunc">Audio Search </b-button>
         <!-- <span>Picked: {{ picked }}</span>-->
        </b-nav-form>

        <b-nav-item-dropdown text="Lang" right>
          <b-dropdown-item href="#">EN</b-dropdown-item>
          <b-dropdown-item href="#">ES</b-dropdown-item>
          <b-dropdown-item href="#">RU</b-dropdown-item>
          <b-dropdown-item href="#">FA</b-dropdown-item>
        </b-nav-item-dropdown>

        <b-nav-item-dropdown right>
          <!-- Using 'button-content' slot -->
          <template v-slot:button-content>
            <em>User</em>
          </template>
          <b-dropdown-item href="#">Profile</b-dropdown-item>
          <b-dropdown-item href="#">Sign Out</b-dropdown-item>
        </b-nav-item-dropdown>
        
       <!-- <b-button >{{picked}}</b-button> -->

      </b-navbar-nav>
    </b-collapse>
  </b-navbar>
 
</template>



<script>
const options = {
  headers: {'Access-Control-Allow-Origin': '*'}
};
import axios from 'axios';
import FamilyList from '@/components/FamilyList.vue'
import Categories from '@/components/Categories.vue'

 export default {
  
        components: {
      FamilyList,Categories
    },
    data() {
      return {
        posts: [],
        commodities: [],
        selected: null,
        picked:null,
        audio_text:null,
        blob:null

        
        
      }
    },
    methods: {
      
    async putData() {
      console.log("hi")
     let response = await axios.get(process.env.VUE_APP_URL.concat("/api/uiSearchPOST/").concat(this.picked),options).then(response => {
      // JSON responses are automatically parsed.
      this.commodities = response.data
      
        
       
    });
    //setTimeout( () => this.$router.push({ href: '/about'}), 10000);
     this.$forceUpdate();
        this.$router.push('about') ;
    }
    ,
     setTimeout:function(){
      console.log('ABINASH')
      //this.$router.push({ path: '/about'});
      if(this.$route.path == "/about") 
      {setTimeout(location.reload.bind(location), 10000);
      console.log("AXSS") };
      setTimeout( () => this.$router.push({ path: '/about'}), 10000);
    },


async audioFunc(){
   window.SpeechRecognition = window.webkitSpeechRecognition || window.SpeechRecognition;
    let finalTranscript = '';
    let recognition = new window.SpeechRecognition();

    recognition.interimResults = true;
    recognition.maxAlternatives = 10;
    recognition.continuous = true;

    recognition.onresult = (event) => {
      let interimTranscript = '';
      for (let i = event.resultIndex, len = event.results.length; i < len; i++) {
        let transcript = event.results[i][0].transcript;
        if (event.results[i].isFinal) {
          finalTranscript += transcript;
          
     let response =  axios.get(process.env.VUE_APP_URL.concat("/api/uiSearchPOST/").concat(finalTranscript),options).then(response => {
      // JSON responses are automatically parsed.
      this.commodities = response.data
      
        
       
    });
    //setTimeout( () => this.$router.push({ href: '/about'}), 10000);
    
     //this.$router.push('about') ;
        } else {
          interimTranscript += transcript;
        }
      }
  this.picked=finalTranscript;
 

  }
 
    recognition.start();
       let respone=  this.setTimeout();
      // this.setTimeout( () => this.$router.push({ path: '/about'}), 10000);
     
  
  
 

    
}
    },
  
created() {
  //setTimeout( () => this.$router.push({ path: '/about'}), 10000);
  
  const options = {
  headers: {'Access-Control-Allow-Origin': '*'}
};
  axios.get(process.env.VUE_APP_URL.concat("/api/hello"),options).then(response => {
      // JSON responses are automatically parsed.
      this.posts = response.data
    }),
    axios.get(process.env.VUE_APP_URL.concat("/api/commodities"),options).then(response => {
      // JSON responses are automatically parsed.
      this.commodities = response.data
    }),
    
    
console.log("HI");
console.log(this.posts.slice(0).familyName);


}
  }
</script>

<style scoped>

</style>