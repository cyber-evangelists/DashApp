// AppUser Class
// This class is used to define a user object that can be used
// in database models and other applications.
class AppUser {
  final String uid; // Unique Identifier for the user
  final String name; // Name of the user
  final String email; // Email address of the user
  final String photoUrl; // Profile image URL of the user

  // Constructor used to create  AppUser Objects
  AppUser(
      {required this.uid,
      required this.name,
      required this.email,
      required this.photoUrl});

  // Method used to convert an AppUser instance into a Map instance
  Map<String, dynamic> toJson() => {
        'uid': uid,
        'name': name,
        'email': email,
        'photoUrl': photoUrl,
      };

  // Method used to construct an AppUser from a Map
  AppUser fromJson(Map json) => AppUser(
      uid: json['uid'],
      name: json['name'],
      email: json['email'],
      photoUrl: json['photoUrl']);
}
