function findselected() { 
    var result = document.querySelector('input[name="jobtype"]:checked').value;
    if(result=="Permanent"){

        document.getElementById("temp_duration").setAttribute('disabled', true);
    }
    else{
        document.getElementById("temp_duration").removeAttribute('disabled');
    }
}