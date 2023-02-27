import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FavoratePage extends StatefulWidget {
  const FavoratePage({super.key});

  @override
  State<FavoratePage> createState() => _FavoratePageState();
}

class _FavoratePageState extends State<FavoratePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Favorite Page"),
    );
  }
}
