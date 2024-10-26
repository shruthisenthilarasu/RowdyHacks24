import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var showingAlert = false

    var body: some View {
        NavigationView {
            VStack {
                Text("Login")
                    .font(.largeTitle)
                    .padding(.bottom, 40)
                
                TextField("Username", text: $username)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                
                Button(action: {
                    // Authentication logic goes here
                    if username == "yourUsername" && password == "yourPassword" {
                        print("Login successful")
                    } else {
                        showingAlert = true
                    }
                }) {
                    Text("Log In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(Color.blue)
                        .cornerRadius(10.0)
                }
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("Error"), message: Text("Incorrect username or password"), dismissButton: .default(Text("OK")))
                }
                
                NavigationLink(destination: SignUpView()) {
                    Text("Or create an account here!")
                        .font(.subheadline)
                        .foregroundColor(.blue)
                }
                .padding(.top, 20)
            }
            .padding()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

