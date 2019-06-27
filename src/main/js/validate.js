function validateForm() {
if (isEmpty(document.getElementById('Email').value.trim())) {
alert('Email is required!');
return false;
}
if (!validateEmail(document.getElementById('Email').value.trim())) {
alert('Email must be a valid email address!');
return false;
}
if (isEmpty(document.getElementById('password').value.trim())) {
alert('Password is required!');
return false;
}
if (isEmpty(document.getElementById('cpassword').value.trim())) {
alert('Confirm password is required!');
return false;
}
if (isEmpty(document.getElementById('employername').value.trim())) {
alert('Name is required!');
return false;
}
if (!document.getElementById('data_10_0').checked && !document.getElementById('data_10_1').checked && !document.getElementById('data_10_2').checked ) {
alert('Gender is required!');
return false;}
if (isEmpty(document.getElementById('date').value.trim())) {
alert('DOB is required!');
return false;
}
if (isEmpty(document.getElementById('data_12').value.trim())) {
alert('Terms and Conditions is required!');
return false;
}
if (!document.getElementById('data_13_0').checked ) {
alert('I Agree is required!');
return false;}
return true;
}
function isEmpty(str) { return (str.length === 0 || !str.trim()); }
function validateEmail(email) {
var re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,15}(?:\.[a-z]{2})?)$/i;
return isEmpty(email) || re.test(email);
}
