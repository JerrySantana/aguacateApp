//
//  FormView.swift
//  Agua_cate
//
//  Created by Gerardo Santana.
//
import SwiftUI

struct FormView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var number = ""
    var body: some View {
        VStack(alignment: .center) {
            Form{
                Section {
                    TextField("Nombre(s)", text: $firstName)
                    TextField("Apellido(s)", text: $lastName)
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    TextField("Numero de contacto", text: $number)
                        .keyboardType(.numberPad)
                }
            }
            .scrollContentBackground(.hidden)
            Button(
                "Enviar información.",
                action: {
                    saveData(firstName, lastName, email, number)
                    firstName = ""
                    lastName = ""
                    email = ""
                    number = ""
            })
        }
    }
    private func saveData(_ firstName: String?,_ lastName: String?,_ email: String?,_ number: String){
        let user = Users(
            firstName: firstName ?? "Jane",
            lastName: lastName ?? "Doe",
            email: email ?? "jane.doe@email.com",
            number: Int(number) ?? 0000000000)
        saveUsersData(user)
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}

