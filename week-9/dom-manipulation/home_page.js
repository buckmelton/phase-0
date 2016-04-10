// DOM Manipulation Challenge


// I worked on this challenge with Jason Milfred.
// This challenge took me 2.75 hours including prep work.


// Add your JavaScript calls to this page:

// Release 0:

document.getElementById('release-0').className = 'done';


// Release 1:

document.getElementById('release-1').style.display = "none";


// Release 2:

document.getElementsByTagName('h1')[0].innerText = "I completed Release 2";


// Release 3:

document.getElementById('release-3').style.backgroundColor = '#955251';


// Release 4:

for (var i=0; i<rel4elements.length; i++) {
   rel4elements[i].style.fontSize = '2em';
};


// Release 5:

var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));

