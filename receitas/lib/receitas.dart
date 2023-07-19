class Receita {
  int porcoes;
  List<Ingrediente> ingredientes;
  String label;
  String imageUrl;

  // Era assim - Receita(this.label, this.imageUrl);  mas para adicionar os ingredientes é necessário substituir pela linha abaixo:
  Receita(this.label, this.imageUrl, this.porcoes, this.ingredientes);
}

class Ingrediente {
  double quantidade;
  String medida;
  String nome;

  Ingrediente(this.quantidade, this.medida, this.nome);
}

List<Receita> samples = [
  Receita(
    'Spagheti com almondegas',
    'assets/almodega.jpg',
    4,
    [
      Ingrediente(1, 'box', 'Spaghetti'),
      Ingrediente(4, '', 'Frozen Meatballs'),
      Ingrediente(0.5, 'jar', 'sauce'),
    ],
  ),
  Receita(
    'Sopa de Tomate',
    'assets/molho.jpg',
    2,
    [
      Ingrediente(1, 'can', 'Tomato Soup'),
    ],
  ),
  Receita(
    'Pão grelhado com Queijo',
    'assets/paonachapa.jpg',
    1,
    [
      Ingrediente(2, 'slices', 'Cheese'),
      Ingrediente(2, 'slices', 'Bread'),
    ],
  ),
  Receita(
    'Cookies com Chocolate',
    'assets/cookies.jpg',
    24,
    [
      Ingrediente(4, 'cups', 'flour'),
      Ingrediente(2, 'cups', 'sugar'),
      Ingrediente(0.5, 'cups', 'chocolate chips'),
    ],
  ),
  Receita(
    'Salada com tacos',
    'assets/tacosdecarne.jpg',
    24,
    [
      Ingrediente(4, 'oz', 'nachos'),
      Ingrediente(3, 'oz', 'taco meat'),
      Ingrediente(0.5, 'cup', 'queijo'),
      Ingrediente(0.25, 'cup', 'chopped tomatoes'),
    ],
  ),
  Receita(
    'Pizza Hawaiana',
    'assets/pizza.jpg',
    4,
    [
      Ingrediente(1, 'item', 'pizza'),
      Ingrediente(1, 'cup', 'abacaxi'),
      Ingrediente(8, 'oz', 'ham'),
    ],
  ),
];
