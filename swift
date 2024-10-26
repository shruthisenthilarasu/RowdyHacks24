func getUserProfile(userId: String) {
    ref.child("users").child(userId).observeSingleEvent(of: .value) { snapshot in
        if let data = snapshot.value as? [String: Any] {
            print("User data: \(data)")
        } else {
            print("User data not found.")
        }
    }
}
