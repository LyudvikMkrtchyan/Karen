// Function to get the citizenId from URL parameters
function getCitizenIdFromURL() {
    const urlParams = new URLSearchParams(window.location.search);
    return urlParams.get('citizenId');
}

// Function to fetch and display citizen data based on citizenId
function loadCitizenData() {
    const citizenId = getCitizenIdFromURL();
    if (!citizenId) {
        console.error('No citizenId found in URL');
        return;
    }

    const host = localStorage.getItem('host');
    const port = localStorage.getItem('port');
    const command = `/getConcretCitizen?id=${citizenId}`;
    const url = `http://${host}:${port}${command}`;
    
    fetch(url)
        .then(response => response.json())
        .then(data => {
            document.getElementById('country').value = data.country || '';
            document.getElementById('id').textContent = citizenId;
            document.getElementById('name').value = data.name || '';
            document.getElementById('surname').value = data.surname || '';
            document.getElementById('fatherName').value = data.fatherName || '';
            document.getElementById('birthDate').value = data.birthDate || '';
            
            document.getElementById('embassyToMOFA-1').value = data.embassyToMOFA1 || '';
            document.getElementById('MOFAtoCommisariat-1').value = data.MOFAtoCommisariat1 || '';
            document.getElementById('commisariatToMOFA-1').value = data.commisariatToMOFA1 || '';
            document.getElementById('MOFAtoEmbassy-1').value = data.MOFAtoEmbassy1 || '';

            document.getElementById('embassyToMOFA-2').value = data.embassyToMOFA2 || '';
            document.getElementById('MOFAtoCommisariat-2').value = data.MOFAtoCommisariat2 || '';
            document.getElementById('commisariatToMOFA-2').value = data.commisariatToMOFA2 || '';
            document.getElementById('MOFAtoEmbassy-2').value = data.MOFAtoEmbassy2 || '';

            document.getElementById('embassyToMOFA-3').value = data.embassyToMOFA3 || '';
            document.getElementById('MOFAtoCommisariat-3').value = data.MOFAtoCommisariat3 || '';
            document.getElementById('commisariatToMOFA-3').value = data.commisariatToMOFA3 || '';
            document.getElementById('MOFAtoEmbassy-3').value = data.MOFAtoEmbassy3 || '';

            document.getElementById('notes').value = data.notes || '';
        })
        .catch(error => {
            console.error('Error fetching citizen data:', error);
        });
}

// Function to disable all fields initially
function disableEditing() {
    const fields = document.querySelectorAll('input, textarea');
    fields.forEach(field => field.setAttribute('readonly', true));
}

// Function to enable editing on all fields
function enableEditing() {
    const fields = document.querySelectorAll('input, textarea');
    fields.forEach(field => field.removeAttribute('readonly'));
}

// Call loadCitizenData and disableEditing when the page loads
document.addEventListener('DOMContentLoaded', () => {
    loadCitizenData();
    disableEditing();
});

// Add event listener for the 'Փոփոխել' button to enable editing
document.getElementById('editButton').addEventListener('click', enableEditing);

// Function to save data by sending a JSON request to the backend
function saveData() {
    const citizenId = getCitizenIdFromURL();
    const payload = {
        citizenId : parseInt(citizenId),
        country   : document.getElementById('country').value,
        name      : document.getElementById('name').value,
        surname   : document.getElementById('surname').value,
        fatherName: document.getElementById('fatherName').value,
        birthDate : document.getElementById('birthDate').value,
        notes     : document.getElementById('notes').value,
        
        embassyToMOFA1    : document.getElementById('embassyToMOFA-1').value,
        MOFAtoCommisariat1: document.getElementById('MOFAtoCommisariat-1').value,
        commisariatToMOFA1: document.getElementById('commisariatToMOFA-1').value,
        MOFAtoEmbassy1    : document.getElementById('MOFAtoEmbassy-1').value,

        embassyToMOFA2    : document.getElementById('embassyToMOFA-2').value,
        MOFAtoCommisariat2: document.getElementById('MOFAtoCommisariat-2').value,
        commisariatToMOFA2: document.getElementById('commisariatToMOFA-2').value,
        MOFAtoEmbassy2    : document.getElementById('MOFAtoEmbassy-2').value,

        embassyToMOFA3    : document.getElementById('embassyToMOFA-3').value,
        MOFAtoCommisariat3: document.getElementById('MOFAtoCommisariat-3').value,
        commisariatToMOFA3: document.getElementById('commisariatToMOFA-3').value,
        MOFAtoEmbassy3    : document.getElementById('MOFAtoEmbassy-3').value

    };
    console.log(payload);
    const host = localStorage.getItem('host');
    const port = localStorage.getItem('port');
    const command = `/updateCitizenInformation`;
    const url = `http://${host}:${port}${command}`;

    fetch(url, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(payload)
    })
    .then(response => {
        if (response.ok) {
            console.log('Data saved successfully');
        } else {
            console.error('Error saving data');
        }
    })
    .catch(error => {
        console.error('Error sending save request:', error);
    });
}

// Add event listener to 'saveData' button to trigger the saveData function
document.getElementById('saveData').addEventListener('click', saveData);


