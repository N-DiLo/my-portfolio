import 'package:my_portfolio/app/app.dart';

class SkillTag extends StatelessWidget {
  const SkillTag({super.key, required this.color, required this.label});
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: ps(h: 20, v: 10),
      decoration: BoxDecoration(
        color: color.withValues(alpha: .1),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: color.withValues(alpha: .3)),
      ),
      child: TextWidget(
        text: label,
        fontSize: 14,
        color: color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
