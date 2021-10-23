struct ListViewModel {
  struct Item {
    let title: String
  }

  let items: [Item]
}

extension ListViewModel {
  static var animals: Self = .init(items: [
    .init(title: "Cat"),
    .init(title: "Dog"),
    .init(title: "Lizard"),
    .init(title: "Spider"),
    .init(title: "Superworm")
  ])
}
