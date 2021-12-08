submitbtn = document.getElementById("submitbtn")
agree = document.getElementById("agree")
disagree = document.getElementById("disagree")



checkAgree = () => {
    if (!(agree.checked)){
        agree.checked = true
    }
}

checkDisagree = () => {
    if (!(disagree.checked)){
        disagree.checked = true
    }
}

goBack = () =>{
    location.href = "/userhealth"

    submitbtn.removeEventListener('click', submitInfo);
    agree.removeEventListener('click', checkAgree);
    disagree.removeEventListener('click', checkDisagree);
    backbtn.removeEventListener('click', goBack);
}

submitInfo = () => {
    let consent = ""
    if(disagree.checked){
        consent = disagree.value
    }
    else{
        if(agree.checked){
            consent = disagree.value
        }
        else{
            return 0
        }
    }

    let data = {
        consent: consent
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
    location.href = "/signin"

    submitbtn.removeEventListener(click, submitInfo);
    agree.removeEventListener(click, checkAgree);
    disagree.removeEventListener(click, checkDisagree);
    backbtn.addEventListener('click', goBack);

}

submitbtn.addEventListener('click', submitInfo);
backbtn.addEventListener('click', goBack);
agree.addEventListener('click', checkAgree);
disagree.addEventListener('click', checkDisagree);

