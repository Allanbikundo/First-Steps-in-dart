import 'package:First/First.dart';
import 'package:First/test.dart' as CallofDuty;
import 'cat.dart';
import 'dog.dart';

main(List<String> arguments) {
  //variables
  var something = 'hello world!';
  something = 'cats rule';

  print(something);

  const bleh = 1;

  print(bleh);

  //numbers
  num age = 12;
  age += 30;
  print('Age is $age');

  //  boolean
  print(age.isNaN);

  //strings are characters
  String title = 'Hey Honey';
  print(title);
  title += ' Winnie does own you!';
  print(title);

  //grab a substring
  print(title.substring(0, 4));

  //replace all NN to ZZ

  title = title.replaceAll('nn', 'zz');
  print(title);

  String names = 'Allan,Mageto,Bikundo';
  assert(names.contains('Mageto'));

  //  Lists also known as arrays in other languages
  List<String> list = names.split(',');
  print(list);

  print(list.elementAt(2));
  print(list[1]);

  list.add('Winnie');
  print(list);
  list.insert(1, 'Njogu');
  print(list);

  print(list.indexOf('Winnie') + 1);

  list.forEach((r) => print(r));

  //maps are kidogo different
  Map<String, int> ages = {
    'Winnie': 23,
    'Mageto': 22,
  };
  print(ages.keys);
  print(ages.values);

  print(ages['Winnie']);

  //add data to map
  ages['Marc'] = 50;
  print(ages['Marc']);

  ages.forEach((k, v) {
    print('$k is $v years old');
  });

  //----------------------------------------//
  //        CONTROL FLOW STATEMENTS
  //----------------------------------------//

  //If and Else
  bool ison = false;
  //outer scope
  if(ison == false) {
    //inner scope
    print('it in off');
    var kitty = 'cat';
    print(kitty);
  }else{
    print('It is on');
  }

  //else if
  int test = 1;
  if(test == 1){
    print('test is one');
  }else if (test == 2){
    print('test is two');
  }else{
    print('Test is beyond my thinking capacity');
  }

  //Switch and Case
  //using the test variable
  switch(test){
    case 0:
      print('test is zero');
      break;
    case 1 :
      print('test is one');
      break;
    case 2:
      print('test is two');
      break;
    default:
      print('Test is beyond my thinking capacity');
  }


  //while and do
  bool running = true;
  int counter = 0;

  //while
  while(running){
    counter ++;

    print('While counter = $counter');
    print('on to ther next one');
    if(counter >= 5) running = false;
  }

  while(counter < 6 ) {
    counter++;
    print('bleh');
  }
  print('We are done with the while loop');

  //do

  running=true;
  counter = 0;
  do{
    counter ++;

    print('Do Counter = $counter');
    if(counter >= 5) running = false;
  } while(running);

  print('done with do loop');

//for loop
List<String> name = new List<String>();
name.add('Allan');
name.add('Mageto');
name.add('Bikundo');
for(int i = 0; i < name.length; i++){
  print('You right there are my number : $i and your name is ' +  name[i]);
}

sayHello();

annoy(9);

print(createName('Allan', 'Bikundo'));

List<int> advList = new List<int>();
advList.add(1);
advList.add(2);
advList.add(3);

print("As an Object");
advList.forEach(asObject);

print('external function');
print(calculate());
print(CallofDuty.lovesThisKeyboard('Allan'));

print(compair(apples: 1, oranges: 3));
//CLASSES
cat Mrtwinkles = new cat();
cat Fluffy = new cat();
dog Fido = new dog();

Mrtwinkles.speak();
Fluffy.speak();
Fido.speak();
}

//functions
void sayHello(){
  for(int i = 0; i < 9; i++){
    print('hey crush!');
  }
}

void annoy(int times){
  for(int i = 0; i < times; i++){
    print('bla');
  }
}
String createName(String first, String last) {
  return first + ' ' + last;
}

//Advanced Functions
void asObject(int i){
  print(i);
}

int  compair({int apples = 0, int oranges = 0}) {
  return apples.compareTo(oranges);
}