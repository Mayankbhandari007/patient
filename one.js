
    // After form loads focus will go to User id field.  
      function firstfocus()  
      {  
      var uid = document.reg.uname.focus();  
      return true;  
      } 
    // This function will validate Name.  
      function firstname()  
      {   
      var uname1 = document.reg.uname;  
      var letters = /^[A-Za-z]+$/;  
      if(uname1.value.match(letters))  
      {  
      // Focus goes to next field i.e. Address.
    
    	      document.reg.lname.focus();  
      return true;  
      }  
      else  
      {  
      alert('Username must have alphabet characters only');  
	  document.reg.uname1.value="";
      uname1.focus();  
      return false;  
      }  
      }  
      // This function will validate Address.  
      function lastname()  
      {   
      var lname1 = document.reg.lname;  
      var letters = /^[A-Za-z]+$/;;  
      if(lname1.value.match(letters))  
      {  
      // Focus goes to next field i.e. Country.  ;    	
    	  document.reg.sex.focus();  
      return true;  
      }  
      else  
      {  
      alert('last name must have  characters only');
	  document.reg.lname1.value="";
      lname1.focus();  
      return false;  
      }  
      }  
      function  validateFn() {
    	  if (document.querySelectorAll('[name=sex]:checked').length == 0) {
    		    alert('please select a gender');
    		  }
    		}

    		document.querySelector('[type=button]').addEventListener('click',validateFn, false);
      
      // This function will select country name.  
      
     function phonenumber(inputtxt)  
      {  
        var phoneno = /^\d{10}$/;  
        if((inputtxt.value.match(phoneno))) 
              {  
            return true;  
              }  
            else  
              {  
              alert("it shuld be no and must be 10 digit..."); 
              document.reg.phn.value="";
              phn.focus();
              document.getElementById('submitbtn').disabled = true;
              return false;  
              } 
        isValidForm  = true;
   	 document.getElementById('submitbtn').disabled = false;
   	 console.log("Succes age is validated");
        
      } 
     var isValidForm = false;
     function validateAge(arg){
    	 var age_ip = document.getElementById('f_age').value;
    	 var dob_ip = document.getElementById('f_dob').value;
    	 console.log(dob_ip);
    	 var temp = dob_ip.split('/');
    	 var currDate = new Date().getFullYear();
    	 console.log("temp",temp[2],"currDate",currDate);
    	 if (currDate - temp[2] != age_ip){
    		 alert("enter correct age");
    		 document.getElementById('submitbtn').disabled = true;
    		 return false;
    	 }
    	 isValidForm  = true;
    	 document.getElementById('submitbtn').disabled = false;
    	 console.log("Succes age is validated");
     }
      function validateSex(arg){
    	  var sex_ip=document.getElementById('f_sex').value;
    	  if(sex_ip=="")
     alert("select one option");
      }
     //document.querySelector('input[name="sex"]:checked').value;
     
     // This function will validate ZIP Code.  
//      function allnumeric()  
//      {   
//      var uzip = document.registration.zip;  
//      var numbers = /^[0-9]+$/;  
//      if(uzip.value.match(numbers))  
//      {  
//      // Focus goes to next field i.e. email.  
//      document.registration.email.focus();  
//      return true;  
//      }  
//      else  
//      {  
//      alert('ZIP code must have numeric characters only');  
//      uzip.focus();  
//      return false;  
//      }  
//      }  
//     // This function will validate Email.  
//      function ValidateEmail()  
//      {  
//      var uemail = document.registration.email;  
//      var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;  
//      if(uemail.value.match(mailformat))  
//      {  
//      document.registration.desc.focus();  
//      return true;  
//      }  
//      else  
//      {  
//      alert("You have entered an invalid email address!");  
//      uemail.focus();  
//      return false;  
//      }  
//      } 
//
