import 'package:flutter/material.dart';
import 'package:vize/vize.dart';

void main() {
  runApp(const MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dev Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0F172A),
        primaryColor: Colors.blueAccent,
      ),
      builder: (context, child) {
        Vize.init(context);
        return child!;
      },
      home: const PortfolioHome(),
    );
  }
}

class PortfolioHome extends StatelessWidget {
  const PortfolioHome({super.key});

  @override
  Widget build(BuildContext context) {
    return VizeLayout(
      builder: (context, _) => Scaffold(
        body: CustomScrollView(
          slivers: [
            // Navigation Bar
            SliverAppBar(
              floating: true,
              pinned: true,
              backgroundColor: const Color(0xEE0F172A),
              surfaceTintColor: Colors.transparent,
              title: const Text(
                'DiLo Studios',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF60A5FA),
                ),
              ),
              actions: [
                _navButton('About'),
                _navButton('Projects'),
                _navButton('Skills'),
                const SizedBox(width: 20),
              ],
            ),

            // Hero / Intro Section
            SliverToBoxAdapter(
              child: Container(
                padding: ps(v: 100, h: 24),
                child: Column(
                  children: [
                    Container(
                      width: 25.w,
                      height: 25.h,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFF3B82F6), Color(0xFF9333EA)],
                        ),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withValues(alpha: .3),
                            blurRadius: 20,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                      child: Icon(Icons.code, size: 60.r, color: Colors.white),
                    ),
                    const SizedBox(height: 32),
                    Text(
                      'Flutter Mobile Developer',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 56.ts,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -1.5,
                        height: 1.1,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Based in Port Harcourt, Rivers State, Nigeria 🇳🇬',
                      style: TextStyle(color: Color(0xFF60A5FA), fontSize: 18),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Turning ideas into sleek, user-friendly mobile experiences;\none Flutter app at a time.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 20.ts,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // About / Philosophy Section
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 40,
                ),
                color: const Color(0xFF1E293B).withValues(alpha: .3),
                child: MaxWidthContainer(
                  child: Column(
                    children: [
                      const Text(
                        'Focused on building modern, scalable apps',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Wrap(
                        spacing: 40,
                        runSpacing: 40,
                        alignment: WrapAlignment.center,
                        children: [
                          _buildInfoPoint(
                            Icons.architecture,
                            'Clean Architecture & Best Practices',
                          ),
                          _buildInfoPoint(
                            Icons.lightbulb,
                            'Driven by Creativity & Problem Solving',
                          ),
                          _buildInfoPoint(
                            Icons.trending_up,
                            'Goal-oriented with Continuous Growth',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Projects Grid
            SliverPadding(
              padding: ps(h: 40, v: 40),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: adaptiveColumns(
                    mobile: 1,
                    tablet: 2,
                    desktop: 3,
                  ),
                  crossAxisSpacing: sp(2),
                  mainAxisSpacing: sp(2),
                ),
                delegate: SliverChildListDelegate([
                  _buildProjectCard(
                    'EcoTrack App',
                    'Carbon footprint tracking with Firebase.',
                    Icons.eco,
                    const Color(0xFF4ADE80),
                  ),
                  _buildProjectCard(
                    'Fintech Dashboard',
                    'Cross-platform desktop dashboard.',
                    Icons.account_balance_wallet,
                    const Color(0xFFA855F7),
                  ),
                  _buildProjectCard(
                    'IoT Controller',
                    'Smart home BLE integration.',
                    Icons.settings_remote,
                    const Color(0xFF60A5FA),
                  ),
                ]),
              ),
            ),

            // Skills Section
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 80,
                  horizontal: 24,
                ),
                child: Column(
                  children: [
                    Text(
                      'My Tech Stack',
                      style: TextStyle(
                        fontSize: 32.ts,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      alignment: WrapAlignment.center,
                      children: [
                        _skillTag('Flutter', Colors.blue),
                        _skillTag('Dart', Colors.blueAccent),
                        _skillTag('Java', Colors.orange),
                        _skillTag('C++', Colors.indigo),
                        _skillTag('Python', Colors.yellow),
                        _skillTag('MySQL', Colors.cyan),
                        _skillTag('Clean Architecture', Colors.teal),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Interests / Footer Section
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.all(60),
                child: Column(
                  children: [
                    const Divider(color: Colors.white10),
                    const SizedBox(height: 40),
                    const Text(
                      'Interests & Lifestyle',
                      style: TextStyle(fontSize: 20, color: Colors.white54),
                    ),
                    const SizedBox(height: 20),
                    const Wrap(
                      spacing: 20,
                      children: [
                        Text('🌟 Programming Trends'),
                        Text('✈️ Diverse Cultures'),
                        Text('🛠 Impactful Projects'),
                      ],
                    ),
                    const SizedBox(height: 60),
                    const Text(
                      'Open to collaborations and exciting opportunities 🤝',
                      style: TextStyle(
                        color: Color(0xFF60A5FA),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _navButton(String label) {
    return TextButton(
      onPressed: () {},
      child: Text(label, style: const TextStyle(color: Colors.white)),
    );
  }

  Widget _skillTag(String label, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: color.withValues(alpha: .1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withValues(alpha: .3)),
      ),
      child: Text(
        label,
        style: TextStyle(color: color, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildInfoPoint(IconData icon, String text) {
    return SizedBox(
      width: 250,
      child: Column(
        children: [
          Icon(icon, color: const Color(0xFF60A5FA), size: 40),
          const SizedBox(height: 12),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, color: Colors.white70),
          ),
        ],
      ),
    );
  }
}

Widget _buildProjectCard(
  String title,
  String desc,
  IconData icon,
  Color color,
) {
  return Container(
    padding: const EdgeInsets.all(32),
    decoration: BoxDecoration(
      color: const Color(0xFF1E293B),
      borderRadius: BorderRadius.circular(24),
      border: Border.all(color: Colors.white.withValues(alpha: .05)),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: color, size: 32),
        const Spacer(),
        Text(
          title,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(desc, style: const TextStyle(color: Colors.white54, fontSize: 16)),
      ],
    ),
  );
}

class MaxWidthContainer extends StatelessWidget {
  final Widget child;
  const MaxWidthContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1000),
        child: child,
      ),
    );
  }
}
