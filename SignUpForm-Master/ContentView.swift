//
//  ContentView.swift
//  SignUpForm-Master
//
//  Created by Esben Viskum on 31/05/2021.
//

import SwiftUI
import SignUpForm

func checkUsername(username: String) -> Bool {
    if username == "esben@viskum.dk" { return true }
    return false
}


struct ContentView: View {
//    @StateObject private var signUpViewModel = SignUpViewModel(
//        completion: { username, password in
//        print("Username: \(username) Password: \(password)")
//    }, usernameValidationType: .email(checkUsername))

    var body: some View {
        NavigationView {
            SignUpView(completion: { username, password in
                        print("Username: \(username) Password: \(password)")
                    }, usernameValidationType: .email(checkUsername))
                .navigationTitle("Sign Up")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

