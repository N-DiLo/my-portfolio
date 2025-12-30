import 'package:my_portfolio/app/app.dart';

class InfoPoint extends StatelessWidget {
  const InfoPoint({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Column(
        children: [
          Icon(icon, color: Color(0xFF60A5FA), size: 40.r),
          const SizedBox(height: 12),
          TextWidget(
            text: text,
            textAlign: TextAlign.center,
            fontSize: 16,
            color: Colors.white70,
          ),
        ],
      ),
    );
  }
}
