import 'package:circuitos_app/domain/models/tools_model.dart';

const aboutApp = 'DeviceDoctor es una aplicación hecha por Kamilo Andrés Chinome Marin como proyecto final de la materia "Mantenimiento de dispositivos móviles" en la Universidad Corporación Unificada Nacional (CUN). Esta aplicación busca ser una guía a la mano de los conceptos básicos hasta los más clave del mantenimiento de dispositivos como computadores, tabletas, celulares y laptops.';
const mobileIntro = 'Un mantenimiento adecuado puede prolongar la vida útil de estos dispositivos y ayudar a evitar problemas costosos en el futuro. Esta sección te proporciona información útil sobre cómo mantener tus dispositivos en buen estado, evitar problemas comunes y solucionar problemas cuando ocurran.';
const cellOff = 'Antes de comenzar, asegúrate de apagar completamente el celular y desconectarlo de cualquier fuente de energía.';

//
final tools = [
  InfoModel(title: 'Destornilladores', text: 'Se utilizan para desmontar el dispositivo y acceder a sus componentes, Vienen en diferentes tamaños y tipos de cabeza para adaptarse a los tornillos específicos del dispositivo.', image: 'assets/images/destornillador.jpg'),
  InfoModel(title: 'Pinzas', text: 'Son útiles para manipular los pequeños componentes, como los cables y los conectores durante el proceso de reparación.', image: 'assets/images/pinzas.jpg'),
  InfoModel(title: 'Espátulas de plástico', text: 'Son ideales para retirar las piezas delicadas sin rayar la superficie Son especialmente útiles para abrir carcasas y desconectar cables.', image: 'assets/images/espatulas.jpg'),
  InfoModel(title: 'Cinta adhesiva', text: 'Se utiliza para mantener las piezas en su lugar mientras se llevan a cabo las reparaciones.', image: 'assets/images/cinta.jpg'),
  InfoModel(title: 'Alcohol isopropílico', text: 'Se utiliza para limpiar las conexiones y los componentes eléctricos.', image: 'assets/images/alcohol.jpg'),
  InfoModel(title: 'Pincel antiestático', text: 'Un cepillo de cerdas suaves utilizado para eliminar el polvo y las partículas de los componentes electrónicos sin generar electricidad estática, lo que podría dañar los dispositivos sensibles.', image: 'assets/images/pincel.jpg'),
  InfoModel(title: 'Multímetro', text: 'Es una herramienta que se utiliza para medir el voltaje, la corriente y la resistencia en los circuitos eléctricos.', image: 'assets/images/multimetro.jpg'),
  InfoModel(title: 'Fuente de alimentación regulada', text: 'Es útil para proporcionar una fuente de energía constante a los componentes del dispositivo durante las pruebas.', image: 'assets/images/energia.jpg'),
  InfoModel(title: 'Microscopio', text: 'Se utiliza para inspeccionar los componentes en detalle, Está equipado con lentes de aumento y luz incorporada para examinar minuciosamente los circuitos y componentes de los dispositivos celulares. ', image: 'assets/images/microescopio.jpg'),
];

final disassembly = [
  InfoModel(title: 'Retira la cubierta trasera', text: 'En la mayoría de los casos, la cubierta trasera del celular se puede quitar deslizándola o aplicando presión para liberar los clips. Si no, inicia calentando y retirando el display para poder acceder a los circuitos', image: 'assets/images/carcasa1.jpg'),
  InfoModel(title: 'Retira la batería', text: 'Si es posible extraer la batería, hazlo con cuidado siguiendo las instrucciones específicas del fabricante. En algunos modelos, la batería puede estar soldada o pegada, en cuyo caso no deberás forzar su extracción.', image: 'assets/images/bateria1.jpg'),
  InfoModel(title: 'Desconecta los cables flexibles', text: 'Con la ayuda de una pinza o espátula de plástico, desconecta los cables flexibles que conectan la placa base con otros componentes, como la pantalla, el altavoz, la cámara, etc. Asegúrate de hacerlo con cuidado y evitar dañar los conectores.', image: 'assets/images/mobile-devices-disassembly.jpg'),
  InfoModel(title: 'Retira los tornillos de la placa', text: 'Localiza los tornillos que sujetan la placa base y utiliza el destornillador adecuado para desenroscarlos. Es importante mantener los tornillos organizados y recordar su ubicación para el ensamblaje posterior.', image: 'assets/images/tornillos.jpg'),
  InfoModel(title: 'Retira la placa base', text: ' Con cuidado, levanta la placa base del celular. Presta atención a cualquier cable o conector que aún esté conectado y desconéctalo suavemente si es necesario.', image: 'assets/images/mobile-devices-disassembly.jpg'),
  InfoModel(title: 'Desmonta los demás componentes', text: 'Si es necesario acceder a otros componentes, como la cámara, el altavoz, el conector de carga, entre otros, retíralos siguiendo las instrucciones específicas para cada componente. Utiliza las herramientas adecuadas y ten cuidado de no dañarlos.', image: 'assets/images/mobile-devices-disassembly.jpg'),
];

// final disassembly = [
//   InfoModel(title: 'Retira la cubierta trasera', text: '', image: 'assets/images/destornillador.jpg'),
//   InfoModel(title: 'Retira la batería', text: '', image: 'assets/images/pinzas.jpg'),
//   InfoModel(title: 'Desconecta los cables flexibles', text: '', image: 'assets/images/espatulas.jpg'),
//   InfoModel(title: 'Retira los tornillos de la placa base', text: '', image: 'assets/images/cinta.jpg'),
//   InfoModel(title: 'Retira la placa base', text: '', image: 'assets/images/alcohol.jpg'),
//   InfoModel(title: 'Desmonta los demás componentes', text: '', image: 'assets/images/pincel.jpg'),
// ];
//