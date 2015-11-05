
// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:
//preparations are complete

// Release 1:
var r1 = document.getElementById('release-0')
var att = document.createAttribute('class')
att.value = "done"
r1.setAttributeNode(att)


// Release 2:
var r2 = document.getElementById('release-1')//.style.display='none'
r2.style.display='none'


// Release 3:
//document.getElementsByTagName("H1").innerHTML="check";
var r3 = document.getElementsByTagName("H1")[0];
r3.innerHTML='I completed release 2'


// Release 4:
var r4 = document.getElementById('release-3');
r4.style.backgroundColor='#955251'

// Release 5:

var r5 = document.getElementsByClassName('release-4');
for (var i=0, il = r5.length; i<il; i++){
  r5[i].style.fontSize='2em';
}

//Release 6:
var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));

