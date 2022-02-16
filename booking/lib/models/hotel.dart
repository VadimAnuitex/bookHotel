class Hotel {
  final String name;

  Hotel({this.name});

  Hotel copyWith({
    String name,
  }) =>
      Hotel(
        name: name ?? this.name,
      );
}
