import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                ContactListView()
            }
            .tabItem {
                Image(systemName: "person.3.fill")
                Text("Contacts")
            }

            NavigationView {
                AddContactView()
            }
            .tabItem {
                Image(systemName: "person.badge.plus.fill")
                Text("Add Contact")
            }
        }
        .accentColor(.blue) // Set your desired accent color
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
