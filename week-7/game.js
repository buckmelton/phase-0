// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Tic Tac Toe
// Overall mission: A full-on Tic Tac Toe game with two players.
// Goals:  Allow player X and player O to take turns placing X's and O's on the board until someone wins
// Characters: Player X and Player 0
// Objects: Player X, Player 0, The Game, The Game Board
// Functions:
// 	Player: initialize, takeTurn
//  Game: initialize, play, isWon
//	GameBoard: initialize, placeTurn, isWon, display

/*
Pseudocode

Player.constructor
Input: X or O
Output: None
Steps
	Set to X or O

Player.takeTurn
Input: board
Output: New board with added token
Steps:
 Place X or O onto Game Board

Game.constructor
Input: None
Output: None
Steps:
 Create Game Board
 Create an X player and a O player
 Determine whether X or O will go first

 Game.play
 Input: None
 Output: Winning game configuration and winner
 Steps:
   Loop:
     Player takes turn (alternate players)
     Display board
     If Game Board has win
       Game is won, done, celebrate

 Game.isWon
 Input: None
 Output: Whether someone has won the game or not
 Steps:
   If GameBoard has a winning configuration
     return true
   Else
     return false

 GameBoard.constructor
 Input: None
 Output: New game board
 Steps:
   Create new empty tic tac toe board
   
 GameBoard.placeTurn
 Input: token (X or O) and location
 Output: New board with new token placed on it
 Steps:
   Put the given token into the given spot

 GameBoard.isWon
 Input: None
 Output: Whether board has a winning configuration
 Steps:
   Loop through the 8 possible straight lines through board
     If all spots in the row are all X's
     	return true
     If all spots in the row are all O's
        return true
   Return false

GameBoard.display
Input: None
Output: Display of board to console
Steps:
  Loop through each horizontal row
    Loop through each vertical column
      Display token in row, column

*/






// Initial Code

// // A game of Tic Tac Toe
// function TicTacToe(){

// 	this.board = new TTTBoard();
// 	this.playerX = new TTTPlayer("X");
// 	this.playerO = new TTTPlayer("O");

// 	// Determine which player takes first turn.
// 	var firstTurn = Math.floor(Math.random() * 2);
// 	if (firstTurn == 0) {
// 		this.player1 = this.playerX;
// 		this.player2 = this.playerO;
// 	} else {
// 		this.player1 = this.playerO;
// 		this.player2 = this.playerX;
// 	}

// 	// Has someone won the game?
// 	this.isWon = function() {
// 		return this.board.isWon();
// 	}

// 	// Play the game!
// 	this.play = function() {

// 	  this.board.display();

// 	  // Players take turns until someone has won.
// 		while(true) {

// 			this.player1.takeTurn(this.board);

// 			this.board.display();

// 			if (this.isWon()) {
// 				console.log("Hooray, player " + this.player1.token + " won!");
// 				break;
// 			}

// 			if (this.board.filled()) {
// 				console.log("Boo! Tie");
// 				break;
// 			}

// 			this.player2.takeTurn(this.board);

// 			this.board.display();

// 			if (this.isWon()) {
// 				console.log("Awesome, player " + this.player2.token + " won!")
// 				break;
// 			}

// 			if (this.board.filled()) {
// 				console.log("Boo! Tie");
// 				break;
// 			}

// 		} // end while

// 	} // end function play

// }

// // A Tic Tac Toe player.
// function TTTPlayer(token) {

// 	// Whether X player or O player.
// 	this.token = token;

// 	// Pick a location for move.
// 	// This is where any move-selection strategy should go.
// 	// Currently just picks the first open spot on the board.
// 	this.findBestLocation = function(token, board) {
// 		var locationFound = false;

// 		var i = 0;
// 		while ((!locationFound) && (i <= 8)) {
// 			locationFound = (board.board[i] == ' ');
// 			i++
// 		}

// 		return --i;
// 	}

// 	// Player takes a turn
// 	this.takeTurn = function(board) {
// 		var location = this.findBestLocation(this.token, board);
// 		board.placeToken(this.token, location);
// 	}
// }

// // The Tic Tac Toe board
// function TTTBoard() {

// 	// At first, the board is empty
// 	this.board = [' ',' ',' ',' ',' ',' ',' ',' ',' '];

// 	// Put an X or O into a spot on the board
// 	this.placeToken = function(token, location) {
// 		this.board[location] = token;
// 	}

// 	// Do the given locations all have X's or all have O's?
// 	this.sameTokenInAll = function(token, loc1, loc2, loc3) {
// 		if ( (token == this.board[loc1]) &&
// 				 (token == this.board[loc2]) &&
// 				 (token == this.board[loc3]) ) {
// 			return true;
// 		}
// 		return false;
// 	}

// 	// Does the board contain a winning row?
// 	this.isWon = function() {

// 		if (this.sameTokenInAll('X', 0, 1, 2) ||
// 			  this.sameTokenInAll('X', 3, 4, 5) ||
// 		    this.sameTokenInAll('X', 6, 7, 8) ||

// 			  this.sameTokenInAll('X', 0, 3, 6) ||
// 			  this.sameTokenInAll('X', 1, 4, 7) ||
// 			  this.sameTokenInAll('X', 2, 5, 8) ||

// 			  this.sameTokenInAll('X', 0, 4, 8) ||
// 			  this.sameTokenInAll('X', 2, 4, 6) ||

// 			  this.sameTokenInAll('O', 0, 1, 2) ||
// 			  this.sameTokenInAll('O', 3, 4, 5) ||
// 			  this.sameTokenInAll('O', 6, 7, 8) ||

// 			  this.sameTokenInAll('O', 0, 3, 6) ||
// 			  this.sameTokenInAll('O', 1, 4, 7) ||
// 			  this.sameTokenInAll('O', 2, 5, 8) ||

// 			  this.sameTokenInAll('O', 0, 4, 8) ||
// 			  this.sameTokenInAll('O', 2, 4, 6)  ) {

// 			return true;
// 		}
// 		return false;
// 	}

// 	// Is the board full (no more open spaces)?
// 	this.filled = function() {
// 		for (i=0;i<=8;i++) {
// 			if (this.board[i] === ' ') {
// 				return false;
// 			}
// 		}
// 		return true;
// 	}

// 	// Display the board
// 	this.display = function() {
// 		console.log(this.board[0] + this.board[1] + this.board[2]);
// 		console.log(this.board[3] + this.board[4] + this.board[5]);
// 		console.log(this.board[6] + this.board[7] + this.board[8]);
// 	}
// }


// // Driver code.  Play!
// myGame = new TicTacToe();
// myGame.play();




// Refactored Code

// A game of Tic Tac Toe
function TicTacToe(){

	this.board = new TTTBoard();
	this.playerX = new TTTPlayer("X");
	this.playerO = new TTTPlayer("O");

	// Determine which player takes first turn.
	var firstTurn = Math.floor(Math.random() * 2);
	if (firstTurn == 0) {
		this.player1 = this.playerX;
		this.player2 = this.playerO;
	} else {
		this.player1 = this.playerO;
		this.player2 = this.playerX;
	}

	// Has someone won the game?
	this.isWon = function() {
		return this.board.isWon();
	}

	// Play the game!
	this.play = function() {

	  this.board.display();

	  // Players take turns until someone has won.
		while(true) {

			this.player1.takeTurn(this.board);

			this.board.display();

			if (this.isWon()) {
				console.log("Hooray, player " + this.player1.token + " won!");
				break;
			}

			if (this.board.isFilled()) {
				console.log("Boooo! Tie");
				break;
			}

			this.player2.takeTurn(this.board);

			this.board.display();

			if (this.isWon()) {
				console.log("Awesome, player " + this.player2.token + " won!")
				break;
			}

			if (this.board.isFilled()) {
				console.log("Boooo! Tie");
				break;
			}

		} // end while

	} // end function play

}

// A Tic Tac Toe player.
function TTTPlayer(token) {

	// Whether X player or O player.
	this.token = token;

	// Pick a location for move.
	// This is where any move-selection strategy should go.
	// Currently picks a random open spot on the board.
	this.findBestLocation = function(token, board) {
		var locationFound = false;

		while (!locationFound) {
			location = Math.floor(Math.random() * 9);
			locationFound = (board.board[location] == ' ');
		}

		return location;

	}

	// Player takes a turn
	this.takeTurn = function(board) {
		var location = this.findBestLocation(this.token, board);
		board.placeToken(this.token, location);
	}
}

// The Tic Tac Toe board
function TTTBoard() {

	// At first, the board is empty
	this.board = [' ',' ',' ',' ',' ',' ',' ',' ',' '];

	// Put an X or O into a spot on the board
	this.placeToken = function(token, location) {
		this.board[location] = token;
	}

	// Do the given locations all have X's or all have O's?
	this.sameTokenInAll = function(token, loc1, loc2, loc3) {
		if ( (token == this.board[loc1]) &&
				 (token == this.board[loc2]) &&
				 (token == this.board[loc3]) ) {
			return true;
		}
		return false;
	}

	// Does the board contain a winning row?
	this.isWon = function() {

		if (this.sameTokenInAll('X', 0, 1, 2) ||
			  this.sameTokenInAll('X', 3, 4, 5) ||
		    this.sameTokenInAll('X', 6, 7, 8) ||

			  this.sameTokenInAll('X', 0, 3, 6) ||
			  this.sameTokenInAll('X', 1, 4, 7) ||
			  this.sameTokenInAll('X', 2, 5, 8) ||

			  this.sameTokenInAll('X', 0, 4, 8) ||
			  this.sameTokenInAll('X', 2, 4, 6) ||

			  this.sameTokenInAll('O', 0, 1, 2) ||
			  this.sameTokenInAll('O', 3, 4, 5) ||
			  this.sameTokenInAll('O', 6, 7, 8) ||

			  this.sameTokenInAll('O', 0, 3, 6) ||
			  this.sameTokenInAll('O', 1, 4, 7) ||
			  this.sameTokenInAll('O', 2, 5, 8) ||

			  this.sameTokenInAll('O', 0, 4, 8) ||
			  this.sameTokenInAll('O', 2, 4, 6)  ) {

			return true;
		}
		return false;
	}

	// Is the board full (no more open spaces)?
	this.isFilled = function() {
		for (i=0;i<=8;i++) {
			if (this.board[i] === ' ') {
				return false;
			}
		}
		return true;
	}

	// Display the board
	this.display = function() {
		console.log();
		console.log(' ' + this.board[0] + ' | ' + this.board[1] + ' | ' + this.board[2]);
		console.log("---|---|---");
		console.log(' ' + this.board[3] + ' | ' + this.board[4] + ' | ' + this.board[5]);
		console.log("---|---|---");
		console.log(' ' + this.board[6] + ' | ' + this.board[7] + ' | ' + this.board[8]);
		console.log();
	}
}


// Driver code.  Play!
myGame = new TicTacToe();
myGame.play();







// Reflection
/*
- What was the most difficult part of this challenge?

	Debugging, and confusion between the TTTBoard object and the board data structure
	inside the TTTBoard object.  This was partially due to using the same variable
	name 'board' for both the object and the data structure inside the object.

- What did you learn about creating objects and functions that interact with one another?

	I learned how to use constructor functions in JavaScript that include functions.  I've
	programmed in C, Java, and Ruby, and this is a similar but different way to accomplish
	class-type constructs.

- Did you learn about any new built-in methods you could use in your refactored solution?
- If so, what were they and how do they work?

	Yes, I learned about Math.floor and Math.random.
	Math.random produces a random floating-point number greater than or equal to zero and
	less than 1.  You can use multiplication and addition to get the range you want, then
	if you need an integer, use Math.floor to round down.  For example if you need an
	integer between 10 and 20, do Math.random() * 10 to get you a floating point from 0.0
	and less than 10.0, add 10 to get from 10.0 to less than 20.0, then use Math.floor to
	round down to an integer from 10 to 20.

- How can you access and manipulate properties of objects?

	Through dot notation or bracket notation.  For example if you have an object 'dog'
	and you want to access its property 'color', you can do dog.color or dog[color].
	dog.color is considered more readable, but requires an actual property name which is a valid
	identifier (i.e. anything that could be a variable name).  Bracket notation expects any
	expression that can evaluate to a string.  So if your property name is not a valid
	identifier (e.g. "breed-name" or "1stPlace") or if your property name is contained
	in a variable that will be evaluated at the time of access, you need to use
	bracket notation.

	E.g. if your object 'foo' has property names "prop1" through "prop4", nothing like
	these first two will work:

	for (i=1;i<=4;i++) {
		tempVar = foo."prop" + i;
		doSomething(tempVar);
	}

	for (i=1;i<=4;i++) {
		propName = "prop" + i;
		tempVar = foo.propName;
		doSomething(tempVar);
	}

	You have to do:

	for (i=1;i<=4;i++) {
		tempVar = foo["prop" + i];
		doSomething(tempVar);
	}

*/