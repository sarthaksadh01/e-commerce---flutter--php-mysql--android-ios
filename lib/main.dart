import 'package:flutter/material.dart';
import 'package:loader_search_bar/loader_search_bar.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:card_settings/card_settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Nav Trading Company'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = "Spheria";
  String author = "Cody Leet";
  String url = "http://www.codyleet.com/spheria";

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String _queryText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: <Widget>[
                  Image.network(
                    'https://betanews.com/wp-content/uploads/2016/03/Android-N.png',
                    height: 120.0,
                    width: 100.0,
                  ),
                  Text(
                    'Nav Trading Company',
                    style: new TextStyle(color: Colors.white),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text('Products'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Cart'),
            ),
            Divider(
              height: 2.0,
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Contact Us'),
            ),
            ListTile(
              leading: Icon(Icons.feedback),
              title: Text('About Us'),
            ),
          ],
        ),
      ),
      appBar: SearchBar(
        onQuerySubmitted: (query) => _onQuerySubmitted(context, query),
        defaultBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
          title: Text('Nav Trading Company'),
        ),
      ),
      body: ListView(
        children: <Widget>[
          new SizedBox(
              height: 200.0,
              width: double.infinity,
              child: new Carousel(
                images: [
                  new NetworkImage(
                      'https://www.navtradingcompany.com/admin/backend/upload/cpplusdoorlock.png'),
                  new NetworkImage(
                      'https://ii1.pepperfry.com/media/catalog/product/k/a/800x880/kaff-zepa-gx-60-cm-touch-designer-chimney-in-black-kaff-zepa-gx-60-cm-touch-designer-chimney-in-blac-cix07v.jpg'),
                  new NetworkImage(
                      'https://www.cera-india.com/wp-content/uploads/2016/03/1070-Casket-TT-WB.jpg'),
                  //  new ExactAssetImage("assets/images/LaunchImage.jpg")
                ],
              )),
          new Container(
              margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              child: Text(
                'Shop By Brands',
                style: new TextStyle(
                  color: Colors.green,
                  fontSize: 20.0,
                ),
              ),
              alignment: Alignment(0.0, 0.0)),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.network(
                  'https://www.navtradingcompany.com/admin/backend/upload/925868059s.jpg',
                  height: 150.0,
                  width: double.infinity,
                ),
                new MaterialButton(
                  height: 30.0,
                  minWidth: double.infinity,
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  child: new Text("Kaff"),
                  onPressed: () => {},
                  splashColor: Colors.redAccent,
                )
              ],
            ),
          ),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.network(
                  'https://www.navtradingcompany.com/admin/backend/upload/4.png',
                  height: 150.0,
                  width: double.infinity,
                ),
                new MaterialButton(
                  height: 30.0,
                  minWidth: double.infinity,
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  child: new Text("Cera"),
                  onPressed: () => {},
                  splashColor: Colors.redAccent,
                )
              ],
            ),
          ),
          new Container(
              margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              child: Text(
                'Shop By Categories',
                style: new TextStyle(
                  color: Colors.green,
                  fontSize: 20.0,
                ),
              ),
              alignment: Alignment(0.0, 0.0)),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.network(
                      'https://www.navtradingcompany.com/admin/backend/upload/f1014101.jpg',
                      height: 120.0,
                      width: 150.0,
                    ),
                    new Container(
                      child: Text('Faucets'),
                      alignment: Alignment(0.0, 0.0),
                    )
                  ],
                ),
              ),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.network(
                      'https://www.navtradingcompany.com/admin/backend/upload/navtal.jpg',
                      height: 120.0,
                      width: 150.0,
                    ),
                    new Container(
                      child: Text('Locks'),
                      alignment: Alignment(0.0, 0.0),
                    )
                  ],
                ),
              ),
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.network(
                      'https://www.navtradingcompany.com/admin/backend/upload/kin37.jpg',
                      height: 120.0,
                      width: 150.0,
                    ),
                    new Container(
                      child: Text('Inductions'),
                      alignment: Alignment(0.0, 0.0),
                    )
                  ],
                ),
              ),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.network(
                      'https://www.navtradingcompany.com/admin/backend/upload/557.jpg',
                      height: 120.0,
                      width: 150.0,
                    ),
                    new Container(
                      child: Text('Bathroom Accessories'),
                      alignment: Alignment(0.0, 0.0),
                    )
                  ],
                ),
              ),
            ],
          ),
          new Container(
              margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              child: Text(
                'Best Sellers',
                style: new TextStyle(
                  color: Colors.green,
                  fontSize: 20.0,
                ),
              ),
              alignment: Alignment(0.0, 0.0)),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.network(
                      'https://www.navtradingcompany.com/admin/backend/upload/cppvk.jpg',
                      height: 120.0,
                      width: 80.0,
                    ),
                    new Container(
                      child: Text('Video door phone'),
                      alignment: Alignment(0.0, 0.0),
                    )
                  ],
                ),
              ),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.network(
                      'https://www.navtradingcompany.com/admin/backend/upload/gaylewallmixer.jpg',
                      height: 120.0,
                      width: 80.0,
                    ),
                    new Container(
                      child: Text('Cera Wall Mixture'),
                      alignment: Alignment(0.0, 0.0),
                    )
                  ],
                ),
              ),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.network(
                      'https://www.navtradingcompany.com/admin/backend/upload/carpurifier.jpg',
                      height: 120.0,
                      width: 80.0,
                    ),
                    new Container(
                      child: Text('Kaff car air purifier'),
                      alignment: Alignment(0.0, 0.0),
                    )
                  ],
                ),
              ),
            ],
          ),
      Form(
        key: _formKey,
        child: CardSettings(
          children: <Widget>[
            CardSettingsHeader(label: 'Contact Us'),
            CardSettingsText(
              label: 'Name',
              initialValue: title,
              onSaved: (value) => title = value,
            ),
            CardSettingsText(
              label: 'Email',
              initialValue: 'abcd@gmail.com',
              onSaved: (value) => url = value,
            ),
            CardSettingsParagraph(
              label: 'Message',
              initialValue: 'type msg here',
              onSaved: (value) =>url = value,
            ),
            CardSettingsButton(
              label: 'Submit',
                textColor: Colors.white,
                backgroundColor: Colors.green,
                onPressed: (){})
          ],
        ),
      ),

        ],
      ),
    );
  }

  _onQuerySubmitted(BuildContext context, String query) {
    setState(() => _queryText = query);
  }
}
