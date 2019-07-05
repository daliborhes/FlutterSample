import './location_fact.dart';

class Location {
  final int id;
  final String name;
  final String imagePath;
  final String userItinerarySummary;
  final String tourPackageName;
  final List<LocationFact> facts;

  Location({
    this.id,
    this.name,
    this.imagePath,
    this.userItinerarySummary,
    this.tourPackageName,
    this.facts,
  });

  static List<Location> fetchAll() {
    return [
      Location(
          id: 1,
          name: 'Paris, France',
          imagePath: 'assets/images/paris_vacation.jpg',
          userItinerarySummary: 'Day 1: 4PM - 5:00PM',
          tourPackageName: 'Standard Package',
          facts: [
            LocationFact('Summary',
                'Since the 17th century, Paris has been one of Europes major centres of finance, diplomacy, commerce, fashion, science, as well as the arts'),
            LocationFact(
                'Architectural Style', 'French architecture.'),
          ]),
      Location(
          id: 2,
          name: 'New York, USA',
          imagePath: 'assets/images/newyork_vacation.jpg',
          userItinerarySummary: 'Day 1: 9AM - 1:30PM',
          tourPackageName: 'Standard Package',
          facts: [
            LocationFact('Summary',
                'Japan’s Mt. Fuji is an active volcano about 100 kilometers southwest of Tokyo. Commonly called “Fuji-san,” it’s the country’s tallest peak, at 3,776 meters. A pilgrimage site for centuries, it’s considered one of Japan’s 3 sacred mountains, and summit hikes remain a popular activity. Its iconic profile is the subject of numerous works of art, notably Edo Period prints by Hokusai and Hiroshige.'),
            LocationFact('Did You Know',
                'There are three cities that surround Mount Fuji: Gotemba, Fujiyoshida and Fujinomiya.'),
          ]),
      Location(
          id: 3,
          name: 'Tokio, Japan',
          imagePath: 'assets/images/tokio_vacation.jpg',
          userItinerarySummary: 'Day 1: 2PM - 3:30PM',
          tourPackageName: 'Standard Package',
          facts: [
            LocationFact('Summary',
                'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
            LocationFact('How to Get There',
                'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
          ]),
    ];
  }

  static Location fetchByID(int locationID) {
    // NOTE: this will replaced by a proper API call
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }
}