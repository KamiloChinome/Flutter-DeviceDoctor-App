import 'package:circuitos_app/domain/models/tools_model.dart';

const aboutApp = 'DeviceDoctor es una aplicación hecha por Kamilo Andrés Chinome Marin como proyecto final de la materia "Mantenimiento de dispositivos móviles" en la Universidad Corporación Unificada Nacional (CUN). Esta aplicación busca ser una guía a la mano de los conceptos básicos hasta los más clave del mantenimiento de dispositivos como computadores, tabletas, celulares y laptops.';
const mobileIntro = 'Un mantenimiento adecuado puede prolongar la vida útil de estos dispositivos y ayudar a evitar problemas costosos en el futuro. Esta sección te proporciona información útil sobre cómo mantener tus dispositivos en buen estado, evitar problemas comunes y solucionar problemas cuando ocurran.';

//
final tools = [
  TollsModel(title: 'Destornilladores', text: 'Se utilizan para desmontar el dispositivo y acceder a sus componentes, Vienen en diferentes tamaños y tipos de cabeza para adaptarse a los tornillos específicos del dispositivo.', image: 'assets/images/destornillador.jpg'),
  TollsModel(title: 'Pinzas', text: 'Son útiles para manipular los pequeños componentes, como los cables y los conectores durante el proceso de reparación.', image: 'assets/images/pinzas.jpg'),
  TollsModel(title: 'Espátulas de plástico', text: 'Son ideales para retirar las piezas delicadas sin rayar la superficie Son especialmente útiles para abrir carcasas y desconectar cables.', image: 'assets/images/espatulas.jpg'),
  TollsModel(title: 'Cinta adhesiva', text: 'Se utiliza para mantener las piezas en su lugar mientras se llevan a cabo las reparaciones.', image: 'assets/images/cinta.jpg'),
  TollsModel(title: 'Alcohol isopropílico', text: 'Se utiliza para limpiar las conexiones y los componentes eléctricos.', image: 'assets/images/alcohol.jpg'),
  TollsModel(title: 'Pincel antiestático', text: 'Un cepillo de cerdas suaves utilizado para eliminar el polvo y las partículas de los componentes electrónicos sin generar electricidad estática, lo que podría dañar los dispositivos sensibles.', image: 'assets/images/pincel.jpg'),
  TollsModel(title: 'Multímetro', text: 'Es una herramienta que se utiliza para medir el voltaje, la corriente y la resistencia en los circuitos eléctricos.', image: 'assets/images/multimetro.jpg'),
  TollsModel(title: 'Fuente de alimentación regulada', text: 'Es útil para proporcionar una fuente de energía constante a los componentes del dispositivo durante las pruebas.', image: 'assets/images/energia.jpg'),
  TollsModel(title: 'Microscopio', text: 'Se utiliza para inspeccionar los componentes en detalle, Está equipado con lentes de aumento y luz incorporada para examinar minuciosamente los circuitos y componentes de los dispositivos celulares. ', image: 'assets/images/microescopio.jpg'),
];
//