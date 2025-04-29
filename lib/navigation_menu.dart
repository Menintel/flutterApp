import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopper/features/shop/screens/home/home.dart';
import 'package:shopper/utils/constants/colors.dart';
import 'package:shopper/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 70,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected:  (index) => controller.selectedIndex.value = index,
          backgroundColor: dark ? const Color.fromARGB(255, 0, 0, 0) : TColors.white,
          //indicatorColor: const Color.fromRGBO(255, 102, 0, 0.2),
          indicatorColor: const Color.fromARGB(50, 255, 102, 0),
          
        
          destinations: [
            const NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            const NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            const NavigationDestination(icon: Icon(Iconsax.like), label: 'Favorite'),
            const NavigationDestination(icon: Icon(Iconsax.user), label: 'Account'),
        ]),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    Container(color: Colors.purple),
    Container(color: Colors.deepOrange),
    Container(color: Colors.blue),
  ];
}