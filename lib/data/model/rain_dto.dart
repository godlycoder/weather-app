class RainDTO {
  RainDTO(
      this.h
  );

  factory RainDTO.fromJson(dynamic json) {
    return RainDTO(
        json['3h']
    );
  }
  double h;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['3h'] = h;
    return map;
  }

}