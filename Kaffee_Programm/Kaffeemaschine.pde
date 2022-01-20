class Kaffeemaschine
{
  private String zustand;
  // Bilder für die Anzeige
  PImage bild_aus = loadImage("aus.png");
  PImage bild_bereit = loadImage("bereit.png");
  PImage bild_kaffee_bereiten= loadImage("kaffee_bereiten.png");
  PImage bild_kaffee_fertig = loadImage("kaffee_fertig.png");
  PImage bild_wenigWasser = loadImage("wenigWasser.png");

  int timer; // Für die Zubereitung des Kaffees


  Kaffeemaschine()
  {
    zustand = "aus";
  } 

  // Beim Druecken auf den An-Aus-Schalter
  void anAusDruecken()
  { 
      zustand = "bereit";
  }

  // Beim Druecken auf den Tasse-Schalter
  void tasseDruecken()
  {
    zustand = "kaffee_bereiten";
    timer = 120;
  }


  void zeichnen()
  {
    if (zustand.equals("aus"))
    {
      image(bild_aus, 0, 0, 300, 486);
    }
    if (zustand.equals("bereit"))
    {
      image(bild_bereit, 0, 0, 300, 486);
    }
    if (zustand.equals("kaffee_bereiten"))
    {
      timer--;
      if (timer > 60) {
        image(bild_kaffee_bereiten, 0, 0, 300, 486);
      } else
      {
        image(bild_kaffee_fertig, 0, 0, 300, 486);
      }
      if (timer == 0)
      {
        zustand = "bereit";
      }
    }
  }
}
