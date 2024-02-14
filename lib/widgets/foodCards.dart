import 'package:eatrispedal/screens/detailPage.dart';
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image(
            image: AssetImage(widget.image),
            height: 120,
            width: 120,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            widget.title,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          Row(
            children: [
              Text(
                widget.price,
                style: TextStyle(
                  color: primtextcolor,
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: primcolorlight,
                      borderRadius: BorderRadius.circular(50)),
                  child: IconButton(
                    onPressed: () {
                       Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const DetailPage()), // Replace Home() with your actual home page widget
                  );
                    },
                    icon: Icon(
                      Icons.shopping_cart,
                      size: 15,
                      color: secondarytextcolor,
                    ),
                    color: primtextcolor,
                    padding: EdgeInsets.all(5.0),
                  ))
            ],
          ),
        ]),
      ),
    );
  }
}

class CarouselFoodCard extends StatefulWidget {
  final String image;
  final String title;
  final String price;

  const CarouselFoodCard(
      {Key? key, required this.image, required this.title, required this.price})
      : super(key: key);

  @override
  State<CarouselFoodCard> createState() => _CarouselFoodCardState();
}

class _CarouselFoodCardState extends State<CarouselFoodCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(widget.image),
              height: 120,
              width: 120,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 5),
                  Text(
                    widget.price,
                    style: TextStyle(
                      color: primcolorlight,
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                      decoration: BoxDecoration(
                          color: primcolorlight,
                          borderRadius: BorderRadius.circular(50),),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.shopping_cart,
                          size: 15,
                          color: secondarytextcolor,
                        ),
                        color: primtextcolor,
                        padding: EdgeInsets.all(5.0),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
