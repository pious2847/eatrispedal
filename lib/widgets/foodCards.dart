import 'package:eatrispedal/theme/colors.dart';
import 'package:flutter/material.dart';

class FoodCard extends StatefulWidget {
  final String image;
  final String title;
  final String price;

  const FoodCard(
      {Key? key, this.image = '', this.title = '', this.price = 'false'})
      : super(key: key);

  @override
  State<FoodCard> createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Image(image: AssetImage(widget.image), height: 120, width: 120,),
          SizedBox(height: 10,),
          Text(widget.title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
          Row(
        
            children: [
              Text(widget.price, style: TextStyle(color: primtextcolor, fontWeight: FontWeight.w300, fontSize: 14,),),
              SizedBox(width: 20,),
              Container(
                decoration: BoxDecoration(
                  color: primcolorlight,
                  borderRadius: BorderRadius.circular(50)         
                ),
                child: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart, size: 15, color: secondarytextcolor,), color: primtextcolor, padding:EdgeInsets.all(5.0) ,))
            ],
          ),
        ]),
      ),
    );
  }
}
