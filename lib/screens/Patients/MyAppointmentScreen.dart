import 'package:flutter/material.dart';

class MyAppointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            ConsultationCard(
              doctorName: 'dr. Jake Sim',
              day: 'April 12, 2024',
              time: '10:00 AM - 11:00 AM',
              status: 'Online Consult',
            ),
            SizedBox(height: 20),
            ConsultationCard(
              doctorName: 'dr. Heeseung Lee',
              day: 'April 12, 2024',
              time: '10:00 AM - 11:00 AM',
              status: 'Online Consult',
            ),
            SizedBox(height: 20),
            MedCheckCard(
              package: 'package 1',
              day: 'April, 30th 2024',
            )
          ],
        ),
      ),
    );
  }
}

class ConsultationCard extends StatelessWidget {
  final String doctorName;
  final String day;
  final String time;
  final String status;

  ConsultationCard({
    required this.doctorName,
    required this.day,
    required this.time,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            width: double.infinity,
            height: 200,
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.person_3_rounded,
                  size: 50,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctorName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'day: $day',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Time: $time',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Status: $status',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    DetailConsultBtn()
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MedCheckCard extends StatelessWidget {
  final String package;
  final String day;

  MedCheckCard({
    required this.package,
    required this.day,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            width: double.infinity,
            height: 150,
          ),
          Positioned(
              top: 20,
              left: 20,
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Icon(
                  Icons.assignment,
                  size: 50,
                ),
                SizedBox(width: 10),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    package,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'day: $day',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  DetailMedCheckBtn()
                ])
              ]))
        ]));
  }
}

class DetailConsultBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print('Detail Appointment');
      },
      child: Text('Detail'),
    );
  }
}

class DetailMedCheckBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print('Detail Appointment');
      },
      child: Text('Detail'),
    );
  }
}
