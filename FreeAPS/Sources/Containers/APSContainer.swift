import Foundation
import Swinject

private let resolver = FreeAPSApp.resolver

enum APSContainer: DependeciesContainer {
    static func register(container: Container) {
        container.register(APSManager.self) { _ in BaseAPSManager(resolver: resolver) }
    }
}
