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
          mainAxisAlignment: MainAxisAlignment.center,
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 5,),
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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
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
                          )),
                    ],
                  )
                
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class AddCard extends StatelessWidget {
  final String image;
  final String lable;
  final bool isActive;

  const AddCard(
      {Key? key, this.image = '', this.lable = '', this.isActive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (isActive == true) ...[
          Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
                color: primcolor,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                )),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image(
                image: AssetImage(image),
                height: 60,
                width: 40,
              ),
            ),
          ),
        ] else ...[
          Container(
            decoration: const BoxDecoration(
                color: secondarybgcolor,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                )),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image(
                image: AssetImage(
                  image,
                ),
                height: 40,
                width: 40,
              ),
            ),
          ),
        ],
        Text(
          lable,
          style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 12.0),
        )
      ],
    );
  }
}



class CartFoodCard extends StatefulWidget {
  final String image;
  final String title;
  final String price;

  const CartFoodCard({Key? key, this.image = '', this.title = '', this.price = 'false'})
      : super(key: key);

  @override
  State<CartFoodCard> createState() => _CartFoodCardState();
}

class _CartFoodCardState extends State<CartFoodCard> {
  @override
  Widget build(BuildContext context) {
    return  Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                       Image(
                        image: AssetImage(widget.image),
                        height: 150,
                        width: 150,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width* 0.46,
                        height: MediaQuery.of(context).size.height *0.19,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 30.0,
                                  width: 30.0,
                                  decoration: BoxDecoration(
                                    color: bordercolor,
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(14))
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.close, color: secondarybtncolor, size: 15,),
                                  ),
                                )
                              ],
                            ),
                            Text(
                              widget.title,
                              style: TextStyle(fontSize: 20.0),
                            ),
                            Text(
                            'Ghc ${widget.price}',
                              style: TextStyle(fontSize: 12.0),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add_circle_outline_outlined,
                                      color: primcolorlight,
                                      size: 15,
                                    )),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  '1',
                                  style: TextStyle(color: primcolorlight),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove_circle_outline_outlined,
                                      color: primcolorlight,
                                      size: 15,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 7,
                            ),
                             ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
              
  }
}