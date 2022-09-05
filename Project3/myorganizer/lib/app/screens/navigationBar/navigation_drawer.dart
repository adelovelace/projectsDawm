import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myorganizer/app/routes/app_routes.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          children: [
            buildDrawerHeader(),
            const Divider(
              color: Colors.grey,
            ),
            buildDrawerItem(
              icon: Icons.account_circle,
              text: "Profile",
              onTap: () => navigate(0),
              tileColor:
                  Get.currentRoute == Routes.PROFILE ? Colors.blue : null,
              textIconColor: Get.currentRoute == Routes.PROFILE
                  ? Colors.white
                  : Colors.black,
            ),
            buildDrawerItem(
              icon: Icons.calendar_month,
              text: "Calendar",
              onTap: () => navigate(1),
              tileColor:
                  Get.currentRoute == Routes.CALENDAR ? Colors.blue : null,
              textIconColor: Get.currentRoute == Routes.CALENDAR
                  ? Colors.white
                  : Colors.black,
            ),
            buildDrawerItem(
              icon: Icons.note,
              text: "Notes",
              onTap: () => navigate(2),
              tileColor: Get.currentRoute == Routes.NOTES ? Colors.blue : null,
              textIconColor: Get.currentRoute == Routes.NOTES
                  ? Colors.white
                  : Colors.black,
            ),
            buildDrawerItem(
              icon: Icons.savings,
              text: "Budget",
              onTap: () => navigate(3),
              tileColor: Get.currentRoute == Routes.BUDGET ? Colors.blue : null,
              textIconColor: Get.currentRoute == Routes.BUDGET
                  ? Colors.white
                  : Colors.black,
            ),
            buildDrawerItem(
                icon: Icons.alarm,
                text: "Alarms",
                onTap: () => navigate(4),
                tileColor:
                    Get.currentRoute == Routes.ALARM ? Colors.blue : null,
                textIconColor: Get.currentRoute == Routes.ALARM
                    ? Colors.white
                    : Colors.black),
          ],
        ),
      ),
    );
  }

  Widget buildDrawerHeader() {
    return const UserAccountsDrawerHeader(
      accountName: Text("Ripples Code"),
      accountEmail: Text("ripplescode@gmail.com"),
      currentAccountPicture: CircleAvatar(
        backgroundImage: AssetImage('images/mujer-de-negocios1.png'),
      ),
      currentAccountPictureSize: Size.square(72),
      otherAccountsPictures: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: Text("RC"),
        )
      ],
      otherAccountsPicturesSize: Size.square(50),
    );
  }

  Widget buildDrawerItem({
    required String text,
    required IconData icon,
    required Color textIconColor,
    required Color? tileColor,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: textIconColor),
      title: Text(
        text,
        style: TextStyle(color: textIconColor),
      ),
      tileColor: tileColor,
      onTap: onTap,
    );
  }

  navigate(int index) {
    if (index == 0) {
      Get.toNamed(Routes.PROFILE);
    } else if (index == 1) {
      Get.toNamed(Routes.CALENDAR);
    }
    if (index == 2) {
      Get.toNamed(Routes.NOTES);
    }
    if (index == 3) {
      Get.toNamed(Routes.BUDGET);
    }
    if (index == 4) {
      Get.toNamed(Routes.ALARM);
    }
  }
}
