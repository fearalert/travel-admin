class AdminModel {
  String? id;
  String? email;
  String? name;
  String? phoneNo;

  AdminModel({
    this.id,
    this.email,
    this.name,
    this.phoneNo,
  });

// data from server
  factory AdminModel.fromMap(map) {
    return AdminModel(
      id: map['id'],
      email: map['email'],
      name: map['name'],
      phoneNo: map['phoneNo'],
    );
  }

// sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'phoneNo': phoneNo,
    };
  }
}
