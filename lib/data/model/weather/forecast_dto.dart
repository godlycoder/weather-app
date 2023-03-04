
class CityDTO {
  int? id;
  String? name;
  CoordDTO? coord;
  String? country;
  int? population;
  int? timezone;
  int? sunrise;
  int? sunset;

  CityDTO({this.id, this.name, this.coord, this.country, this.population, this.timezone, this.sunrise, this.sunset});

  CityDTO.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    coord = json['coord'] != null ? CoordDTO?.fromJson(json['coord']) : null;
    country = json['country'];
    population = json['population'];
    timezone = json['timezone'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['coord'] = coord!.toJson();
    data['country'] = country;
    data['population'] = population;
    data['timezone'] = timezone;
    data['sunrise'] = sunrise;
    data['sunset'] = sunset;
    return data;
  }
}

class CloudsDTO {
  int? all;

  CloudsDTO({this.all});

  CloudsDTO.fromJson(Map<String, dynamic> json) {
    all = json['all'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['all'] = all;
    return data;
  }
}

class CoordDTO {
  double? lat;
  double? lon;

  CoordDTO({this.lat, this.lon});

  CoordDTO.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lon = json['lon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['lat'] = lat;
    data['lon'] = lon;
    return data;
  }
}

class ItemDTO {
  int? dt;
  MainDTO? main;
  List<WeatherDTO?>? weather;
  CloudsDTO? clouds;
  WindDTO? wind;
  int? visibility;
  dynamic pop;
  RainDTO? rain;
  SysDTO? sys;
  String? dttxt;

  ItemDTO({this.dt, this.main, this.weather, this.clouds, this.wind, this.visibility, this.pop, this.rain, this.sys, this.dttxt});

  ItemDTO.fromJson(Map<String, dynamic> json) {
    dt = json['dt'];
    main = json['main'] != null ? MainDTO?.fromJson(json['main']) : null;
    if (json['weather'] != null) {
      weather = <WeatherDTO>[];
      json['weather'].forEach((v) {
        weather!.add(WeatherDTO.fromJson(v));
      });
    }
    clouds = json['clouds'] != null ? CloudsDTO?.fromJson(json['clouds']) : null;
    wind = json['wind'] != null ? WindDTO?.fromJson(json['wind']) : null;
    visibility = json['visibility'];
    pop = json['pop'];
    rain = json['rain'] != null ? RainDTO?.fromJson(json['rain']) : null;
    sys = json['sys'] != null ? SysDTO?.fromJson(json['sys']) : null;
    dttxt = json['dt_txt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['dt'] = dt;
    data['main'] = main!.toJson();
    data['weather'] =weather != null ? weather!.map((v) => v?.toJson()).toList() : null;
    data['clouds'] = clouds!.toJson();
    data['wind'] = wind!.toJson();
    data['visibility'] = visibility;
    data['pop'] = pop;
    data['rain'] = rain!.toJson();
    data['sys'] = sys!.toJson();
    data['dt_txt'] = dttxt;
    return data;
  }
}

class MainDTO {
  dynamic temp;
  dynamic feelslike;
  double? tempmin;
  double? tempmax;
  int? pressure;
  int? sealevel;
  int? grndlevel;
  int? humidity;
  dynamic tempkf;

  MainDTO({this.temp, this.feelslike, this.tempmin, this.tempmax, this.pressure, this.sealevel, this.grndlevel, this.humidity, this.tempkf});

  MainDTO.fromJson(Map<String, dynamic> json) {
    temp = json['temp'];
    feelslike = json['feels_like'];
    tempmin = json['temp_min'];
    tempmax = json['temp_max'];
    pressure = json['pressure'];
    sealevel = json['sea_level'];
    grndlevel = json['grnd_level'];
    humidity = json['humidity'];
    tempkf = json['temp_kf'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['temp'] = temp;
    data['feels_like'] = feelslike;
    data['temp_min'] = tempmin;
    data['temp_max'] = tempmax;
    data['pressure'] = pressure;
    data['sea_level'] = sealevel;
    data['grnd_level'] = grndlevel;
    data['humidity'] = humidity;
    data['temp_kf'] = tempkf;
    return data;
  }
}

class RainDTO {
  double? h;

  RainDTO({this.h});

  RainDTO.fromJson(Map<String, dynamic> json) {
    h = json['3h'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['3h'] = h;
    return data;
  }
}

class RootDTO {
  String? cod;
  int? message;
  int? cnt;
  List<ItemDTO>? list;
  CityDTO? city;

  RootDTO({this.cod, this.message, this.cnt, this.list, this.city});

  RootDTO.fromJson(Map<String, dynamic> json) {
    cod = json['cod'];
    message = json['message'];
    cnt = json['cnt'];
    if (json['list'] != null) {
      list = <ItemDTO>[];
      json['list'].forEach((v) {
        list!.add(ItemDTO.fromJson(v));
      });
    }
    city = json['city'] != null ? CityDTO?.fromJson(json['city']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cod'] = cod;
    data['message'] = message;
    data['cnt'] = cnt;
    data['list'] = list != null ? list!.map((v) => v.toJson()).toList() : null;
    data['city'] = city!.toJson();
    return data;
    }
  }

class SysDTO {
  String? pod;

  SysDTO({this.pod});

  SysDTO.fromJson(Map<String, dynamic> json) {
    pod = json['pod'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pod'] = pod;
    return data;
  }
}

class WeatherDTO {
  int? id;
  String? main;
  String? description;
  String? icon;

  WeatherDTO({this.id, this.main, this.description, this.icon});

  WeatherDTO.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    main = json['main'];
    description = json['description'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['main'] = main;
    data['description'] = description;
    data['icon'] = icon;
    return data;
  }
}

class WindDTO {
  dynamic speed;
  int? deg;
  dynamic gust;

  WindDTO({this.speed, this.deg, this.gust});

  WindDTO.fromJson(Map<String, dynamic> json) {
    speed = json['speed'];
    deg = json['deg'];
    gust = json['gust'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['speed'] = speed;
    data['deg'] = deg;
    data['gust'] = gust;
    return data;
  }
}

