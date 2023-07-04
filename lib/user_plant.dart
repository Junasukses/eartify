class UserPlant {
  String name;
  String description;
  String time;
  String imageAsset;

  UserPlant({
    required this.name,
    required this.description,
    required this.time,
    required this.imageAsset,
  });
}

var userPlaceList = [
  UserPlant(
    name: 'Rizaldi',
    description: 'Planted palm tree',
    time: '5min ago',
    imageAsset: 'images/palm.jpg',
  ),
  UserPlant(
    name: 'Juna',
    description: 'Planted oak tree',
    time: '25min ago',
    imageAsset: 'images/oak.jpg',
  ),
  UserPlant(
    name: 'Diva',
    description: 'Planted bonsai tree',
    time: '2h ago',
    imageAsset: 'images/bonsai.jpg',
  ),
  UserPlant(
    name: 'Okta',
    description: 'Planted citrus tree',
    time: '3h ago',
    imageAsset: 'images/citrus.jpg',
  ),
  UserPlant(
    name: 'Vicky',
    description: 'Planted peach tree',
    time: '8h ago',
    imageAsset: 'images/peach.jpg',
  ),
  UserPlant(
    name: 'Aldo',
    description: 'Planted redwood tree',
    time: '12h ago',
    imageAsset: 'images/redwood.jpg',
  ),
  UserPlant(
    name: 'Susan',
    description: 'Planted bamboo tree',
    time: '20h ago',
    imageAsset: 'images/bamboo.jpg',
  ),
  UserPlant(
    name: 'Firman',
    description: 'Planted pineapple tree',
    time: 'Yesterday',
    imageAsset: 'images/pineapple.jpg',
  ),
  UserPlant(
    name: 'Teguh',
    description: 'Planted guava tree',
    time: 'Yesterday',
    imageAsset: 'images/guava.jpg',
  ),
];
