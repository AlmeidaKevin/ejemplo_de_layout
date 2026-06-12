import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sitios Turísticos del Ecuador',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TourismPage(),
    );
  }
}

class TourismPage extends StatelessWidget {
  const TourismPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sitios Turísticos del Ecuador'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [

            TouristPlace(
              name: 'Islas Galápagos',
              location: 'Galápagos, Ecuador',
              image: 'images/galapagos.webp',
              mapUrl:
                  'https://www.google.com/maps/search/?api=1&query=Islas+Galapagos+Ecuador',
              description:
                  'Las Islas Galápagos constituyen uno de los destinos turísticos y científicos más importantes del mundo. Ubicadas a aproximadamente mil kilómetros de la costa ecuatoriana, albergan especies únicas de flora y fauna que inspiraron las investigaciones de Charles Darwin sobre la evolución. Sus playas, paisajes volcánicos, tortugas gigantes e iguanas marinas convierten este archipiélago en un lugar único para el turismo ecológico.',
            ),

            TouristPlace(
              name: 'Laguna Quilotoa',
              location: 'Cotopaxi, Ecuador',
              image: 'images/quilotoa.jpeg',
              mapUrl:
                  'https://www.google.com/maps/search/?api=1&query=Laguna+Quilotoa',
              description:
                  'La Laguna Quilotoa es un impresionante lago de origen volcánico ubicado en la Sierra ecuatoriana. Sus aguas de color turquesa y el paisaje montañoso que la rodea la convierten en uno de los lugares más visitados del país. Los turistas pueden realizar caminatas alrededor del cráter y disfrutar de actividades al aire libre.',
            ),

            TouristPlace(
              name: 'Centro Histórico de Quito',
              location: 'Quito, Ecuador',
              image: 'images/quito.jpg',
              mapUrl:
                  'https://www.google.com/maps/search/?api=1&query=Centro+Historico+de+Quito',
              description:
                  'El Centro Histórico de Quito fue declarado Patrimonio Cultural de la Humanidad por la UNESCO. Sus iglesias, plazas, conventos y edificios coloniales reflejan siglos de historia y cultura. Es considerado uno de los centros históricos mejor conservados de América Latina.',
            ),

            TouristPlace(
              name: 'Parque Nacional Yasuní',
              location: 'Orellana, Ecuador',
              image: 'images/yasuni.jpg',
              mapUrl:
                  'https://www.google.com/maps/search/?api=1&query=Parque+Nacional+Yasuni',
              description:
                  'El Parque Nacional Yasuní es una de las zonas con mayor biodiversidad del planeta. En este lugar habitan miles de especies de animales y plantas, además de comunidades indígenas que mantienen sus tradiciones ancestrales. Es uno de los principales destinos de turismo ecológico del Ecuador.',
            ),

            TouristPlace(
              name: 'Salinas',
              location: 'Santa Elena, Ecuador',
              image: 'images/salinas.jpg',
              mapUrl:
                  'https://www.google.com/maps/search/?api=1&query=Salinas+Ecuador',
              description:
                  'Salinas es uno de los balnearios más populares del Ecuador. Sus playas, hoteles, restaurantes y actividades recreativas atraen a miles de visitantes cada año. Es un destino ideal para disfrutar del océano Pacífico y de la gastronomía costera.',
            ),

            TouristPlace(
              name: 'Baños de Agua Santa',
              location: 'Tungurahua, Ecuador',
              image: 'images/banos.png',
              mapUrl:
                  'https://www.google.com/maps/search/?api=1&query=Banos+de+Agua+Santa',
              description:
                  'Baños de Agua Santa es conocida como la capital de la aventura del Ecuador. Rodeada por montañas, cascadas y paisajes naturales, ofrece actividades como rafting, canopy, ciclismo de montaña y senderismo. Además, sus aguas termales son reconocidas internacionalmente.',
            ),

            TouristPlace(
              name: 'Mitad del Mundo',
              location: 'Pichincha, Ecuador',
              image: 'images/mitad_del_mundo.jpg',
              mapUrl:
                  'https://www.google.com/maps/search/?api=1&query=Mitad+del+Mundo+Ecuador',
              description:
                  'La Ciudad Mitad del Mundo es uno de los principales atractivos turísticos del país. Aquí los visitantes pueden conocer la línea ecuatorial que divide al planeta en hemisferio norte y sur, además de disfrutar de museos y actividades culturales.',
            ),

            TouristPlace(
              name: 'Parque Nacional Cotopaxi',
              location: 'Cotopaxi, Ecuador',
              image: 'images/cotopaxi.jpg',
              mapUrl:
                  'https://www.google.com/maps/search/?api=1&query=Parque+Nacional+Cotopaxi',
              description:
                  'El Parque Nacional Cotopaxi protege uno de los volcanes activos más altos del mundo. Sus extensos páramos, lagunas y senderos permiten realizar actividades de senderismo, ciclismo y observación de fauna andina.',
            ),

            TouristPlace(
              name: 'Cuenca',
              location: 'Azuay, Ecuador',
              image: 'images/cuenca.jpg',
              mapUrl:
                  'https://www.google.com/maps/search/?api=1&query=Cuenca+Ecuador',
              description:
                  'Cuenca es una ciudad declarada Patrimonio Cultural de la Humanidad por su arquitectura colonial, iglesias históricas y riqueza cultural. Es considerada una de las ciudades más bellas y seguras del Ecuador.',
            ),

            TouristPlace(
              name: 'Reserva Cuyabeno',
              location: 'Sucumbíos, Ecuador',
              image: 'images/cuyabeno.jpg',
              mapUrl:
                  'https://www.google.com/maps/search/?api=1&query=Reserva+Cuyabeno',
              description:
                  'La Reserva de Producción Faunística Cuyabeno es uno de los ecosistemas amazónicos más importantes del país. Sus lagunas, ríos y bosques tropicales albergan una gran diversidad de flora y fauna, convirtiéndola en un destino ideal para el ecoturismo.',
            ),
          ],
        ),
      ),
    );
  }
}

class TouristPlace extends StatelessWidget {
  final String name;
  final String location;
  final String image;
  final String description;
  final String mapUrl;

  const TouristPlace({
    super.key,
    required this.name,
    required this.location,
    required this.image,
    required this.description,
    required this.mapUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageSection(image: image),
        TitleSection(
          name: name,
          location: location,
        ),
        ButtonSection(mapUrl: mapUrl),
        TextSection(description: description),
        const Divider(thickness: 2),
      ],
    );
  }
}

class TitleSection extends StatelessWidget {
  final String name;
  final String location;

  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          const FavoriteWidget(),
        ],
      ),
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool isFavorited = true;
  int favoriteCount = 41;

  void toggleFavorite() {
    setState(() {
      if (isFavorited) {
        favoriteCount--;
      } else {
        favoriteCount++;
      }
      isFavorited = !isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            isFavorited ? Icons.star : Icons.star_border,
            color: Colors.red,
          ),
          onPressed: toggleFavorite,
        ),
        Text('$favoriteCount'),
      ],
    );
  }
}

class ButtonSection extends StatelessWidget {
  final String mapUrl;

  const ButtonSection({
    super.key,
    required this.mapUrl,
  });


  Future<void> openMap() async {
    final Uri uri = Uri.parse(mapUrl);
  
    try {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
    } catch (e) {
      debugPrint("No se pudo abrir: $e");
    }
  }  


  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ButtonWithText(
          color: color,
          icon: Icons.call,
          label: 'CALL',
          onPressed: () {},
        ),
        ButtonWithText(
          color: color,
          icon: Icons.near_me,
          label: 'ROUTE',
          onPressed: openMap,
        ),
        ButtonWithText(
          color: color,
          icon: Icons.share,
          label: 'SHARE',
          onPressed: () {},
        ),
      ],
    );
  }
}

class ButtonWithText extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        children: [
          Icon(icon, color: color),
          const SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(color: color),
          ),
        ],
      ),
    );
  }
}

class TextSection extends StatelessWidget {
  final String description;

  const TextSection({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Text(
        description,
        textAlign: TextAlign.justify,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  final String image;

  const ImageSection({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: double.infinity,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}
