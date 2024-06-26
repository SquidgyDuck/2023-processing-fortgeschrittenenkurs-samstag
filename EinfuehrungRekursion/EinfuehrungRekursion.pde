
ArrayList<Integer> list = new ArrayList<Integer>(); // Konstruktor
ArrayList<Long> listFib = new ArrayList<Long>();
// Datentyp von Elementen in der Liste
void setup() {
  long start = millis(); // Funktion, welche einen Zeitstempel zurückgibt
  // Test Fib Loop
  for (int i = 0; i <= 91; i++) {
    // Verknüpfung Text, Variable
    // <Text> + <Variable> + <Text>
    println("Fib(" + i + ") = " + fibList(i)); 
  }
  long end = millis();
  println("Duration: " + (end - start) + "ms");
}

public void listDemo() {
  list.add(42); // Hinzufügen des Elements
  list.contains(10); // 
  list.get(0); // An Stelle 0 Element erhalten
  list.set(0, 43); // Index und neuer Wert
}
// Konzept von rekursiven Funktionen:
// - Funktion ruft sich selber auf
// Problem: Endlossschleife
long fibonacciLoop(int n) {
  long[] array = new long[Math.max(n + 1, 2)]; // Länge des Arrays angeben
  array[0] = 1;
  array[1] = 1;
  for (int i = 2; i <= n; i++) 
    array[i] = array[i - 1] + array[i - 2];
  
  return array[n];
}
// Abbruchbedingung: Verhindert Endlosschleife
// 
long fibonacciRec(int n) {
  if (n == 0 || n == 1) {
    return 1;
  }else{
    // Rekursiver Aufruf: - Rufe gleiche Funktion nochmal auf
    //                    - Neuer Aufruf löst "leichteres/kleineres" Problem
    return fibonacciRec(n - 1) + fibonacciRec(n - 2);
  }
}

long fibList(int n) {
  if (listFib.size() > n) {
    // Ergebnis wurde bereits berechnet
    return listFib.get(n);
  }else {
    // berechne Wert
    long value = 1;
    if (n >= 2) {
      value = fibList(n - 1) + fibList(n - 2); 
    }
    if (listFib.size() == n) {
      listFib.add(value);
    }
    return value;
  }
}
