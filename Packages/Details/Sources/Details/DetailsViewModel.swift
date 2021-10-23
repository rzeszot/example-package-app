struct DetailsViewModel {
  let title: String
}

extension DetailsViewModel {
  init(_ input: DetailsInput) {
    title = input.title
  }
}
