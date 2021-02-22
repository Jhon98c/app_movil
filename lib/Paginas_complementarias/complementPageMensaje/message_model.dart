import 'package:app_movil/Paginas_complementarias/complementPageMensaje/user_model.dart';

class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.unread,
  });
}

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: FrancoT,
    time: '5:30 PM',
    text: 'Ok, te mando la informacion.',
    unread: true,
  ),
  Message(
    sender: SraBecky,
    time: '4:30 PM',
    text:
        'Buenas, vi tu historial y estoy interesado en que trabajes para mi empresa.',
    unread: true,
  ),
  Message(
    sender: MaxQ,
    time: '3:30 PM',
    text: '¿Haces desarrollo de aplicacion con Flutter?',
    unread: false,
  ),
  Message(
    sender: Buenazo,
    time: '2:30 PM',
    text: 'Estamos buscando desarrolladores, ¿Te interesa?.',
    unread: true,
  ),
  Message(
    sender: JuliaJuliaca,
    time: '1:30 PM',
    text: 'Llamame.',
    unread: false,
  ),
  Message(
    sender: DiarioPopular,
    time: '12:30 PM',
    text: 'En cuanto tiempo puedes hacer una app movil de ventas online.',
    unread: false,
  ),
  Message(
    sender: AngelP,
    time: '11:30 AM',
    text: 'Que tecnoligas usas para el desarrollo movil.',
    unread: false,
  ),
  Message(
    sender: SaulConstSAC,
    time: '12:45 AM',
    text: 'Te mando un email a tu correo, ¿me lo pasas?.',
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: FrancoT,
    time: '5:30 PM',
    text:
        'Hola, estoy buscando personas con habilidades de desarrollador de software, ¿Te interesa?',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Claro estoy interesado',
    unread: true,
  ),
  Message(
    sender: FrancoT,
    time: '3:45 PM',
    text: 'Es un software sencillo',
    unread: true,
  ),
  Message(
    sender: FrancoT,
    time: '3:15 PM',
    text: '¿Cuanto tiempo te podria tomar en hacer un sitio web?',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Claro no es tan complicado',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Depende que contenido tenga y para que lo quiera',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Depende de ello.',
    unread: true,
  ),
  Message(
    sender: FrancoT,
    time: '2:00 PM',
    text: 'Ok, te mando la informacion.',
    unread: true,
  ),
];
