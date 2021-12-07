nextbtn = document.getElementById("next")
back = document.getElementById("back")

fname = document.getElementById('fname')
lname = document.getElementById('lname')
street = document.getElementById('street')
city = document.getElementById('city')
state = document.getElementById('state')
zip = document.getElementById('zip')
dob = document.getElementById('dob')
phone = document.getElementById('phone')

goBack = () => {
    location.href = "/signin"
}


submitInfo = () => {
    let data = {
        fname:fname.value,
        lname:fname.value,
        street:street.value,
        city:city.value,
        state:state.value,
        zip:zip.value,
        dob:dob.value,
        phone:phone.value,
        usetype:"Patient"
    } 
    /*
    fetch('/users/up_personaldetails',{
        method:"POST",
        mode:"cors",
        cache:"no-cache",
        body:JSON.stringify(data)
    })
    .then(responseIn => responseIn.text())
    .then(dataIn => console.log(dataIn))
    .catch(err => console.log(err))
*/
    location.href = "/userinsurance"
    

    nextbtn.removeEventListener('click', submitInfo);
    back.removeEventListener('click', goBack);
}

nextbtn.addEventListener('click', submitInfo);
back.addEventListener('click', goBack);