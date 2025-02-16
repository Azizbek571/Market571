import 'package:shop_571/config/imports.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_pin),
              SizedBox(width: 5),
              Flexible(
                child: Text(
                  "Do'stlik 77",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ],
          ),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
          ],
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ),
        body: Column(
          children: [
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 500),
                  child: TextField(
                    decoration: InputDecoration(
                      // focusedBorder: ,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent)),
                      fillColor: Colors.grey[200],
                      filled: true,
                          
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      hintText: "Qidirish",
                      // suffixIcon: Icon(Icons.search),
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide()),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [ 
                   Padding(
                     padding: const EdgeInsets.only(left: 10),
                     child: Text("Exclusive Offer", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(right: 10),
                     child: Text("See all", style: TextStyle(fontSize: 16,color: Colors.orange, fontWeight: FontWeight.w400 ),),
                   )
              ],),
            )
          ],
        ));
  }
}
