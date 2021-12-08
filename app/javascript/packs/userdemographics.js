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
    location.href = "/userhealth"

    submitbtn.removeEventListener('click', submitInfo);
    
    backbtn.removeEventListener('click', goBack);
}


submitInfo = () => {
    let data = {patient:{
        gender:gender.value,
        marital_status:marital.value,
        race:race.value,
        ethnicity:ethinicity.value,
        income_group:income.value,
        emergency_contact_number:ephone.value,
        emergency_contact_name:econtact.value,
        emergency_contact_email:eemail.value,
        emergency_contact_address:eaddress.value
    } }
    let data2 = {user:{dob:dob.value,}}
    fetch('/patients/${patient_id}',{
        method:"PATCH",
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        cache:"no-cache",
        body:JSON.stringify(data)
    })
    .then(responseIn => responseIn.text())
    .then(dataIn => console.log(dataIn))
    .catch(err => console.log(err))

    location.href = "/userconsent"

    submitbtn.removeEventListener('click', submitInfo);
    backbtn.addEventListener('click', goBack);

}

submitbtn.addEventListener('click', submitInfo);
backbtn.addEventListener('click', goBack);

