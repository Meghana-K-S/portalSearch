console.log("hello from the js");

var textInput = document.querySelector("#textInput");
var catList = document.querySelector("#categoriesList");
var categories =[];

textInput.addEventListener('keyup',function(event){
if(event.keyCode===188) {
if(this.value.length<2){
console.log("category name is required");
this.value="";
}
else{
var category=this.value.substring(0,this.value.length-1);
console.log(category);
categories.push(category);
this.value="";
reloadCategories();

}

}
})

function reloadCategories(){
catList.innerHTML="";
for(var i=0;i<categories.length;i++) {
//catList.innerHTML +='<li>${categories[i]}</li>';
	document.write(categories[i]);
}
}