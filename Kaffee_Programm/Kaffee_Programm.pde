Kaffeemaschine k;

void setup()
{
  k = new Kaffeemaschine();
  size(300,486);
}

void draw()
{
  k.zeichnen();
}

void keyPressed()
{
  // AnAusschalter drücken
  if (key == 'a')
  {
    k.anAusDruecken();
  }
  // Kaffeesymbol drücken
  if (key == 'k')
  {
    k.tasseDruecken();
  }
}
