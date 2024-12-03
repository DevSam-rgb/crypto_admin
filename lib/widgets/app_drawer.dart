import 'package:crypto_admin/widgets/drawer_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero, // Straight edges
      ),
      width: 250,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/admin_avatar.png'),
                    backgroundColor: Colors.white, // Use AssetImage here
                    radius: 20, // Adjust radius as needed
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hello, Miles',
                          style: GoogleFonts.dmSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black)),
                      Text('Admin',
                          style: GoogleFonts.dmSans(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey)),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const DrawerTile(icon: 'assets/icons/total_money.svg',title: 'Total Money',),
              const DrawerTile(icon: 'assets/icons/users.svg',title: 'Users',),
              const DrawerTile(icon: 'assets/icons/wallet.svg',title: 'Wallet Addresses',),
              const DrawerTile(icon: 'assets/icons/withrawal.svg',title: 'Withdrawal',),
              const DrawerTile(icon: 'assets/icons/crpto.svg',title: 'Pending Trade',subTitle: 'Crypto',),
              const DrawerTile(icon: 'assets/icons/giftcard.svg',title: 'Pending Trade',subTitle: 'Giftcard',),
              const DrawerTile(icon: 'assets/icons/referrals.svg',title: 'Referral',),
              const DrawerTile(icon: 'assets/icons/giftcards.svg',title: 'Gift Cards',),
            ],
          ),
        ),
      ),
    );
  }
}
