import 'package:flutter/material.dart';
import 'package:hrattendanceapp/presentation/widgets/leave_dashboard_widgets/build_leave_item.dart';

class TabBarForLeaves extends StatelessWidget {
const TabBarForLeaves({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Expanded(
      child: Column(
        children: [
            Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const TabBar(
      
                    labelColor: Colors.white,
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    unselectedLabelColor: Colors.black54,
                    indicatorSize: TabBarIndicatorSize.tab,
                     
                    indicator: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    tabs: [
                      Tab(text: "Upcoming"),
                      Tab(text: "Past"),
                      Tab(text: "Team Leave"),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
      
                // Leave List
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    children:const [
                       
                       BuildLeaveItem(applyDays: "3 Days", date: "Apr 15, 2023 - Apr 18, 2023", leaveBalance: "16", approvedBy: "Martin Deo", status: "Approved",),
                       BuildLeaveItem(applyDays: "2 Days", date: "Mar 10, 2023 - Mar 12, 2023", leaveBalance: "19", approvedBy: "Martin Deo", status: "Approved",),
      
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}