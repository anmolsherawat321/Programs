import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  int _index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 229, 229),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 237, 229, 229),
        foregroundColor: Color.fromARGB(255, 182, 142, 154),
        actions: [
        Icon(Icons.question_answer_outlined),
        Padding(padding: EdgeInsets.only(right: 10.0)),
        Icon(Icons.notifications),
        Padding(padding: EdgeInsets.only(right: 5.0)),
      ]),
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book),label: "Learn"),
          BottomNavigationBarItem(icon: Icon(Icons.hub),label: "Hub"),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline),label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),label: "Profile"),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0,5.0,0,5),
                child: Text('Hello, ABC!',style: TextStyle(fontSize: 20.0),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0,0,0,5),
                child: Text('What do you wanna learn today'),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15,0,7.5,5),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue,width: 2.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      width: 170.0,
                      height: 50.0,
                      child: ListTile(
                        leading: Icon(Icons.article,color: Colors.blue,),
                        minLeadingWidth: 10.0,
                        title: Text('Programs',textAlign: TextAlign.start,style: TextStyle(color: Colors.blue),),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(7.5,0,15,5),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue,width: 2.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      width: 170.0,
                      height: 50.0,
                      child: ListTile(
                        leading: Icon(Icons.question_mark,color: Colors.blue,),
                        minLeadingWidth: 10.0,
                        title: Text('Get Help',textAlign: TextAlign.start,style: TextStyle(color: Colors.blue),),
                      ),
                    ),
                  ),
                ],
              ),
      
      
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15,5,7.5,0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue,width: 2.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      width: 170.0,
                      height: 50.0,
                      child: ListTile(
                        leading: Icon(Icons.menu_book,color: Colors.blue,),
                        minLeadingWidth: 10.0,
                        title: Text('Learn',textAlign: TextAlign.start,style: TextStyle(color: Colors.blue),),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(7.5,5,15,0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue,width: 2.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      width: 170.0,
                      height: 50.0,
                      child: ListTile(
                        leading: Icon(Icons.bar_chart,color: Colors.blue,),
                        minLeadingWidth: 10.0,
                        title: Text('DD Tracker',textAlign: TextAlign.start,style: TextStyle(color: Colors.blue),),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 20.0)),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.fromLTRB(15.0,15.0,0,15.0),
                        child: Text('Programs for you',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold))
                        ),
                        Padding(padding: EdgeInsets.only(right: 180.0)),
                        Text('View all',style: TextStyle(color: Color.fromARGB(255, 182, 142, 154),fontWeight: FontWeight.bold)),
                        Icon(Icons.arrow_forward_rounded),
                      ],
                    ),
            Padding(
                padding: const EdgeInsets.fromLTRB(15,5,15,5),
                child: SizedBox(
                height: 230, // card height
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context,i) {
                    return SizedBox(
                      width: 270.0,
                      child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),child: Image(fit: BoxFit.fill,image: AssetImage('images/newborn.jpg'),height: 100.0,width: 500.0,)),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5,10,5,5),
                                child: Text('BabyCare',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15.0),),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5,0,5,2.5),
                                child: Text('A complete guide for your',style: TextStyle(fontWeight: FontWeight.bold),),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5,0,5,10),
                                child: Text('new born baby',style: TextStyle(fontWeight: FontWeight.bold),),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5,10,5,2.5),
                                child: Text('16 lessons',style: TextStyle(fontSize: 13.0,color: Color.fromARGB(255, 182, 142, 154),),),
                              ),
                            ],
                          ),
                        ),
                    );
                    
                  },
                ),
          ),
            ),
            Row(
                      children: [
                        Padding(padding: EdgeInsets.fromLTRB(15.0,15.0,0,15.0),
                        child: Text('Events and experiences',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold))
                        ),
                        Padding(padding: EdgeInsets.only(right: 145.0)),
                        Text('View all',style: TextStyle(color: Color.fromARGB(255, 182, 142, 154),fontWeight: FontWeight.bold)),
                        Icon(Icons.arrow_forward_rounded),
                      ],
                    ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15,5,15,5),
            child: SizedBox(
                height: 230, // card height
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context,i) {
                    return SizedBox(
                      width: 270.0,
                      child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),child: Image(fit: BoxFit.fill,image: AssetImage('images/exercise.jpg'),height: 100.0,width: 500.0,)),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5,0,5,5),
                                child: Text('BabyCare',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15.0),),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5,0,5,2.5),
                                child: Text('Understanding of human',style: TextStyle(fontWeight: FontWeight.bold),),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5,0,5,2.5),
                                child: Text('Behaviour',style: TextStyle(fontWeight: FontWeight.bold),),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5,10,5,2.5),
                                    child: Text('Dec. 24,2022',style: TextStyle(fontSize: 13.0,color: Color.fromARGB(255, 182, 142, 154),)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(90, 10, 5, 2.5),
                                    child: ElevatedButton(onPressed: (){}, child: Text('Block',style: TextStyle(color: Colors.blue),),
                                    style: ElevatedButton.styleFrom(
                                      
                                          primary: Colors.white,
                                          side: BorderSide(width: 1.2,color: Colors.blue),
                                          minimumSize: Size(70.0, 25.0),
                                          maximumSize: Size(70.0, 25.0),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                    );
                    
                  },
                ),
            ),
          ),
          Row(
                      children: [
                        Padding(padding: EdgeInsets.fromLTRB(15.0,15.0,0,15.0),
                        child: Text('Lessons for you',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold))
                        ),
                        Padding(padding: EdgeInsets.only(right: 190.0)),
                        Text('View all',style: TextStyle(color: Color.fromARGB(255, 182, 142, 154),fontWeight: FontWeight.bold)),
                        Icon(Icons.arrow_forward_rounded),
                      ],
                    ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15,5,15,5),
            child: SizedBox(
                height: 230, // card height
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context,i) {
                    return SizedBox(
                      width: 270.0,
                      child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),child: Image(fit: BoxFit.fill,image: AssetImage('images/exercise.jpg'),height: 100.0,width: 500.0,)),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5,0,5,5),
                                child: Text('BabyCare',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15.0),),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5,0,5,2.5),
                                child: Text('Understanding of human',style: TextStyle(fontWeight: FontWeight.bold),),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5,0,5,2.5),
                                child: Text('Behaviour',style: TextStyle(fontWeight: FontWeight.bold),),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5,10,5,2.5),
                                child: Text('3 min',style: TextStyle(fontSize: 13.0,color: Color.fromARGB(255, 182, 142, 154),)),
                              ),
                            ],
                          ),
                        ),
                    );
                    
                  },
                ),
            ),
          ),
                  ],
                ),
              ),
         
            ],
          )
        ),
      ),
    );
  }
}