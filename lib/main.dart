import 'package:flutter/material.dart';
import 'customw.dart';

void main() {
  /* widget creation example
    runApp(
    new Center(
        child: new Text('This is my first flutter application',textDirection: TextDirection.ltr,)
    )
  );*/

  /* StateLessWidget example
  runApp(new applicationStateLess());
  */

  /* StatefulWidget example
  runApp(new applicationStateFul());
   */

  /* Container Widget example
  runApp(new applicationContainer());
   */

  /* Row and Column Example
  runApp(new applicationRowColumn());
   */

  /* Basic List example
  runApp(new applicationBasicList());
   */

  /* User List example
  runApp(applicationUserList());
   */

  /*Stack widget example
  runApp(
    new MaterialApp(
     home: applicationStack()
    )
  );
   */

  /*GridView Example
  runApp(
      new MaterialApp(
          home: applicationGridView()
      )
  );
   */

  /*AppBar example
  runApp(
      new MaterialApp(
          home: applicationAppBar()
      )
  );
   */

  /* Top and bottom Tabbar example
  runApp(
      new MaterialApp(
          home: applicationTabBar()
      )
  );
   */

  /* Custom Widget example
  runApp(
      new applicationCustomWidget()
  );
   */

  runApp(
    applicationTextField()
  );


}

//TextField example
class applicationTextField extends StatefulWidget {
  const applicationTextField({Key? key}) : super(key: key);

  @override
  State<applicationTextField> createState() => _applicationTextFieldState();
}

class _applicationTextFieldState extends State<applicationTextField> {
  String ptext= '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dummy Application',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Dummy Application'),
        ),
        body: Column(
          children: <Widget>[
            TextField(
              /*onChanged: (String txt){
                setState(() {
                  ptext = txt;
                });
              },*/
              onSubmitted: (String txt){
                setState(() {
                  ptext = txt;
                });
              },
              decoration: const InputDecoration(
                  hintText: 'Type Something',
                  labelText: 'Fullname',
              ),
            ),
            Text(ptext),
          ],
        ),
      ),
    );
  }
}



//Custom widget example
class applicationCustomWidget extends StatelessWidget {
  const applicationCustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Custom Widget',
      home: Scaffold(
        body: customewidget(),
      ),
    );
  }
}


//top and bottom TabBar example
class applicationTabBar extends StatefulWidget {
  const applicationTabBar({Key? key}) : super(key: key);

  @override
  State<applicationTabBar> createState() => _applicationTabBarState();
}

class _applicationTabBarState extends State<applicationTabBar> with SingleTickerProviderStateMixin{

  late TabController _tcontrol;

  @override
  void initState() {
    // TODO: implement initState
    _tcontrol = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabbar'),
        bottom: TabBar(
          controller: _tcontrol,
          tabs: [
            Tab(icon: Icon(Icons.home),),
            Tab(icon: Icon(Icons.supervisor_account),),
            Tab(icon: Icon(Icons.close),),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tcontrol,
        children: [
          Center(child: Text('Welcome to Home'),),
          Center(child: Text('Welcome to User Account'),),
          Center(child: Text('Welcome to Close'),),
        ]
      ),
      bottomNavigationBar: Material(
        color: Colors.blueGrey,
        child: TabBar(
          controller: _tcontrol,
          tabs: [
            Tab(icon: Icon(Icons.home),),
            Tab(icon: Icon(Icons.supervisor_account),),
            Tab(icon: Icon(Icons.close),),
          ],
        ),
      ),
    );
  }
}



//AppBar Example
class applicationAppBar extends StatefulWidget {
  const applicationAppBar({Key? key}) : super(key: key);

  @override
  State<applicationAppBar> createState() => _applicationAppBarState();
}

class _applicationAppBarState extends State<applicationAppBar> {
  String mText = ' ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('AppBar Widget'),
        //centerTitle: true,
        elevation: 30.0,
        titleSpacing: 30.0,
        toolbarOpacity: 0.5,
        //leading option definition
        leading: Icon(Icons.menu),
        //actions options definition
        actions: [
          IconButton(
              onPressed: (){
                setState(() {
                  mText = 'This is Arrow icon button';
                });
              },
              icon: Icon(Icons.arrow_forward)
          ),
          IconButton(
              onPressed: (){
                setState(() {
                  mText = 'This is Close icon button';
                });
              },
              icon: Icon(Icons.close)
          ),
        ],
      ),
      body: Center(
        child: Text(mText),
      ),
    );
  }
}



// GridView example
class applicationGridView extends StatefulWidget {
  const applicationGridView({Key? key}) : super(key: key);

  @override
  State<applicationGridView> createState() => _applicationGridViewState();
}

class _applicationGridViewState extends State<applicationGridView> {

  List<int> items = <int>[];

  @override
  void initState() {
    // TODO: implement initState
    for (int i= 0; i<50 ; i++){
      items.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (BuildContext context, int index){
            return Card(
              color: Colors.blue,
              child: Padding(padding: const EdgeInsets.all(20.0)),
            );
          }
      ),
    );
  }
}


//Stack widget example
class applicationStack extends StatefulWidget {
  const applicationStack({Key? key}) : super(key: key);

  @override
  State<applicationStack> createState() => _applicationStackState();
}

class _applicationStackState extends State<applicationStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
          children: <Widget> [
            Card(color: Colors.yellow, child: Padding(padding: const EdgeInsets.all(200.0),)),
            Card(color: Colors.red, child: Padding(padding: const EdgeInsets.all(100.0),)),
            Card(color: Colors.green, child: Padding(padding: const EdgeInsets.all(50.0),)),
            Card(color: Colors.blue, child: Padding(padding: const EdgeInsets.all(30.0),)),
            Card(color: Colors.brown, child: Padding(padding: const EdgeInsets.all(10.0),)),
          ]
      ),
    );
  }
}



//User List example
class applicationUserList extends StatefulWidget {
  const applicationUserList({Key? key}) : super(key: key);

  @override
  State<applicationUserList> createState() => _applicationUserListState();
}

class _applicationUserListState extends State<applicationUserList> {

  List<int> items = <int>[];

  @override
  void initState() {
    // TODO: implement initState
    for(int i=0; i<50 ; i++){
      items.add(i);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dummy Application",
      home: Scaffold(
        appBar: AppBar(title: Text('List Widget'),),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index){
              return ListTile(
                title: Text('item no: $index'),
                trailing: Icon(Icons.arrow_forward),
              );
            }
        ),
      ),
    );
  }
}


//Basic List Widget example
class applicationBasicList extends StatefulWidget {
  const applicationBasicList({Key? key}) : super(key: key);

  @override
  State<applicationBasicList> createState() => _applicationBasicListState();
}

class _applicationBasicListState extends State<applicationBasicList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dummy application",
      home: Scaffold(
        appBar: AppBar(title: Text('List Widget'),),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text('item 1'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('item 2'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('item 3'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}



//Row and column example
class applicationRowColumn extends StatelessWidget {
  const applicationRowColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApplication",
      home: Scaffold(
        appBar: AppBar(title: Text('Row & Column'),),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('This'),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('This'),
                Text('is'),
                Text('Column'),
              ],
            ),
            Text('row'),
          ],
        ),
      ),
    );
  }
}


// container widget example
class applicationContainer extends StatelessWidget {
  const applicationContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Text('This is my Container'),
          height: 300.0,
          width: 300.0,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.green,
          ),
          foregroundDecoration: BoxDecoration(
            color: Colors.deepOrange,
          ),
        ),
      ),
    );
  }
}



//Stateful widget example
class applicationStateFul extends StatefulWidget {
  const applicationStateFul({Key? key}) : super(key: key);

  @override
  State<applicationStateFul> createState() => _applicationStateFulState();
}

class _applicationStateFulState extends State<applicationStateFul> {
  String ttext = '';

  @override
  void initState() {
    // TODO: implement initState
    ttext = 'Click on this button';
    super.initState();
  }

  void method1 (){
    setState(() {
      ttext = 'The text is been change';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Statefull Widget',
      home: Scaffold(
        body: Center(
          child: RaisedButton(onPressed: () {method1();} , child: Text(ttext),),
        ),
      ),
    );
  }
}




// Stateless widget example
class application extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateless Widget',
      home: Scaffold(
        body: Container(
          color: Colors.pink,
          child: Container(
            color: Colors.yellow,
            margin: const EdgeInsets.all(30.0),
          )
        )
      )
    );
  }
}




