class MainDTO {
  MainDTO(
      this.temp, 
      this.feelsLike, 
      this.tempMin, 
      this.tempMax, 
      this.pressure, 
      this.seaLevel, 
      this.grndLevel, 
      this.humidity, 
      this.tempKf,
  );

  factory MainDTO.fromJson(dynamic json) {
    return MainDTO(
      json['temp'],
      json['feels_like'],
      json['temp_min'],
      json['temp_max'],
      json['pressure'],
      json['sea_level'],
      json['grnd_level'],
      json['humidity'],
      json['temp_kf'],
    );
  }
  double temp;
  double feelsLike;
  double tempMin;
  double tempMax;
  int pressure;
  int seaLevel;
  int grndLevel;
  int humidity;
  int tempKf;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['temp'] = temp;
    map['feels_like'] = feelsLike;
    map['temp_min'] = tempMin;
    map['temp_max'] = tempMax;
    map['pressure'] = pressure;
    map['sea_level'] = seaLevel;
    map['grnd_level'] = grndLevel;
    map['humidity'] = humidity;
    map['temp_kf'] = tempKf;
    return map;
  }

}