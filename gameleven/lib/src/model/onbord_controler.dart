class OnbordController {
  final String title;
  final String image;

  OnbordController({
    required this.title,
    required this.image,
  });
}

List<OnbordController> onboardingContents = [
  OnbordController(
    title: 'Gaming Collection',
    image: 'assets/images/66fef2332cebef40c02d550ee1b9b20a.png',
  ),
  OnbordController(
    title: 'Home Decerotation',
    image: 'assets/images/9270745e7575c04418d3717bd8fb0819.png',
  ),
  OnbordController(
    title: 'G11 Gaming zone',
    image: 'assets/images/42c1d2e1b261e376763edfdeb70b6b3c.png',
  ),
];
