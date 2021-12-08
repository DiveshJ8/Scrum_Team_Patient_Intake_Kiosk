next = document.getElementById('next')
back = document.getElementById('back')

insur_no = document.getElementById('insur_no')
rxbin = document.getElementById('rxbin')
rxpcn = document.getElementById('rxpcn')
rxgroup = document.getElementById('rxgroup')
insurance = document.getElementById('insurance')
provider = document.getElementById('provider')
priority = document.getElementById('priority')





prevPage = () => {
    
    location.href = "/userdetails"
    back.removeEventListener('click', prevPage);
    next.removeEventListener('click', nextpage);
}

nextPage = () => {

    let dataIn = {patient:{
        insurance_no: insur_no,
        rx_bin: rxbin,
        rx_pcn: rxpcn,
        rx_group: rxgroup,
        provider: provider,
        priority: priority
    }}

    fetch('/patients',{
        method:"PATCH",
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        cache:"no-cache",
        body:JSON.stringify(dataIn)
    })
    .then(responseIn => responseIn.text())
    .then(dataIn => console.log(dataIn))
    .catch(err => console.log(err))

    location.href = "/userhealth"

    back.removeEventListener('click', prevPage);
    next.removeEventListener('click', nextPage);
}

next.addEventListener('click', nextPage);
back.addEventListener('click', prevPage);