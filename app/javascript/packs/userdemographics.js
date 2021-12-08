submitbtn = document.getElementById("submitbtn")
backbtn = document.getElementById('backbtn')


dob = document.getElementById('dob')
gender = document.getElementById('gender')
marital = document.getElementById('marital')
race = document.getElementById('race')
ethinicity = document.getElementById('ethinicity')
income = document.getElementById('income')
ephone = document.getElementById('ephone')
econtact = document.getElementById('econtact')
eemail = document.getElementById('eemail')
eaddress = document.getElementById('eaddress')
    



goBack = () =>{
    location.href = "/userconsent"

    submitbtn.removeEventListener('click', submitInfo);
    
    backbtn.removeEventListener('click', goBack);
}


submitInfo = () => {
    let data = {
        dob:dob.value,
        gender:gender.value,
        marital:marital.value,
        race:race.value,
        ethinicity:ethinicity.value,
        income:income.value,
        ephone:ephone.value,
        econtact:econtact.value,
        eemail:eemail.value,
        eaddress:eaddress.value
    } 
    /*
    fetch('/demographics/up_demographicdetails',{
        method:"POST",
        mode:"cors",
        cache:"no-cache",
        body:JSON.stringify(data)
    })
    .then(responseIn => responseIn.text())
    .then(dataIn => console.log(dataIn))
    .catch(err => console.log(err))
    */
    location.href = "https://patient-login.herokuapp.com/sign_in"

    submitbtn.removeEventListener('click', submitInfo);
    backbtn.addEventListener('click', goBack);

}

submitbtn.addEventListener('click', submitInfo);
backbtn.addEventListener('click', goBack);

