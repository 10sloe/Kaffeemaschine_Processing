class Kaffeemaschine
{
    private String zustand;
    // Bilder für die Anzeige
    PImage bild_aus = loadImage("aus.png");
    PImage bild_bereit = loadImage("bereit.png");
    PImage bild_kaffee_bereiten= loadImage("kaffee_bereiten.png");
    PImage bild_kaffee_fertig = loadImage("kaffee_fertig.png");
    
    int timer;
    
    
    
    Kaffeemaschine()
    {
        zustand = "aus";
    }
    
    /* 
    ---- Reaktion auf die Benutzereingaben: ----
    */
    
    
    // Beim Druecken auf den An-Aus-Schalter
    void anAusDruecken()
    {
        if (zustand.equals("aus"))
        {
            zustand = "bereit";
        }
        else
        {
            zustand = "aus";
        }
       
    }
    
    // Beim Druecken auf den Tasse-Schalter
    void tasseDruecken()
    {
        zustand = "kaffee_bereiten";
        timer = 0;
    }
    
    void tasseNehmen()
    {
      
    }
    
    
    // Die Hauptaufgabe einer Kaffeemaschine
    
    
    void eineTasseKaffeeMachen()
    {
        System.out.println("Eine Tasse Kaffee wird ausgegeben!");
    }
    

    
    void zeichnen()
    {
      if (zustand.equals("aus"))
      {
        image(bild_aus,0,0,300,486);
      }
      if (zustand.equals("bereit"))
      {
        image(bild_bereit,0,0,300,486);
      }
      if (zustand.equals("kaffee_bereiten"))
      {
        image(bild_kaffee_bereiten,0,0,300,486);
        timer++;
        if (timer > 60)
        {
          zustand = "kaffee_fertig";
        }
      }
      if (zustand.equals("kaffee_fertig"))
      {
        image(bild_kaffee_fertig,0,0,300,486);
      }
    }
}
