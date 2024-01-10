
String[] lines;
String[] pitanja;
String[] odgovori;

void setup() {
   //size(400, 400);
   
 //----------- pitanja ---------------
  lines = loadStrings("pitanja.txt");
  pitanja = new String[lines.length];

  for (int i = 0; i < lines.length; i++) {
    pitanja[i] = lines[i].replace("\\n", "\n");
  }

  // Ispisivanje pitanja na konzolu
  for (int i = 0; i < pitanja.length; i++) {
    println(pitanja[i]);
    text(pitanja[i],100,100+i*5);
    
  }
  
 //----------- odgovori -----------------
   String[] odgovoriLines = loadStrings("odgovori.txt");
  odgovori = new String[odgovoriLines.length];

  for (int i = 0; i < odgovoriLines.length; i++) {
    odgovori[i] = odgovoriLines[i].replaceAll("\\n", "\n"); // Uklanja praznine
    println(odgovori[i]);
  } 
  
  String op = "prvi, drugi, treci, cetvrti"; // Primjer stringa op

// Razdvajanje stringa po zarezu, pretvaranje u listu
  String[] listaOdgovora = op.split(",\\s*");
  for (String odgovor : listaOdgovora) {
     odgovor.replaceAll(" ", ".");
    println(odgovor);
}
}
