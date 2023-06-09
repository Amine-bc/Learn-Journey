public class Data_types {
public static void Dtypes(){
    byte octect ;
    short gssir ;
    int num ;
    long  bignum ;
    double huge ;
    float virgule ;
    boolean ih = true ;
    char cpr = '\u00A9' ;
    String name = "Amine";
    String cprstr ="Student" ;
    System.out.println(cpr);
    String joumla = String.format("Amine is %s",cprstr);
    System.out.print(joumla+"Lenght of name is "+name.length());
    String empty="" ;
    System.out.print("\n"+empty.isEmpty());
    System.out.print("\nMy name is "+name.toLowerCase());
    System.out.print("\nMy name is "+name.toUpperCase());
    String sentence= "I'm happy !";
    System.out.print(sentence.replace(" ","--"));
    System.out.print(sentence.contains("Happy"));

    // printf VS println printf with formats
};}

