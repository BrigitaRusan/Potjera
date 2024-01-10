class Zavrsna{
  
  Zavrsna(){
  }
  
  void iscrtaj(){
    textAlign(CENTER);
    background(konfeti);
    textSize(28);
    fill(255);
    if( ukupno_tocnih >=8 && win){  
      fill(255,126);
      rect(200, 310, 400, 100);
      fill(tamnoplava);
      textSize(28);
      text("Čestitamo, osvojili ste\n" + iznos + " €", 400, 350);
    }
    else if(win){
      background(izgubio);
      fill(255,126);
      rect(100, 310, 600,100);
      fill(tamnoplava);
      textSize(28);
      text( "Moraš još malo vježbati za brzopotezne,ali\nvidimo se uskoro.", 400, 350);
    }
    
    fill(255);
    textSize(20);
    text( "Pritisnite SPACE za povratak na početnu stranicu.", 400, 480);
  }
  
  void provjeriBotun( int key ){  //bitno je da se ovdje stvari vrate na početno stanje, da se igra od nule
    win = false;
    pos = 1;
    iznos = 0;
    Faza1.m = 0;
    Faza1.vrime = 60000;
    Faza1.IspisOdgovora = "|";
    Faza1.feedback = "";
    Faza1.iskoristeniIndeksi = new int[45];
    Faza1.koristenaPitanja = 0;
    Faza3.iskoristeniIndeksi = new int[32];
    Faza3.koristenaPitanja = 0;
   // zavrsni = false;
    //pocetna = true;
    
    
    ukupno_tocnih=0; //za završnu potjeru: "start od 0"
    Zavrsna_potjera.m = 0;
    Zavrsna_potjera.vrime = 120000;
    Zavrsna_potjera.IspisOdgovora = "|";
    Zavrsna_potjera.feedback = "";
    Zavrsna_potjera.iskoristeniIndeksi = new int[45];
    Zavrsna_potjera.koristenaPitanja = 0;
    //zav_pot=false;
    //pocetna=true;
  }
}
