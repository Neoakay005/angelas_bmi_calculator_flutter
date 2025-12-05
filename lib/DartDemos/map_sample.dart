Map<String, int> myPhoneList = {
  "Halil": 5424087169,
};

void main(){
  print(myPhoneList["Halil"]);


  myPhoneList["Esad"] = 5446878787;
  print(myPhoneList["Esad"]);

  myPhoneList["Mustafa"] = 5446822787;

  print(myPhoneList.keys);
  print(myPhoneList.values);

}