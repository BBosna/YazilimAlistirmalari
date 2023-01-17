//$('.toast').toast(option)
const input = document.getElementById('task');
const addBtn = document.getElementById('liveToastBtn');
const ToDoUl = document.getElementById('list');
const clearBtn = document.getElementById('ClearBtn');
const listBody = document.getElementById('listBody');
const liClicks = document.getElementsByClassName('gorevler')
const gorevler = document.getElementsByClassName('gorevler');



eventListener() ;
function eventListener() {
    addBtn.addEventListener('click', addTask)
    clearBtn.addEventListener('click', clearLists)
}

function addTask() {
    const task = input.value;
    if (task) {
        const li = document.createElement('li');
        li.className = 'gorevler';
        li.textContent = task;
        ToDoUl.appendChild(li);
        input.value = '';
        $('.success').toast('show');
    }
    else
    {
        $('.error').toast('show');
    }
}

function clearLists() {
    ToDoUl.innerHTML = '';
    alert('Görevler Silindi!')
}






