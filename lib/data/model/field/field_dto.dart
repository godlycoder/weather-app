class FieldDTO {
  FieldDTO(
      this.id, 
      this.name,
  );

  factory FieldDTO.fromJson(dynamic json) {
    return FieldDTO(
      json['id'],
      json['nama'],
    );
  }
  String id;
  String name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['nama'] = name;
    return map;
  }

}