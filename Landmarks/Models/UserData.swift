import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly: Bool = false
    @Published var landmarks = landmarkData
}
