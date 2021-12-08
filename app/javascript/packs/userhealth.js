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


    let data = {
        prevna: prevna.value,
        flu: flu.value,
        zoster:zost.value,
        pneu:pneu.value,
        teta:teta.value,
        famtext: famtext.value,
        surgtext: surgtext.value,
        medications: medic.value,
        asthma: asth.value,
        cancer: canc.value,
        diabetes: diab.value,
        heartdisease: hd.value,
        highblood: hblood.value,
        highcholesterol:highc.value,
        stroke:stroke.value 

    }

    /*
    fetch("url", {
        method:"POST",
        mode: "cors",
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
    */

    location.href = "/userdemographics"
    backbtn.removeEventListener('click', goBack);
    nextbtn.removeEventListener('click', goNext);
}





backbtn.addEventListener('click', goBack);
nextbtn.addEventListener('click', goNext);
