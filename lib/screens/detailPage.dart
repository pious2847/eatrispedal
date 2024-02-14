import 'package:eatrispedal/theme/colors.dart';
import 'package:eatrispedal/widgets/appBar.dart';
import 'package:eatrispedal/widgets/buttomNav.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primcolor,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/images/all.png'),
                height: 250,
                width: 250,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: secondarybgcolor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: primcolor),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.star,
                                        color: secondarytextcolor, size: 12),
                                    SizedBox(
                                      width: 7.0,
                                    ),
                                    Text(
                                      '4.8',
                                      style:
                                          TextStyle(color: secondarytextcolor),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const Text(
                              'Tk 145',
                              style: TextStyle(
                                  color: primtextcolor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Hambuger',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.add_circle_outline_outlined,
                                  color: primcolorlight,
                                  size: 15,
                                ),
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
                                Icon(
                                  Icons.remove_circle_outline_outlined,
                                  color: primcolorlight,
                                  size: 15,
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: const Text(
                              "Enjoy our juicy hamburger with a grilled beef patty, fresh lettuce, ripe tomatoes, and creamy cheese, all nestled between toasted buns.",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 12)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.8, // Set the width of the container
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(primcolor),
                            ),
                            onPressed: () {
                              // Add your button logic here
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.shopping_cart,
                                    color: secondarytextcolor),
                                SizedBox(
                                    width:
                                        5), // Add some space between the icon and text
                                Text('Add to Cart',
                                    style:
                                        TextStyle(color: secondarytextcolor)),
                              ],
                            ),
                          ),
                        ),
                       ],
                    ),
                  ),
                ),
              )
            ]),
      ),
      bottomNavigationBar: const BottomNavigator(),
    );
  }
}
