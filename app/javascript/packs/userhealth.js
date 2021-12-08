nextbtn = document.getElementById('nextbtn')
backbtn = document.getElementById('backbtn')
prevna = document.getElementById('prevna')
flu = document.getElementById('flu')
zost = document.getElementById('zost')
pneu = document.getElementById('pneu')
teta = document.getElementById('teta')

famtext = document.getElementById('famtext')
surgtext = document.getElementById('surgtext')
medic = document.getElementById('medic')

asth = document.getElementById('asth')
canc = document.getElementById('canc')
diab = document.getElementById('diab')
hd = document.getElementById('hd')
hblood = document.getElementById('hblood')
highc = document.getElementById('highc')
stroke = document.getElementById('stroke')

goBack = () => {
    location.href = "/userinsurance"
    backbtn.removeEventListener('click', goBack);
    nextbtn.removeEventListener('click', goNext);
}

goNext = () => {


    let data = {health_history:{
        prevnar: prevna.value,
        flu: flu.value,
        zoster:zost.value,
        pneumovax:pneu.value,
        tetanus:teta.value,
        family_medical_history: famtext.value,
        surgeries: surgtext.value,
        medications: medic.value,
        asthma: asth.value,
        cancer: canc.value,
        diabetes: diab.value,
        heart_disease: hd.value,
        high_blood_pressure: hblood.value,
        high_cholesterol:highc.value,
        stroke:stroke.value 

    }}


    fetch("/health_histories", {
        method:"PATCH",
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        cache: "no-cache",
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(data)

    })
    .then(responseIn => responseIn.text())
    .then(dataIn => {
        console.log(dataIn)
    })

    location.href = "/userdemographics"
    backbtn.removeEventListener('click', goBack);
    nextbtn.removeEventListener('click', goNext);
}





backbtn.addEventListener('click', goBack);
nextbtn.addEventListener('click', goNext);
