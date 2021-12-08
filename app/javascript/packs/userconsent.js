submitbtn = document.getElementById("submitbtn")
backbtn = document.getElementById('backbtn')
agree = document.getElementById("agree")
disagree = document.getElementById("disagree")



checkAgree = () => {
    
    if (agree.checked == true && disagree.checked == true){
        disagree.checked = false
    }
}

checkDisagree = () => {
    if (agree.checked == true && disagree.checked == true){
        agree.checked = false
    }
}

goBack = () =>{
    location.href = "/userhealth"

    submitbtn.removeEventListener('click', submitInfo);
    agree.removeEventListener('click', checkAgree);
    disagree.removeEventListener('click', checkDisagree);
    backbtn.removeEventListener('click', goBack);
}

checked = () => {
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

}

submitInfo = () => {
    

    fetch('/patients',{
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
    location.href = "/userdemographics"

    submitbtn.removeEventListener('click', submitInfo);
    agree.removeEventListener('click', checkAgree);
    disagree.removeEventListener('click', checkDisagree);
    backbtn.addEventListener('click', goBack);

}

submitbtn.addEventListener('click', submitInfo);
backbtn.addEventListener('click', goBack);
agree.addEventListener('click', checkAgree);
disagree.addEventListener('click', checkDisagree);

