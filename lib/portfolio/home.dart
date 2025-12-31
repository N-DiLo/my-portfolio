import 'package:my_portfolio/app/app.dart';

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
              title: const TextWidget(
                text: 'DiLo Studios',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF60A5FA),
              ),

              actions: [
                _navButton('About'),
                _navButton('Projects'),
                _navButton('Skills'),
                20.fhs,
              ],
            ),

            // Hero / Intro Section
            SliverToBoxAdapter(
              child: Container(
                padding: ps(v: 100, h: 24),
                child: Column(
                  children: [
                    Container(
                      width: 120.fw,
                      height: 120.fh,
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
                    fhs(32),
                    TextWidget(
                      text: 'Flutter Mobile Developer',
                      textAlign: TextAlign.center,
                      fontSize: 56,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -1.5,
                      height: 1.1,
                    ),
                    const SizedBox(height: 16),
                    const TextWidget(
                      text:
                          'Based in Port Harcourt, Rivers State, Nigeria 🇳🇬',
                      color: Color(0xFF60A5FA),
                      textAlign: TextAlign.center,
                      fontSize: 18,
                    ),
                    24.fhs,
                    TextWidget(
                      text:
                          'Turning ideas into sleek, user-friendly mobile experiences; one Flutter app at a time.',
                      textAlign: TextAlign.center,
                      color: Colors.white70,
                      fontSize: 20,
                      height: 1.5,
                    ),
                  ],
                ),
              ),
            ),

            // About / Philosophy Section
            SliverToBoxAdapter(
              child: Container(
                padding: ps(h: 24, v: 40),
                color: const Color(0xFF1E293B).withValues(alpha: .3),
                child: MaxWidthContainer(
                  child: Column(
                    children: [
                      const TextWidget(
                        text: 'Focused on building modern, scalable apps',
                        fontSize: 24,
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(height: 30),
                      Wrap(
                        spacing: 40,
                        runSpacing: 40,
                        alignment: WrapAlignment.center,
                        children: [
                          InfoPoint(
                            icon: Icons.architecture,
                            text: 'Clean Architecture & Best Practices',
                          ),
                          InfoPoint(
                            icon: Icons.lightbulb,
                            text: 'Driven by Creativity & Problem Solving',
                          ),
                          InfoPoint(
                            icon: Icons.trending_up,
                            text: 'Goal-oriented with Continuous Growth',
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
              padding: ps(h: 10, v: 40),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: adaptiveColumns(
                    mobile: 1,
                    tablet: 2,
                    desktop: 4,
                  ),
                  crossAxisSpacing: sp(1),
                  mainAxisSpacing: sp(2),
                ),
                delegate: SliverChildListDelegate([
                  ProjectCard(
                    title: 'Wages Finance',
                    desc: 'Carbon footprint tracking with Firebase.',
                    icon: Icons.wallet,
                    color: const Color(0xFF4ADE80),
                  ),
                  ProjectCard(
                    title: 'MyCliq User',
                    desc: 'Cross-platform desktop dashboard.',
                    icon: Icons.account_balance_wallet,
                    color: const Color(0xFFA855F7),
                  ),
                  ProjectCard(
                    title: 'MyCliq Merchant',
                    desc: 'Smart home BLE integration.',
                    icon: Icons.account_balance_wallet,
                    color: const Color(0xFF60A5FA),
                  ),
                  ProjectCard(
                    title: 'Sync360',
                    desc: 'Smart home BLE integration.',
                    icon: Icons.business_center,
                    color: const Color(0xFF30B4BB),
                  ),
                ]),
              ),
            ),

            // Skills Section
            SliverToBoxAdapter(
              child: Container(
                padding: ps(v: 80, h: 24),
                child: Column(
                  children: [
                    TextWidget(
                      text: 'My Tech Stack',
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                    40.fhs,
                    Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      alignment: WrapAlignment.center,
                      children: [
                        SkillTag(label: 'Flutter', color: Colors.blue),
                        SkillTag(label: 'Dart', color: Colors.blueAccent),
                        SkillTag(label: 'Java', color: Colors.orange),
                        SkillTag(label: 'C++', color: Colors.indigo),
                        SkillTag(label: 'Python', color: Colors.yellow),
                        SkillTag(label: 'MySQL', color: Colors.cyan),
                        SkillTag(
                          label: 'Clean Architecture',
                          color: Colors.teal,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Interests / Footer Section
            SliverToBoxAdapter(
              child: Container(
                padding: pa(30),
                child: Column(
                  children: [
                    const Divider(color: Colors.white10),
                    fhs(40),
                    const TextWidget(
                      text: 'Interests & Lifestyle',
                      fontSize: 20,
                      textAlign: TextAlign.center,
                      color: Colors.white54,
                    ),
                    fhs(20),
                    const Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 20,
                      children: [
                        TextWidget(text: '🌟 Programming Trends', fontSize: 18),
                        TextWidget(text: '✈️ Diverse Cultures', fontSize: 18),
                        TextWidget(text: '🛠 Impactful Projects', fontSize: 18),
                      ],
                    ),
                    60.fhs,
                    const TextWidget(
                      text:
                          'Open to collaborations and exciting opportunities 🤝',
                      fontSize: 18,
                      textAlign: TextAlign.center,
                      color: Color(0xFF60A5FA),
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Container(
                padding: ps(h: 20, v: 35),
                color: const Color(0xFF1E293B).withValues(alpha: .3),
                child: MaxWidthContainer(
                  child: const TextWidget(
                    text: '© 2025 DiLo Studios. Built with Flutter',
                    fontSize: 12,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w300,
                  ),
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
}
