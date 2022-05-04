import 'package:flutter/material.dart';

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

  runApp(
      new MaterialApp(
          home: applicationTabBar()
      )
  );
}

//top and bottom TabBar
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
    _tcontrol = new TabController(length: 3, vsync: this);
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
            new Tab(icon: new Icon(Icons.home),),
            new Tab(icon: new Icon(Icons.supervisor_account),),
            new Tab(icon: new Icon(Icons.close),),
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
            new Tab(icon: new Icon(Icons.home),),
            new Tab(icon: new Icon(Icons.supervisor_account),),
            new Tab(icon: new Icon(Icons.close),),
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
          new IconButton(
              onPressed: (){
                setState(() {
                  mText = 'This is Arrow icon button';
                });
              },
              icon: Icon(Icons.arrow_forward)
          ),
          new IconButton(
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
            return new Card(
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
    return new Scaffold(
      body: new Stack(
        alignment: Alignment.center,
          children: <Widget> [
            new Card(color: Colors.yellow, child: new Padding(padding: const EdgeInsets.all(200.0),)),
            new Card(color: Colors.red, child: new Padding(padding: const EdgeInsets.all(100.0),)),
            new Card(color: Colors.green, child: new Padding(padding: const EdgeInsets.all(50.0),)),
            new Card(color: Colors.blue, child: new Padding(padding: const EdgeInsets.all(30.0),)),
            new Card(color: Colors.brown, child: new Padding(padding: const EdgeInsets.all(10.0),)),
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
        appBar: AppBar(title: new Text('List Widget'),),
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
    return new MaterialApp(
      title: "Dummy application",
      home: new Scaffold(
        appBar: new AppBar(title: new Text('List Widget'),),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text('item 1'),
              trailing: new Icon(Icons.arrow_forward),
            ),
            new ListTile(
              title: new Text('item 2'),
              trailing: new Icon(Icons.arrow_forward),
            ),
            new ListTile(
              title: new Text('item 3'),
              trailing: new Icon(Icons.arrow_forward),
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
    return new MaterialApp(
      title: "MyApplication",
      home: new Scaffold(
        appBar: new AppBar(title: new Text('Row & Column'),),
        body: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('This'),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text('This'),
                new Text('is'),
                new Text('Column'),
              ],
            ),
            new Text('row'),
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
    return new MaterialApp(
      home: new Scaffold(
        body: new Container(
          child: new Text('This is my Container'),
          height: 300.0,
          width: 300.0,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20.0),
          decoration: new BoxDecoration(
            color: Colors.green,
          ),
          foregroundDecoration: new BoxDecoration(
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
    return new MaterialApp(
      title: 'Statefull Widget',
      home: new Scaffold(
        body: new Center(
          child: new RaisedButton(onPressed: () {method1();} , child: new Text(ttext),),
        ),
      ),
    );
  }
}




// Stateless widget example
class application extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Stateless Widget',
      home: new Scaffold(
        body: new Container(
          color: Colors.pink,
          child: new Container(
            color: Colors.yellow,
            margin: const EdgeInsets.all(30.0),
          )
        )
      )
    );
  }
}




