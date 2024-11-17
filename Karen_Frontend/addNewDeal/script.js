function saveData() {
    const birthDateTmp = document.getElementById("birthDate").value
    console.log(birthDateTmp);
    if (!isValidDate(birthDateTmp)) {
        return; // Прерываем сохранение, если дата неверна
    }
    const data = {
        country: document.getElementById("country").value,
        name: document.getElementById("name").value,
        surname: document.getElementById("surname").value,
        fatherName: document.getElementById("fatherName").value,
        birthDate: birthDateTmp,
        embassyToMOFA1: document.getElementById("embassyToMOFA-1").value,
        MOFAtoCommisariat1: document.getElementById("MOFAtoCommisariat-1").value,
        commisariatToMOFA1: document.getElementById("commisariatToMOFA-1").value,
        MOFAtoEmbassy1: document.getElementById("MOFAtoEmbassy-1").value,
        embassyToMOFA2: document.getElementById("embassyToMOFA-2").value,
        MOFAtoCommisariat2: document.getElementById("MOFAtoCommisariat-2").value,
        commisariatToMOFA2: document.getElementById("commisariatToMOFA-2").value,
        MOFAtoEmbassy2: document.getElementById("MOFAtoEmbassy-2").value,
        embassyToMOFA3: document.getElementById("embassyToMOFA-3").value,
        MOFAtoCommisariat3: document.getElementById("MOFAtoCommisariat-3").value,
        commisariatToMOFA3: document.getElementById("commisariatToMOFA-3").value,
        MOFAtoEmbassy3: document.getElementById("MOFAtoEmbassy-3").value,
        notes: document.getElementById("notes").value
    };

    // Отправка данных на сервер
    const host = localStorage.getItem('host');
    const port = localStorage.getItem('port');
    const comand = '/saveNewCitizenInformation';
    const url = `http://${host}:${port}${comand}`;

    fetch(url, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(data)
    })
    .then(response => {
        if (response.ok) {
            console.log('Data saved successfully');
            alert("Տվյալները Հաջողությամբ պահպանվել են");
            location.reload();
        } else {
            console.error('Error saving data');
        }
    })
}
function isValidDate(dateStr) {
    // Регулярное выражение для проверки формата YYYY-MM-DD
    const datePattern = /^\d{4}-\d{2}-\d{2}$/;
    console.log(dateStr); 
    // Проверяем соответствие формату
    if (!datePattern.test(dateStr)) {
        alert("Ամսաթիվը պետքա լինի հետեվյալ ֆորմատով Տարի-Ամիս-Օր ");
        return false;
    }

    // Преобразуем строку в компоненты года, месяца и дня
    const [year, month, day] = dateStr.split('-').map(Number);

    // Проверка диапазонов месяца и дня
    if (!isValidConcretDate(year, month,day)) {
        alert("Սխալ ամսաթիվ");
        return false;
    }

    // Проверяем правильность даты с учётом месяца и года
    const date = new Date(year, month - 1, day);
    return (
        date.getFullYear() === year &&
        date.getMonth() === month - 1 &&
        date.getDate() === day
    );
}

function isValidConcretDate(year, month, day) {
    // Массив количества дней в каждом месяце (для обычного года)
    const daysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

    // Проверка на високосный год (февраль имеет 29 дней)
    if ((year % 4 === 0 && year % 100 !== 0) || (year % 400 === 0)) {
        daysInMonth[1] = 29;  // Февраль 29 дней
    }

    // Проверка корректности месяца и дня
    if (month < 1 || month > 12 || day < 1 || day > daysInMonth[month - 1]){
        return false;
    }

    return true;
}
