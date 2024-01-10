class Lovac{
  
  Lovac(){
  }
  
  void iscrtaj(){
    background(konfeti);  
    fill(255,126);
    rect(200, 310, 400, 100);
    fill(tamnoplava);
    textSize(28);
    textAlign(CENTER);
    
    if(iznos>0 && win){
      text("Čestitamo, osvojili ste\n" + iznos + " €!", 400, 350);
      
      fill(255);
      textSize(20);
      text("Pritisnite SPACE ako ste spremni za završnu igru.", 400, 480 );
    }
    else{
      text("Nažalost u ovoj igri ste izgubili\n i ne idete u završnu igru!\n", 400, 350);
          
      fill(255);
      textSize(20);
      text("Pritisnite SPACE ako želite igrati iz početka.", 400, 480 );
    }
    
  }
}
