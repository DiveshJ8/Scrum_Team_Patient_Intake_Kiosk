submitbtn = document.getElementById("submitbtn")
backbtn = document.getElementById('backbtn')






goBack = () =>{
    location.href = "/userconsent"

    submitbtn.removeEventListener('click', submitInfo);
    agree.removeEventListener('click', checkAgree);
    disagree.removeEventListener('click', checkDisagree);
    backbtn.removeEventListener('click', goBack);
}


submitInfo = () => {
    
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
    agree.removeEventListener('click', checkAgree);
    disagree.removeEventListener('click', checkDisagree);
    backbtn.addEventListener('click', goBack);

}

submitbtn.addEventListener('click', submitInfo);
backbtn.addEventListener('click', goBack);
agree.addEventListener('click', checkAgree);
disagree.addEventListener('click', checkDisagree);

