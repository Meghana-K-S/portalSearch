var options = {
	valueNames: [
		'name',
		'dob',
		'qual',
		'ex',
		'jobi',
		'state',
		'country',
		{ data: ['exp']}
	]
};
var userList = new List('users', options);

function resetList(){
userList.search();
userList.filter();
userList.update();
$(".filter-all").prop('checked', false);
$('.filter').prop('checked', false);
$('.search').val('');
//console.log('Reset Successfully!');
};
  
function updateList(){
var values_job = $("input[name=exp]:checked").val();

console.log(values_job);

userList.filter(function (item) {
var jobFilter = false;



if(values_job == "BE/B.tech")
{ 
jobFilter = item.values().job ==values_job;
}
if(values_job == "post graduation")
{ 
jobFilter = item.values().job ==values_job;
}
if(values_job == "diploma")
{
jobFilter = item.values().job ==values_job;

}
return  jobFilter
});
userList.update();
console.log('Filtered: ' + values_job);
}
                               
$(function(){
  //updateList();
$('input[name=exp]').change(updateList);

userList.on('updated', function (list) {
if (list.matchingItems.length > 0) {
$('.no-result').hide()
} else {
$('.no-result').show()
}
});
});