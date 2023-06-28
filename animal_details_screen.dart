import 'package:flutter/material.dart';
import 'package:wild_wonder/home_page.dart';
import 'feedback_screen.dart';

class AnimalSpeciesSelection extends StatefulWidget {
  @override
  _AnimalSpeciesSelectionState createState() => _AnimalSpeciesSelectionState();
}

class _AnimalSpeciesSelectionState extends State<AnimalSpeciesSelection> {
  String selectedSpecies = '';

  Map<String, List<Map<String, String>>> animalLists = {
    'Giant Panda Convention Centre': [
      {
        'name': 'Giant Panda',
      },
    ],
    'Savannah Walk': [
      {
        'name': 'Giraffes',
      },
      {
        'name': 'Zebra',
      },
    ],
    'Children World': [
      {
        'name': 'White-tailed Deer',
      },
      {
        'name': 'Rabbit',
      },
    ],
    'Malaysian Elephants': [
      {
        'name': 'Malaysian Elephant',
      },
    ],
    'Bird Aviary': [
      {
        'name': 'Asian Openbill Stork',
      },
      {
        'name': 'Asian Swans',
      },
    ],
    'Mammal Kingdom': [
      {
        'name': 'Leopard Cat',
      },
      {
        'name': 'Puma',
      },
    ],
    'Cat Walk': [
      {
        'name': 'African Lion',
      },
      {
        'name': 'Malayan Tiger',
      },
    ],
    'Ape Centre': [
      {
        'name': 'Bornean Orangutan',
      },
      {
        'name': 'Sumatran Orangutan',
      },
      {
        'name': 'Tapanuli Orangutan',
      },
    ],
  };

  void navigateToAnimalListPage(String species) {
    List<Map<String, String>> animalList = animalLists[species] ?? [];
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AnimalListPage(
          species: species,
          animalList: animalList,
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen.shade700,
        title: Text(
          'Choose Animal Exhibit',
          style: TextStyle(
            fontFamily: 'Montserrat', // Change the font family to Montserrat
            fontSize: 24,
            color: Colors.black, // Change the font color to lemon green
          ),
        ),
        actions: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Tooltip(
                message: 'Feedback',
                child: IconButton(
                  icon: Icon(Icons.feedback_outlined),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FeedbackScreen()),
                    );
                  },
                ),
              ),
            ],
          ),
          Tooltip(
            message: 'Logout',
            child: IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                // Perform logout actions here
                logout(context);
              },
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedSpecies = 'Giant Panda Convention Centre';
                    });
                    navigateToAnimalListPage(selectedSpecies);
                  },
                  child: Text(
                    'Giant Panda Convention Centre',
                    style: TextStyle(
                      fontFamily: 'PlayFair Display',
                      fontSize: 20,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.teal.shade700,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedSpecies = 'Savannah Walk';
                    });
                    navigateToAnimalListPage(selectedSpecies);
                  },
                  child: Text(
                    'Savannah Walk',
                    style: TextStyle(
                      fontFamily: 'PlayFair Display',
                      fontSize: 20,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.teal.shade700,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedSpecies = 'Children World';
                    });
                    navigateToAnimalListPage(selectedSpecies);
                  },
                  child: Text(
                    'Children World',
                    style: TextStyle(
                      fontFamily: 'PlayFair Display',
                      fontSize: 20,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.teal.shade700,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedSpecies = 'Malaysian Elephants';
                    });
                    navigateToAnimalListPage(selectedSpecies);
                  },
                  child: Text(
                    'Malaysian Elephants',
                    style: TextStyle(
                      fontFamily: 'PlayFair Display',
                      fontSize: 20,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.teal.shade700,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedSpecies = 'Bird Aviary';
                    });
                    navigateToAnimalListPage(selectedSpecies);
                  },
                  child: Text(
                    'Bird Aviary',
                    style: TextStyle(
                      fontFamily: 'PlayFair Display',
                      fontSize: 20,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.teal.shade700,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedSpecies = 'Mammal Kingdom';
                    });
                    navigateToAnimalListPage(selectedSpecies);
                  },
                  child: Text(
                    'Mammal Kingdom',
                    style: TextStyle(
                      fontFamily: 'PlayFair Display',
                      fontSize: 20,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.teal.shade700,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedSpecies = 'Cat Walk';
                    });
                    navigateToAnimalListPage(selectedSpecies);
                  },
                  child: Text(
                    'Cat Walk',
                    style: TextStyle(
                      fontFamily: 'PlayFair Display',
                      fontSize: 20,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.teal.shade700,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedSpecies = 'Ape Centre';
                    });
                    navigateToAnimalListPage(selectedSpecies);
                  },
                  child: Text(
                    'Ape Centre',
                    style: TextStyle(
                      fontFamily: 'PlayFair Display',
                      fontSize: 20,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.teal.shade700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


void logout(BuildContext context) {
  Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage())
  );
}



class AnimalListPage extends StatelessWidget {
  final String species;
  final List<Map<String, String>> animalList;

  const AnimalListPage({
    required this.species,
    required this.animalList,
  });

  void navigateToAnimalInfoPage(BuildContext context, String animal) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AnimalInfoPage(
          species: species,
          animal: animal,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen.shade700,
        title: Text(
          species,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
          )
        ),
      child: Padding(
        padding: EdgeInsets.all(18.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: animalList.map((animal) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  navigateToAnimalInfoPage(context, animal['name']!);
                },
                child: Text(
                  animal['name']!,
                  style: TextStyle(
                    fontFamily: 'PlayFair Display',
                    fontSize: 20,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.teal.shade700,
                  ),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.all(16.0),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
      ),
    );
  }
}


class AnimalInfoPage extends StatelessWidget {
  final String species;
  final String animal;

  AnimalInfoPage({
    required this.species,
    required this.animal,
  });

  Map<String, String> animalInfo = {
    'Giant Panda': '''
    Name: Giant Panda (Ailuropoda melanoleuca)\n
    Appearance: Giant pandas have a distinctive black and white coat. They have black fur on their ears, around their eyes, shoulders, and legs, while the rest of their body is white. This coloration helps them blend with their snowy surroundings in the mountains.\n
    Nickname: Xing Xing, Liang Liang\n
    Life Span: Average life span of around 20 years\n
    Diet: Herbivorous and feed almost exclusively on bamboo.\n
    Habitat: Giant pandas are native to the mountainous regions of central China, mainly in the Sichuan, Shaanxi, and Gansu provinces. They inhabit dense bamboo forests at elevations of 5,000 to 10,000 feet (1,500 to 3,000 meters) above sea level.\n
    Size: Adult giant pandas can reach a height of 2 to 3 feet (60 to 90 centimeters) at the shoulder and have a body length of about 4 to 6 feet (1.2 to 1.8 meters). They can weigh between 200 and 300 pounds (90 to 135 kilograms).\n
    
    Fun Fact: Giant pandas possess a modified wrist bone called a "pseudo-thumb" or "false thumb," which helps them hold bamboo and feed more efficiently.\n
  ''',
    'Giraffes': '''
    Name : Giraffes (Giraffa camelopardalis)\n
    Appearance: Giraffes are the tallest land animals on Earth, easily recognizable by their long necks and legs. They have a distinct coat pattern consisting of large brown spots on a light tan or cream-colored body. Adult giraffes can reach a height of up to 18 feet (5.5 meters) and weigh around 1,800 to 2,700 pounds (800 to 1,200 kilograms).\n
    Nickname : Chombie\n
    Life Span : 20 to 25 years\n
    Diet: Herbivore,Their primary food source is the leaves and twigs of acacia trees\n
    Habitat: In the wild, giraffes inhabit savannas, grasslands, and open woodlands of Africa.\n
    Fun Facts: Giraffes have powerful kicks and can defend themselves against predators like lions with their long, heavy legs.
    
  ''',
    'Zebra': '''
    Name : Zebra (Equus quagga)\n
    Appearance: known for their distinctive black and white striped coat.Zebras have a horse-like body shape with a large head, erect mane, and a long tail. Their striking stripes vary in pattern and help to confuse predators, regulate body temperature, and provide camouflage in their natural habitat.\n
    Nickname : Luca\n
    Life Span : 20 to 30 years\n
    Diet: Herbivore-grasses, leaves, bark, and shrubs.\n
    Habitat: Inhabit a range of environments, including open plains, semi-arid grasslands, and even mountainous regions.\n
    Fun facts: Each zebra has a unique stripe pattern, similar to human fingerprints, which can be used for individual identification.
  ''',
    'White-tailed Deer': '''
    Name : White-tailed Deer (Odocoileus virginianus)\n
    Appearance: They have a reddish-brown coat in the summer and a grayish-brown coat in the winter. Their most distinctive feature is their long, fluffy white tail, which they raise and flick when alarmed,\n 
    Nickname : Leo\n
    Life Span : 6 to 14 years\n
    Diet: Herbivore - consists of leaves, twigs, grass, nuts, fruits, and agricultural crops.\n
    Habitat: inhabit a variety of environments, including forests, woodlands, swamps, and grasslands.\n
    Fun facts: White-tailed Deer are excellent jumpers and swimmers.They also have a keen sense of hearing and can rotate their large ears to locate potential predators.\n
  ''',
    'Rabbit': '''
    Name : Rabbit (Oryctolagus cuniculus)\n
    Appearance: They are known for their soft fur, long ears, and short fluffy tails. Rabbits come in various colors and sizes, with the most common being the European rabbit, or Oryctolagus cuniculus, which is widely domesticated.\n
    Nickname : Pooh\n
    Life Span : 8 to 12 years,\n
    Diet: Herbivore- consists mainly of grass, leaves, twigs, and bark\n
    Habitat: variety of habitats including meadows, forests, grasslands, and deserts.\n
    Fun facts: Rabbits have an excellent sense of hearing and can rotate their ears up to 270 degrees to detect sounds from different directions.
  ''',
    'Malaysian Elephant': '''
    Name : Malaysian Elephant (Elephas maximus)\n
    Appearance: They have a stocky body, grayish-brown to dark gray skin, and a distinctive dome-shaped head. Both males and females possess long, curved tusks.\n
    Nickname : Siti, Sibol, and Teriang\n
    Life Span : 60-70 years\n
    Diet: Herbivore - includes grasses, leaves, bark, shoots, fruits\n
    Habitat: inhabit both lowland and montane forests, as well as swampy areas and river valleys.\n
    Fun facts: Malaysian Elephants are excellent swimmers and are known to cross rivers and swim between islands. Their trunks act as natural snorkels, allowing them to breathe while swimming.
  ''',
    'Asian Openbill Stork': '''
    Name : Asian Openbill Stork (Anastomus oscitans)\n
    Appearance: It is characterized by its distinctive beak, which has a gap between the upper and lower mandibles, giving it a unique appearance. The bird's plumage is mostly white with black flight feathers and tail. It has long legs, a long neck, and a wingspan of approximately 1.4 to 1.5 meters (4.6 to 4.9 feet).\n
    Nickname : -\n
    Life Span : 20 to 30 years\n
    Diet: Carnivore - consume other small aquatic invertebrates, frogs, and occasionally small fish.\n
    Habitat: They inhabit wetlands, marshes, flooded fields, and shallow lakes, preferring areas with abundant aquatic vegetation and a rich supply of their preferred food.\n
    Fun facts: The name "Openbill" comes from the distinctive gap between the stork's beak, which resembles a bill that has been partially opened.
    
  ''',
    'Asian Swans': '''
    Name : Asian Swans (Cygnus olor)\n
    Appearance: They are known for their striking appearance, with black feathers and a bright red beak. Their bodies are graceful and elongated, and they possess long necks that they often elegantly curve in a graceful S-shape.\n
    Nickname : -\n
    Life Span : 10 to 20 years\n
    Diet: Herbivore - aquatic vegetation such as water lilies, pondweeds, and algae\n
    Habitat:  inhabit lakes, rivers, and wetlands\n
    Fun facts: Asian Swans engage in elaborate courtship displays, including head bobbing, wing displays, and vocalizations, to attract mates.
  ''',
    'Leopard Cat': '''
    Name : Leopard Cat (Prionailurus bengalensis)\n
    Appearance: They have a small head, short legs, and a long, thick tail. Their fur is covered in distinctive rosette-shaped markings, similar to those of a leopard, hence their name. The fur coloration can vary between individuals, ranging from yellowish-brown to grayish-brown.\n
    Nickname : Roy\n
    Life Span : Approximately 10-15 years in the wild\n
    Diet: Carnivore - small mammals like rodents, hares, and birds.\n
    Habitat: tropical rainforests, deciduous forests, grasslands, and even mangrove swamps.\n
    Fun facts: The Leopard Cat is considered an ancestor of the Bengal cat, a popular domestic breed known for its striking coat patterns reminiscent of the Leopard Cat.
  ''',
    'Puma': '''
    Name : Puma (Puma concolor)\n
    Appearance: Pumas have a tan or light brown coat, which helps them blend into their surroundings. Their fur is short and coarse, providing excellent insulation in colder climates. Pumas have a long tail, measuring about one-third of their body length, which aids in balance and stability while climbing or running.\n
    Nickname : Panther\n
    Life Span : 8 and 13 years\n
    Diet: Carnivore - large mammals like deer, elk, and wild sheep.\n
    Habitat: forests, grasslands, mountains, and deserts.\n
    Fun facts: Pumas hold the Guinness World Record for the animal with the greatest number of common names, with over 40 different names used across their range, including cougar, mountain lion, catamount, and panther.
  ''',
    'African Lion': '''
    Name : African Lion (Panthera leo)\n
    Appearance: their impressive manes, which vary in color from blonde to black. The manes help protect their necks during territorial fights and also play a role in attracting females. Female lions lack manes and have a more streamlined appearance.\n
    Nickname : King\n
    Life Span : 10 to 14 years\n
    Diet: Carnivore - large ungulates such as zebras, wildebeests, buffalo, and antelopes.\n
    Habitat: savannas, grasslands, woodlands, and semi-arid areas\n
    Fun facts: Lions are known for their loud roars, which can be heard from long distances and serve as a form of communication within the pride.
  ''',
    'Malayan Tiger': '''
    Name : Malayan Tiger (Panthera tigris jacksoni)\n
    Appearance: They have a short, dense orange to reddish-brown coat marked with black stripes, which help them blend into their forest habitats.\n
    Nickname : Boss\n
    Life Span : 15-20 years\n
    Diet: Carnivore - large ungulates such as deer, wild boar, and tapirs.\n
    Habitat: tropical rainforests, deciduous forests, and mangrove swamps of Peninsular Malaysia.\n
    Fun facts: Their roar serves as a means of communication and a way to establish territory. A tiger's roar can reach up to 114 decibels, which is as loud as a rock concert!
  ''',
    'Bornean Orangutan': '''
    Name : Bornean Orangutan (Pongo pygmaeus)\n
    Appearance: They are known for their distinctive reddish-brown fur and long, powerful arms that are longer than their legs. Adult males develop large cheek pads called flanges, which are used for vocalizations and displays during mating season.\n
    Nickname : Tsunami \n
    Life Span : 40 to 50 years in the wild\n
    Diet : consists mostly of fruits, leaves, bark, flowers, and occasionally insects\n
    Habitat: lowland and hill rainforests, as well as swamp forests, in Borneo\n
    Fun facts: Their long arms and strong grip allow them to move effortlessly through the forest canopy, swinging from branch to branch\n
  
  ''',
    'Sumatran Orangutan': '''
    Name : Sumatran Orangutan (Pong babelify)\n
    Appearance: 
    Nickname : Rokiah \n
    Life Span : 40 to 50 years in the wild\n
    Diet : consists mostly of fruits, leaves, bark, flowers, and occasionally insects\n
    Habitat: lowland and hill rainforests, as well as swamp forests, in Borneo\n
    Fun facts: Their long arms and strong grip allow them to move effortlessly through the forest canopy, swinging from branch to branch\n
  ''',
    'Tapanuli Orangutan': '''
    Name : Bornean Orangutan (Pong polygamous)\n
    Appearance: 
    Nickname : Jamal\n
    Life Span : 40 to 50 years in the wild\n
    Diet : consists mostly of fruits, leaves, bark, flowers, and occasionally insects
    Habitat: lowland and hill rainforests, as well as swamp forests, in Borneo\n
    Fun facts: Their long arms and strong grip allow them to move effortlessly through the forest canopy, swinging from branch to branch\n
  ''',

  };


  @override
  Widget build(BuildContext context) {
    String info = animalInfo[animal] ?? '';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen.shade700,
        title: Text(
          animal,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/tree.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Text(
                    info,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Image.asset(
                  animal == 'Giant Panda'
                      ? 'assets/giant_panda.png'
                      : animal == 'Giraffes'
                      ? 'assets/giraffe.png'
                      : animal == 'Zebra'
                      ? 'assets/zebra.png'
                      : animal == 'White-tailed Deer'
                      ? 'assets/white_tailed_deer.png'
                      : animal == 'Rabbit'
                      ? 'assets/rabbit.png'
                      : animal == 'Malaysian Elephant'
                      ? 'assets/malaysian_elephant.png'
                      : animal == 'Asian Openbill Stork'
                      ? 'assets/asian_openbill_stork.png'
                      : animal == 'Asian Swans'
                      ? 'assets/asian_swans.png'
                      : animal == 'Leopard Cat'
                      ? 'assets/leopard_cat.png'
                      : animal == 'Puma'
                      ? 'assets/puma.png'
                      : animal == 'African Lion'
                      ? 'assets/african_lion.png'
                      : animal == 'Malayan Tiger'
                      ? 'assets/malayan_tiger.png'
                      : animal == 'Bornean Orangutan'
                      ? 'assets/bornean_orangutan.png'
                      : animal == 'Sumatran Orangutan'
                      ? 'assets/sumatran_orangutan.png'
                      : animal == 'Tapanuli Orangutan'
                      ? 'assets/tapanuli_orangutan.png'
                      : 'assets/default.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


void main() {
  runApp(MaterialApp(
    home: AnimalSpeciesSelection(),
  ));
}

