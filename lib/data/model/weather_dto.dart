class WeatherDTO {
  WeatherDTO(
      this.id, 
      this.main, 
      this.description, 
      this.icon
  );

  factory WeatherDTO.fromJson(dynamic json) {
    return WeatherDTO(
      json['id'],
      json['main'],
      json['description'],
      json['icon'],
    );
  }

  int id;
  String main;
  String description;
  String icon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['main'] = main;
    map['description'] = description;
    map['icon'] = icon;
    return map;
  }

}