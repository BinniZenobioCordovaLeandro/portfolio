class Collaboration {
  final int? id;
  final String? image, title, description, link;
  final List<String>? tags;

  Collaboration({
    this.id,
    this.image,
    this.title,
    this.description,
    this.link,
    this.tags,
  });
}

List<Collaboration> collaborations = [
  Collaboration(
    id: 1,
    image: 'assets/images/mercado_pago.png',
    title: 'mercadopago_by_binnicordova',
    description:
        'I created a fast package to implement mercadoPago platform for pay with CARDS',
    link: 'https://pub.dev/packages/mercadopago_by_binnicordova',
    tags: ['mercado pago', 'checkouts'],
  ),
];
