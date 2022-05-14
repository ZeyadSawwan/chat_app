class User {
  bool isPinned;
  int id;
  String name;
  int badge;
  String msg;
  User(this.id, this.badge, this.msg, this.name, {this.isPinned = false});
}
