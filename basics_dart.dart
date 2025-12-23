import 'modules/class_basic.dart';
import 'modules/async_dart.dart';

Object printElement(dynamic element) {
  // Using dynamic to accept any data type
  return {
    "name": element["name"]?.toString().toUpperCase(),
  };
}
void main() {
  var name = 'Voyager I';
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune', 2.3, 50];
  var dictionary = [
    {
      "name": "Voyager I",
      "year": 1977,
      "antennaDiameter": 3.7,
      "flybyObjects": flybyObjects,
    },
    {
      "name": "Voyager I",
      "year": 1977,
      "antennaDiameter": 3.7,
      "flybyObjects": flybyObjects,
    },
    {
      "name": "Voyager I",
      "year": 1977,
      "antennaDiameter": 3.7,
      "flybyObjects": flybyObjects,
    },
    {
      "name": "Voyager I",
      "year": 1977,
      "antennaDiameter": 3.7,
      "flybyObjects": flybyObjects,
    },
  ];
  var basicfile = 'Using from basics_dart.dart file';
  var instance = Testing(name, basicfile);
  Jobs.getJobs();
  instance.display(parameter: "From basics_dart.dart");
  //print(dictionary["name"]);

  var upperCaseFlybyObjects = dictionary.map(printElement);
  print(upperCaseFlybyObjects);
}
