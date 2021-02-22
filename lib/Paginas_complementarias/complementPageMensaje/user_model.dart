class User {
  final int id;
  final String name;
  final String imageUrl;
  final bool isOnline;

  User({
    this.id,
    this.name,
    this.imageUrl,
    this.isOnline,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Guia del Varon SAC',
  imageUrl: 'assets/images/usuario.guia.png',
  isOnline: true,
);

// USERS
final User FrancoT = User(
  id: 1,
  name: 'Franco T',
  imageUrl: 'assets/images/usuario.franco.jpg',
  isOnline: false,
);
final User SraBecky = User(
  id: 2,
  name: 'Sra Becky',
  imageUrl: 'assets/images/usuario.becky.jpg',
  isOnline: false,
);
final User JuliaJuliaca = User(
  id: 3,
  name: 'Julia - Juliaca',
  imageUrl: 'assets/images/usuario.julia.jpg',
  isOnline: false,
);
final User AngelP = User(
  id: 4,
  name: 'Angel P',
  imageUrl: 'assets/images/usuario.angel.jpg',
  isOnline: false,
);
final User Buenazo = User(
  id: 5,
  name: 'Buenazo.com',
  imageUrl: 'assets/images/usuario.buenazo.png',
  isOnline: false,
);
final User MaxQ = User(
  id: 6,
  name: 'Max Q',
  imageUrl: 'assets/images/usuario.max.jpg',
  isOnline: false,
);
final User DiarioPopular = User(
  id: 7,
  name: 'Diario Popular',
  imageUrl: 'assets/images/usuario.popular.png',
  isOnline: false,
);
final User SaulConstSAC = User(
  id: 8,
  name: 'sistemas',
  imageUrl: 'assets/images/usuario.teamsistemas.jpg',
  isOnline: false,
);
