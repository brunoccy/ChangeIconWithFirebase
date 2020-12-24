//
//  ChangeAppIconRealTime.swift
//  TestIcon
//
//  Created by bruno chen chih ying on 19/12/20.
//

import UIKit
import Firebase

class ChangeAppIconRealTime {
    private static var ref: DatabaseReference!
    // MARK: - Validate App Icon
    class func validateAppIcon() {
        ref = Database.database().reference()

        self.ref.child("iconName").observeSingleEvent(of: .value, with: { (snapshot) in
            if let iconName = snapshot.value as? String {
                setAppIcon(name: iconName)
            }
        })
    }
    private static func setAppIcon(name: String) {
        if name == UIApplication.shared.alternateIconName { return }
        delay(1.0) {
            if UIApplication.shared.supportsAlternateIcons {
                UIApplication.shared.setAlternateIconName(name) { error in
                    if let error = error {
                        print(error.localizedDescription)
                    }
                }
            } else {
                print("Nao permitido")
            }
        }
    }
    private static func delay(_ delay:Double, closure:@escaping ()->()) {
        let when = DispatchTime.now() + delay
        DispatchQueue.main.asyncAfter(deadline: when, execute: closure)
    }
}
