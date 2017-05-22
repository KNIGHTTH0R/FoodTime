/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//$(document).ready(function(){
//   colorChange('#id');
//});
function colorChange(id)
{
    document.getElementById(id).style.border="none";
}

    function myFunction() {
        document.getElementById("myOrders").classList.toggle("show");
    }
    window.onclick = function (event) {
        if (!event.target.matches('.dropbtn')) {

            var dropdowns = document.getElementsByClassName("dropdown-content");
            var i;
            for (i = 0; i < dropdowns.length; i++) {
                var openDropdown = dropdowns[i];
                if (openDropdown.classList.contains('show')) {
                    openDropdown.classList.remove('show');
                }
            }
        }
    }
    
    function dropDown(id) {
        alert(id);
        document.getElementById("myOrders").classList.toggle("show");

    }
 


