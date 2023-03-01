class CloudsDTO {
  CloudsDTO(this.all);

  factory CloudsDTO.fromJson(dynamic json) {
    return CloudsDTO(json['all']);
  }

  int all;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['all'] = all;
    return map;
  }

}