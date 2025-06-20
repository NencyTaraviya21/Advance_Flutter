class NavigatePassDataModel{
  String? _name;
  String? get name => _name;
  set name(String ? value){
    _name = value;
  }

  String ? _enrollment;

  String ? get enrollment => _enrollment;

  set enrollment(String ? value) {
    _enrollment = value;
  }
NavigatePassDataModel({
    required name,
  required enrollment
});
}