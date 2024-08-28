import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  final data;
  const ProductScreen({super.key, this.data});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  String? addmore = "bread";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        // padding: const EdgeInsets.all(10),
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(
                  widget.data["image"],
                  fit: BoxFit.cover,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 10, left: 10),
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.close,
                      color: Color(0xFFFF2B85),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.data["title"],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    Text(
                      "6 inches Sub & 345 ml drink",
                      style: TextStyle(color: Colors.black.withOpacity(0.5)),
                    )
                  ],
                ),
                Text(
                  widget.data["price"],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 17),
                )
              ],
            ),
          ),
          const Divider(
            height: 40,
            color: Colors.black12,
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFFF2B85).withOpacity(0.07),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Choose Your Bread",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 8),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF2B85),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          "Required",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Select One",
                    style: TextStyle(
                      color: Color(0xFFFF2B85),
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RadioListTile(
                    activeColor: const Color(0xFFFF2B85),
                    title: const Text("Italian"),
                    secondary: const Text(
                      "Free",
                      style: TextStyle(fontSize: 15),
                    ),
                    value: "Italian",
                    groupValue: addmore,
                    onChanged: (value) {
                      setState(() {
                        addmore = value;
                      });
                    },
                  ),
                  RadioListTile(
                    activeColor: const Color(0xFFFF2B85),
                    title: const Text("wheat"),
                    secondary: const Text(
                      "Free",
                      style: TextStyle(fontSize: 15),
                    ),
                    value: "wheat",
                    groupValue: addmore,
                    onChanged: (value) {
                      setState(() {
                        addmore = value;
                      });
                    },
                  ),
                  RadioListTile(
                    activeColor: const Color(0xFFFF2B85),
                    title: const Text("Sesame"),
                    secondary: const Text(
                      "Free",
                      style: TextStyle(fontSize: 15),
                    ),
                    value: "Sesame",
                    groupValue: addmore,
                    onChanged: (value) {
                      setState(() {
                        addmore = value;
                      });
                    },
                  ),
                  RadioListTile(
                    activeColor: const Color(0xFFFF2B85),
                    title: const Text("Honey Oat"),
                    secondary: const Text(
                      "Free",
                      style: TextStyle(fontSize: 15),
                    ),
                    value: "Honey Oat",
                    groupValue: addmore,
                    onChanged: (value) {
                      setState(() {
                        setState(() {
                          addmore = value;
                        });
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Text(
              "Speacial instructions",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(
              "Please let Us Know If You are allergic to anything or if we need to avoid",
              style:
                  TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: "e.g. no mayo",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                contentPadding: const EdgeInsets.all(12),
              ),
              maxLines: 4,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 10),
              child: Text(
                "0/500",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 90,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.shade100,
            spreadRadius: 1,
            // blurRadius: 2,
          )
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50)),
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  "1",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 8,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF2B85),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 5,
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width / 2,
              padding: const EdgeInsets.symmetric(vertical: 18),
              decoration: BoxDecoration(
                  color: const Color(0xFFFF2B85),
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text(
                  "Add To cart",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
