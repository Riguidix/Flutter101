import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 25.0),
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.teal.shade100,
                        radius: 65.0,
                        backgroundImage: const AssetImage('assets/avatar.png'),
                      ),
                      
                      const SizedBox(height: 20.0),
                      
                      Text(
                        "Reydescel Herrera",
                        style: GoogleFonts.pacifico(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal.shade700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      
                      Text(
                        "Desarrollador Flutter",
                        style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.teal.shade600,
                          letterSpacing: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      
                      const SizedBox(height: 15.0),
                      
                      Divider(
                        color: Colors.teal.shade100,
                        thickness: 1.5,
                        indent: 20,
                        endIndent: 20,
                      ),
                      
                      const SizedBox(height: 15.0),
                      
                      _buildContactRow(Icons.email, "reydescelrodriguez@gmail.com"),
                      const SizedBox(height: 15.0),
                      _buildContactRow(Icons.phone, "(614) 126 - 26 - 62"),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContactRow(IconData icon, String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
      decoration: BoxDecoration(
        color: Colors.teal.shade50, // Fondo sutil para la información
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.teal.shade800,
            size: 24,
          ),
          const SizedBox(width: 15.0),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.teal.shade900,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}