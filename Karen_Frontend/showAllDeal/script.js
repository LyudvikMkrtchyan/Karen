// Function to fetch and display citizens data
function loadCitizens() {
    const host = localStorage.getItem('host');
    const port = localStorage.getItem('port');
    const comand = '/getAllCitizens';
    const url = `http://${host}:${port}${comand}`;
    console.log(url);
    fetch(url)
        .then(response => response.json())
        .then(data => {
            const tableBody = document.querySelector('#citizensTable tbody');
            tableBody.innerHTML = ''; // Clear previous table data

            // Loop through each citizen and create a new table row
            data.forEach(citizen => {
                const row = document.createElement('tr');

                // Add event listener for right-click (context menu)
                row.addEventListener('contextmenu', (e) => {
                    e.preventDefault(); // Prevent the default context menu
                    showContextMenu(e, citizen); // Show custom context menu
                });

                // Add event listener for double-click
                row.addEventListener('dblclick', () => {
                    changeUrlWithCitizenId(citizen.id); // Change the URL with citizen ID
                });

                row.innerHTML = `
                    <td>${citizen.name}</td>
                    <td>${citizen.surname}</td>
                    <td>${citizen.fatherName}</td>
                    <td>${citizen.birthDate}</td>
                    <td>${citizen.id}</td>
                `;
                tableBody.appendChild(row);
            });
        })
        .catch(error => {
            console.error('Error fetching citizens data:', error);
        });
}

// Function to show context menu on right-click
function showContextMenu(event, citizen) {
    const contextMenu = document.getElementById('contextMenu');
    contextMenu.style.display = 'block';
    contextMenu.style.left = `${event.pageX}px`;
    contextMenu.style.top = `${event.pageY}px`;

    // Store citizen data for search functionality
    contextMenu.dataset.citizenId = citizen.id;

    // Prevent context menu from closing when interacting with search field or column selector
    document.getElementById('searchColumn').addEventListener('click', (e) => {
        e.stopPropagation();
    });

    // Show context menu and focus the input field
    document.getElementById('searchInput').focus();
    
    // Add event listeners for the buttons
    document.getElementById('searchButton').addEventListener('click', applySearch);
    document.getElementById('cancelButton').addEventListener('click', hideContextMenu);
}

// Function to hide context menu
function hideContextMenu() {
    const contextMenu = document.getElementById('contextMenu');
    contextMenu.style.display = 'none';
    window.removeEventListener('click', hideContextMenu);
}

// Function to apply search when pressing Enter
document.getElementById('searchInput').addEventListener('keypress', function(event) {
    if (event.key === 'Enter') {
        applySearch();
    }
});

// Function to apply search
function applySearch() {
    const searchColumn = document.getElementById('searchColumn').value;
    const searchText = document.getElementById('searchInput').value.toLowerCase();

    const rows = document.querySelectorAll('#citizensTable tbody tr');
    rows.forEach(row => {
        const columnValue = row.cells[getColumnIndex(searchColumn)].textContent.toLowerCase();
        if (columnValue.includes(searchText)) {
            row.style.display = ''; // Show row
        } else {
            row.style.display = 'none'; // Hide row
        }
    });

    hideContextMenu(); // Hide context menu after search
}

// Helper function to get the column index
function getColumnIndex(column) {
    const columns = ['name', 'surname', 'fatherName', 'birthDate', 'id'];
    return columns.indexOf(column);
}

// Function to change the URL with citizen ID
function changeUrlWithCitizenId(citizenId) {
    const url = `../showConcretDeal/showConcretDeal.html?citizenId=${citizenId}`;
    window.location.href = url;  // Redirect to the new URL with citizenId in query parameter
}

// Call loadCitizens on page load
document.addEventListener('DOMContentLoaded', loadCitizens);
document.getElementById('showAllButton').addEventListener('click', function() {
    location.reload();
});

document.getElementById('addNewProcessButton').addEventListener('click', function() {
    window.location.href = '../addNewDeal/addNewDeal.html';

});
