localStorage.setItem('host', 'localhost');
localStorage.setItem('port', '9797');
document.getElementById('createDealBtn').addEventListener('click', function() {
    window.location.href = './addNewDeal/addNewDeal.html';
});

document.getElementById('viewDealBtn').addEventListener('click', function() {
    window.location.href = './showAllDeal/showAllDeal.html';

});

document.getElementById('searchDealBtn').addEventListener('click', function() {
    window.location.href = './sharchDeal/showAllDeal.html';
});
