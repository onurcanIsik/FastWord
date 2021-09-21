// ignore_for_file: prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget grammerDetail(String detail) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        detail,
        style: GoogleFonts.comfortaa(fontSize: 13),
      ),
    );

Widget expCard() => Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 90,
            width: 395,
            child: Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      grammerDetail("I / You / We / They"),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 200),
                      const Text("Opened / Lived / Tried")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      grammerDetail("He / She / It"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 90,
            width: 395,
            child: Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      grammerDetail("I / You / We / They"),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 200),
                      const Text("WENT to the cinema")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      grammerDetail("He / She / It"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 90,
            width: 395,
            child: Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      grammerDetail("I / He / She / It"),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 160),
                      const Text("WAS / WERE  at school yesterday")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      grammerDetail("You / We / They"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Take ---> Took"),
              const Text("Have ---> Had"),
              const Text("See ---> Saw"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Fit ---> Fitted"),
              const Text("Carry ---> Carried"),
              const Text("Study ---> Studied"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Wish ---> Wished"),
              const Text("Date ---> Dated"),
              const Text("Tap ---> Tapped"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Buy ---> Bought"),
              const Text("Go ---> Went"),
              const Text("Do ---> Did"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 90,
            width: 395,
            child: Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      grammerDetail("I / You / He / She"),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 160),
                      const Text("Did not (didn't) work yesterday.")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      grammerDetail("It / We / They"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 90,
            width: 395,
            child: Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("DID"),
                      const SizedBox(width: 20),
                      grammerDetail("I / You / We / They / He / She / It"),
                      const SizedBox(width: 10),
                      grammerDetail("work ?"),
                    ],
                  ),
                  Row(
                    children: [
                      grammerDetail("YES"),
                      const SizedBox(width: 10),
                      grammerDetail("I / You / We / They / He / She / It"),
                      const SizedBox(width: 10),
                      grammerDetail("did / didn't")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 90,
            width: 395,
            child: Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      grammerDetail("WAS"),
                      grammerDetail("I / SHE / HE / IT")
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 250),
                      const Text("There ?")
                    ],
                  ),
                  Row(
                    children: [
                      grammerDetail("WERE"),
                      grammerDetail("You / We / They")
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                  "--------------------------------------------------------------------------------------------------"),
            ],
          ),
        ),
      ],
    );

Widget expCard2() => Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 100,
            width: 395,
            child: Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      grammerDetail("I / You / We / They"),
                      const SizedBox(width: 20),
                      grammerDetail("Work / Watch / Fly / Do"),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      grammerDetail("He / She / It"),
                      const SizedBox(width: 20),
                      grammerDetail("Works / Watches / Filies / Does"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Go ---> Goes"),
              const Text("Do ---> Does"),
              const Text("Study ---> Studies"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("have ---> Has"),
              const Text("Buy ---> Buys"),
              const Text("Need ---> Needs"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Cry ---> Cries"),
              const Text("Wash ---> Washes"),
              const Text("Dance ---> Dances"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 90,
            width: 395,
            child: Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      grammerDetail("I / You / We / They"),
                      grammerDetail("do not (don't)   WORK")
                    ],
                  ),
                  Row(
                    children: [
                      grammerDetail("He / She / It"),
                      grammerDetail("does not (doesn't)  WORK ( not works )")
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 90,
            width: 395,
            child: Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      grammerDetail("DO"),
                      grammerDetail("I / You / We / They"),
                      grammerDetail(" WORK ?")
                    ],
                  ),
                  Row(
                    children: [
                      grammerDetail("DOES"),
                      grammerDetail("He / She / It"),
                      grammerDetail(" WORK ? ( not works ) ")
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                  "--------------------------------------------------------------------------------------------------"),
            ],
          ),
        ),
      ],
    );

Widget expCard3() => Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 100,
            width: 395,
            child: Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      grammerDetail("I        am ( 'm )"),
                    ],
                  ),
                  Row(
                    children: [
                      grammerDetail(
                          "You / We / They     are ( 're )     WORKING")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      grammerDetail("He / She / It       is ( 's )"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Work ---> Working"),
              const Text("Take ---> Taking"),
              const Text("Write ---> Writing"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 100,
            width: 395,
            child: Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      grammerDetail("I        am not ( 'm not )"),
                    ],
                  ),
                  Row(
                    children: [
                      grammerDetail(
                          "You / We / They     are not ( 're not / aren't)      COMING")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      grammerDetail(
                          "He / She / It       is not ( 's not / isn't )"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 100,
            width: 395,
            child: Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      grammerDetail("Am  I"),
                    ],
                  ),
                  Row(
                    children: [
                      grammerDetail(
                          "Are   You / We / They          Getting fat ?")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      grammerDetail("Is      He / She / It"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
