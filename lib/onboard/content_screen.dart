class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent(
      {required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: 'Workout From Home',
    image: 'images/quality.svg',
    discription: "Build your fitness just from home without going outside",
  ),
  UnbordingContent(
    title: 'Track Your Activity',
    image: 'images/delevery.svg',
    discription: "Easily track your fitness and workout activity",
  ),
  UnbordingContent(
    title: 'Achieve Your Goals',
    image: 'images/reward.svg',
    discription: "Planning your workouts and let`s achive your goals",
  ),
];
