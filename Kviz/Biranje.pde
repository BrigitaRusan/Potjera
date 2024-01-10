class Biranje{
  
  int gornja, donja;
  
  Biranje(){
  }
  
  void iscrtaj(){
    background(pozadina);
    if( iznos == 0){
      gornja = 500;
      donja = 100;
    }
    else{
      gornja = iznos * 2;
      donja = iznos / 2;
    }
    
    // ---------- crta polja -------------------------
    fill(255, 126);
    for( int i = 0; i < 7; i++ )
      rect( 50+30*i, 50 + i * 75, 700-60*i, 75 );
    fill(255);
    /*
    pos == 0 kliknut je gornji iznos
    pos == 1 kliknut je osvojen iznos
    pos == 2 kliknut je donji iznos    
    */
    
   // ----------------gornja---------------------------
    if(pos==0)
      fill(color(150, 100, 200)); 
    else if(overRect(50+30, 125, 700-60, 75)==true)   
      fill(color(200, 150, 255));
    else
      fill(255, 126);
      
    rect( 50+30, 125, 700-60, 75 );
    
    //-----------------srednja-------------------------
    if(pos==1)
      fill(color(150, 100, 200)); 
    else if(overRect(50+30*2, 200, 700-60*2, 75)==true)   
      fill(color(200, 150, 255));
    else
      fill(255, 126);
      
    rect( 50+30*2, 200, 700-60*2, 75 );
    
    //-------------------donja-------------------------
    if(pos==2)
      fill(color(150, 100, 200)); 
    else if(overRect(50+30*3, 275, 700-60*3, 75 )==true)   
      fill(color(200, 150, 255));
    else
      fill(255, 126);
      
    rect( 50+30*3, 275, 700-60*3, 75 );
    
    //---------ispis koliko iznosi pojedina razina ---------------
    
    fill( 0 );
    textSize( 45 );
    textAlign(CENTER);
    text( gornja, 400, 175 );
    text( iznos, 400, 250 );
    text( donja, 400, 325 );
    
    textSize(30);
    text("€", 400 + textWidth(str(gornja)) + 5, 175);
    text("€", 400 + textWidth(str(iznos)) + 5, 250);
    text("€", 400 + textWidth(str(donja)) + 5, 325);
    
    fill(255);
    textSize(20);
    text("Pritisnite ENTER za dalje.", 400, 670 );
   
  //--------------------------------------------------------------
  
    if(mousePressed){
      if (overRect(50+30, 125, 700-60, 75)==true){
        pos=0;  //pritisnuta kućica veće
      }
      if (overRect(50+30*2, 200, 700-60*2, 75)==true){
        pos=1;  //pritisnut osvojen iznos 
      }
      if (overRect(50+30*3, 275, 700-60*3, 75)==true){
        pos=2;  //pristisnuta kućica manje
      }
    }
  }
  
  // hover preko up and down gumba s tipkovnice
  
  void provjeriBotun( int key ){
     if( keyCode == UP ){
       if( pos == 1 || pos == 2 ) pos--;
       else pos = 2;
     }
     if( keyCode == DOWN ){
       if( pos == 0 || pos == 1 ) pos++;
       else pos = 0;
     }
     if( key == ENTER ){
       if( pos == 0 ) iznos = gornja;
       if( pos == 2 ) iznos = donja;
       pos = pos + 1;
       izbor = false;
       treca = true; // preabacuje na igru s lovcem nakon odabira
     }
  }
  
  // hover preko gumba
  boolean overRect(int x, int y, int width, int height) {
    if (mouseX >= x && mouseX <= x+width && 
        mouseY >= y && mouseY <= y+height) {
      return true;
    } else {
      return false;
    }
  }
}
