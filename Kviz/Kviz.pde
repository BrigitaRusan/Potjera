import processing.sound.*;

boolean pocetna, prva, druga, izbor, treca, zavrsni, win, pravila, lovacIgrac, zav_pot,hunter;
Pocetni pocetni;
Prva Faza1;
Druga Faza2;
Treca Faza3;
Biranje Izbor;
Lovac Hunter;
Zavrsna Zavrsni;
Pravila ispisPravila;
Zavrsna_potjera Zavrsna_potjera;
int iznos, pos, ukupno_tocnih; //za broj točnih odgovora u završnoj potjeri

PImage naslovnica;
PImage pozadina;
PImage pozadina_zavrsna;//pozadina za završnu potjeru
PImage vrijeme;
PImage konfeti;
PImage voditelj;
PImage izgubio;
color tamnoplava = color(0, 16, 38);
color plava = color(51, 89, 204);
color plavaOdabrano = color(254,254,254,90);
color lovac = color(165, 0, 0);
color igrac = color(0, 108, 196);
color netocno = color(178,34,34);
color tocno = color(0,81,34);
PFont f;

SoundFile song1;
SoundFile song2;
SoundFile song3;
SoundFile song4;

void setup(){
  size(800,800);
  naslovnica = loadImage("naslovnica.jpeg");
  pozadina = loadImage("pozadina.jpeg");
  pozadina_zavrsna = loadImage("zavrsna_2.jpg");
  konfeti = loadImage("konfeti.jpeg");
  vrijeme = loadImage("time1.png");
  voditelj = loadImage("tarik.jpeg");
  izgubio = loadImage("izgubio.jpg");
  
  naslovnica.resize(800,800);
  pozadina.resize(800,800);
  pozadina_zavrsna.resize(800,800);
  konfeti.resize(800,800);
  izgubio.resize(800,800);
  voditelj.resize(800, 800);
  vrijeme.resize(45,43);
  
  f = createFont("Georgia",16,true);
  textFont(f);
  
  pos = 1;
  pocetni = new Pocetni();                  // file PocetniEkran: početni ekran, odabir igre   (space za pocetak)
  ispisPravila = new Pravila();             // file Pravila: ispisuje pravila igre             (povratak gumbom nazad)
  Faza1 = new Prva();                       // file prvaFaza: prva faza igre, upisi odgovor    (zavrsava kada istekne vrijeme)
  Faza2 = new Druga();                      // file drugaFaza: ispisuje rezultat prve faze igre (space za nastavak)
  Izbor = new Biranje();                    // file Biranje: ispisuje iznose ponude, vise/manje (enter odabire igru)
  Faza3 = new Treca();                      // file trecaFaza: ispisuje plocu, voditelja i igru (zavrsava pobjeda/gubitak)
  Hunter = new Lovac();
  Zavrsna_potjera = new Zavrsna_potjera();  // file zavrsna potjera: ispisuje zavrsnu igru ()
  Zavrsni = new Zavrsna();                  // file Zavrsna: ispisuje rezultat igre s lovcem   (resetira igru)

  // varijable pomocu kojih upravljamo navigacijom u fileu pocetniEkran
  pocetna = true;
  pravila = false;
  prva = false;
  druga = false;
  izbor = false;
  treca = false;
  hunter = false;
  zav_pot =false;
  zavrsni = false;
  
  win = false;
  lovacIgrac = false;

  
  song1 = new SoundFile(this, "Correct-answer.mp3");
  song2 = new SoundFile(this, "Wrong-answer.mp3");
  song3 = new SoundFile(this, "Chase.mp3");
  song4 = new SoundFile(this, "Clock.mp3");
}

void draw(){
  pocetni.iscrtaj();
}

void keyPressed(){
  pocetni.provjeriBotun(key);
}
