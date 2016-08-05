int stage = 0;
char emptyKey = ' ';
PImage img;

void setup() {

  size(500, 500);
  background(255); 
  img = loadImage("stage-1-white-room.jpg");

  
   //if (stage == 0 && key =='n') {
     
   //  img = loadImage("cornered.jpg");

  //}
  
  //if (stage == 5 && key =='y') {
     
   //  img = loadImage("falling-white-room.jpg");
  //}
  
  println("You wake up in a white-walled room with nothing in it but you. Your head is pounding.\n");
  println("To the South is a large door, to the East a large mirror, and to the North faint murmuring\n");
  println("Press s for South, e for East, or n for North.\n");
  println("Press l to Look Around and y or n for Yes or No questions.\n");
}

void draw () {
  
  image(img, 0, 0, 500, 500);
  
}

void reset () {
  
  println("G A M E  O V E R\n");
  println("You wake up in a white-walled room with nothing in it but you. Your head is pounding.\n");
  println("To the South is a large door, to the East a large mirror, and to the North faint murmuring\n");
  println("Press s for South, e for East, or n for North.\n");
  stage = 0;
}

void keyPressed () {
  
  //STAGE 1 STAGE 1 STAGE 1
  //NORTH WALL
  if (stage == 0 && key =='n') {
    key = emptyKey;
    println("");
    println("You walk to the north wall, there's sounds of slightly familiar talking and even laughter! Call out?\n");
    stage += 1;
  }
  
  //SOUTH WALL
  if (stage == 0 && key =='s') {
    key = emptyKey;
    stage += 1;
    println("");
    println("You approach the door to the south. You try opening the door but it's locked. Press k to knock on the door.\n");
    background(100);
  }
  
  //EAST WALL
  if (stage == 0 && key =='e') {
    key = emptyKey;
    println("You approach the mirror. It seems like it's double sided.");
    println("You stare for a moment at your face—a perfect reflection.\n");
    stage = 2; 
  }
  
  //STAGE 2 STAGE 2 STAGE 2
  //NORTH WALL
  if (stage == 1 && key =='y') {
    key = emptyKey;
    stage += 1;
    println("You call out, and the murmurs immediately stop. All is silent. Lookaround?\n");
  }
  
  //SOUTH WALL
  if (stage == 1 && key =='k') {
    key = emptyKey;
    stage += 1;
    println("The handle begins to move and you hear a second lock, like a deadbolt, slide into place. Silence ensues. Press b to bang on the door.\n");
    background(100);
  }

    //EAST storyline ends with this loop
    if (stage >= 1 && key == 'e') {
    stage = 0;
    println("Still just your refelction. Press l to look around.\n");
  }
  
  //STAGE 3 STAGE 3 STAGE 3
  //NORTH WALL
  if (stage == 2 && key =='y') {
    key = emptyKey;
    stage += 1;
    println("You call out, and the murmurs immediately stop. All is silent. Press l to look around\n");
  
  }

  //SOUTH WALL
  if (stage == 2 && key =='b') {
    key = emptyKey;
    stage += 1;
    println("You bang frantically on the door. Before you realize it, the door swings open.");
    println("Guards in featureless masks enter with long elecritifed pole, proding you like a cow.");
    println("Press f to Fight or s to Submit?\n");
  }
  
  //STAGE 4 STAGE 4 STAGE 4
  //SOUTH WALL A
  if (stage == 3 && key =='f') {
    key = emptyKey;
    stage += 1;
    println("You try tackling one of the guards.The three silently beat you to a bloody mess.");
    println("You die.\n");
    reset ();
    
  }
  
   //SOUTH WALL B
  if (stage == 3 && key =='s') {
    key = emptyKey;
    stage += 1;
    println("They prod you to the center of the room right where you woke up and then silently leave, locking the door behind them.");
    println("You then hear faint chuckling again from the North wall. Go there?\n");
  }
  
  //STAGE 5 STAGE 5 STAGE 5
  //NORTH WALL
  if (stage == 4 && key =='y') {
    key = emptyKey;
    stage += 1;
    println("The sound seems to actually come from under you. You put your ear to floor and realize it's slightly loose in that area.");
    println("You feel around and realize it's a hidden hatch leading to a crawl space. The laughter is louder once it's open. Crawl in?\n");
  }
  
  //STAGE 6 STAGE 6 STAGE 6
  //NORTH WALL
  if (stage == 5 && key =='y') {
    key = emptyKey;
    stage += 1;
    println("You crawl and move towards the sound. The duct gives way and you tumble through a ceiling.");
    println("You quickly recover from the fall and realize you're right next to the laughing person.\n");
    println("You realize the person is an identical copy of YOU! Except they're laughing and babbling to themselves.");
    println("In their deranged state, they grip their hands around your neck and choke the life out of you.\n");
    reset ();
    
  }
 
  
  //Look around loop throughout game 
  if (stage >= 0 && key == 'l') {
    key = emptyKey;
    stage = 0;
    println("You look around. To the South is a large door, to the East a large mirror, and to the North faint murmuring\n");
    println("Press s for South, e for East, or n for North.\n");
  }
  
//Time passes loop throughout game 
  if (stage >= 0 && key == 'n') {
    key = emptyKey;
    println("Time passes...");
  }

}