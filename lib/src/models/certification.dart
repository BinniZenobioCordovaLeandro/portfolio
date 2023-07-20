class Certification {
  final String? id;
  final String? title, image, description, link, institution;
  final DateTime? date;
  final List<String>? aptitudes;

  Certification({
    this.id,
    this.image,
    this.title,
    this.description,
    this.link,
    this.institution,
    this.date,
    this.aptitudes,
  });
}

List<Certification> certifications = [
  Certification(
    id: 'A',
    image: 'assets/images/udemy.jpeg',
    title: 'Principios SOLID y Clean Code',
    description: '',
    link: '',
    institution: 'Udemy',
    date: DateTime.parse("2022-11-01"),
    aptitudes: ['SOLID', 'typescript', 'clean code'],
  ),
  Certification(
    id: 'N',
    image: 'assets/images/udemy.jpeg',
    title: 'Application Security - The Complete Guide',
    description: '',
    link: '',
    institution: 'Udemy',
    date: DateTime.parse("2022-11-01"),
  ),
  Certification(
    id: 'UC-611b26c4-d444-4df1-a807-0ca4cda9abcf',
    image: 'assets/images/udemy.jpeg',
    title: 'Build Your First iPhone App - iOS 14 Apps Using Swift 5',
    description: '',
    link:
        'https://www.udemy.com/certificate/UC-611b26c4-d444-4df1-a807-0ca4cda9abcf',
    institution: 'Udemy',
    date: DateTime.parse('2022-07-01'),
    aptitudes: ['Swift', 'XCode'],
  ),
  Certification(
    id: 'UC-868ec5e6-4ded-42eb-9532-b876a5480cbc',
    image: 'assets/images/udemy.jpeg',
    title: 'React Native - Advanced Concepts',
    description: '',
    link:
        'https://www.udemy.com/certificate/UC-868ec5e6-4ded-42eb-9532-b876a5480cbc',
    institution: 'Udemy',
    date: DateTime.parse('2022-07-01'),
    aptitudes: ['React', 'typescript', 'javascript', 'redux'],
  ),
  Certification(
    id: 'FC87D10E7945',
    image: 'assets/images/hackerrank.jpeg',
    title: 'Rest API (Intermediate)',
    description: '',
    link: 'https://www.hackerrank.com/certificates/fc87d10e7945',
    institution: 'HackerRank',
    date: DateTime.parse('2022-05-01'),
  ),
  Certification(
    id: 'BAA59A3D3235',
    image: 'assets/images/hackerrank.jpeg',
    title: 'JavaScript (Intermediate)',
    description: '',
    link: 'https://www.hackerrank.com/certificates/baa59a3d3235',
    institution: 'HackerRank',
    date: DateTime.parse('2021-12-01'),
    aptitudes: ['typescript', 'javascript'],
  ),
  Certification(
    id: 'UC-517c77f8-d8fe-4aac-b727-12390e0f187f',
    image: 'assets/images/udemy.jpeg',
    title: 'Flutter Avanzado',
    description: '',
    link:
        'https://www.udemy.com/certificate/UC-517c77f8-d8fe-4aac-b727-12390e0f187f',
    institution: 'Udemy',
    date: DateTime.parse('2021-11-01'),
    aptitudes: ['flutter', 'dart', 'redux'],
  ),
];
