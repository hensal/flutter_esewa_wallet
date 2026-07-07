import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<IconItem> items = [
    IconItem(icon: Icons.arrow_upward, label: "Topup"),
    IconItem(icon: Icons.flash_on, label: "Electricity"),
    IconItem(icon: Icons.opacity, label: "Water"),
    IconItem(icon: Icons.favorite, label: "Care"),
    IconItem(icon: Icons.wifi, label: "Internet"),
    IconItem(icon: Icons.flight, label: "Airlines"),
    IconItem(icon: Icons.airplanemode_active, label: "Intl Airlines"),
    IconItem(icon: Icons.attach_money, label: "Money Request"),
    IconItem(icon: Icons.hotel, label: "Hotels"),
    IconItem(icon: Icons.payments, label: "Gov Payment"),
    IconItem(icon: Icons.cable, label: "Cable Car"),
    IconItem(icon: Icons.account_balance, label: "Sahakari Deposit"),
    IconItem(icon: Icons.tv, label: "TV"),
    IconItem(icon: Icons.school, label: "Education Fee"),
    IconItem(icon: Icons.security, label: "Insurance"),
    IconItem(icon: Icons.atm, label: "ATM Withdraw"),
    IconItem(icon: Icons.account_balance_wallet, label: "Financial Services"),
    IconItem(icon: Icons.local_hospital, label: "Health"),
    IconItem(icon: Icons.directions_bus, label: "Bus Ticket"),
    IconItem(icon: Icons.movie, label: "Movies"),
    IconItem(icon: Icons.how_to_vote, label: "Voting Events"),
    IconItem(icon: Icons.payment, label: "Online Payment"),
    IconItem(icon: Icons.security, label: "Antivirus"),
    IconItem(icon: Icons.house, label: "Community Electricity"),
    // Add more icons as needed
  ];

  List<IconItem1> items1 = [
    IconItem1(icon: Icons.star, label: "Fly, Wish & Win"),
    IconItem1(icon: Icons.medical_services, label: "Nepal Medical"),
    IconItem1(icon: Icons.flag, label: "Royal Japanese"),
    IconItem1(icon: Icons.qr_code, label: "Business QR Request"),
    IconItem1(icon: Icons.flight, label: "International Flight"),
    IconItem1(icon: Icons.flight_takeoff, label: "Request for Flight Ticket"),
    IconItem1(icon: Icons.local_hospital, label: "Nepal Insurance"),
    IconItem1(icon: Icons.check, label: "Todo"),
    IconItem1(icon: Icons.airplanemode_active, label: "Nepal Airlines"),
    // Add more items as needed
  ];

  List<IconItem1> items2 = [
    IconItem1(icon: Icons.star, label: "eSpeaker Request"),
    IconItem1(icon: Icons.medical_services, label: "Lekhnath Mahostav"),
    IconItem1(icon: Icons.flag, label: "Social security fund"),
    IconItem1(icon: Icons.qr_code, label: "Naasa Securities"),
    IconItem1(icon: Icons.flight, label: "Tribhuwan Park Entry"),
    IconItem1(icon: Icons.flight_takeoff, label: "RhinoPass"),
    IconItem1(icon: Icons.local_hospital, label: "National Insurance"),
    IconItem1(icon: Icons.check, label: "Prabhu Mahalaxmi"),
    IconItem1(icon: Icons.airplanemode_active, label: "Dish Home"),
    // Add more items as needed
  ];

  List<IconItem1> items3 = [
    IconItem1(icon: Icons.pool, label: "Poverty(Home)"),
    IconItem1(icon: Icons.medical_services, label: "eSwea Care"),
    IconItem1(icon: Icons.flag, label: "IME Life Insurance"),
    IconItem1(icon: Icons.qr_code, label: "Met life"),
    IconItem1(icon: Icons.flight, label: "Nepal life Insurance"),
    IconItem1(icon: Icons.flight_takeoff, label: "Asian Life Insurance"),
    IconItem1(icon: Icons.local_hospital, label: "Himalayan Life Insurance"),
    IconItem1(icon: Icons.check, label: "Sagarmatha Lumbini"),
    IconItem1(icon: Icons.airplanemode_active, label: "Neco Insurance"),
  ];
  // Add more items as needed

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.person_add_rounded),
                  color: Colors.white,
                  onPressed: () {
                    // Add your action here when the person icon is pressed.
                  },
                ),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () {
                    // Add your action here when the "Login/Register" text is clicked.
                  },
                  child: const Text(
                    "Login/Register",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          Transform.rotate(
            angle: 3.14, // Rotate the icon 180 degrees (inverted)
            child: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                // Add your action here when the inverted icon is pressed.
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            children: [
              Stack(
                //child 1 of column
                children: [
                  // Green container
                  Container(
                    width: double.infinity,
                    height: 80,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(60, 60),
                        bottomRight: Radius.elliptical(60, 60),
                      ),
                    ),
                  ),
                  // White container (overlay)
                  Positioned(
                    bottom: -10, // Align to the bottom of the Stack
                    left: 15, // Align to the left
                    right: 15, // Align to the right
                    top: 10,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(70),
                          topRight: Radius.circular(70),
                          bottomLeft: Radius.circular(70),
                          bottomRight: Radius.circular(70),
                        ),
                      ),
                      child: const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                RowIcons(
                                  icon: Icons.account_balance_wallet,
                                  label: "Load Money",
                                ),
                                RowIcons(icon: Icons.send, label: "Send Money"),
                                RowIcons(
                                    icon: Icons.compare_arrows,
                                    label: "Bank Transfer"),
                                RowIcons(
                                    icon: Icons.attach_money,
                                    label: "Remittance"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              //child 2 of column
              // Container with 24 icons and labels
              Container(
                width: 380,
                height: 580,
                decoration: BoxDecoration(
                  color: Colors.white12,
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.elliptical(30, 30),
                    bottomRight: Radius.elliptical(30, 30),
                    topLeft: Radius.elliptical(30, 30),
                    topRight: Radius.elliptical(30, 30),
                  ),
                ),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(items[index].icon, color: Colors.green),
                        const SizedBox(height: 4),
                        Text(
                          items[index].label,
                          textAlign:
                              TextAlign.center, // Align the text to the center
                        ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              //child 3 of column
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Popular Services',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // Add your action for "View More" here
                                },
                                child: const Text(
                                  'View More ',
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward,
                                size: 16,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: items1.map((item) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Icon(item.icon),
                                const SizedBox(height: 4),
                                Text(
                                  item.label,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
              //child 3 of column
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Popular Services',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // Add your action for "View More" here
                                },
                                child: const Text(
                                  'View More ',
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward,
                                size: 16,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: items2.map((item) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Icon(item.icon),
                                const SizedBox(height: 4),
                                Text(
                                  item.label,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
              //child 4 of column
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Insurance',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // Add your action for "View More" here
                                },
                                child: const Text(
                                  'View More ',
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward,
                                size: 16,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: items3.map((item) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Icon(item.icon),
                                const SizedBox(height: 4),
                                Text(
                                  item.label,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconItem {
  final IconData icon;
  final String label;

  IconItem({required this.icon, required this.label});
}

class IconItem1 {
  final IconData icon;
  final String label;

  IconItem1({required this.icon, required this.label});
}

class RowIcons extends StatelessWidget {
  final IconData icon;
  final String label;

  const RowIcons({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 30,
          color: Colors.green,
        ),
        const SizedBox(height: 5),
        Text(label),
      ],
    );
  }
}
