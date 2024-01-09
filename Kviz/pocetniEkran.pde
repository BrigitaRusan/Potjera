class Pocetni{
  
  String pitanje;
  boolean q = false, first=true;
  
  Pocetni(){
  }
  
  void iscrtaj(){
    
    //---------------- uvodna pjesma Potjere-----------------------
    if( pocetna ){
      if(first==true || song3.isPlaying()==false){// uvodna pjesma se neprestano vrti 
        song3.play();
        first=false;
      }
    //--------------------------------------------------------
    
      background(naslovnica);
      
      fill(255);
      textSize(30);
      textAlign(CENTER);
      text("Za početak potjere\npritisnite SPACE", 400, 650);
      textAlign(LEFT);
      
      // ---------------- hover Pravila ----------------
      if(overRect(7, 750, 100, 40)==true)   
        fill(color(255,255,255,90));
      else
        fill(color(190,170,220, 70));
      stroke(tamnoplava);
      rect(7, 750, 100, 40);
      textSize(18);
      fill(tamnoplava);
      text("Pravila", 27, 777);
      
      // ---------------- hover igrač vs igrač ----------
      if(lovacIgrac == true)
        fill(plavaOdabrano);
      else if(overRect(75, 500, 300, 70)==true )   
        fill(color(255,255,255,90));
      else
        fill(color(190,170,220, 70));
      stroke(tamnoplava);
      rect(75, 500, 300, 70);
      textSize(26);
      fill(tamnoplava);
      text("IGRAČ VS. IGRAČ", 110,545);
      
      //------------------ hover igrač vs računalo --------
      if(lovacIgrac == false)
        fill(plavaOdabrano);
      else if(overRect(405, 500, 300, 70)==true)   
        fill(color(255,255,255,90));
      else
        fill(color(190,170,220, 70));
      stroke(tamnoplava);
      rect(410, 500, 300, 70);
      textSize(26);
      fill(tamnoplava);
      text("IGRAČ VS. RAČUNALO", 415,545);
      //--------------------------------------------------
      
      
      // --------------------------klik --------------------
      if(mousePressed){
        if (mouseX >= 7  && mouseX <= 7 + 100 && mouseY >= 750 && mouseY <= 750 + 40){
          pravila = true;
          pocetna = false;
        }                                                                                    // pravila
        if (mouseX >= 75  && mouseX <= 75 + 300 && mouseY >= 500 && mouseY <= 500 + 70){
          lovacIgrac=true;
        }                                                                                    // igra lovac vs igrac
        if (mouseX >= 405  && mouseX <= 405 + 300 && mouseY >= 500 && mouseY <= 500 + 70){
          lovacIgrac=false;
        }                                                                                    // igra igrac vs igrac
      }
    }
    // prva igra
    if( prva ){
      Faza1.iscrtaj();
      song3.stop();
      first=true; // zaustavlja uvodnu pjesmu
    }
    // ispis rezultata prve igre
    if( druga ){
      Faza2.iscrtaj();
      song3.stop();
      first=true;
    }
    // odabir ponude
    if( izbor ){
      Izbor.iscrtaj(); 
      song3.stop();
      first=true;
    }
    // igra s lovcem
    if( treca ){
      Faza3.iscrtaj(); 
      song3.stop();
      first=true;
    }
      if( hunter ){
      Hunter.iscrtaj(); 
      song3.stop();
      first=true;
    }
    // zavrsna igra
     if( zav_pot ){
      zavrsna_potjera.iscrtaj(); 
      song3.stop();
      first=true;
    }
    // ispis rezulatata
    if( zavrsni ){
      Zavrsni.iscrtaj(); 
      song3.stop();
      first=true;
    }
    // prikazuje pravila
    if( pravila ){
      ispisPravila.iscrtaj(); 
    }
  }

  boolean overRect(int x, int y, int width, int height) {
    if (mouseX >= x && mouseX <= x+width && 
        mouseY >= y && mouseY <= y+height) {
      return true;
    } else {
      return false;
    }
  }
  // provjera gdje prebacuje??
  
  void provjeriBotun(int key){
    if( prva ) Faza1.provjeriBotun( key );
    if( izbor ) Izbor.provjeriBotun( key );
    if( treca ) Faza3.provjeriBotun( key );
    if( zav_pot ) zavrsna_potjera.provjeriBotun( key );
    if ( key == ' ' && pocetna){
      Faza1.time = millis();
      pocetna = false;
      prva = true;
    }
    if( key == ' ' && druga){
      druga = false;
      izbor = true;
    }
    if ( key == ' ' && treca){
      zavrsna_potjera.time = millis();
      treca = false;
      hunter = true;
    }
    if( key == ' ' && hunter){
      treca = false;
      zav_pot = true;
    }
    
    if( key == ' ' && zavrsni ) Zavrsni.provjeriBotun( key );
    
    if( keyCode == LEFT ){
       lovacIgrac=true;
    }
    if( keyCode == RIGHT ){
       lovacIgrac=false;
     }
    
  }
}
