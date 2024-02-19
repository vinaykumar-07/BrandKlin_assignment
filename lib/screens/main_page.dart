import 'package:assignment/widget/big_text.dart';
import 'package:assignment/widget/car_model.dart';
import 'package:assignment/widget/small_text.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(10),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: height * 0.09,
              color: Colors.black54,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const BigText(
                    text: "BARANDKILN",
                    size: 22,
                    color: Colors.red,
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(Icons.location_on),
                      const Icon(Icons.menu),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.green[200],
                      )
                    ],
                  )
                ],
              ),
            ),
            
            
            Container(
              padding: EdgeInsets.only(left: height * .01, right: height * .01),
              height: height * .28,
              width: width * 1,
              child: Image.asset('assets/images/img.jpg',fit: BoxFit.cover,),
            ),
            Container(
              // height: 250,
              width: double.infinity,
              child: Column(
                children: [
                  const BigText(
                    text: "FIND YOUR PERFECT CAR",
                    color: Colors.red,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 10, backgroundColor: Colors.white),
                          onPressed: () {},
                          child: const BigText(
                            text: "SEARCH",
                            size: 18,
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 10, backgroundColor: Colors.white),
                          onPressed: () {},
                          child: const BigText(
                            text: "ASSIST ME",
                            size: 18,
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 10, backgroundColor: Colors.white),
                          onPressed: () {},
                          child: const BigText(
                            text: "CONTACT US",
                            size: 18,
                          )),
                    ],
                  ),
                  Container(
                    color: Colors.grey,
                    padding: EdgeInsets.only(
                        left: width * .025, right: width * .025),
                    child: Card(
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            suffixIcon: const Icon(
                              Icons.search,
                            )),
                      ),
                    ),
                  ),
                  const BigText(
                    text: "Ex: Tata Nexon",
                    size: 12,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // Container(
                  //   height: height * .092,
                  //   width: width * .012,
                  //   child: const Column(
                  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //     children: [
                  //       Text(
                  //         "UNDER",
                  //         style: TextStyle(
                  //             color: Colors.white,
                  //             fontWeight: FontWeight.bold,
                  //             fontSize: 12,
                  //             decoration: TextDecoration.none),
                  //       ),
                  //       Text(
                  //         "08",
                  //         style: TextStyle(
                  //             fontSize: 12, decoration: TextDecoration.none),
                  //       ),
                  //       Text(
                  //         "LAKHS",
                  //         style: TextStyle(
                  //             fontSize: 12, decoration: TextDecoration.none),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  _prizeBox(Colors.black54, "08", 180, 180),
                  _prizeBox(Colors.black54, "07", 180, 180),
                  _prizeBox(Colors.black54, "06", 180, 180),
                  _prizeBox(Colors.black54, "04", 180, 180),
                ],
              ),
            ),
            const Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(child: CarModel()),
                Card(child: CarModel()),
              ],
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const BigText(text: "FUEL PRICE"),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        _boxButton("Choose City"),
                        _boxButton("Fuel Type"),
                        // Container(
                        //   height: 80,
                        //   width: 100,
                        //   color: Colors.green,
                        // )
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 80,
                  width: 100,
                  color: Colors.green,
                  child: Image.asset('assets/images/whats_up.png',fit: BoxFit.cover,),
                )
              ],
            ),
            const BigText(text: "FEATURED CARS"),
            const Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(child: CarModel()),
                Card(child: CarModel()),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              height: 140,
              // margin: EdgeInsets.only(bottom: 10),
              width: width,
              decoration: const BoxDecoration(
                  image: DecorationImage(fit: BoxFit.cover,
                      image: AssetImage('assets/images/car.jpg'))),
            ),
            const BigText(text: "BROWSE BY BRAND"),
            Wrap(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
              ],
            ),
            const Row( mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BigText(text: "LOAD MORE"),
              ],
            ),
            const BigText(text: "CAR CAMPARSION"),
            Container(
              height: 240,
              // margin: EdgeInsets.only(bottom: 10),
              width: width,
              decoration: const BoxDecoration(
                  image: DecorationImage(fit: BoxFit.cover,
                      image: AssetImage('assets/images/car1.png'))),
            ),
            const SizedBox(height: 500),
          ],
        ),
      ),
    );
  }
}

Container _boxButton(String text) {
  return Container(
    height: 30,
    width: 110,
    margin: const EdgeInsets.all(5),
    padding: const EdgeInsets.symmetric(horizontal: 2),
    decoration: BoxDecoration(
      border:
          Border.all(color: Colors.black, width: 1, style: BorderStyle.solid),
    ),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      SmallText(
        text: text,
        fontWeight: FontWeight.bold,
      ),
      const Icon(
        Icons.keyboard_arrow_down,
        color: Colors.red,
      )
    ]),
  );
}

Widget _prizeBox(Color color, String price, int height, int width) {
  return Container(
    color: color,
    margin: const EdgeInsets.all(10),
    height: height * .50, // Convert int to double
    width: width * .50, // Convert int to double
    child: const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BigText(
          text: "UNDER",
          color: Colors.white,
          size: 18,
        ),
        BigText(
          text: '08',
          color: Colors.white,
        ),
        BigText(
          text: "LAKHS",
          size: 18,
          color: Colors.white,
        ),
      ],
    ),
  );
}

// Widget carModel(BuildContext context) {
//   return Container(
//     width: MediaQuery.of(context).size.height * .1,
//     padding: const EdgeInsets.only(left: 15),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         const Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Text(
//               "₹1.04 *Lakhs",
//               style: TextStyle(
//                 fontSize: 18,
//                 decoration: TextDecoration.none,
//                 overflow: TextOverflow.ellipsis,
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(width: 10),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(height: 10),
//                 Text(
//                   "onwords",
//                   style: TextStyle(
//                     fontSize: 10,
//                     decoration: TextDecoration.none,
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Text(
//                   "Ex Showfoom Price",
//                   style: TextStyle(
//                     fontSize: 8,
//                     overflow: TextOverflow.ellipsis,
//                     decoration: TextDecoration.none,
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//         SizedBox(height: 5),
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             TextButton(
//                 onPressed: () {},
//                 child: const Row(
//                   children: [
//                     Text(
//                       "4.1",
//                       style: TextStyle(color: Colors.red),
//                     ),
//                     Icon(Icons.star)
//                   ],
//                 )),
//             const Icon(Icons.bookmark)
//           ],
//         ),
//         Container(
//           height: 150, width: 110,
//           decoration: const BoxDecoration(
//               image:
//                   DecorationImage(image: AssetImage("assets/images/img1.jpg"))),
//           // child: Row(
//           //   children: [
//           //     TextButton(
//           //         onPressed: () {},
//           //         child: const Row(
//           //           children: [
//           //             Text(
//           //               "4.1",
//           //               style: TextStyle(color: Colors.red),
//           //             ),
//           //             Icon(Icons.star)
//           //           ],
//           //         )),
//           //     const Icon(Icons.bookmark)
//           //   ],
//           // ),
//         ),
//         const Text(
//           "Mercedes-Benze",
//           style: TextStyle(
//             fontSize: 12,
//             decoration: TextDecoration.none,
//             color: Colors.black,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         const Text(
//           "E-Class Cabriolet",
//           style: TextStyle(
//             fontSize: 12,
//             decoration: TextDecoration.none,
//             color: Colors.red,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         SizedBox(height: 5),
//         const Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Icon(Icons.airline_seat_recline_normal_sharp),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Text(
//                   "5,6,7",
//                   style: TextStyle(
//                     fontSize: 12,
//                     decoration: TextDecoration.none,
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Text(
//                   "Seater",
//                   style: TextStyle(
//                     fontSize: 12,
//                     decoration: TextDecoration.none,
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//         SizedBox(height: 5),
//         const Row(
//           children: [
//             Icon(Icons.ev_station_outlined),
//             Column(
//               children: [
//                 Text(
//                   "petrol",
//                   style: TextStyle(
//                     fontSize: 12,
//                     decoration: TextDecoration.none,
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Text(
//                   "petrol",
//                   style: TextStyle(
//                     fontSize: 12,
//                     decoration: TextDecoration.none,
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Text(
//                   "petrol",
//                   style: TextStyle(
//                     fontSize: 12,
//                     decoration: TextDecoration.none,
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Text(
//                   "petrol",
//                   style: TextStyle(
//                     fontSize: 12,
//                     decoration: TextDecoration.none,
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ],
//     ),
//   );
// }
