import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Stagged_grid extends StatelessWidget {
  const Stagged_grid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stagged Gridview"),
        ),
        body: SingleChildScrollView(
          child: StaggeredGrid.count(
            crossAxisCount: 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2, child: Container(
               color: Colors.green,
                child: Center(child: Icon(Icons.desktop_windows,size: 40,)),

                ),
              ),
              StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: Container(
                color: Colors.orange,
                child: Center(child: Icon(Icons.search,size: 40,)),

              ),
              ),
              StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: Container(
                color: Colors.purple,
                child: Center(child: Icon(Icons.home,size: 40,)),

              ),
              ),
              StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 1, child: Container(
                color: Colors.yellow,
                child: Center(child: Icon(Icons.settings,size: 40,)),

              ),
              ),
              StaggeredGridTile.count(crossAxisCellCount: 4, mainAxisCellCount: 1, child: Container(
                color: Colors.pink,
                child: Center(child: Icon(Icons.camera_alt,size: 40,)),

              ),
              )
            ],
          ),
        ));
  }
}
void main(){
  runApp(MaterialApp(home: Stagged_grid(),));
}