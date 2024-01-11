import SwiftUI

struct AddContactView: View {
    @State private var name = ""
    @State private var phoneNumber = ""
    @State private var email = ""

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Contact Information")) {
                    TextField("Name", text: $name)
                    TextField("Phone Number", text: $phoneNumber)
                    TextField("Email", text: $email)
                }

                Button(action: addContact) {
                    Text("Add Contact")
                }
            }
            .navigationBarTitle("Add Contact")
        }
    }

    func addContact() {
        guard !name.isEmpty else {
            // Handle empty name case
            return
        }

        let newContact = Contact(context: PersistenceController.shared.container.viewContext)
        newContact.name = name
        newContact.phoneNumber = phoneNumber
        newContact.email = email

        PersistenceController.shared.saveContext()

        // Reset the input fields after adding the contact
        name = ""
        phoneNumber = ""
        email = ""
    }
}

struct AddContactView_Previews: PreviewProvider {
    static var previews: some View {
        AddContactView()
    }
}
