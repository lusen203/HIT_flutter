import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

class broad extends StatefulWidget {
  const broad({super.key});

  @override
  State<broad> createState() => _broadState();
}

class _broadState extends State<broad> {
  int status=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:const Text("Broad",
          style: TextStyle(color: Colors.black,fontSize: 30,
          fontWeight: FontWeight.bold),) ,
          actions:const [ 
          Icon(Icons.search,color: Colors.black,),
         Icon(Icons.notifications,color: Colors.black,),
          Icon(Icons.calendar_month,color: Colors.black,)],
          backgroundColor: Colors.white,
          ),
         body: sreenOne(context),

      ),
      
      
    );
  }

  SafeArea sreenOne(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: const Text(
                        "All",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: const Text(
                        "Uncompleted",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: const Text(
                        "Completed",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: const Text(
                        "Favourite",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  )
                ],
              ),
            ]),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.menu,
                    size: 100,
                    color: Colors.grey,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   const Text(
                    "No Taskey, Please Insert Some Tasks",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  )
                ],
              )
            ]),
          ),
          const SizedBox(height: 200),
          Container(
            margin: const EdgeInsets.fromLTRB(80, 0, 0, 0),
            child: Row(children: [
              InkWell(
                onTap: () {},
                child: Container(
                    width: 300,
                    height: 60,
                    decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.blue),
                    child: const Center(
                      child: Text(
                        "Add a task",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    )),
              )
            ]),
          )
        ],
      ),
    );

  }
  Container box(){
    return Container(
      width: 250,
      height: 100,
      color: Colors.pink,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20)
        ),
      child: Row(
        children: [
          const Icon(Icons.check_box),
          Column(
            children: const [
              Text("Task 1"),
          Text("From 22:34 PM - To: 10:34 PM"),
          Text("Dealine 27-7-2022")
            ],
          ),
          const Icon(Icons.favorite)
        ]
        ),
    );
  }
 
}
