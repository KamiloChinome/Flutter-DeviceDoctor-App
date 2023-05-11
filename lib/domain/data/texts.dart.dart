import 'package:circuitos_app/domain/models/tools_model.dart';

const aboutApp = 'DeviceDoctor es una aplicación hecha por Kamilo Andrés Chinome Marin como proyecto final de la materia "Mantenimiento de dispositivos móviles" en la Universidad Corporación Unificada Nacional (CUN). Esta aplicación busca ser una guía a la mano de los conceptos básicos hasta los más clave del mantenimiento de dispositivos como computadores, tabletas, celulares y laptops.';
const mobileIntro = 'Un mantenimiento adecuado puede prolongar la vida útil de estos dispositivos y ayudar a evitar problemas costosos en el futuro. Esta sección te proporciona información útil sobre cómo mantener tus dispositivos en buen estado, evitar problemas comunes y solucionar problemas cuando ocurran.';
const cellOff = 'Antes de comenzar, asegúrate de apagar completamente el celular y desconectarlo de cualquier fuente de energía.';

//
final tools = [
  InfoModel(title: 'Destornilladores', text: 'Se utilizan para desmontar el dispositivo y acceder a sus componentes, Vienen en diferentes tamaños y tipos de cabeza para adaptarse a los tornillos específicos del dispositivo.', image: 'assets/images/destornillador.jpg', route: ''),
  InfoModel(title: 'Pinzas', text: 'Son útiles para manipular los pequeños componentes, como los cables y los conectores durante el proceso de reparación.', image: 'assets/images/pinzas.jpg', route: ''),
  InfoModel(title: 'Espátulas de plástico', text: 'Son ideales para retirar las piezas delicadas sin rayar la superficie Son especialmente útiles para abrir carcasas y desconectar cables.', image: 'assets/images/espatulas.jpg', route: ''),
  InfoModel(title: 'Cinta adhesiva', text: 'Se utiliza para mantener las piezas en su lugar mientras se llevan a cabo las reparaciones.', image: 'assets/images/cinta.jpg', route: ''),
  InfoModel(title: 'Alcohol isopropílico', text: 'Se utiliza para limpiar las conexiones y los componentes eléctricos.', image: 'assets/images/alcohol.jpg', route: ''),
  InfoModel(title: 'Pincel antiestático', text: 'Un cepillo de cerdas suaves utilizado para eliminar el polvo y las partículas de los componentes electrónicos sin generar electricidad estática, lo que podría dañar los dispositivos sensibles.', image: 'assets/images/pincel.jpg', route: ''),
  InfoModel(title: 'Multímetro', text: 'Es una herramienta que se utiliza para medir el voltaje, la corriente y la resistencia en los circuitos eléctricos.', image: 'assets/images/multimetro.jpg', route: ''),
  InfoModel(title: 'Fuente de alimentación regulada', text: 'Es útil para proporcionar una fuente de energía constante a los componentes del dispositivo durante las pruebas.', image: 'assets/images/energia.jpg', route: ''),
  InfoModel(title: 'Microscopio', text: 'Se utiliza para inspeccionar los componentes en detalle, Está equipado con lentes de aumento y luz incorporada para examinar minuciosamente los circuitos y componentes de los dispositivos celulares. ', image: 'assets/images/microescopio.jpg', route: ''),
];

final disassembly = [
  InfoModel(title: 'Retira la cubierta trasera', text: 'En la mayoría de los casos, la cubierta trasera del celular se puede quitar deslizándola o aplicando presión para liberar los clips. Si no, inicia calentando y retirando el display para poder acceder a los circuitos', image: 'assets/images/carcasa1.jpg', route: ''),
  InfoModel(title: 'Retira la batería', text: 'Si es posible extraer la batería, hazlo con cuidado siguiendo las instrucciones específicas del fabricante. En algunos modelos, la batería puede estar soldada o pegada, en cuyo caso no deberás forzar su extracción.', image: 'assets/images/bateria1.jpg', route: ''),
  InfoModel(title: 'Desconecta los cables flexibles', text: 'Con la ayuda de una pinza o espátula de plástico, desconecta los cables flexibles que conectan la placa base con otros componentes, como la pantalla, el altavoz, la cámara, etc. Asegúrate de hacerlo con cuidado y evitar dañar los conectores.', image: 'assets/images/mobile-devices-disassembly.jpg', route: ''),
  InfoModel(title: 'Retira los tornillos de la placa', text: 'Localiza los tornillos que sujetan la placa base y utiliza el destornillador adecuado para desenroscarlos. Es importante mantener los tornillos organizados y recordar su ubicación para el ensamblaje posterior.', image: 'assets/images/tornillos.jpg', route: ''),
  InfoModel(title: 'Retira la placa base', text: ' Con cuidado, levanta la placa base del celular. Presta atención a cualquier cable o conector que aún esté conectado y desconéctalo suavemente si es necesario.', image: 'assets/images/mobile-devices-disassembly.jpg', route: ''),
  InfoModel(title: 'Desmonta los demás componentes', text: 'Si es necesario acceder a otros componentes, como la cámara, el altavoz, el conector de carga, entre otros, retíralos siguiendo las instrucciones específicas para cada componente. Utiliza las herramientas adecuadas y ten cuidado de no dañarlos.', image: 'assets/images/mobile-devices-disassembly.jpg', route: ''),
];

final preventive = [
  InfoModel(title: 'Limpieza regular', text: 'La acumulación de polvo, suciedad y residuos puede afectar el rendimiento y la durabilidad de un dispositivo celular. Realiza una limpieza regular utilizando un paño suave y seco para eliminar el polvo de la superficie y los puertos. ', image: '', route: ''),
  InfoModel(title: 'Protección de pantalla', text: 'Utiliza protectores de pantalla de calidad y fundas protectoras para evitar arañazos, grietas y daños en la pantalla. Estos accesorios pueden ayudar a prolongar la vida útil de la pantalla y protegerla de golpes y caídas accidentales.', image: '', route: ''),
  InfoModel(title: 'Actualizaciones de software', text: 'Mantén el software del dispositivo actualizado instalando las últimas actualizaciones y parches de seguridad. Las actualizaciones de software suelen incluir mejoras de rendimiento, solución de errores y parches de seguridad ', image: '', route: ''),
  InfoModel(title: 'Gestión del almacenamiento', text: 'Realiza un seguimiento regular del espacio de almacenamiento disponible en el dispositivo. Elimina archivos innecesarios, aplicaciones no utilizadas y realiza copias de seguridad de los datos importantes en una ubicación segura.', image: '', route: ''),
  InfoModel(title: 'Control de la temperatura', text: 'Evita exponer el dispositivo a temperaturas extremas, tanto altas como bajas. Las temperaturas extremas pueden dañar la batería y otros componentes del dispositivo. ', image: '', route: ''),
  InfoModel(title: 'Respaldo regular de datos', text: 'Realiza copias de seguridad regulares de los datos importantes almacenados en el dispositivo, como contactos, fotos, videos y archivos. ', image: '', route: ''),
];

final homeSections = [
  InfoModel(title: 'Dispositivos moviles', text: '', image: 'assets/images/mobile.jpg', route: '/mobile-devices'),
  InfoModel(title: 'Computadorasa', text: '', image: 'assets/images/pc.jpg', route: '/mobile-devices'),
  InfoModel(title: 'Noticias de tecnologia', text: '', image: 'assets/images/news.jpg', route: '/mobile-devices'),
  InfoModel(title: 'Retira los tornillos de la placa base', text: '', image: 'assets/images/test.jpg', route: '/mobile-devices'),
];

final movileDevices = [
  InfoModel(title: 'Herramientas y Equipo', text: '', image: 'assets/images/tools.jpg', route: '/mobile-devices/tools'),
  InfoModel(title: 'Desmontaje', text: '', image: 'assets/images/mobile-devices-disassembly.jpg', route: '/mobile-devices/disassembly'),
  InfoModel(title: 'Mantenimiento preventivo', text: '', image: 'assets/images/mobile-preventive-maintenance.jpg', route: '/mobile-devices/preventive'),
  InfoModel(title: 'Reparaciones', text: '', image: 'assets/images/mobile-troubleshooting.png', route: '/mobile-devices/repairs'),
];

final repairs = [
  InfoModel(route: '', title: 'Reemplazo de pantalla', text: '', image: 'assets/images/carcasa1.jpg'),
  InfoModel(route: '', title: 'Reemplazo de batería', text: '', image: 'assets/images/bateria1.jpg'),
  InfoModel(route: '', title: 'Conector de carga', text: '', image: 'assets/images/puertomovil.jpg'),
  InfoModel(route: '', title: 'Botón de encendido/apagado', text: '', image: 'assets/images/reparar-botonmovil.jpg'),
];
//