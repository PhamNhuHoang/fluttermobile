import 'package:flutter/material.dart';
import 'package:food/Itemview.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, 
    home: MainApp()
    )
  );
}

class MainApp extends StatefulWidget {
   MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
   List iconImages = [
    "Newpic/burgernen.png",
    "Newpic/pizza2.png",
    "Newpic/cofe3.png",
    "Newpic/cake3.png",
    "Newpic/ice2.png",
  ];

    List Titles = [
    "Hamburger",
    "Pizza",
    "Coffe",
    "Bánh",
    "Kem"
  ];

  int currentSelectedItem = 0;

  @override
  Widget build(BuildContext context) {




    return  MaterialApp(
      debugShowCheckedModeBanner: false,      
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          elevation: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home, size: 25,) ,label: "Trang chủ"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined, size: 25,) ,label: "Yêu thích"),
            BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined, size: 25,) ,label: "Cá nhân"),
            BottomNavigationBarItem(icon: Icon(Icons.more_horiz, size: 25,) ,label: "Khám phá"),
          ]),
        body: Padding(
          padding: EdgeInsets.only(top: 30,left:10, right:10),
          child: SingleChildScrollView(
            child: SingleChildScrollView(
              child: Column(
                
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.sort,
                        size: 25
                      ),
                      Row(
                        children: [
                          Icon(
                              Icons.location_on_outlined,
                              size: 25
                          ),
                          Text("Hải Phòng",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400  
                            )
                          ),
                          Icon(
                            Icons.keyboard_arrow_right_sharp,
                            size: 25,
                            )
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                        child: Image.network("https://steamuserimages-a.akamaihd.net/ugc/1654473538255844161/0EB3C8C0C310576DB910968D1F7C280FB3007D0B/?imw=512&&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false"),                    
                      ),
                  ],),
                  SizedBox(height: 18,),
                  Text("Hey!",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Đặt món ngay hôm nay",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w200
                    ),
                  ),
                  SizedBox(height: 12,),
                  TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 241, 238, 238),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none,
                            ),
                            hintText: "Bạn muốn ăn món gì?",
                            prefixIcon: Icon(Icons.search)
                        ),
                  ),
                  SizedBox(height: 200,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: iconImages.length,
                          itemBuilder: (context, index) {
                            return Stack( 
                              children: [
                                Padding(padding: EdgeInsets.only(top: 30),
                                  child: GestureDetector(
                                    child: Container(
                                      margin: EdgeInsets.symmetric(horizontal: 10),
                                      height: 200,
                                      width: 120,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            currentSelectedItem = index;
                                          });
                                        },
                                        child: Card(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                          color: index == currentSelectedItem ? Colors.red : Colors.white,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Text(Titles[index], 
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 17,
                                                color: index == currentSelectedItem ? Colors.white : Colors.black,                                      
                                              ),),
                                            SizedBox(height: 20), 
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 5),
                                              child: Container(
                                                height: 20,
                                                width: 20,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(30),     
                                                  color: index == currentSelectedItem ? Colors.white : Colors.black,                                     
                                                ),
                                                child: Icon(Icons.keyboard_arrow_right_outlined, 
                                                color: index == currentSelectedItem ? Colors.red : Colors.white,
                                                size: 15,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 5,),
                                            ]),
                                                                      
                                        ),
                                      ),                                 
                                    ),
                                  ),
                                ),       
                                Positioned(                            
                                  child: Container(
                                    margin: EdgeInsets.only(top:40 , left: 30, right: 10),
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Image.asset(
                                      "${iconImages[index]}",
                                      height: 80,
                                      width: 80,
                                    ),
                                  )),                          
                              ],
                            );
                          }, 
                        ),
                  ),
            
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Popular", 
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),),
                        Text("Xem thêm  >",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w300,
                            color: Colors.black
                          ),)
                    ],
                  ),
                  SizedBox(height: 0),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            width: 310,
                            height: 320,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0,1),
                              )]
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top:5, left: 5, right: 5),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Itemview() ));
                                    },
                                    child: Container(
                                      width: 300,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.red,
                                        boxShadow: [BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 10,
                                          offset: Offset(0,3),
                                                                )]
                                      ),
                                      child: InkWell(
                                        onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Itemview() ));
                                    },
                                        child: Image.asset("Back/burger2.png", height: 180, width: 250,))),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 9),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [                                   
                                      Text("Classic Chicken Burger", 
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,                                      
                                        ),),
                                      Text("60,000đ",style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,                                      
                                        ),),
                                      
                                    ],
                                  ),                                 
                                ),
                                SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 190),
                                  child: Text("Infomation: ",
                                    style: TextStyle(
                                      fontSize: 19
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 9),
                                  child: Text("A juicy lightly breaded crispy chicken breast with crunchy lettuce, tomato, mayonnaise, and the perfect pickles all on a toasted bun."
                                        ),
                                ),                               
                              ],
                            ),
                          ),
                        )
                      ]),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            width: 310,
                            height: 270,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0,1),
                              )]
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top:5, left: 5, right: 5),
                                  child: Container(
                                    width: 300,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.red,
                                      boxShadow: [BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 3,
                                        blurRadius: 10,
                                        offset: Offset(0,3),
                              )]
                                    ),
                                    child: Image.asset("Back/burger3.png", height: 130, width: 250,)),
                                ),
                                SizedBox(height: 5,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 9),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [                                   
                                      Text("Food Big Burger", 
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,                                      
                                        ),),
                                      Text("85,000đ",style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,                                      
                                        ),),
                                      
                                    ],
                                  ),                                 
                                ),
                                SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 190),
                                  child: Text("Infomation: ",
                                    style: TextStyle(
                                      fontSize: 19
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 9),
                                  child: Text("“Tasty, delicious, and has me craving more on the first bite and juicy, mouthwatering, tasty, and everything you’d ever want to savor."
                                        ),
                                ),                               
                              ],
                            ),
                          ),
                        )
                      ]),
                  ),


                ],),
            )
          )
        ,)       
      ),
    );
  }
}