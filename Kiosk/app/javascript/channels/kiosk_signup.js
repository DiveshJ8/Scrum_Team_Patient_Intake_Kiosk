const email = document.getElementById("email");
const pass = document.getElementById("pass");
const fname = document.getElementById("fname");
const lname = document.getElementById("lname");

const street = document.getElementById("street");
const city = document.getElementById("city");
const state = document.getElementById("state");
const zip = document.getElementById("zip");
const dob = document.getElementById("dob");
const phone = document.getElementById("phone");
const submitbtn = document.getElementById("submitbtn");

login = (datain) => {
    let data = datain
    fetch('/login', {
        method:'POST',
        mode: "cors",
        cache: "no-cache",
        body: JSON.stringify(data)
    })
    .then(response => response.text())
    .then(data => {
        if(data == "1"){
            console.log("Login Successful")
        }
        else{
            console.log("Not a valid user")
        }
    })  
}

submitForm = () => {
    console.log("hi")
    let datasub = {
        "email": email.value,
        "pass": pass.value,
        "fname": fname.value,
        "lname": lname.value,
        "street": street.value,
        "city": city.value,
        "state": state.value,
        "zip": zip.value,
        "dob": dob.value,
        "phone": phone.value
    }

    fetch('/patientdetails', {
        method:'POST',
        mode: "cors",
        cache: "no-cache",
        body: JSON.stringify(datasub)
    })
    .then(response => response.text())
    .then(data => {
        if(data == "1"){
            console.log("Data sent successfully")
            dataIn = {email:"email"}
            login()
        }
        else{
            console.log("Data was not submitted")
        }
    })  

}

checkUser = () => {
    
    let dataCheck = {"email": email.value, 
                    "fname":fname.value, 
                    "lname":lname.value}
    console.log(dataCheck)
    fetch('/authenticate', {
        method:'POST',
        mode: "cors",
        cache: "no-cache",
        body: JSON.stringify(dataCheck),
    })
    .then(response => response.text())
    .then(data => {
        if(data == "1"){
            submitForm()
        }
        else{
            console.log("Not a valid User")
        }
    })
    .catch(e => {
        console.log(e);
    });
}

submitbtn.addEventListener('click', checkUser);