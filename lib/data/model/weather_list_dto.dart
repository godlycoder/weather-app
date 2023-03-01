import 'package:weather_app/data/model/item_dto.dart';

import 'city_dto.dart';

class WeatherListDto {
  WeatherListDto(
      this.cod, 
      this.message, 
      this.cnt, 
      this.list, 
      this.city,
  );

  factory WeatherListDto.fromJson(dynamic json) {
    final list = <ItemDTO>[];

    return WeatherListDto(
        json['cod'],
        json['message'],
        json['cnt'],
        json['list'].forEach((v) {
          list.add(ItemDTO.fromJson(v));
        }),
        CityDTO.fromJson(json['city']),
    );
  }
  String cod;
  int message;
  int cnt;
  List<ItemDTO> list;
  CityDTO city;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cod'] = cod;
    map['message'] = message;
    map['cnt'] = cnt;
    map['list'] = list.map((v) => v.toJson()).toList();
    map['city'] = city.toJson();
    return map;
  }

}