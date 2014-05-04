-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 04-05-2014 a las 20:49:24
-- Versión del servidor: 5.6.10-log
-- Versión de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `echo`
--
CREATE DATABASE IF NOT EXISTS `echo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `echo`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidato`
--

CREATE TABLE IF NOT EXISTS `candidato` (
  `id_cand` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id_cand`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `candidato`
--

INSERT INTO `candidato` (`id_cand`, `nombre`) VALUES
(1, 'Clara Lopez'),
(2, 'Enrique Peñalosa'),
(3, 'Marta Lucia Ramirez'),
(4, 'Juan Manuel Santos'),
(5, 'Oscar Ivan Zuluaga');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta`
--

CREATE TABLE IF NOT EXISTS `encuesta` (
  `id_en` int(11) NOT NULL AUTO_INCREMENT,
  `id_pregunta` int(11) NOT NULL,
  `id_respuesta` int(11) NOT NULL,
  PRIMARY KEY (`id_en`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE IF NOT EXISTS `preguntas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quest` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `quest`) VALUES
(1, '¿Qué reforma plantean al sistema de salud?'),
(2, '¿Qué harán para generar empleo?'),
(3, '¿Cómo mejorarán la educación?'),
(4, '¿Cuál es el compromiso con el medio ambiente?'),
(5, '¿Cómo mejorar la seguridad en el campo y la ciudad?');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE IF NOT EXISTS `respuestas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pregunta` int(11) NOT NULL,
  `id_cand` int(11) NOT NULL,
  `respuesta` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Volcado de datos para la tabla `respuestas`
--

INSERT INTO `respuestas` (`id`, `id_pregunta`, `id_cand`, `respuesta`) VALUES
(1, 1, 1, 'Propone la salud como derecho fundamental y una reforma a fondo del sistema de salud con eliminación total de las EPS y de la intermediación financiera. Esto, dice, implicaría que el Estado recupere el manejo de la salud, lo que implicaría igualdad de atención para todo. Creará una ''pensión ciudadana'' para las personas de las tercera edad más necesitadas, que cubra sus necesidades de salud y alimentación.'),
(2, 1, 2, 'Propone una reforma al sistema de salud en el que las aseguradoras sustituyan a las EPS. Fortalecerá los programas de prevención, aumentará los especialistas y construirá hospitales en las ciudades más pequeñas. Creará una unidad en el Ministerio de Salud para que apruebe los tratamientos que actualmente los usuarios deben exigir a través de tutelas.'),
(3, 1, 3, 'Propone la creación de un único Plan Obligatorio de Salud para todos y buscará que los medicamentos sean importados directamente, con lo que se les reduciría su precio. Además, asegura que fortalecerá la vigilancia sobre el sistema para evitar que los recursos sean desviados y se compromete a llevar profesionales idóneos, a quienes les mejoraría sus condiciones salariales, a todas las regiones del país.'),
(4, 1, 4, 'Un eventual segundo gobierno daría continuidad a lo logrado en los primeros cuatro años de gestión: unificación de los planes de beneficios de los regímenes contributivo y subsidiado, reducción en los recobros, control al precio de medicamentos, reconocimiento de la salud como un derecho, e inclusión de los medicamentos de alto costo en el POS. Igualmente, se mantendrá el giro directo de recursos a hospitales y clínicas.'),
(5, 1, 5, 'Creará un carnet único de Sisbén para que los usuarios del régimen subsidiado puedan ser atendidos en cualquier parte del país con solo presentarlo. Buscará la integración en el POS de los medicamentos de uso más frecuente y creación de un plan para que sean entregados directamente en el hogar del paciente. Habría atención de calidad y apoyo económico directo a los ancianos en pobreza extrema.'),
(6, 2, 1, 'Propone una economía social de mercado que contemple meta del pleno empleo. Buscaría la generación de nuevos trabajos a través de estímulos a la industria nacional. Creará un programa para que las empresas ''adopten'' a los colegios públicos para que sus estudiantes, una vez se gradúen, puedan obtener trabajos estables y con una buena remuneración.'),
(7, 2, 2, 'Su programa incluye la creación de estímulos a la generación de empleos mediante reembolso de aportes parafiscales. Los subsidios a la generación de empleos se les darían a las medianas y pequeñas empresas, con vocación exportadora, que tengan un crecimiento de por lo menos el 20 por ciento de puestos de trabajo. Anunció una evaluación de la ley de flexibilización laboral para modificarla si no logró los resultados esperados.'),
(8, 2, 3, 'Impulsará la creación de 800 mil nuevas empresas. Cada una de ellas deberá general, al menos, cinco empleos formales. Creará estímulos para jóvenes y mujeres que deseen hacer empresa. Promoverá industrias que ofrezcan servicios digitales, de tecnología y culturales. Propone planes para estimular y reactivar la industria.'),
(9, 2, 4, 'Crearía un salario mínimo real constante. Ampliaría la eliminación de impuestos a la generación de empleo formal. Propone el fortalecimiento de la oferta técnica y tecnológica a través del Sena. Buscará ampliar la cobertura de Jóvenes en Acción y estimular la llegada de capital humano colombiano residente en el exterior. Fortalecerá el servicio público del empleo del Ministerio de Trabajo.'),
(10, 2, 5, 'Propone que el país se especialice en los productos que mejor sabe hacer. Motivará la creación de ''clusters'' (empresas que trabajan interconectadas en un sector productivo particular) en las regiones del país. Dará incentivos a empresarios que generen y mantengan el empleo formal e invertirá las regalías en infraestructura e innovación para fortalecer los mencionados ''clusters''.'),
(11, 3, 1, 'Su compromiso será garantizar la educación gratuita en todas las instituciones públicas y en todos los niveles: preescolar, primaria, bachillerato y universitaria. Destinaría mayor presupuesto para mejorar las condiciones laborales de los docentes y la dotación con herramientas tecnológicas adecuadas en colegios y universidades estatales en todo el país. Igualmente, se compromete con un programa de seguridad alimentaría para niños y niñas.'),
(12, 3, 2, 'Se compromete a ofrecer más capacitación y mejor remuneración a los docentes. También asegura que construirá más colegios en todo el país, con las condiciones de comodidad requeridos de acuerdo a sus condiciones climáticas. Además, propone crear las condiciones para mejorar la cobertura y el acceso a la educación superior tanto técnica y universitaria. Habría más fiscalización a las instituciones para frenar la proliferación de las llamadas ''universidades de garaje''.'),
(13, 3, 3, 'Propone selección estricta de los maestros de instituciones públicas y mayor capacitación. Establecería, por ley, el bilingüismo. Brindaría educación gratuita a jóvenes de nivel 1 y 2 del Sisbén y universidad gratis a quienes presten el servicio militar obligatorio. Crearía una Universidad Campesina. Se compromete a dar más recursos para la universidad pública y garantizaría infraestructura básica de servicios públicos y de telecomunicaciones en colegios. Integraría el Sena al Ministerio de Educación Nacional.'),
(14, 3, 4, 'El eje estará en mejorar la calidad. Se compromete con más recursos para garantizar educación a 2,5 niños de los sectores más vulnerables del país. Impulsaría la excelencia docente, especialmente en preescolar y en primera infancia, como eje del mejoramiento de la calidad. También impulsará mejoras en su remuneración. Fortalecerá las mejoras en la infraestructura de las instituciones estatales. Propone creación de una Superintendencia de la Educación Superior, que vele por la calidad en el sector.'),
(15, 3, 5, 'Establecería una jornada única de 8 a.m. a 4 p.m. en todos los colegios públicos del país y garantizaría la alimentación durante esa jornada. Propone mejorar condiciones salariales de los docentes y ofrecería becas para formación en lecto-escritura, matemáticas, ciencias y bilingüismo. Incluirá la formación técnica desde bachillerato, con apoyo del Sena, cuyo presupuesto se fortalecerá en 1,5 billones de pesos adicionales. Buscará herramientas para garantizar el acceso a la educación superior de los jóvenes bachilleres.'),
(16, 4, 1, 'Creará una superintendencia encargada de controlar la intervención del Estado para la conservación de los recursos naturales. Trabajará por el mejoramiento de la calidad de vida a través de planes de preservación del agua y del medioambiente. En su programa señala que los temas medioambientales serán transversales a todas sus políticas.'),
(17, 4, 2, 'Propone ciudades sostenibles, donde se promuevan formas alternativas de transporte para reducir la contaminación. También programas para preservar páramos, selvas, bosques y el agua. Fortalecerá la Unidad de Parques Nacionales y se compromete a depurar las CAR de corrupción y presiones políticas. Establecerá un plan de turismo ambiental y sostenible.'),
(18, 4, 3, 'Delimitará las zonas de reserva natural y prohibirá su uso con fines industriales. Garantizará la minería sostenible y amigable con el medio ambiente. Creará comisión de expertos que establezcan políticas de mitigación y prevención del cambio climático. Construirá plantas de tratamiento para limpiar los ríos de aguas residuales y canalización de pozos sépticos. Se compromete a impulsar a una ley de protección de páramos.'),
(19, 4, 4, 'No hay un apartado exacto sobre el tema en su plan de Gobierno, pero en su primer mandato propuso protección de los ecosistemas estratégicos que generan ''servicios ambientales'', uso sostenible de los recursos naturales con respeto a la biodiversidad, distribución equitativa de la tierra y políticas para la preservación del agua.'),
(20, 4, 5, 'No hay en su programa un apartado expreso sobre el tema, pero en el capítulo de desarrollo regional propone políticas de minería legal respetuosa con el medio ambiente. Impulsará mecanismos de protección de ríos y bosques, a través de la reactivación del programa de Familias Guardabosques, cuyo objetivo sería impulsar la protección del medio ambiente en las zonas rurales.'),
(21, 5, 1, 'Más que una política de seguridad, el programa de la aspirante del Polo Democrático está basado en la construcción del posconflicto. Por eso, asegura que bajo su gobierno culminarán de forma exitosa los diálogos en la Habana y hará reformas sociales para hacer sostenible la paz. Entre ellas, propone crear un plan de emergencia humanitaria para apoyar a los municipios más afectados por el conflicto armado.'),
(22, 5, 2, 'Su énfasis es seguridad urbana. Propone prevención a través del deporte, educación, empleo y actividades culturales para los jóvenes, mejorará la iluminación de las zonas públicas, aumentará las cámaras y creará mejores condiciones para transitar "sin miedo". Impulsará mayores penas para reincidentes, construcción de más cárceles y mejoramiento de las existentes y fortalecer la capacidad de las fuerzas militares para luchar de forma más eficiente en las ciudades.'),
(23, 5, 3, 'Revivirá los ''Soldados y policías de mi pueblo'': jóvenes que presten servicio militar en el municipio donde viven. Su prioridad será "recuperar la seguridad democrática" e impondrá prisión perpetua para violadores y responsables de ataques con ácido. Creará la ''Gendarmería'', una policía militar ciudadana . Se usarán " cámaras, sensores, redes de ciudadanos y tecnologías de información para detectar y actuar frente amenazas en contra de la ciudadanía".'),
(24, 5, 4, 'El eje es la seguridad en las ciudades y el combate de delitos como el hurto y el homicidio. Lo hará con más pie de fuerza en zonas de alto riesgo, incentivos a la denuncia ciudadana y revisión de planes para delitos específicos, como la extorsión y el hurto de celulares. Fortalecerá un pacto de seguridad ciudadana que permita la cooperación entre la Fiscalía y la Rama Judicial para mejorar los castigos y las sanciones.'),
(25, 5, 5, 'Coincide con Ramírez en que se debe "recuperar la seguridad democrática". Además, basa su propuesta en mejorar "el nivel salarial y de bienestar" y darles salud y vivienda a soldados y policías. Además, defenderá el fuero militar y hará que su defensa esté a cargo del Estado. Creará la figura de la Justicia Comunitaria, en la que los ciudadanos puedan otorgarle, de manera temporal, el poder a algún miembro de su comunidad para que imparta justicia.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
