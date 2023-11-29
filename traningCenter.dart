class TraningCenterModel {
  String? sId;
  String? url;
  String? name;

  TraningCenterModel({this.sId,this.url, this.name});

  TraningCenterModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    url = json['url'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
   if(sId!=null) data['_id'] = sId;
    data['url'] = url;
    data['name'] = name;

    return data;
  }
}
