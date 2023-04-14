import 'package:flutter/material.dart';
import 'package:vpn/constant/const_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cBgColor,
      appBar: AppBar(
        backgroundColor: cBgColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: cSecClr),
        title: const Text(
          'My VPN',
          style: TextStyle(color: cSecClr),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 170,
            ),
            Center(
              // Start Stop Button
              child: InkWell(
                borderRadius: BorderRadius.circular(150),
                onTap: () {
                  setState(() {
                    isActive = !isActive;
                  });
                },
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(150),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: cPrimaryClr,
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: const BoxDecoration(
                        color: cWhitClr,
                        shape: BoxShape.circle,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.power_settings_new,
                            size: 30,
                            color:
                                isActive == true ? Colors.green : Colors.grey,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            isActive == true ? 'STOP' : 'START',
                            style: TextStyle(
                              fontSize: 23,
                              color:
                                  isActive == true ? Colors.green : Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: isActive == true
                    ? Colors.green
                    : cPrimaryClr.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  isActive == true ? 'Connected' : 'Not Connected',
                  style: TextStyle(
                      fontSize: 18,
                      color: isActive == true ? cWhitClr : Colors.black38),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    isActive == true
                        ? Icons.location_on_outlined
                        : Icons.location_off_outlined,
                    // color: isActive == true ? Colors.green : Colors.black,
                  ),
                  const Text(
                    'Select Location',
                    style: TextStyle(fontSize: 18),
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
