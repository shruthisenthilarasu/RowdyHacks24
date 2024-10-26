//
//  SignUpView.swift
//  NutriFit
//
//  Created by Nirmal Kumar on 10/26/24.
//

import SwiftUI

struct SignUpView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var height = 0
    @State private var weight = 0
    @State private var dietaryRestrictions = "None"
    @State private var preferences = "None"
    @State private var allergies = "None"

    let heights = Array(50...96)  // Example height in inches
    let weights = Array(50...300)  // Example weight in pounds
    let dietaryOptions = ["None", "Vegan", "Vegetarian", "Paleo", "Keto"]
    let preferenceOptions = ["None", "Gluten-Free", "Dairy-Free", "Nut-Free"]
    let allergyOptions = ["None", "Peanuts", "Shellfish", "Soy", "Milk"]

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                Text("Create Account")
                    .font(.largeTitle)
                    .padding(.top)

                TextField("First Name", text: $firstName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                TextField("Last Name", text: $lastName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                SecureField("Confirm Password", text: $confirmPassword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                // Height Picker
                Text("Height (inches)")
                    .font(.headline) // Label for the height picker
                    .padding(.horizontal)
                Picker("Height (inches)", selection: $height) {
                    ForEach(heights, id: \.self) { height in
                        Text("\(height) inches").tag(height)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                .padding()

                // Weight Picker
                Text("Weight (pounds)")
                    .font(.headline) // Label for the weight picker
                    .padding(.horizontal)
                Picker("Weight (pounds)", selection: $weight) {
                    ForEach(weights, id: \.self) { weight in
                        Text("\(weight) lbs").tag(weight)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                .padding()

                // Dietary Restrictions Picker
                Text("Dietary Restrictions")
                    .font(.headline) // Label for dietary restrictions picker
                    .padding(.horizontal)
                Picker("Dietary Restrictions", selection: $dietaryRestrictions) {
                    ForEach(dietaryOptions, id: \.self) { option in
                        Text(option).tag(option)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                .padding()

                // Preferences Picker
                Text("Preferences")
                    .font(.headline) // Label for preferences picker
                    .padding(.horizontal)
                Picker("Preferences", selection: $preferences) {
                    ForEach(preferenceOptions, id: \.self) { option in
                        Text(option).tag(option)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                .padding()

                // Allergies Picker
                Text("Allergies")
                    .font(.headline) // Label for allergies picker
                    .padding(.horizontal)
                Picker("Allergies", selection: $allergies) {
                    ForEach(allergyOptions, id: \.self) { option in
                        Text(option).tag(option)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                .padding()

                Button(action: {
                    // Handle account creation logic here
                    print("Account created for \(firstName) \(lastName)")
                }) {
                    Text("Create Account")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .cornerRadius(10.0)
                }
                .padding()
            }
            .padding()
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
//
//  Untitled.swift
//  NutriFit
//
//  Created by Nirmal Kumar on 10/26/24.
//


