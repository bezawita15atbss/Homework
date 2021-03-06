// Contains the starting, or intial, word (axiom)
String axiom = "F+F";

// Contains the existing word
String existingWord = "";

// Contains the new (re-written) word
String newWord = "";

// Tracks how many times existing word has been re-written
int rewriteCount = 0;

// Tracks what character we are currently inspecting in the existing word


// Will contain all the rules that apply for this L-system
StringDict rules; 

// This function runs once.
void setup() {

  // Create the canvas
  size(800, 600);

  // White background
  background(255, 255, 255);

  // Black text
  fill(0, 0, 0);

  // Set text size
  textSize(24);

  // Slow down the refresh rate
  frameRate(1);

  // Create the string dictionary object
  // "Using the StringDict class, create a new StringDict object, named 'rules' "
  rules = new StringDict();

  // Add rules (key-value pairs)
  //         key     value
  rules.set("F", "F-F");

  // For the first re-write, the existing word is set to the axiom
  existingWord = axiom;
  rewriteCount = 1;

  //rewrite the existing word according to the rules
  rewriteWord();


  // Print text to the screen
  // Arguments:
  //   string, x, y
  text("The axiom is: " + axiom, 0, 25);
}



void draw() {
}

// Responds to key presses
void keyPressed() {

  // When the right arrow key is pressed, do another round of replacement
  if (key == CODED) {
    if (keyCode == RIGHT) {

      // New word from last time becomes existing word for this round of replacement
      existingWord = newWord;

      // Need to reset these variables to get ready for another round of replacement 
      newWord = "";
      rewriteCount += 1;

      // Do another level of replacement
      rewriteWord();
    }
  }
  
  //If the user presses the 'd' key, draw the new word
  if(key == 'd'){
    turtleDraw(); //draw the current word
  }
}

//rewrite word
//
//Purpose: Take the existing word, iterate over each character
//         make replacements where needed

void rewriteWord() {
  
  //Clean the canvas
  background(255, 255, 255);
    // Print the existing word
    text("The existing word: " + existingWord, 0, 50, width, 200);

    // Print what generation of replacement this is
    text("Have re-written word this many times: " + rewriteCount, 0, 275);

  //Iterate over each character
  for (int currentCharacter=0; currentCharacter< existingWord.length(); currentCharacter++) {

    // Show what character we are inspecting
    //text("Current character is: " + currentCharacter, 0, 325);

    // Check each character - if it matches a rule, replace it
    if ( existingWord.charAt(currentCharacter) == 'F') {
      // replace
      newWord += rules.get("F");
//      fill(255, 0, 0); 
//      text("replacement occurred", width/2, 325);
//      fill(0, 0, 0);
    } 
    else {
      // copy the character directly
      newWord += existingWord.charAt(currentCharacter);
    }

    // Print the new word
    text("New word is: " + newWord, 0, 350, width, 200);
  }

}
