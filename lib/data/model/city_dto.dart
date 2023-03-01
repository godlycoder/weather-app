import 'coord_dto.dart';

class CityDTO {
  CityDTO(
      this.id, 
      this.name, 
      this.coord, 
      this.country, 
      this.population, 
      this.timezone, 
      this.sunrise, 
      this.sunset,
      );

  factory CityDTO.fromJson(dynamic json) {
    return CityDTO(
      json['id'],
      json['name'],
      json['coord'] != null ? CoordDTO.fromJson(json['coord']) : null,
      json['country'],
      json['population'],
      json['timezone'],
      json['sunrise'],
      json['sunset'],
    );
  }

  int id;
  String name;
  CoordDTO? coord;
  String country;
  int population;
  int timezone;
  int sunrise;
  int sunset;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['coord'] = coord?.toJson();
    map['country'] = country;
    map['population'] = population;
    map['timezone'] = timezone;
    map['sunrise'] = sunrise;
    map['sunset'] = sunset;
    return map;
  }

}