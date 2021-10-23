@testable import Details
import XCTest

final class DetailsViewModelTests: XCTestCase {

  func test_create_view_model_based_on_input() {
    let input = DetailsInput(title: "hello world")

    let sut = DetailsViewModel(input)

    XCTAssertEqual(sut.title, "hello world")
  }

}
