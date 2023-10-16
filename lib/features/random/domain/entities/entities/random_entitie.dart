import 'package:equatable/equatable.dart';

class RandomEntity extends Equatable {
  final String id;
  final String url;
  final String value;
  final String iconUrl;
  final String createdAt;
  final String updatedAt;
  final List<String> categories;

  const RandomEntity({
    required this.id,
    required this.url,
    required this.value,
    required this.iconUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.categories,
  });

  factory RandomEntity.empty() {
    return const RandomEntity(
      id: "",
      url: "",
      value: "",
      iconUrl: "",
      createdAt: "",
      updatedAt: "",
      categories: [],
    );
  }

  @override
  List<Object?> get props => [
        id,
        url,
        value,
        iconUrl,
        createdAt,
        updatedAt,
        categories,
      ];

  @override
  String toString() {
    return ''' 
   ----- ----- ----- ----- ----- ----- ----- ----- -----
   Random Object
   ----- ----- ----- ----- ----- ----- ----- ----- -----
      Id: $id
      URL: $url
      Value: $value
      Icon URL: $iconUrl
      Created At: $createdAt
      Updated At: $updatedAt
      Categories: ${categories.map((e) => e.toString())}
   ''';
  }
}
