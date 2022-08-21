/**
 * 
 */
 
 function checkAppointmentDate() {
           let date = document.getElementById('appointmentDate').value;
           let now = new Date();
           let dt1 = Date.parse(now),
           dt2 = Date.parse(date);
           if (dt2<= dt1) {
                alert("Appointment Date must be in the Future");
           }
     }
     
     let patientEmailCheck = function() {
	let rg = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$/;
	if(!document.myForm.patientEmail.value.match(rg)){
		if(alert("Patient Email is not valid Ex:abc@gmail.com")){
			document.myForm.patientEmail.focus();
		}
		else
			document.activeElement.blur();
	}
    else{
    	return false;
    }
}