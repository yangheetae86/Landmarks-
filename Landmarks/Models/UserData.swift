import SwiftUI
import Combine

final class UserData: ObservableObject { //Protocol
    @Published var showFavoritesOnly: Bool = false //Generic Structure
    @Published var landmarks = landmarkData //Generic Structure
}
