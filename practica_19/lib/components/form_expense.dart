import 'package:flutter/material.dart';
import 'package:practica_19/data/expenses.dart';

class FormExpense extends StatefulWidget {
  const FormExpense({super.key, required this.onAddExpense});

  final void Function(Expenses expense) onAddExpense;

  @override
  State<FormExpense> createState() => _FormExpenseState();
}

class _FormExpenseState extends State<FormExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime? _selectedDate;
  var _selectedCategory;

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();

    super.dispose();
  }

  Future<void> _mostrarDatePicker() async {
    final actualDate = DateTime.now();
    final firstDate = DateTime(
      actualDate.year - 1,
      actualDate.month,
      actualDate.day,
    );

    final datePicker = await showDatePicker(
      context: context,
      initialDate: actualDate,
      firstDate: firstDate,
      lastDate: actualDate,
      cancelText: "Cancelar",
      confirmText: "Aceptar",
    );

    if (datePicker != null && datePicker != actualDate) {
      setState(() => _selectedDate = datePicker);
    }
  }

  void _validarGastos() {
    final amount = double.tryParse(_amountController.text);
    final invalidAmount = amount == null || amount <= 0;

    if (_titleController.text.trim().isEmpty ||
        invalidAmount ||
        _selectedDate == null) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Campos invalidos"),
          content: Text("Todos los campos son obligatorios."),
          actions: [
            TextButton(onPressed: () {}, child: Text("Cancelar")),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Aceptar"),
            ),
          ],
        ),
      );

      return;
    }

    widget.onAddExpense(
      Expenses(
        title: _titleController.text.trim(),
        amount: amount,
        date: _selectedDate!,
        category: _selectedCategory!,
      ),
    );

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 50, vertical: 16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: InputDecoration(label: Text("Descripción del Gasto")),
          ),

          Row(
            spacing: 16,
            children: [
              Expanded(
                child: TextField(
                  controller: _amountController,
                  keyboardType: TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                    label: Text("Monto"),
                    prefixIcon: Icon(Icons.monetization_on_outlined),
                  ),
                ),
              ),

              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      _selectedDate == null
                          ? "Fecha:"
                          : formatter.format(_selectedDate!),
                    ),
                    IconButton(
                      onPressed: () {
                        _mostrarDatePicker();
                        print(_selectedDate);
                      },
                      icon: Icon(Icons.calendar_month),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Row(
            children: [
              DropdownButton<Category>(
                value: _selectedCategory,
                hint: const Text("Selecciona categoría"),
                items: Category.values
                    .map(
                      (category) => DropdownMenuItem(
                        value: category,
                        child: Text(category.name.toUpperCase()),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  if (value != null) {
                    setState(() {
                      _selectedCategory = value;
                    });
                  }
                },
              ),
            ],
          ),

          Spacer(),

          Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text("Cancelar"),
                ),
              ),

              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: _validarGastos,
                  child: Text("Guardar"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
