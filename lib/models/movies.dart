import 'dart:convert';

Movies moviesFromJson(String str) => Movies.fromJson(json.decode(str));

String moviesToJson(Movies data) => json.encode(data.toJson());

class Movies {
  Movies({
    required this.d,
    required this.q,
    required this.v,
  });

  final List<D> d;
  final String q;
  final int v;

  factory Movies.fromJson(Map<String, dynamic> json) => Movies(
    d: List<D>.from(json["d"].map((x) => D.fromJson(x))),
    q: json["q"],
    v: json["v"],
  );

  Map<String, dynamic> toJson() => {
    "d": List<dynamic>.from(d.map((x) => x.toJson())),
    "q": q,
    "v": v,
  };
}

class D {
  D({
    this.i,
    required this.id,
    required this.l,
    required this.s,
    this.q,
    this.qid,
    this.rank,
    this.y,
    this.yr,
  });

  final I? i;
  final String id;
  final String l;
  final String s;
  final String? q;
  final String? qid;
  final int? rank;
  final int? y;
  final String? yr;

  factory D.fromJson(Map<String, dynamic> json) => D(
    i: json["i"] == null ? null : I.fromJson(json["i"]),
    id: json["id"],
    l: json["l"],
    s: json["s"],
    q: json["q"],
    qid: json["qid"],
    rank: json["rank"],
    y: json["y"],
    yr: json["yr"],
  );

  Map<String, dynamic> toJson() => {
    "i": i?.toJson(),
    "id": id,
    "l": l,
    "s": s,
    "q": q,
    "qid": qid,
    "rank": rank,
    "y": y,
    "yr": yr,
  };
}

class I {
  I({
    required this.height,
    required this.imageUrl,
    required this.width,
  });

  final int height;
  final String imageUrl;
  final int width;

  factory I.fromJson(Map<String, dynamic> json) => I(
    height: json["height"],
    imageUrl: json["imageUrl"],
    width: json["width"],
  );

  Map<String, dynamic> toJson() => {
    "height": height,
    "imageUrl": imageUrl,
    "width": width,
  };
}
