class ProjectModel {
  final String title;
  final String description;
  final String image;
  final String link;
  final List<String> langs;

  ProjectModel({
    required this.title,
    required this.description,
    required this.image,
    required this.link,
    required this.langs,
  });
}

List<ProjectModel> projectItems = [
  ProjectModel(
    title: 'Project 1',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    link: 'https://github.com/',
    langs: ['Flutter', 'Dart'],
    image:
        'https://images.unsplash.com/photo-1624871084860-b3a0b80d4bb8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
  ),
  ProjectModel(
    title: 'Project 2',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    link: 'https://github.com/',
    langs: ['Flutter', 'Dart'],
    image:
        'https://images.unsplash.com/photo-1624871084860-b3a0b80d4bb8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
  ),
  ProjectModel(
    title: 'Project 3',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    link: 'https://github.com/',
    langs: ['Flutter', 'Dart'],
    image:
        'https://images.unsplash.com/photo-1624871084860-b3a0b80d4bb8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
  ),
  ProjectModel(
    title: 'Project 4',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    link: 'https://github.com/',
    langs: ['Flutter', 'Dart'],
    image:
        'https://images.unsplash.com/photo-1624871084860-b3a0b80d4bb8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
  ),
];
