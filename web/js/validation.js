/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
function searchBooks() {
    const query = document.getElementById("searchBox").value;
    const xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            document.getElementById("results").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "ajax/liveSearch.jsp?q=" + encodeURIComponent(query), true);
    xhttp.send();
}

function validateBookForm() {
    let title = document.getElementById("title").value.trim();
    let author = document.getElementById("author").value.trim();
    if (title === "" || author === "") {
        alert("Title and Author are required.");
        return false;
    }
    return true;
}


