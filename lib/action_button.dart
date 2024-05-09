import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';



class ActionButton extends StatelessWidget {
  const ActionButton({Key? key}) : super(key: key);

  final double _iconSize =28;


  @override
  Widget build(BuildContext context) {
    var currentUser;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.favorite),iconSize: _iconSize,),
        Text('Likes',style: TextStyle(fontSize: 10,color: Colors.white),),
        SizedBox(height: 1,),
        IconButton(onPressed: (){}, icon: Icon(Icons.message),iconSize: _iconSize,),
        Text('Comment',style: TextStyle(fontSize: 10,color: Colors.white),),
        SizedBox(height: 1,),
        IconButton(onPressed: (){
        Share.share("hii ");
        }, icon: Icon(Icons.send_outlined),iconSize: _iconSize,),
        Text('Share',style: TextStyle(fontSize: 10,color: Colors.white),),
        SizedBox(height: 1,),
        IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz),iconSize: _iconSize,),
        Text('More',style: TextStyle(fontSize: 10,color: Colors.white),),
        SizedBox(height: 1,),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 2),
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: NetworkImage('https://i.pinimg.com/236x/01/46/1e/01461ea823c46c1fe741baf57cab0506.jpg'),
              )),




        )],

    );


  }
}
