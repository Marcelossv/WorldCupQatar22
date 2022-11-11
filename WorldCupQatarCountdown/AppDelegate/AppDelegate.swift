//
//  AppDelegate.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 02/05/22.
//

import UIKit
import UserNotifications

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    private let center = UNUserNotificationCenter.current()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        center.delegate = self
        center.getNotificationSettings { (settings) in
            if settings.authorizationStatus == .notDetermined {
                let options: UNAuthorizationOptions = [.alert, .sound, .badge]
                self.center.requestAuthorization(options: options, completionHandler: { (success, error) in
                    if error == nil {
                        print(success)
                    } else {
                        print(error!.localizedDescription)
                    }
                })
            } else if settings.authorizationStatus == .denied {
                print("Usuário negou a Notificação")
            }
        }
        
        let confirmeAction = UNNotificationAction(identifier: "Confirm", title: "Já estudei 🤓", options: [.foreground])
        let cancelAction = UNNotificationAction(identifier: "Cancel", title: "Cancelar", options: [])
        let category = UNNotificationCategory(identifier: "Lembrete", actions: [confirmeAction, cancelAction], intentIdentifiers: [], hiddenPreviewsBodyPlaceholder: "", options: [.customDismissAction])
        center.setNotificationCategories([category])
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

}

extension AppDelegate: UNUserNotificationCenterDelegate {

    func userNotificationCenter(
        _ center: UNUserNotificationCenter,
        willPresent notification: UNNotification,
        withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void
    ) {
        completionHandler([.sound, .badge, .list, .banner])
    }
    
    func userNotificationCenter(
        _ center: UNUserNotificationCenter,
        didReceive response: UNNotificationResponse,
        withCompletionHandler completionHandler: @escaping () -> Void
    ) {
        switch response.actionIdentifier {
        case "Confirm":
            print("Usuário confirmou que já estudou a matéria")
        case "Cancel":
            print("Usuário cancelou")
        case UNNotificationDefaultActionIdentifier:
            print("Tocou na própria notificação")
        case UNNotificationDismissActionIdentifier:
            print("Dismiss na notificação")
        default:
            break
        }
        completionHandler()
    }
    
}
