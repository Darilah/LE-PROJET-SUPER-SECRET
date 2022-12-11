function search_artiste() {
    let input = document.getElementById('searchbar').value
    input=input.toLowerCase();
    let x = document.getElementsByClassName('artistes');
    let y = document.getElementsByClassName('artistes_img');
    let z = document.getElementById('description_artiste');
    artistes_img
    for (i = 0; i < x.length; i++) { 
    if (!x[i].innerHTML.toLowerCase().includes(input) && !y[i].innerHTML.toLowerCase().includes(input) && !z[i].innerHTML.toLowerCase().includes(input) ) {
        x[i].style.display="none";
        y[i].style.display="none";
        z[i].style.display="none";
    }
    else {
        x[i].style.display="list-item";
        y[i].style.display="list-item";
        z[i].style.display="list-item";
    }
    }
    }