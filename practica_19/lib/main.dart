import 'package:flutter/material.dart';
import 'package:practica_19/pages/expenses_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense Tracker',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF00A676), // Jungle Green
          onPrimary: Colors.white,
          secondary: Color(0xFFA76D60), // Terracotta Clay
          onSecondary: Colors.white,
          tertiary: Color(0xFFE0D0C1), // Almond Cream
          primaryContainer: Color(0xFFE0D0C1),
          surface: Color(0xFFF7F9F9), // Bright Snow
          onSurface: Color(0xFF2D3328), // Texto oscuro orgánico
          error: Color(0xFF601700), // Dark Garnet
          onError: Colors.white,
        ),
        scaffoldBackgroundColor: const Color(0xFFF7F9F9),

        // 1. BARRA SUPERIOR
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Color(0xFF00A676),
          foregroundColor: Colors.white,
          centerTitle: true,
        ),

        // 2. TARJETAS DE GASTOS (Con sombra verde tintada)
        cardTheme: CardThemeData(
          color: const Color(0xFF00A676),
          elevation: 4,
          shadowColor: const Color(0xFF00A676).withValues(alpha: 0.4),
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),

        // 3. BOTONES PRINCIPALES (ElevatedButton - "Guardar")
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF00A676),
            foregroundColor: Colors.white,
            elevation: 2,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        // 4. BOTONES SECUNDARIOS (OutlinedButton - "Cancelar")
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: const Color(
              0xFFA76D60,
            ), // Terracotta Clay para acciones de cancelar
            side: const BorderSide(color: Color(0xFFA76D60), width: 1.5),
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        // 5. CAMPOS DE TEXTO E INPUTS (TextField y Dropdown en FormExpense)
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFF00A676), width: 2),
          ),
          labelStyle: const TextStyle(color: Color(0xFF2D3328)),
          prefixIconColor: const Color(0xFF00A676),
        ),

        // 6. BARRA DE NOTIFICACIONES (SnackBar - Para botón "Deshacer")
        snackBarTheme: SnackBarThemeData(
          backgroundColor: const Color(0xFF2D3328), // Fondo oscuro elegante
          contentTextStyle: const TextStyle(color: Colors.white, fontSize: 15),
          actionTextColor: const Color(
            0xFFE0D0C1,
          ), // Almond Cream para resaltar "DESHACER"
          behavior: SnackBarBehavior
              .floating, // Flotante con bordes redondeados (estilo iOS/Moderno)
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 6,
        ),

        // 7. VENTANAS DE DIÁLOGO (AlertDialog - Validación de campos)
        dialogTheme: DialogThemeData(
          backgroundColor: const Color(0xFFF7F9F9),
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          titleTextStyle: const TextStyle(
            color: Color(
              0xFF601700,
            ), // Dark Garnet para títulos de alerta/error
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        // 8. MODAL DE FORMULARIO (BottomSheet - showModalBottomSheet)
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Color(0xFFF7F9F9),
          elevation: 16,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          ),
        ),
      ),
      home: const ExpensesPage(),
    );
  }
}
