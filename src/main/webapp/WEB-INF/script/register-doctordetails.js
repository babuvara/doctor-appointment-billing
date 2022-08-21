/**
 * 
 */
 let doctorNameCheck = function() {
	 let nameRegex = `^[a-zA-z\s]+$`;
	 if(!document.myForm.doctorName.value.match(nameRegex)){
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

 
let doctoremailCheck = function() {
	let rg = `^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$`;
	if(!document.myForm.doctoremail.value.match(rg)){
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

let doctorPasswordCheck = function() {
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
	
	 let specialityCheck = function() {
		let specialityRegex = `^[a-zA-z\s]+$`;
		if(!document.form.speciality.value.match(specialityRegex)){
			if(alert(" speciality can't be empty or must contain only alphabets")){
				 document.form.speciality.focus();
			}
			else
				document.activeElement.blur();
		}
		else{
	    	return false;
	    }
	}