class Testing {
  String name;
  String basicFile;

  Testing(this.name, this.basicFile); // For using constructor is the same name as the class

  void display({String? parameter }) {
    print('Name: $name');
    print("parameter value: $parameter");
    print('Basic File Content: $basicFile');
  }
}