import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
//
// void main() {
//   runApp(MyApp());
// }


class PieChartScreen extends StatefulWidget {
  @override
  _PieChartScreenState createState() => _PieChartScreenState();
}

class _PieChartScreenState extends State<PieChartScreen> {
  final List<Map<String, dynamic>> userData = [
    {
      'user': 'User 1',
      'data': [30, 20, 25, 25], // Happy, Sad, Normal, Depressed
    },
    {
      'user': 'User 2',
      'data': [40, 30, 10, 20], // Happy, Sad, Normal, Depressed
    },
    {
      'user': 'User 3',
      'data': [50, 30, 10, 10], // Happy, Sad, Normal, Depressed
    },
    {
      'user': 'User 4',
      'data': [10, 50, 20, 20], // Happy, Sad, Normal, Depressed
    },
  ];

  @override
  Widget build(BuildContext context) {
    // Use MediaQuery to get the width and adjust chart size accordingly
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Mental Health Pie Charts'),
        centerTitle: true,
        elevation: 8.0,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      backgroundColor: Colors.white, // Set white background color
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var user in userData) ...[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      user['user'],
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurpleAccent,
                      ),
                    ),
                    SizedBox(height: 20),
                    Card(
                      elevation: 5,
                      shadowColor: Colors.grey.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Container(
                              width: screenWidth * 0.8, // Make the chart responsive
                              height: screenWidth * 0.6, // Adjust chart height to fit screen size
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(2, 4),
                                    blurRadius: 6,
                                  ),
                                ],
                              ),
                              child: PieChart(
                                PieChartData(
                                  sections: showingSections(user['data']),
                                  borderData: FlBorderData(show: false), // Optional: hide border
                                  centerSpaceRadius: 40, // Optional: space in the center of the pie chart
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  // Function to return sections of the pie chart with gradients and icons
  List<PieChartSectionData> showingSections(List<int> data) {
    List<Color> sectionColors = [
      Colors.blue.withOpacity(0.7),    // Happy
      Colors.green.withOpacity(0.7),   // Sad
      Colors.orange.withOpacity(0.7),  // Normal
      Colors.red.withOpacity(0.7),     // Depressed
    ];

    List<String> sectionTitles = [
      'Happy',    // First section: Happy
      'Sad',      // Second section: Sad
      'Normal',   // Third section: Normal
      'Depressed',// Fourth section: Depressed
    ];

    List<Widget> sectionIcons = [
      Icon(Icons.sentiment_very_satisfied, color: Colors.white, size: 30),
      Icon(Icons.sentiment_dissatisfied, color: Colors.white, size: 30),
      Icon(Icons.sentiment_neutral, color: Colors.white, size: 30),
      Icon(Icons.sentiment_very_dissatisfied, color: Colors.white, size: 30),
    ];

    List<PieChartSectionData> sections = [];
    for (int i = 0; i < 4; i++) {
      sections.add(
        PieChartSectionData(
          color: sectionColors[i],
          value: data[i].toDouble(),
          title: sectionTitles[i], // Assign titles here to match section titles
          radius: 50,
          titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          titlePositionPercentageOffset: 0.55, // Adjust the position of the titles inside the sections
          badgeWidget: sectionIcons[i], // Adding icons to sections
          badgePositionPercentageOffset: 0.2, // Adjusting icon position inside sections
        ),
      );
    }
    return sections;
  }
}
