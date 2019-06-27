/**
 * 
 */
function relocate_home()
{
     location.href = "reg.jsp";
} 
function change_home()
{
     location.href = "resetpass.jsp";
} 
function posting()
{
     location.href = "postjob.jsp";
} 
function forgot_pwd()
{
     location.href = "EmailForm.jsp";
} 
var check = function() {
	  if (document.getElementById('npassword').value ==
		    document.getElementById('cpassword').value) {
	    document.getElementById('message').style.color = 'green';
	    document.getElementById('message').innerHTML = '';
	    document.getElementById('submit').disabled = false;
	  } else {
	    document.getElementById('message').style.color = 'red';
	    document.getElementById('message').innerHTML = 'Confirm the password correctly';
	    document.getElementById('submit').disabled = true;
	  }
	}
