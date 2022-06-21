import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppDropdownInput<T> extends StatelessWidget {
  final String hintText;
  final List<T> options;
  final T? value;
  final String Function(T) getLabel;
  final void Function(T?)? onChanged;

  const AppDropdownInput({
    this.hintText = 'Please select an Option',
    this.options = const [],
    required this.getLabel,
    this.value,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return FormField<T>(
      builder: (FormFieldState<T> state) {
        return InputDecorator(
          decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.person_add_alt_outlined,
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 15.0,
            ),
            labelText: hintText,
            labelStyle: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12.0),
              ),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: const Color(0xFFF7F8F8),
          ),
          isEmpty: value == null || value == '',
          child: DropdownButtonHideUnderline(
            child: DropdownButton<T>(
              icon: const Icon(
                Icons.arrow_downward,
              ),
              value: value,
              isDense: true,
              onChanged: onChanged!,
              items: options.map(
                (T value) {
                  return DropdownMenuItem<T>(
                    value: value,
                    child: Text(
                      getLabel(value),
                    ),
                  );
                },
              ).toList(),
            ),
          ),
        );
      },
    );
  }
}
