import 'package:flutter/material.dart';
import 'package:redbook_flutter/pages/home_list_page.dart';

class Homepage extends StatefulWidget{

  const Homepage() : super();

  @override
  State<StatefulWidget> createState() {
    
    return _HomepageState();
  }
}


class _HomepageState extends State with SingleTickerProviderStateMixin{
  ScrollController _scrollController;
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    
    _tabController = TabController(vsync: this,length: 3,initialIndex: 1);
    
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _tabController.dispose();
    super.dispose();
  }


  



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        

        title: TabBar(
        
        isScrollable: true,
        indicatorPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
        controller: _tabController,
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        indicatorColor: Colors.redAccent,
        tabs: <Widget>[
          Tab(text: "关注"),
          Tab(text: "发现"),
          Tab(text: "附近")
        ],
      ),
        
      ),
      body: TabBarView(
        
        controller: _tabController,
        children: <Widget>[
          HomeListPage(),
          HomeListPage(),
          HomeListPage(),
          
        ],
      ),
            
    
    ) ;
  }



}

// class TabbarWidget extends StatefulWidget{
  
  
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return TabBar(
//         isScrollable: true,
//         controller: _tabController,
//         tabs: <Widget>[
//           Tab(text: "关注"),
//           Tab(text: "发现"),
//           Tab(text: "附近")
//         ],
//       );
//   }



// }

