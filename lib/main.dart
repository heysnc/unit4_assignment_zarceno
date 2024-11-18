import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Know more about me!',
          style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        ),
                      ),
          backgroundColor: const Color.fromARGB(255, 252, 201, 201),
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(  // Added ScrollView to prevent overflow
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile section
                Row(
                  children: [
                    // Profile Picture
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('android/assets/me.jpg'),
                    ),
                    const SizedBox(width: 10),
                    // Name
                    const Text(
                      'Verna Marie M. Zarceno',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                // Info Section
                _buildInfoRow(Icons.girl_outlined, 'Nickname', 'Sancai'),
                _buildInfoRow(Icons.email, 'Email', 'vernamarie.zarceno@wvsu.edu.ph'),
                _buildInfoRow(Icons.phone, 'Phone', '09991234567'),
                _buildInfoRow(Icons.work, 'Profession', 'Student'),
                _buildInfoRow(Icons.location_on, 'Address', 'Brgy. Barrido, Ajuy, Iloilo'),
                _buildInfoRow(Icons.brush, 'Hobbies', 'Crocheting, Watching Movies, Sewing, Reading, Taking Pictures'),
                _buildInfoRow(Icons.computer, 'Course', 'Bachelor of Science in Information Technology'),
                _buildInfoRow(Icons.school, 'School', 'West Visayas State University - Main Campus'),
                const SizedBox(height: 24),
                // Biography Section
                const Text(
                  'My Biography',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                  const Text(
                'I have always been a shy and quiet girl who loves simple things and loves to make things that showcase my creativity. Because of this, I always enjoyed crocheting, sewing, and taking pictures. I am currently a third-year Information Technology student at West Visayas State University. I am an introvert, an optimist, and a nature lover. Even though I\'m an IT student, I still dreamed to be a flight attendant and travel the world someday.',
                style: TextStyle(fontSize: 16),
              ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  // Function to build each row with icon, label, and value
  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, size: 30),
          const SizedBox(width: 16),
          Text(
            '$label: $value',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
         // Flexible(  // Prevents overflow if the text is too long
            //child: Text(
              //value,
             // style: const TextStyle(fontSize: 16),
             // textAlign: TextAlign.end,  // Align value to the end of the row
           // ),
          //),
        ],
      ),
    );
  }
}