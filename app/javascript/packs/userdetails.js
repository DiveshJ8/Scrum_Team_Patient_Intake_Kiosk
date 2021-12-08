nextbtn = document.getElementById("next")
back = document.getElementById("back")

fname = document.getElementById('fname')
lname = document.getElementById('lname')
street = document.getElementById('street')
city = document.getElementById('city')
state = document.getElementById('state')
zip = document.getElementById('zip')
phone = document.getElementById('phone')

goBack = () => {
    location.href = "https://patient-login.herokuapp.com/sign_in"
}

queryString = window.location.search;
urlParams = new URLSearchParams(queryString);
patientId = urlParams.get('patientId');


submitInfo = () => {
    let data = {patient:{
    	client_id:'1',
        first_name:fname.value,
        last_name:fname.value,
        street:street.value,
        city:city.value,
        state:state.value,
        zip:zip.value,
        phone_no:phone.value
        //usetype:"Patient"
    } }
    
console.log(JSON.stringify(data));

    fetch('/users',{
        method:"POST",
        mode:"cors",
        cache:"no-cache",
        body:JSON.stringify(data)
    })
    .then(responseIn => responseIn.text())
    .then(dataIn => console.log(dataIn))
    .catch(err => console.log(err))

    location.href = "/userinsurance"
    

    nextbtn.removeEventListener('click', submitInfo);
    back.removeEventListener('click', goBack);
}

nextbtn.addEventListener('click', submitInfo);
back.addEventListener('click', goBack);
