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
        
      ),
      body: Center(
        child: Text("Boshqa sahifafff"),
      ),
    );
  }
}
