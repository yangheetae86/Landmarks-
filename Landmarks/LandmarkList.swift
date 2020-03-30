import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var userData: UserData // Generic Structure

var body: some View {
    return NavigationView {
       List {
        Toggle(isOn: $userData.showFavoritesOnly) {
           return Text("Favorites only")
        }
       ForEach(userData.landmarks) { landmark in
            if !self.userData.showFavoritesOnly || landmark.isFavorite {
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    return LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 11"], id: \.self) { deviceName in
            LandmarkList()
            .environmentObject(UserData())
        }
    }
}
