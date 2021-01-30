public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if (palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    } else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if (reverse(word).equalsIgnoreCase(noSpaces(word)))
  {
    return true;
  }
  return false;
}
public String reverse(String str)
{
  String sNew = new String();
  for (int i = str.length()-1; i >= 0; i--)
  {
    sNew = sNew + str.substring(i, i+1);
  }
  sNew = noSpaces(sNew);
  return sNew;
}

public String noSpaces(String str)
{
  String sNew = new String();
  for (int i = 0; i < str.length(); i++)
  {
    if (str.charAt(i) != ' ')
    {
      sNew = sNew + str.substring(i, i+1);
    }
  }
  sNew = onlyChar(sNew);
  return sNew;
}

public String onlyChar(String str)
{
  String sNew = new String();
  for (int i = 0; i < str.length(); i++)
  {
    if (Character.isLetter(str.charAt(i)))
    {
      sNew = sNew + str.substring(i, i+1);
    }
  }
  return sNew;
} 
