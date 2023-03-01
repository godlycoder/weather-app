class SysDTO {
  SysDTO(
      this.pod
  );

  factory SysDTO.fromJson(dynamic json) {
    return SysDTO(
        json['pod']
    );
  }
  String pod;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pod'] = pod;
    return map;
  }

}