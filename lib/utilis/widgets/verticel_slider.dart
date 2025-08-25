import 'package:flutter/material.dart';

class VerticelSlider extends StatefulWidget {
  const VerticelSlider({Key? key}) : super(key: key);

  @override
  VerticelSliderState createState() => VerticelSliderState();
}

class VerticelSliderState extends State<VerticelSlider> {
  double value = 75;

  @override
  Widget build(BuildContext context) {
    const double min = 0;
    const double max = 100;

    return SliderTheme(
      data: SliderThemeData(
        trackHeight: 20,
        thumbShape: SliderComponentShape.noOverlay,
        overlayShape: SliderComponentShape.noOverlay,
        valueIndicatorShape: SliderComponentShape.noOverlay,
        activeTickMarkColor: Colors.transparent,
        inactiveTickMarkColor: Colors.transparent,
        activeTrackColor: const Color(0xFFC58BF2),
        inactiveTrackColor: const Color(0xffF7F8F8),
      ),
      child: SizedBox(
        height: 360,
        child: Column(
          children: [
            const SizedBox(height: 6),
            Expanded(
              child: RotatedBox(
                quarterTurns: 3,
                child: Slider(
                  value: value,
                  min: min,
                  max: max,
                  divisions: 20,
                  label: value.round().toString(),
                  onChanged: (value) => setState(() => this.value = value),
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget buildSideLabel(double value) => Text(
        value.round().toString(),
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      );
}
