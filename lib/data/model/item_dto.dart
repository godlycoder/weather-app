import 'main_dto.dart';
import 'weather_dto.dart';
import 'clouds_dto.dart';
import 'wind_dto.dart';
import 'rain_dto.dart';
import 'sys_dto.dart';

class ItemDTO {
  ItemDTO(
      this.dt, 
      this.main, 
      this.weather, 
      this.clouds, 
      this.wind, 
      this.visibility, 
      this.pop, 
      this.rain, 
      this.sys, 
      this.dtTxt
  );

  factory ItemDTO.fromJson(dynamic json) {
    return ItemDTO(
      json['dt'],
      json['main'] != null ? MainDTO.fromJson(json['main']) : null,
      json['weather'] != null ? WeatherDTO.fromJson(json['weather']) : null,
      json['clouds'] != null ? CloudsDTO.fromJson(json['clouds']) : null,
      json['wind'] != null ? WindDTO.fromJson(json['wind']) : null,
      json['visibility'],
      json['pop'],
      json['rain'] != null ? RainDTO.fromJson(json['rain']) : null,
      json['sys'] != null ? SysDTO.fromJson(json['sys']) : null,
      json['dt_txt'],
    );
  }

  int dt;
  MainDTO? main;
  WeatherDTO? weather;
  CloudsDTO? clouds;
  WindDTO? wind;
  int visibility;
  double pop;
  RainDTO? rain;
  SysDTO? sys;
  String dtTxt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['dt'] = dt;
    map['main'] = main?.toJson();
    map['weather'] = weather?.toJson();
    map['clouds'] = clouds?.toJson();
    map['wind'] = wind?.toJson();
    map['visibility'] = visibility;
    map['pop'] = pop;
    map['rain'] = rain?.toJson();
    map['sys'] = sys?.toJson();
    map['dt_txt'] = dtTxt;

    return map;
  }

}