


class Members {
  String? previous;
  String? next;
  List<Results>? results;

  Members.fromJson(Map<String, dynamic> json) {
    previous = json['previous'];
    next = json['next'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(new Results.fromJson(v));
      });
    }
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['previous'] = this.previous;
  //   data['next'] = this.next;
  //   if (this.results != null) {
  //     data['results'] = this.results!.map((v) => v.toJson()).toList();
  //   }
  //   return data;
  // }
}

class Results {
  String? firstName;
  String? lastName;
  String? email;
  String? phone;
  bool? verified;

  Results.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    phone = json['phone'];
    verified = json['verified'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['verified'] = this.verified;
    return data;
  }
}