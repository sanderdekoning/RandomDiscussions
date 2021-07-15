import Foundation

class LazySequence {
  static let shared = try! LazySequence()
  let models = API.shared.models()
  
  init() throws {
    print("""
    Lazy operations on `map` and `filter` can be particularly useful when working with larger datasets that can cause
    memory and/or computing constraints.

    By referencing Swift's header source code:
    `@inlinable public func map<U>(_ transform: @escaping (Base.Element) -> U) -> LazyMapSequence<LazyFilterSequence<Base>, U`
    it shows that the laziness comes from it returning a new type; they are nothing more than regular Sequences that
    store an operation and apply the closure only when iterated.

    Consider a large API response of many objects, for example location placemarks that can be anywhere on earth.
    The user of the app can pan a map view, and pins will appear when a placemark is found within his screen boundaries.
    For hypothetical reason X (such as immediate availability) this dataset should be available locally in its entirety.

    However before all information of the pin can be displayed, for reason Y the pin data needs final local processing.
    Consider this to be `expensive computational processing`.

    By performing the `expensive computational processing` lazily only when a pin is accessed, a lot of processing power
    can be prevented for pins that do not need to be displayed at this moment.

    Run the tests below to see the impact it makes on execution time. As is also proven in the test
    `demoLazilyMultipleReads` and `demoNonLazilyMultipleReads`, it needs to be remembered that lazily mapping means that
    every time object Z is read the map closure will execute. When mapping non-lazily the result is available in cache.
    When an object needs to be accessed many times, there is a significant performance hit each time when the lazy
    mapping closure executes.
    """)
  }
}
