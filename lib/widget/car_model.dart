import 'package:flutter/material.dart';

class CarModel extends StatelessWidget {
  const CarModel({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(width: 2, color: Colors.grey.shade600),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "₹1.04 *Lakhs",
                style: TextStyle(
                  fontSize: 16,
                  decoration: TextDecoration.none,
                  overflow: TextOverflow.ellipsis,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    "onwords",
                    style: TextStyle(
                      fontSize: 10,
                      decoration: TextDecoration.none,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Ex Showfoom Price",
                    style: TextStyle(
                      fontSize: 8,
                      overflow: TextOverflow.ellipsis,
                      decoration: TextDecoration.none,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            ],
          ),
          // SizedBox(height: 5),

          Container(
            height: 100,
            width: width * .44,
            margin: const EdgeInsets.only(top: 0),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/img.jpg'))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.redAccent)),
                    onPressed: () {},
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "4.1",
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(Icons.star),
                      ],
                    )),
                const Icon(Icons.bookmark)
              ],
            ),
          ),

          const Text(
            "Mercedes-Benze",
            style: TextStyle(
              fontSize: 12,
              decoration: TextDecoration.none,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "E-Class Cabriolet",
            style: TextStyle(
              fontSize: 12,
              decoration: TextDecoration.none,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.airline_seat_recline_normal_sharp),
                      Column(
                        children: [
                          Text(
                            "5,6,7",
                            style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Seater",
                            style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.ev_station_outlined),
                      Column(
                        children: [
                          Text(
                            "petrol",
                            style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "petrol",
                            style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "petrol",
                            style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "petrol",
                            style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 40),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.airline_seat_recline_normal_sharp),
                      Column(
                        children: [
                          Text(
                            "5,6,7",
                            style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Seater",
                            style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.ev_station_outlined),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "petrol",
                            style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "petrol",
                            style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "petrol",
                            style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "petrol",
                            style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              //     SizedBox(width: 10),
              //     Row(
              //       crossAxisAlignment: CrossAxisAlignment.center,
              //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Icon(Icons.airline_seat_recline_normal_sharp),
              //         Column(
              //           mainAxisAlignment: MainAxisAlignment.spaceAround,
              //           children: [
              //             Text(
              //               "5,6,7",
              //               style: TextStyle(
              //                 fontSize: 12,
              //                 decoration: TextDecoration.none,
              //                 color: Colors.black,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //             Text(
              //               "Seater",
              //               style: TextStyle(
              //                 fontSize: 12,
              //                 decoration: TextDecoration.none,
              //                 color: Colors.black,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ],
              //     ),
              //   ],
              // ),
              // const SizedBox(height: 5),
              // const Row(
              //   children: [
              //     Row(
              //       children: [
              //         Icon(Icons.ev_station_outlined),
              //         Column(
              //           crossAxisAlignment: CrossAxisAlignment.end,
              //           children: [
              //             Text(
              //               "petrol",
              //               style: TextStyle(
              //                 fontSize: 12,
              //                 decoration: TextDecoration.none,
              //                 color: Colors.black,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //             Text(
              //               "petrol",
              //               style: TextStyle(
              //                 fontSize: 12,
              //                 decoration: TextDecoration.none,
              //                 color: Colors.black,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //             Text(
              //               "petrol",
              //               style: TextStyle(
              //                 fontSize: 12,
              //                 decoration: TextDecoration.none,
              //                 color: Colors.black,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //             Text(
              //               "petrol",
              //               style: TextStyle(
              //                 fontSize: 12,
              //                 decoration: TextDecoration.none,
              //                 color: Colors.black,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ],
              //     ),
              //     SizedBox(width: 10),
              //     Row(
              //       children: [
              //         Icon(Icons.ev_station_outlined),
              //         Column(
              //           children: [
              //             Text(
              //               "petrol",
              //               style: TextStyle(
              //                 fontSize: 12,
              //                 decoration: TextDecoration.none,
              //                 color: Colors.black,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //             Text(
              //               "petrol",
              //               style: TextStyle(
              //                 fontSize: 12,
              //                 decoration: TextDecoration.none,
              //                 color: Colors.black,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //             Text(
              //               "petrol",
              //               style: TextStyle(
              //                 fontSize: 12,
              //                 decoration: TextDecoration.none,
              //                 color: Colors.black,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //             Text(
              //               "petrol",
              //               style: TextStyle(
              //                 fontSize: 12,
              //                 decoration: TextDecoration.none,
              //                 color: Colors.black,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ],
              //     ),
            ],
          ),
        ],
      ),
      // ),
    );
  }
}
