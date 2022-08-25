/**
 * 
 */
 let nameCheck = function() {
	 let nameRegex = `^[a-zA-Z]+$`;
	 if(!document.myForm.name.value.match(nameRegex)){
			if(alert("Name must contain only alphabets")){ 
				 document.myForm.name.focus();
		    }
			else
				document.activeElement.blur();
		}
    else{
        return false;
    } 
   
}

 let mobileNumberCheck = function() {
	 let phoneRg = `^[6-9]{1}[0-9]{9}`;
	 if(!document.myForm.mobileNumber.value.match(phoneRg)){
			if(alert("Mobile Number is not valid and support only 10 numbers")){
				 document.myForm.mobileNumber.focus();
			}
			else
				document.activeElement.blur();
		}
    else{
    	return false;
    }
} 
 
let emailCheck = function() {
	let rg = `^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$`;
	if(!document.myForm.emailId.value.match(rg)){
		if(alert("Email is not valid Ex:abc@gmail.com")){
			document.myForm.emailId.focus();
		}
		else
			document.activeElement.blur();
	}
    else{
    	return false;
    }
}

let passwordCheck = function() {
		let rg = `^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$`;
		if(!document.form.password.value.match(rg)){
			if(alert("password must begin with letter and contain atleast one number and one symbol must have atleast 8 characters Ex:abcde@12")){
				document.form.password.focus();
			}
			else
				document.activeElement.blur();
		}
	    else{
	    	return false;
	    }
	}
		function checkDateOfBirth() {
           let date = document.getElementById('dob').value;
           let now = new Date();
           let dt1 = Date.parse(now),
           dt2 = Date.parse(date);
           if (dt2 >= dt1) {
                alert("Date must be in the past");
           }
     }
     
      let symptomsCheck = function() {
		let symptomsRegex = `^[a-zA-z\s]+$`;
		if(!document.form.symptoms.value.match(symptomsRegex)){
			if(alert(" Symptoms can't be empty or must contain only alphabets")){
				 document.form.symptoms.focus();
			}
			else
				document.activeElement.blur();
		}
		else{
	    	return false;
	    }
	}