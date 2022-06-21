class characterDataModel {
  String? name;
  String? species;
  String? gender;
  String? house;
  String? dateOfBirth;
  int? yearOfBirth;
  String? ancestry;
  String? description;
  String? eyeColour;
  String? hairColour;
  // Wand? wand;
  String? patronus;
  bool? hogwartsStudent;
  bool? hogwartsStaff;
  String? actor;
  bool? alive;
  String? image;

  characterDataModel(
      {
         this.name,
      this.species,
      this.gender,
      this.house,
      this.dateOfBirth,
      this.yearOfBirth,
      this.ancestry,
      this.description,
      this.eyeColour,
      this.hairColour,
      // this.wand,
      this.patronus,
      this.hogwartsStudent,
      this.hogwartsStaff,
      this.actor,
      this.alive,
      this.image});

  characterDataModel.fromJson(Map<String, dynamic> json) {
    
    name = json['name'];
    species = json['species'];
    gender = json['gender'];
    house = json['house'];
    dateOfBirth = json['dateOfBirth'];
    yearOfBirth = json['yearOfBirth']==""?1950:json['yearOfBirth'];
    ancestry = json['ancestry'];
    description = json['description'];
    eyeColour = json['eyeColour'];
    hairColour = json['hairColour'];
    // wand = json['wand'] != null ? new Wand.fromJson(json['wand']) : null;
    patronus = json['patronus'];
    hogwartsStudent = json['hogwartsStudent'];
    hogwartsStaff = json['hogwartsStaff'];
    actor = json['actor'];
    alive = json['alive'];
    image = json['image'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['name'] = this.name;
  //   data['species'] = this.species;
  //   data['gender'] = this.gender;
  //   data['house'] = this.house;
  //   data['dateOfBirth'] = this.dateOfBirth;
  //   data['yearOfBirth'] = this.yearOfBirth;
  //   data['ancestry'] = this.ancestry;
  //   data['description'] = this.description;
  //   data['eyeColour'] = this.eyeColour;
  //   data['hairColour'] = this.hairColour;
  //   // if (this.wand != null) {
  //   //   data['wand'] = this.wand!.toJson();
  //   // }
  //   data['patronus'] = this.patronus;
  //   data['hogwartsStudent'] = this.hogwartsStudent;
  //   data['hogwartsStaff'] = this.hogwartsStaff;
  //   data['actor'] = this.actor;
  //   data['alive'] = this.alive;
  //   data['image'] = this.image;
  //   return data;
  // }
}