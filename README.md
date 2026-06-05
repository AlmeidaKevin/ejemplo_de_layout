# Sitios Turísticos del Ecuador - Flutter

## Descripción del Proyecto

Esta aplicación móvil fue desarrollada utilizando Flutter y tiene como objetivo mostrar información sobre diez de los principales sitios turísticos del Ecuador. La aplicación permite visualizar imágenes, ubicación, descripción detallada y acceder directamente a Google Maps para obtener la ruta hacia cada destino turístico.

Además, se implementó interactividad mediante un sistema de favoritos utilizando Stateful Widgets, permitiendo que los usuarios marquen o desmarquen sitios turísticos como favoritos.

---

# Objetivos

## Objetivo General

Desarrollar una aplicación móvil en Flutter que permita visualizar información turística del Ecuador aplicando conceptos de diseño de interfaces e interactividad.

## Objetivos Específicos

* Mostrar información relevante de diez sitios turísticos del Ecuador.
* Implementar imágenes mediante recursos locales (assets).
* Aplicar Widgets Stateless y Stateful.
* Incorporar botones interactivos.
* Integrar Google Maps mediante enlaces externos.
* Utilizar ScrollView para manejar grandes cantidades de contenido.

---

# Tecnologías Utilizadas

* Flutter
* Dart
* Material Design
* url_launcher
* Google Maps

---

# Estructura General de la Aplicación

La aplicación está compuesta por varios widgets que permiten organizar la información de manera modular y reutilizable.

## Componentes Principales

### MyApp

Es el widget principal de la aplicación.

Funciones:

* Inicializa Flutter.
* Configura el MaterialApp.
* Define el tema visual.
* Establece la pantalla principal.

---

### TourismPage

Contiene la lista completa de los sitios turísticos.

Funciones:

* Mostrar todos los destinos turísticos.
* Gestionar el desplazamiento vertical mediante SingleChildScrollView.
* Organizar los elementos mediante Column.

---

### TouristPlace

Widget reutilizable que representa un sitio turístico completo.

Parámetros:

* Nombre
* Ubicación
* Imagen
* Descripción
* URL de Google Maps

Funciones:

* Mostrar toda la información de un destino.
* Reutilizar el mismo diseño para los diez lugares turísticos.

---

### ImageSection

Responsable de mostrar las imágenes almacenadas en la carpeta images.

Funciones:

* Cargar imágenes desde assets.
* Ajustar las imágenes al ancho disponible.
* Mantener una presentación uniforme.

---

### TitleSection

Muestra:

* Nombre del sitio turístico.
* Ubicación.
* Sistema de favoritos.

Funciones:

* Organizar la información principal.
* Integrar el FavoriteWidget.

---

### FavoriteWidget

Implementado mediante StatefulWidget.

Funciones:

* Permitir marcar o desmarcar favoritos.
* Actualizar dinámicamente el contador.
* Cambiar el icono entre estrella llena y estrella vacía.

Variables utilizadas:

```dart
bool isFavorited = true;
int favoriteCount = 41;
```

Método principal:

```dart
setState()
```

Este método reconstruye la interfaz cada vez que cambia el estado.

---

### ButtonSection

Contiene los botones:

* CALL
* ROUTE
* SHARE

Funciones:

* Organizar los botones horizontalmente.
* Gestionar eventos de interacción.

---

### ButtonWithText

Widget reutilizable para los botones.

Funciones:

* Mostrar icono.
* Mostrar texto.
* Detectar pulsaciones mediante InkWell.

---

### TextSection

Muestra la descripción detallada del sitio turístico.

Funciones:

* Presentar información textual.
* Justificar el contenido para mejorar la lectura.

---

# Interactividad Implementada

## Favoritos

Cada sitio turístico posee una estrella interactiva.

Cuando el usuario pulsa la estrella:

* Si está seleccionada:

  * Se elimina de favoritos.
  * El contador disminuye.

* Si no está seleccionada:

  * Se agrega a favoritos.
  * El contador aumenta.

Ejemplo:

```dart
setState(() {
  favoriteCount++;
  isFavorited = true;
});
```

---

## Google Maps

Se implementó la navegación hacia Google Maps mediante el paquete:

```yaml
url_launcher
```

Cuando el usuario presiona el botón ROUTE:

1. Se obtiene la URL correspondiente.
2. Se abre Google Maps.
3. Se muestra la ubicación del destino turístico.

Ejemplo:

```dart
launchUrl(
  uri,
  mode: LaunchMode.externalApplication,
);
```

---

# Sitios Turísticos Incluidos

La aplicación contiene información de los siguientes lugares:

1. Islas Galápagos
2. Laguna Quilotoa
3. Centro Histórico de Quito
4. Parque Nacional Yasuní
5. Salinas
6. Baños de Agua Santa
7. Mitad del Mundo
8. Parque Nacional Cotopaxi
9. Cuenca
10. Reserva de Producción Faunística Cuyabeno

---

# Recursos Multimedia

Las imágenes utilizadas se almacenan localmente en la carpeta:

```text
images/
```

Archivos utilizados:

```text
banos.png
cotopaxi.jpg
cuenca.jpg
cuyabeno.jpg
galapagos.webp
mitad_del_mundo.jpg
quilotoa.jpeg
quito.jpg
salinas.jpg
yasuni.jpg
```

Configuración en pubspec.yaml:

```yaml
flutter:
  assets:
    - images/banos.png
    - images/cotopaxi.jpg
    - images/cuenca.jpg
    - images/cuyabeno.jpg
    - images/galapagos.webp
    - images/mitad_del_mundo.jpg
    - images/quilotoa.jpeg
    - images/quito.jpg
    - images/salinas.jpg
    - images/yasuni.jpg
```

---

# Stateful Widget

## Definición

Un Stateful Widget es un widget que puede cambiar su estado durante la ejecución de la aplicación.

Permite actualizar dinámicamente la interfaz mediante el método:

```dart
setState()
```

Características:

* Mantiene información temporal.
* Permite interacción del usuario.
* Actualiza la interfaz automáticamente.

Ejemplos de uso:

* Contadores.
* Formularios.
* Botones interactivos.
* Favoritos.

En este proyecto se utiliza en:

```text
FavoriteWidget
```

---

# Stateless Widget

## Definición

Un Stateless Widget es un widget cuyo contenido no cambia durante la ejecución.

Características:

* No almacena estados.
* Es más ligero.
* Es más eficiente.

Ejemplos de uso:

* Textos.
* Imágenes.
* Etiquetas.
* Diseños estáticos.

En este proyecto se utiliza en:

```text
MyApp
TourismPage
TouristPlace
TitleSection
ButtonSection
ButtonWithText
TextSection
ImageSection
```

---

# Aprendizajes Obtenidos

Durante el desarrollo de esta práctica se reforzaron conocimientos sobre:

* Diseño de interfaces en Flutter.
* Organización de widgets reutilizables.
* Uso de Stateless Widgets.
* Uso de Stateful Widgets.
* Gestión de estados mediante setState().
* Integración de imágenes locales.
* Navegación hacia aplicaciones externas.
* Integración con Google Maps.
* Uso de SingleChildScrollView.
* Aplicación de Material Design.

---

# Conclusiones

La aplicación desarrollada permitió aplicar conceptos fundamentales de Flutter relacionados con diseño de interfaces e interactividad. La implementación de Stateful Widgets permitió agregar funcionalidad dinámica mediante el sistema de favoritos, mientras que la integración con Google Maps mejoró la experiencia del usuario al facilitar la navegación hacia cada destino turístico. El uso de widgets reutilizables contribuyó a mantener un código organizado, escalable y fácil de mantener.

---

# Referencias

Flutter Documentation. (2026). Layout Tutorial. Recuperado de:
https://docs.flutter.dev/ui/layout/tutorial

Flutter Documentation. (2026). Add Interactivity. Recuperado de:
https://docs.flutter.dev/ui/interactivity

Flutter Documentation. (2026). StatefulWidget. Recuperado de:
https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html

Flutter Documentation. (2026). StatelessWidget. Recuperado de:
https://api.flutter.dev/flutter/widgets/StatelessWidget-class.html

Flutter Documentation. (2026). url_launcher Package. Recuperado de:
https://pub.dev/packages/url_launcher
