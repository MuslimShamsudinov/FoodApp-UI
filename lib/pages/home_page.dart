import 'package:flutter/material.dart';
import 'package:i_am_rich_ui/widgets/HomeNavBarr.dart';
import 'package:i_am_rich_ui/widgets/items_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:4,
      child: Scaffold(
        backgroundColor: Color(0xff232227),
        body: SafeArea(child: Padding(padding: EdgeInsets.only(top: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Icon(Icons.sort_rounded,color: Colors.white,
                  size: 30,
                  ),
                ),
                InkWell(
                  child: Icon(Icons.search,color: Colors.white,
                  size: 30,
                  ),
                ),
              ],
            ),),
            SizedBox(height: 30,),
            Padding(padding: EdgeInsets.symmetric(horizontal:15),
            child: Text('Hot & Fast Food',style:TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 5,),
                 Padding(padding: EdgeInsets.symmetric(horizontal:15),
            child: Text('Deliviers on Time',style:TextStyle(color: Colors.white60,fontSize: 18,),),
            ),
            SizedBox(height: 30,),
            TabBar(isScrollable: true,
                indicator:BoxDecoration(),
                labelStyle: TextStyle(fontSize: 18),
                labelPadding: EdgeInsets.symmetric(horizontal:20),
          tabs: [
            Tab(text: "Burger",),
            Tab(text: "Pizza",),
            Tab(text: "Cheese",),
            Tab(text: "Pasta",)
         
          ],
            ),
            Flexible(
              flex: 1,
              child:TabBarView(
               children: [
        ItemsWidget(),
        ItemsWidget(),
        ItemsWidget(),
        ItemsWidget(),
                            ],
            ) )
        
            
          ],
        ),),
        
        ),
        bottomNavigationBar: HomeNavBar(),
        
      ),
    );
  }
}