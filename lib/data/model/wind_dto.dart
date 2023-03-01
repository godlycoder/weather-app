class WindDTO {
  WindDTO(
      this.speed, 
      this.deg, 
      this.gust
  );

  factory WindDTO.fromJson(dynamic json) {
    return WindDTO(
      json['speed'],
      json['deg'],
      json['gust'],
    );
  }
  double speed;
  int deg;
  double gust;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['speed'] = speed;
    map['deg'] = deg;
    map['gust'] = gust;
    return map;
  }

}