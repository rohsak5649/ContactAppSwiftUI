import SwiftUI
import CoreData

struct ContactListView: View {
    @FetchRequest(
        entity: Contact.entity(),
        sortDescriptors: [
            NSSortDescriptor(keyPath: \Contact.name, ascending: true)
        ]
    ) var contacts: FetchedResults<Contact>

    var body: some View {
        List {
            ForEach(contacts, id: \.self) { contact in
                NavigationLink(destination: Text(contact.name ?? "Unknown")) {
                    Text(contact.name ?? "Unknown")
                }
            }
        }
        .navigationBarTitle("Contacts")
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView()
    }
}
