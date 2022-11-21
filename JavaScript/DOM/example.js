let element = document.getElementById("demo");
element.innerHTML = "Hello, World!";

let arr = document.getElementsByClassName("ex");
// accessing the second element
arr[1].innerHTML = 2;

let phrase = document.getElementsByTagName("spam");
for (let x = 0; x < arr.length; x++) {
    phrase[x].innerHTML = "Hi there!)";
}

/*
element.childNodes returns an array of an element's child nodes.
element.firstChild returns the first child node of an element.
element.lastChild returns the last child node of an element.
element.hasChildNodes returns true if an element has any child nodes, otherwise false.
element.nextSibling returns the next node at the same tree level.
element.previousSibling returns the previous node at the same tree level.
element.parentNode returns the parent node of an element.
*/

let orange = document.getElementById("orange");
orange.src = "https://i1.sndcdn.com/avatars-NkhIl0YX3c5pdxPV-wPwXrg-t500x500.jpg";

let red = document.getElementsByTagName("p");
red[1].style = "color: red";
red[2].style.color = "orange";

/*
All CSS properties can be set and modified using JavaScript.
Just remember, that you cannot use dashes (-) in the property names:
these are replaced with camelCase versions, where the compound words
begin with a capital letter.
For example: the background-color property should be referred to as
backgroundColor.
*/
