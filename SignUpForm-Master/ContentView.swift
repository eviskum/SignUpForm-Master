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
//            SignUpFullnameView(usernameValidationType: .email(checkUsername),
//                       completion: { fullname, username, password in
//                        print("Username: \(username) Password: \(password)")
//                    })
//                .navigationTitle("Sign Up")
            SignInView(usernameValidationType: .email(checkUsername),
                       resetPwdCompletion: { username in
                        print("Reset email til: \(username)")
                        return ResetPwdStatus.success
                       },
                       signInCompletion: { username, password in
                        print("Username: \(username) Password: \(password)")
                        return SignInStatus.success
                    })
                .navigationTitle("Sign Up")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

