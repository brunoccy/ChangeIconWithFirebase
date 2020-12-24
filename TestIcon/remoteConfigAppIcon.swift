////
////  IconClass.swift
////  TestIcon
////
////  Created by bruno chen chih ying on 19/12/20.
////
//
//import UIKit
//
//// MARK: - IconsName
//enum IconsNamesString: String {
//    case
//        red = ,
//        defaultIcon = "Blue"
//}
//
//class CeaAppIconR {
//    // MARK: - Set Event and Icon Function
//    class func validateAppIcon() {
//        setAppIconEvent(start: "10/12/2020", finish: "20/12/2020", icon: .red)
//
//        setDefaultIconIfNeeded()
//    }
//
//    // MARK: - Privates Functions
//    private static var useDefaultIcon: Bool = true
//    private static func setDefaultIconIfNeeded() {
//        if useDefaultIcon {
//            setAppIcon(name: .defaultIcon)
//        }
//    }
//    private static func setAppIconEvent(start: String, finish: String, icon: IconsName) {
//        if useDefaultIcon && currentDateInRange(start: parseDate(from: start), finish: parseDate(from: finish)) {
//            useDefaultIcon = false
//            setAppIcon(name: icon)
//        }
//    }
//    private static func currentDateInRange(start: Date?, finish: Date?) -> Bool {
//        let currentDate = Date()
//        guard let startDate = start, let finishDate = finish else {
//            return false
//        }
//        return currentDate >= startDate && currentDate <= finishDate
//    }
//    private static func parseDate(from: String) -> Date? {
//        let formatter = DateFormatter()
//        formatter.dateFormat = "dd/MM/yyyy"
//        return formatter.date(from: from)
//    }
//    private static func setAppIcon(name: IconsName) {
//        if name.rawValue == UIApplication.shared.alternateIconName { return }
//        delay(1.0) {
//            if UIApplication.shared.supportsAlternateIcons {
//                UIApplication.shared.setAlternateIconName(name.rawValue) { error in
//                    if let error = error {
//                        print(error.localizedDescription)
//                    }
//                }
//            } else {
//                print("Nao permitido")
//            }
//        }
//    }
//    private static func delay(_ delay:Double, closure:@escaping ()->()) {
//        let when = DispatchTime.now() + delay
//        DispatchQueue.main.asyncAfter(deadline: when, execute: closure)
//    }
//}
