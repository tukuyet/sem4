import 'package:employee/employee.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Employee> employee = [
    Employee(
        avatar: Image.asset("assets/employee.png"),
        name: "employee1",
        age: 20,
        position: "employee"),
    Employee(
        avatar: Image.asset("assets/employee.png"),
        name: "employee2",
        age: 18,
        position: "marketting"),
    Employee(
        avatar: Image.asset("assets/employee.png"),
        name: "employee3",
        age: 18,
        position: "SEO"),
    Employee(
        avatar: Image.asset("assets/employee.png"),
        name: "employee4",
        age: 18,
        position: "Sale"),
    Employee(
        avatar: Image.asset("assets/employee.png"),
        name: "employee5",
        age: 18,
        position: "CEO"),
    Employee(
        avatar: Image.asset("assets/employee.png"),
        name: "employee6",
        age: 18,
        position: "business"),
    Employee(
        avatar: Image.asset("assets/employee.png"),
        name: "employee7",
        age: 18,
        position: "HRM"),
    Employee(
        avatar: Image.asset("assets/employee.png"),
        name: "employee8",
        age: 18,
        position: "business"),
    Employee(
        avatar: Image.asset("assets/employee.png"),
        name: "employee9",
        age: 18,
        position: "employee"),
    Employee(
        avatar: Image.asset("assets/employee.png"),
        name: "employee10",
        age: 18,
        position: "employee"),
    Employee(
        avatar: Image.asset("assets/employee.png"),
        name: "employee11",
        age: 18,
        position: "employee"),
    Employee(
        avatar: Image.asset("assets/employee.png"),
        name: "employee12",
        age: 18,
        position: "employee"),
    Employee(
        avatar: Image.asset("assets/employee.png"),
        name: "employee13",
        age: 18,
        position: "employee"),
    Employee(
        avatar: Image.asset("assets/employee.png"),
        name: "employee14",
        age: 18,
        position: "employee"),
    Employee(
        avatar: Image.asset("assets/employee.png"),
        name: "employee15",
        age: 18,
        position: "employee"),
    Employee(
        avatar: Image.asset("assets/employee.png"),
        name: "employee16",
        age: 18,
        position: "employee"),
        Employee(
        avatar: Image.asset("assets/employee.png"),
        name: "employee14",
        age: 18,
        position: "employee"),
    Employee(
        avatar: Image.asset("assets/employee.png"),
        name: "employee15",
        age: 18,
        position: "employee"),
    Employee(
        avatar: Image.asset("assets/employee.png"),
        name: "employee16",
        age: 18,
        position: "employee"),
  ];
bool isHide = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Employees"),
      ),
      body: isHide == false ? SingleChildScrollView(
        child: 
        Padding(
           padding: EdgeInsets.only(left: 10,right: 10),
          child: Column(children: [
            ...employee.map((e) {
                return Column(
                  children: [
                    Container(
                      // height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.height,
                      child: Row(children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            child: e.avatar,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tên : " + "${e.name ?? ""}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("Tuổi : " + "${e.age ?? 0}"),
                            Text("Chức vụ : " + "${e.position ?? ""}"),
                          ],
                        )
                      ]),
                    ),
                    Divider()
                  ],
                );
              },
            ),
          ]),
        ) 
      ): 
        SingleChildScrollView(
          child: Wrap(
          children: [
            ...employee.map((e) {
                return Container(
                  width: MediaQuery.of(context).size.width / 4 ,
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Column(
                    children: [
                        Container(
                          // width: 140,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            child: e.avatar,
                          ),
                        ),
                         Text(
                            "${e.name ?? ""}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("${e.age ?? 0}"),
                          Text("${e.position ?? ""}"),
                    ],
                  ),
                );
              },)
          ],),
        ),
      bottomNavigationBar: Container(
        height: 100,
      child: TextButton(onPressed: () {
        setState(() {
          isHide = !isHide;
          print(isHide);
        });
      },
      child: Text("data"),)
      ),
    );
  }
}
