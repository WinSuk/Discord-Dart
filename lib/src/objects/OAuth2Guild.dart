part of discord;

/// A mini guild object with permissions for [OAuth2Info].
class OAuth2Guild extends _BaseObj {
  /// The permissions you have on that guild.
  int permissions;

  /// The guild's icon hash.
  String icon;

  /// The guild's ID.
  String id;

  /// The guild's name
  String name;

  /// A timestamp for when the guild was created.
  DateTime createdAt;

  OAuth2Guild._new(Client client, Map<String, dynamic> data) : super(client) {
    this.permissions = data['permissions'];
    this.icon = data['icon'];
    this.id = data['id'];
    this.name = data['name'];
    this.createdAt = _Util.getDate(this.id);
  }

  /// Returns a string representation of this object.
  @override
  String toString() {
    return this.name;
  }
}
