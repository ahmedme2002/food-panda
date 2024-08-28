import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  ListTile listTile(
      BuildContext context, String text, IconData? icon, VoidCallback ontap) {
    return icon == null
        ? ListTile(
            onTap: ontap,
            title: Text(
              text,
              style: const TextStyle(color: Colors.black, fontSize: 14),
            ),
          )
        : ListTile(
            onTap: ontap,
            leading: Icon(
              icon,
              color: Color(0xFFFF2B85),
            ),
            title: Text(
              text,
              style: const TextStyle(color: Colors.black, fontSize: 14),
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          Builder(
            builder: (context) {
              return DrawerHeader(
                decoration: BoxDecoration(
                  color: const Color(0xFFFF2B85),
                  border: Border.all(color: const Color(0xFFFF2B85)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      child: const Center(
                        child: Text(
                          "A",
                          style: TextStyle(
                            color: Color(0xFFFF2B85),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const Text("Programmer Ahmed",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold))
                  ],
                ),
              );
            },
          ),
          Column(
            children: [
              listTile(
                context,
                "vouchers & offeres",
                Icons.local_offer_outlined,
                () {},
              ),
              listTile(
                context,
                "Favourites",
                Icons.favorite_outline_sharp,
                () {},
              ),
              listTile(
                context,
                "offeres & reodering ",
                Icons.my_library_books_outlined,
                () {},
              ),
              listTile(
                context,
                "Addresses ",
                Icons.location_on_outlined,
                () {},
              ),
              listTile(
                context,
                "Payment methods ",
                Icons.payment_rounded,
                () {},
              ),
              listTile(
                context,
                "Help Center ",
                Icons.help_center_outlined,
                () {},
              ),
              listTile(
                context,
                "Invite friends ",
                Icons.wallet_giftcard_outlined,
                () {},
              ),
              Divider(),
              listTile(context, "Settinges", null, () {}),
              listTile(context, "Terms & conditions / Privacy", null, () {}),
              listTile(context, "Logout", null, () {}),
            ],
          )
        ],
      ),
    );
  }
}
