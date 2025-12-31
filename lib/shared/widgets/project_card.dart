import 'package:my_portfolio/app/app.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.desc,
    required this.icon,
    required this.title,
    required this.color,
  });

  final String desc;
  final IconData icon;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white.withValues(alpha: .05)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: color, size: 32.r),
          const Spacer(),
          TextWidget(text: title, fontSize: 22, fontWeight: FontWeight.bold),
          SizedBox(height: 8.r),
          TextWidget(text: desc, color: Colors.white54, fontSize: 16),
        ],
      ),
    );
  }
}
