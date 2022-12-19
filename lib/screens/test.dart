import 'package:flutter/material.dart';


class MainTest extends StatefulWidget {
  const MainTest({Key? key}) : super(key: key);

  @override
  State<MainTest> createState() => _MainTestState();
}

class _MainTestState extends State<MainTest> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 150,
              child: const Center(
                child: Text(
                  'Your Widget if you want',
                ),
              ),
              color: Colors.blue,
            ),
            TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: Colors.red,
              tabs: const [
                Tab(
                  icon: Icon(Icons.person),
                ),
                Tab(
                  icon: Icon(
                    Icons.add,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.deck,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.child_care,
                  ),
                ),
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
            Expanded(
              child: TabBarView(
                children: const [
                  Center(
                    child: Text(
                      'Screen 1',
                    ),
                  ),
                  Center(
                    child: Text(
                      'Screen 2',
                    ),
                  ),
                  Center(
                    child: Text(
                      'Screen 3',
                    ),
                  ),
                  Center(
                    child: Text(
                      'Screen 4',
                    ),
                  ),
                ],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
