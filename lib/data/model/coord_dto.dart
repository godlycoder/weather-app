class CoordDTO {

  CoordDTO(
      this.lat,
      this.lon
      );

  factory CoordDTO.fromJson(dynamic json) {
    return CoordDTO(
      json['lat'],
      json['lon'],
    );
  }
  double lat;
  double lon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lat'] = lat;
    map['lon'] = lon;
    return map;
  }

}