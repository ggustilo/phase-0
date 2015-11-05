// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 1:
  // <img src="dbc_logo.png">

//RELEASE 2:

  // <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

$('body').css({'background-color': 'pink'})

//RELEASE 3:
  //Add code here to select elements of the DOM

  bodyElement = $('body')
  h1Element = $('h1')
  mascotElement = $('mascot')
  imgElement = $('img')
  bodyH1Element = $('body h1:first')
  mascotH1Element = $('.mascot h1')

//RELEASE 4:
  // Add code here to modify the css and html of DOM elements
  bodyH1Element.css({color: 'green', border: '5px solid black', visibility: 'visible'})
  mascotH1Element.html('CopperHeads')


//RELEASE 5: Event Listener
  // Add the code for the event listener here
  imgElement.on('mouseover', function(e){
  	e.preventDefault()
  	$(this).attr('src', 'copperhead_logo.jpeg')
  })

  imgElement.on('mouseout', function(e){
  	e.preventDefault()
  	$(this).attr('src', 'dbc_logo.png')
  })


//RELEASE 6: Experiment on your own
	
	imgElement.click(function(){
		$(this).animate({
			opacity: .5,
			height: "50%",
		})
	})




})  // end of the document.ready function: do not remove or write DOM manipulation below this.

//Reflection:

//Prompt:

// What is jQuery?
// What does jQuery do for you?
// What did you learn about the DOM while working on this challenge?

// jQuery is a JavaScript library that makes DOM traversal and event handling easier with an API that works across multiple browsers.

// jQuery gives us simpler ways of doing DOM traversal and manipulation, event handling, and Ajax.  It also offers plugins to easily add functionality to web applications.

// I learned that the DOM basically just wraps all HTML elements of a document in variables and objects so you can access and manipulate them.



