class Treca{
  
  String[] pitanja = {"Iz koje su videoigre kriminalci Trevor Phillips,\nMichaelDe Santa i Franklin Clinton?",
    "Koja životinja ne trči travnjacima\nprve HNL u dresu Istre 1961?",
    "Koji je jedini hrvatski grad koji ima dva spomenika\nna listi UNESCO-a?",
    "Već u samom nazivu kojeg je popularnog zanimanja\nprimjetan utjecaj na druge ljude?", 
    "Čega nema na zastavi Kenije?", 
    "Koliko godina ima Holden Caulfield, glavni lik\nromana 'Lovac u žitu'?", 
    "Kojim se obrambenim mehanizmom neke životinje\nu opasnosti pretvaraju da su mrtve?", 
    "Koji je narod sredinom 19. stoljeća 'pokosila'\nglad uzrokovana bolešću krumpira?", 
    "Što mjerimo ako je rezultat izražen\nmjernom jedinicom mmHg?", 
    "U kojem su gradu Brazilci osvojili svoj\nposljednji naslov svjetskih nogometnih prvaka?", 
    "Kojeg je rimskog cara Joaquin Phoenix\nportretirao u filmu 'Gladijator'?", 
    "Koja je najveća dubina Jadranskog mora?", 
    "Koji je komparativ u naslovu hita\nEda Sheerana?", 
    "Koja je mjerna jedinica definirana\nomjerom kulona i volta?", 
    "Rog Afrike uobičajeno je ime za koji\ndio tog kontinenta?", 
    "Kako nazivamo izručenje okrivljenika iz\njedne države 'u ruke' neke druge države?", 
    "Kojim brojem počinje i završava svaki redak\nPascalovog trokuta?", 
    "Koji superheroj živi u stvarnom gradu?", 
    "Koje glazbalo ima puža na svom uskom kraju?", 
    "Koju humorističnu tv-seriju ubrajamo u\ntzv. mockumentary žanr?", 
    "Koja je knjiga o Harryju Potteru\nekranizirana u dva dijela?", 
    "Ime najpoznatije švedske grupe u povijesti\nmože biti i oznaka za kakvu rimu?", 
    "U refrenu 'Tužne priče o selu' Postolar\nTripper pita 'Koga? Čega?' i nudi koji odgovor?",
    "Prema Bibliji, Noa je na početku\nvelikog potopa bio vitalan\nmuškarac od koliko godina?",
    "Koji 'Bilo jednom...' nije režirao Sergio Leone?",
    "Koje je najveće slatkovodno jezero na svijetu?",
    "Koja je talijanska riječ za rajčicu?",
    "Na koji dio pokućstva je skočio Tom Cruise\nizjavljujući svoju ljubav prema\nKatie Holmes na Oprah Showu?",
    "Koja je mjerna jedinica dobila\nime po talijanskom plemiću?",
    "U kojem se gradu nalazi sveučilište Harvard?",
    "'Od svih lokala u svim gradovima u cijelom\nsvijetu, ona uđe u moj', je citat iz\nkojeg filmskog klasika?",
    "Koji filozof se tradicionalno smatra prvim zapadnjačkim\n filozofom i ocem znanosti?",
    "Tko je izumio fotografski film?",
    "Zapis 'C' predstavlja koju vrijednost u\nsustavu rimskih brojeva?",
    "U biblijskoj knjizi 'Otkrivljenje' kako\nse zove zvijezda koja je pala s neba?",
    "Tko je napisao 'Povratak Filipa Latinovitcha'?",
    "Tko se smatra izumiteljem\n mikrovalne pećnice?",
    "Koji se broj veže za osnivača TNT grupe\nu Alan Ford stripovima?",
    "Koja općina u Crnoj Gori ima\n najveći broj Hrvata?",
    "Kako se zvala žena Salvadora Dalija?",
    "Etruščani su naseljavali današnju: ",
    "Koja je kineska kompanija optužena za špijunažu\n u trgovačkom ratu između SAD-a i Kine?",
    "Koju knjigu je napisao George Orwell?",
    "Hepatitis je upala kojeg organa?",
    "Što pripada književnom rodu - diskurzivni rod?",
    "Upala kojeg organa se zove otitis?",
    "Nagradu Oscar za najbolji film 2010. dobio je:",
    "Tko je napisao glazbu za gilm 'Glembajevi'?",
    "Koje su bile posljednje riječi Charlesa\nFostera Kanea?"};

  String[][] odgovori = { {"GTA V", "Just Cause 3", "Uncharted 4"}, {"Zec", "Vuk", "Lisica"},
    {"Šibenik", "Split", "Dubrovnik"}, {"influencera", "youtubera", "blogera"}, 
    {"mača", "koplja", "štita"}, {"17", "27", "37"}, {"tanatozom", "erebozom", "morozom"}, 
    {"Irce", "Nijemce", "Šveđane"}, {"tlak", "duljinu", "masu"}, {"u Yokohami", "u Berlinu", "u Passadeni"}, 
    {"Komoda", "Nerona", "Trajana"}, {"1228 m", "3005 m", "947 m"}, {"happier", "better", "sweeter"}, 
    {"farad", "herc", "njutn"}, {"najjistočniji", "najjužniji", "najzapadniji"}, 
    {"ekstradicija", "eksklamacija", "eksproprijacija"}, {"jedan", "dva", "tri"}, 
    {"Spider-man", "Batman", "Superman"}, {"violina", "gitara", "trombon"}, 
    {"U uredu", "Face", "Lude 70-te"}, {"Darovi smrti", "Kamen mudraca", "Plameni pehar"}, 
    {"za obgrljenu", "za parnu", "za unakrsnu"}, {"Janjetine!", "Piletine!", "Svinjetine!"},
    {"600", "100", "300"}, {"u Hollywoodu", "u Americi", "na divljem zapadu"},
    {"Superior", "Michigan", "Huron"}, {"Pomodoro", "Cipolla", "Peperoncino"},
    {"Kauč", "Stolicu", "Stol"}, {"Volt", "Pascal", "Ohm"}, {"Cambridge", "New York", "Providence"},
    {"Casablanca", "Građanin Kane", "Divan Život"}, {"Tales", "Pitagora", "Demokrit"}, {"George Eastman", "Louis Daguerre", "Henry Talbot"}, {"100", "50", "10"}, {"Pelin", "Tora", "Danica"} ,
    {"Miroslav Krleža", "Ivo Andrić", "Vladimir Nazor"}, {"Percy Spencer", "Arthur Fry", "Spencer Silver"}, {"1", "3", "7"}, {"Tivat", "Kotor", "Herceg Novi"}, {"Gala", "Baza", "Guba"},
    {"Italiju", "Libiju", "Grčku"}, {"Huawei", "Samsung", "Xiaomi"}, {"Životinjska farma", "Veliki Gatsby", "Starac i more"}, {"Jetre", "Gušterače", "Mozga"}, {"Dnevnik", "Himna", "Roman"}, 
    {"Uha", "Oka", "Nosa"}, {"The Hurt Locker", "Slumdog Millionare", "Avatar"}, {"Arsen Dedić", "Alfi Kabiljo", "Boris Papandopulo"} ,{"Rosebud", "Snow globe", "Xanadu"}};
  int a = -1, b = -1, c = -1, i, igr = -1, lov = -1, lpos = -1, brojac, numPitanja=pitanja.length;
  boolean q = false, check = false, p = false;
  int[] iskoristeniIndeksi = new int[numPitanja];
  int koristenaPitanja = 0;
  int time = millis();
  
  
  Treca(){
  }
  
  void iscrtaj(){
    brojac--;
    textAlign(LEFT);
    background(voditelj);
    nacrtajPlocu();
    fill(255, 126);
    
    // pravokutnik za pitanje
    rect( 50, 400, 700, 180 );
    // pravokutnik za a, b, c odgovore
    rect( 50, 610, 217, 40 );
    rect( 292, 610, 217, 40 );
    rect( 533, 610, 217, 40 );
    
    //----------- odabire random pitanje ---------------
    if(!q){
      i = (int)random(numPitanja);
      while(koristenaPitanja != 0 && vecIskoristenoPitanje(iskoristeniIndeksi, i))
        i = (int)random(numPitanja);
      iskoristeniIndeksi[koristenaPitanja] = i;
      koristenaPitanja += 1;
      q = true;
      while( (a == b && a == c && b == c) || (a==b) || (a == c) || (b==c)){
        a = (int)random(3);
        b = (int)random(3);
        c = (int)random(3);
      }

    }
    // -------- ispis pitanja ---------------------------
    fill(0);
    textSize(24);
    text( pitanja[i], 70, 460 );
    
    //----
    if( igr != -1 && lov == -1 ){
      // odigra igrač
      fill(igrac);
      rect( 50, 360, 150, 40 );
      if( igr == a ) rect( 50, 610, 217, 40 );
      if( igr == b ) rect( 292, 610, 217, 40 );
      if( igr == c ) rect( 533, 610, 217, 40 );
      fill(255);
      text( "Igrač", 90, 390);
      if(lovacIgrac==false && millis()>time+1000){
        odigrajLovca();
        time=millis();
      }
    }
    else if( igr == -1 && lov != -1 ){
      fill(lovac);
      rect( 600, 360, 150, 40 );
      fill(255);
      text( "Lovac", 640, 390 );
    }
    else if( igr != -1 && lov != -1 ){
      fill(igrac);
      rect( 50, 360, 150, 40 );
      
      fill(lovac);
      rect( 600, 360, 150, 40 );
      fill(255);
      text( "Igrač", 90, 390);
      text( "Lovac", 640, 390 );
      fill(igrac);
      if( igr == a ) rect( 50, 610, 217, 40 );
      if( igr == b ) rect( 292, 610, 217, 40 );
      if( igr == c ) rect( 533, 610, 217, 40 );
      if(  millis()>time+1000 ){
        fill(tocno);
        if( 0 == a ) rect( 50, 610, 217, 40 );
        if( 0 == b ) rect( 292, 610, 217, 40 );
        if( 0 == c ) rect( 533, 610, 217, 40 );
        fill(255);
        textSize(20);
        textAlign(CENTER);
        if ( pos == 7 || lpos == pos )
          text("Pritisnite ENTER za dalje.", 400, 700 );
        else
          text("Pritisnite ENTER za sljedeće pitanje.", 400, 700 );
        textAlign(LEFT);
        if(check==false){
          if( igr == 0 ) pos++;
          if( lov == 0 ) lpos++;
          p=true;
          check=true;
          nacrtajPlocu();
      }
      }
    // odigra lovac ako je igra igrač vs računalo
      fill(lovac);
      if( lov == a ) rect( 50, 610, 35, 40 );
      if( lov == b ) rect( 292, 610, 35, 40 );
      if( lov == c ) rect( 533, 610, 35, 40 );
      
    }
    fill(0);
    textSize(22);
    text( "A: " + odgovori[i][a], 60, 640);
    text( "B: " + odgovori[i][b], 302, 640 );
    text( "C: " + odgovori[i][c], 543, 640 );
  }
  
  void provjeriBotun( int key ){
    if( key == 'a' && igr == -1){
      igr = a;
      if(lovacIgrac==false){
        time=millis();
      }
    }
    if( key == 'b' && igr == -1){
      igr = b;
      if(lovacIgrac==false){
        time=millis();
      }
    }
    if( key == 'c' && igr == -1){
      igr = c;
      if(lovacIgrac==false){
        time=millis();
      }
    }
    if(lovacIgrac== true){
      if( key == '1' && lov == -1){
        lov = a;
        time=millis();
      }
      if( key == '2' && lov == -1){
        lov = b;
        time=millis();
      }
      if( key == '3' && lov == -1){
        lov = c;
        time=millis();
      }
    }
    else{
      
    }
    if( keyCode == ENTER && p && ( pos == 7 || lpos == pos ) ){
      if( pos == 7 ) win = true;
      check = false;
      igr = -1;
      lov = -1;
      p = false;
      a = -1;
      b = -1;
      c = -1;
      q = false;
      lpos = -1;
      
      treca = false; //gotovi sa igrom s lovcem
      hunter = true; // ispisuje rezultat

    }
    
    //----- resetrira sve nakon odgovora na pitanja ----------------
    if( keyCode == ENTER && p){
      check = false;
      igr = -1;
      lov = -1;
      p = false;
      a = -1;
      b = -1;
      c = -1;
      q = false;
    }
  }
  
  boolean vecIskoristenoPitanje(int[] arr, int val) {
    for(int i=0; i<arr.length; i++) {
      if(arr[i]==val) {
        return true;
      }
    }
    return false;
  }
  
  void nacrtajPlocu(){
    
  //-------- ako je lovac uhvatio igrača --------------
    if( lpos == pos ){
      fill( netocno );
      for( int i = 0; i < 7; i++ )
        rect( 180+10*i, i * 50, 420-20*i,  50 );
      return;
    }
  //-------- ako je igrač pobijedio-------------------------
    if( pos == 7 ){
      fill( tocno );
      for( int i = 0; i < 7; i++ )
        rect( 180+10*i, i * 50, 420-20*i,  50 );
      return;
    }
    
  //-------- crta polja za vrijeme igre inače ------------------------
    for( int i = 0; i < 7; i++ ){
      fill( 167, 126 );
      rect( 180+10*i, i * 50, 420-20*i,  50 );
    }
    for( int i = 0; i <= lpos; i++ ){
      fill( 204, 0, 0 ); // oboja crveno kolko je lovac osvojio
      rect( 180+10*i, i * 50, 420-20*i,  50 );
    }
    for( int i = lpos + 1; i <= pos; i++ ){
      fill( 0, 51, 153 ); // oboja plavo kolko je igrač osvojio
      rect( 180+10*i, i * 50, 420-20*i,  50 );
    }
    
    //--------- pomak iznosa s obzirom na točnost odgovora ----------------
    //------- pomiče se za vrijeme igre kako ga lovac lovi ----------------
    fill(255);
    textSize(26);
    if( lpos != pos ){
      textAlign(CENTER);
      text(iznos, 400, pos * 50 + 35);
      textSize(20);
      text("€", 400 + textWidth(str(iznos)), pos * 50 + 35);
      
     //---- dva trokutića sa sa strane koji označuju gdje je iznos--------------------
      triangle( 180+10*pos, pos*50+10, 180+10*pos, pos*50+40, 200+10*pos, pos*50+25 );
      triangle( 600-10*pos, pos*50+10, 600-10*pos, pos*50+40, 580-10*pos, pos*50+25 );
      textAlign(LEFT);
    }
    
    //-------- trokutić koji pokazuje gdje je lovac -------------------------------------
    fill(0);
    if( lpos != -1 ) triangle( 190+10*pos, lpos*50+10, 590-10*pos, lpos*50+10, 400, lpos*50+40 );
  }
  
  void odigrajLovca(){
    int num = (int)random(100);
    if(num<70)
      lov=0;
    else if(num<85)
      lov=1;
    else
      lov=2;
  }
}
