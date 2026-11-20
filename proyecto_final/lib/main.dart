import 'package:material_ui/material_ui.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: proyecto(),
    ),
  );
}


// ignore: camel_case_types
class proyecto extends StatelessWidget {
  const proyecto({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
