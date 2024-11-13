class RegistrationModel
{
  bool status;

  RegistrationModel({ required this.status});

  factory RegistrationModel.fromjson(Map<String,dynamic>json)
  {
    return RegistrationModel(status: json['status']);
  }
}
