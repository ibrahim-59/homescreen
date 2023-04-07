import 'package:flutter/material.dart';
class CustomListTile extends StatelessWidget {
  String? Title;
  String? ImageName;
  VoidCallback? SelectFood;

  CustomListTile({required this.Title , required this.ImageName , this.SelectFood} );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        height: 60,
        child: Card(
          child: ListTile(
            leading: Image.asset(ImageName! , height: 35 , width: 35,),
            title: Text(Title! ,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                  color: Color(0xff05b7ed),
              ),
            ),
            trailing: IconButton(
              icon: Icon(Icons.add_circle  , size: 30,color: Color(0xff05b7ed),),
              onPressed: SelectFood,
            ),
          ),
        ),
      ),
    );
  }
}
