import 'package:firstone/firstone.dart' as firstone;

void main() {
  print("q1");
  List<int> numbers=[5,10,15,20,25];
  numbers.add(30);
  numbers.addAll([35,40]);
  numbers.insert(2,12);
  print(numbers);
  numbers.remove(20);
  print(numbers);
  print(numbers.length);
  for(int num in numbers ){
    if(num==40){
      print("yes");
    }
  }
  print(numbers);
  print("=============================");
  print("q2");
  Map  student = {
    "name" : "Ahmed",
    "age" : "21",
    "grade":"B"

  };
  student.addAll({
    "city":"Cairo"
  }
  );
  print(student);
  student.update("grade",(value) => "A");
  print(student);
  student.remove("age");
  student.forEach((key, value) {
    print('$key: $value');
  });
  print("numbers of each item : ${student.length}");
  print("=====================================");
  print("q3");

  List<Map<String,dynamic>> students=[ {'name': 'Ali', 'age': 20, 'grade': 'A'},
     {'name': 'Sara', 'age': 22, 'grade': 'B'},
  {'name': 'Omar', 'age': 19, 'grade': 'C'}];

  for (var student in students) {
    if (student['name'] == 'Omar') {
      student['grade'] = 'B+';
      break;
    }
  }
  print(students[2]["name"]);

  students.add({'name':"janjun",'age': 20, 'grade': 'A+'});

  students.forEach((student) {
    print("Name: ${student['name']}, Age: ${student['age']}, Grade: ${student['grade']}");
  });

  print("=========================");
  print("q4");

  List<Map<String,dynamic>> products=[{
    'name':'kiko','price':1200,'quantity':2},
  {
  'name':'huda_beauty','price':2000,'quantity':3},
  ];
  int c=0;
  int total=0;
  for(var product in products){
    c++;
    total += product['price'] * product['quantity'] as int ;
  }
  print(c);
print(total);
}
