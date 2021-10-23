@testable import Details
import XCTest

final class DetailsViewControllerTests: XCTestCase {

  func test_title_label_takes_text_from_view_model() {
    let viewModel = DetailsViewModel(title: "hello!")

    let sut = DetailsViewController()
    sut.viewModel = viewModel

    sut.loadViewIfNeeded()

    XCTAssertEqual(sut.titleLabel.text, "hello!")
  }

}
