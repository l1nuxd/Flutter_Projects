import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Premium Business Card',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: Scaffold(
        // Enhanced gradient background
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0, 0.4, 0.8, 1.0],
              colors: [
                Color.fromARGB(255, 88, 137, 206), // deep blue
                Color.fromARGB(255, 75, 121, 176), // slightly lighter blue
                Color(0xFF4299E1), // accent blue
                Color(0xFFBEE3F8), // soft blue/white
              ],
            ),
          ),
          child: Center(child: PremiumBusinessCard()),
        ),
      ),
    );
  }
}

class PremiumBusinessCard extends StatelessWidget {
  final Color primaryColor = const Color(0xFF1A365D);
  final Color accentColor = const Color(0xFF4299E1);
  final Color textColor = const Color.fromARGB(255, 225, 225, 225);

  const PremiumBusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 520,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [primaryColor, Color(0xFF2C5282)],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 40,
            spreadRadius: 2,
            offset: Offset(0, 20),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Decorative elements
          Positioned(
            top: -30,
            right: -30,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: accentColor.withOpacity(0.1),
              ),
            ),
          ),

          // Main content
          Padding(
            padding: const EdgeInsets.all(30),
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  // Profile Picture
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: accentColor.withOpacity(0.8),
                        width: 3,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                      image: DecorationImage(
                        image: NetworkImage(
                          // Dark blue, coding/hacker themed image
                          'https://images.unsplash.com/photo-1461749280684-dccba630e2f6?auto=format&fit=crop&w=400&q=80',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 24),

                  // Name and Title
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Aminullah Habibi',
                        style: TextStyle(
                          color: textColor,
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Security Researcher',
                        style: TextStyle(
                          color: accentColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 3,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 18), // replaces Spacer()
                  // Contact Information
                  Column(
                    children: [
                      _buildContactRow(
                        Icons.email,
                        'EMAIL',
                        'l1nuxd@wearehackerone.com',
                      ),
                      SizedBox(height: 20),
                      _buildContactRow(Icons.phone, 'PHONE', '+93 730-505-669'),
                      SizedBox(height: 20),
                      _buildContactRow(
                        Icons.location_on,
                        'LOCATION',
                        'Kabul, Afghanistan',
                      ),
                      SizedBox(height: 20),
                      _buildContactRow(
                        Icons.language,
                        'WEBSITE',
                        'https://l1nuxd.github.io',
                      ),
                    ],
                  ),

                  SizedBox(height: 18), // replaces Spacer()
                  // Footer with decorative line
                  Column(
                    children: [
                      Container(
                        height: 2,
                        width: 120,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.transparent,
                              accentColor.withOpacity(0.5),
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'DESIGNING THE FUTURE',
                        style: TextStyle(
                          color: textColor.withOpacity(0.7),
                          fontSize: 10,
                          letterSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactRow(IconData icon, String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: accentColor, size: 20),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(
                color: textColor.withOpacity(0.7),
                fontSize: 10,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 4),
            Text(
              value,
              style: TextStyle(
                color: textColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
