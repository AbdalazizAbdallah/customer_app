class DataModel {
  late int id;
  late String name;
  late dynamic username;
  late String email;
  late dynamic emailVerifiedAt;
  late String mobile;
  late String createdAt;
  late String updatedAt;
  late dynamic deletedAt;
  late dynamic address;
  late dynamic longitude;
  late dynamic latitude;
  late dynamic stripeCustomerId;
  late String avatar;
  late String onesignalplayerid;
  late String apiToken;
  late dynamic customerApi;
  late String viewed;
  late dynamic social;
  late dynamic socialId;
  late List<dynamic> locations;

  DataModel({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.emailVerifiedAt,
    required this.mobile,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.address,
    required this.longitude,
    required this.latitude,
    required this.stripeCustomerId,
    required this.avatar,
    required this.onesignalplayerid,
    required this.apiToken,
    required this.customerApi,
    required this.viewed,
    required this.social,
    required this.socialId,
    required this.locations,
  });

  DataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    mobile = json['mobile'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    address = json['address'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    stripeCustomerId = json['stripe_customer_id'];
    avatar = json['avatar'];
    onesignalplayerid = json['ONE_SIGNAL_PLAYER_ID'];
    apiToken = json['api_token'];
    customerApi = json['customer_api'];
    viewed = json['viewed'];
    social = json['social'];
    socialId = json['social_id'];
    if (json['locations'] != null) {
      locations = [];
      json['locations'].forEach((v) {
        locations.add(v);
      });
    }
  }
}
