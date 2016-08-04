int stage = 0;

void setup() {
  
  size(500,500);
  background(255);
  
  println("You wake up in a white-walled room with nothing in it but you. Your head is pounding.\n");
  println("To the South is a large door, to the East a large mirror, and to the North faint murmuring\n");
  println("Press s for South, e for East, or n for North.\n");
}

void draw () {
  
}

void keyPressed () {
  
  if (stage == 0 && key =='n') {
   stage += 1;
   println("");
   println("You walk to the north wall, there's slight sounds of talking and perhaps even laughter! Call out?");
   }
  
  if (stage == 0 && key =='s') {
   stage += 1;
   println("");
   println("You approach the door to the south. You try opening the door but it's locked. Knock on the door?");
   background(100);
   }
  
  if (stage == 0 && key =='e') {
   stage += 1;
   println("You approach the mirror. It seems like it's double sided.");
   println("You stare for a moment at your face—a perfect reflection.");
   }

   if (stage == 1 && key =='y') {
   stage += 1;
   println("You call out, and the murmurs immediately stop. All is silent.");
   }
   
   if (stage == 1 && key =='y') {
   stage += 1;
   println("The handle begins to move and you hear a second lock, like a deadbolt, slide into place. Silence ensues.");
   background(100);
   }

//To look this print for each following stage
   if (stage >= 2 && key =='e') {
   stage += 1;
   println("Still just your refelction.\n");
   }

   
   
}