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

/*

- What did you learn about the DOM?

	I learned that the DOM is a big tree that includes nodes and leaves for all the elements on a web page.
	Using built-in JavaScript methods, you can access all of the nodes and leaves and manipulate and change
	them dynamically, altering a web page after it's been displayed.

- What are some useful methods to use to manipulate the DOM?

	document.getElementById - get the element on the page with the given id.
	document.getElementsByTagName - get an array of all elements that have a given tag.
	Node.childNodes - get an array of all child elements of the node.
	Node.firstChild - get the first child of the node.
	Node.lastChild - get the last child of the node.
	Node.parent - get the parent of the node.
	Node.nextSibling - get the next child of your parent node
	Node.previousSibling - get the previous child of your parent node

*/
