void main() {
  bool efendimGuzel = true;

  // ternary condition check style
  efendimGuzel == true ? print("Eyvallah!") : print("Yanlış dedin");

  // bunun yerine geçer
  /*
  if (efendimGuzel == ture) {
    print("Eyvallah!");
  } else {
    print("Yanlış dedin");
  }
  */

  //----------------
  // assigning a condition in one line
  int age = 15;
  bool namazMukellefiyeti = age > 7 ? true : false;
  print(namazMukellefiyeti);
}
