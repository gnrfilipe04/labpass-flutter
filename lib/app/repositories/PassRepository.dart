class Pass {
  String id;
  String title;
  String password;
  String icon;

  Pass({
    required this.id,
    required this.title,
    required this.password,
    required this.icon,
  });
}

class PassRepository {
  List<Pass> passwords = [];

  initializePassList({required List<Pass> initPasswordsList}) {
    this.passwords = initPasswordsList;
  }

  addPassword({required Pass pass}) {
    passwords.add(pass);
  }

  removePassword({required Pass pass}) {
    passwords.add(pass);
  }

  findPassword({required String id}) {
    var passFiltered =
        this.passwords.where((element) => element.id == id).toList();

    return passFiltered;
  }
}
