/**
 * 
 */
 
  let purposeCheck = function() {
		let purposeRegex = `^[a-zA-z\s]+$`;
		if(!document.form.symptoms.value.match(purposeRegex)){
			if(alert(" purpose can't be empty or must contain only alphabets")){
				 document.form.purpose.focus();
			}
			else
				document.activeElement.blur();
		}
		else{
	    	return false;
	    }
	}