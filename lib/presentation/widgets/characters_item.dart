import 'package:breakingbad/constants/my_colors.dart';
import 'package:breakingbad/data/models/characters.dart';
import 'package:flutter/material.dart';
// import 'package:loading_animation_widget/loading_animation_widget.dart';
class CharacterItem extends StatelessWidget {
  const CharacterItem({Key? key, required this.character}) : super(key: key);
 
  final Character character;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      margin:const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8) ,
      padding:const EdgeInsetsDirectional.all(4),
      decoration: BoxDecoration(
        color: MyColors.myWhite,
        borderRadius:BorderRadius.circular(8), 
      ),
      child: GridTile(
        child: Container(
          color: MyColors.myGrey,
          child: character.image.isNotEmpty?
          FadeInImage.assetNetwork(
            width: double.infinity,
            height: double.infinity,
            placeholder: 'assets/images/loading.gif', image: character.image,fit: BoxFit.cover
            ,):Image.asset('assets/images/placeholder.jpg'),  
        ),
        footer:Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          color: Colors.black54,
          alignment: Alignment.bottomCenter,
          child: Text(
            '${character.name}',
            style: TextStyle(
              height: 1.3,
              fontSize:16,
              color:MyColors.myWhite,
              fontWeight:FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign:TextAlign.center
          ),
        )
      ),
    );
  }
}
//  class AppBody {
//   final String title;
//   final Widget widget;
//   AppBody(
//     this.title,
//     this.widget,
//   );
// }