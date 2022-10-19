class RecentWork {
  final String? image, category, title, technology, duration;
  final int? id;
  final bool? owner;

  RecentWork({
    this.id,
    this.image,
    this.category,
    this.title,
    this.owner,
    this.technology,
    this.duration,
  });
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "New & Fresh Platanitos Ecommerce App",
    category: "ITU Bank - Chile",
    image: "assets/images/work_1.png",
    owner: false,
    technology: 'React Native',
    duration: '1 year',
  ),
  RecentWork(
    id: 2,
    title: "New & Fresh Platanitos Ecommerce App Flutter",
    category: "Platanitos Ecommerce - Perú",
    image: "assets/images/work_2.png",
    owner: false,
    technology: 'Flutter',
    duration: '1 year',
  ),
  RecentWork(
    id: 3,
    title: "New & Fresh Looking Portfolio indeed at the end",
    category: "Platanitos Retail - Perú",
    image: "assets/images/work_3.png",
    owner: false,
    technology: 'React Native',
    duration: '1 year',
  ),
  RecentWork(
    id: 4,
    title: "New & Fresh Looking Portfolio indeed at the end",
    category: "PickPointer Auto - Perú",
    image: "assets/images/work_4.png",
    owner: true,
    technology: 'Flutter',
    duration: '1 year',
  ),
];
