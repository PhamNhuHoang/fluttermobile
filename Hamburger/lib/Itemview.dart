import 'package:flutter/material.dart';

class Itemview extends StatelessWidget{
   Itemview({super.key});
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 15, top: 30, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: Offset(0,2)
                      )
                    ]
                  ),
                  child: Icon(Icons.arrow_back_ios, size: 15,),
                )
              ),
              Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: Offset(0,2)
                      )
                    ]
                  ),
                  child: Icon(Icons.favorite,color: Colors.red, size: 15,),
                )
            ],
          ),

          SizedBox(height: 7,),
          Padding(
            padding: EdgeInsets.all(0),
            child: Center(
              child: Text("Classic Chicken Burger",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w700,
              ),
              ),         
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: Text("Tasty and has me craving more on the first bite"),
          ),
          SizedBox(height: 2,),
          Center(
            child: Text("A juicy lightly breaded chicken breast"),
          ),
          SizedBox(height: 30,),
          Container(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Image.asset("Back/burger2.png"),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: Offset(0,2)
                      )
                    ]
                  ),
                  child: Text("Giá tiền"),
                ),
                Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 8,
                          offset: Offset(0,2)
                        )
                      ]
                    ),
                    child: Text("Thông tin"),
                  )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: Container(
                    height: 50,
                    width: 70,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0,3)
                        )
                      ]
                    ),
                    child: Center(child: 
                      Text(" < > ", 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                          ),
                      )
                    ),
                  )
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [              
                Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(0,2)
                          )
                        ]
                      ),
                      child: Center(child: Text(" + ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),)),
                  ),
                  Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(0,2)
                          )
                        ]
                      ),
                      child: Center(child: Text(" 2 ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),)),
                  ),
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(0,2)
                          )
                        ]
                      ),
                      child: Center(child: Text(" - ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),)),
                  ),          
            ],),
          ),
          SizedBox(height: 90,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 70),
                    child: Text("Giá tiền", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(right: 13),
                    child: Text("60.000 đồng",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  )
                ],
              ),
            ),
          Container(
            height: 60,    
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Padding(             
              padding: EdgeInsets.all(8),
              child: Row(children: [
                Icon(Icons.shopping_cart_checkout_outlined,color: Colors.white,),
                Text("Thêm vào giỏ", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),)
              ],)
            ),
          )
          ],)
          

        ]),
      ),
    ); 
  }
}