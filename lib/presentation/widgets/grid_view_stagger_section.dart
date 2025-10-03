import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GridViewStaggerSection extends StatelessWidget {
  GridViewStaggerSection({
    super.key,
  });
  
  //=====================Previus value of big container index =====
  int prev = 1;
    //===================== Next value of big container index =====
  int next = 2;
  //================ Big Container List ================
  List<int> bigItems= [];

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing:8,
      children: List.generate(16, (index){
        bigItems.add(prev);
       
        if(next - prev == 1){
          prev = next;
          next+=3;
          
        }
        else if(next - prev==3){
          prev = next;
          next+=1;

        }
       
    
        bool isBig = bigItems.contains(index);
    
         return StaggeredGridTile.extent(
            crossAxisCellCount: 1, // potita item 1 column nibe
            mainAxisExtent: isBig ? 210 : 167, // height change condition onujai
            child: Container(
              width: 167,
              decoration: BoxDecoration(
                color: isBig
                    ? Colors.teal
                    : Colors.orange,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Text(
                  "Item $index",
                  style: const TextStyle(
                      color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          );
    
      }
      ),
    
      );
  }
}
