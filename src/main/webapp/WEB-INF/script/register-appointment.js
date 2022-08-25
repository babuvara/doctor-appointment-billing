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
