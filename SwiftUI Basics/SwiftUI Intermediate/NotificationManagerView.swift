//
//  NotificationManager.swift
//  SwiftUI Intermediate
//
//  Created by Ashish Pisey on 10/10/23.
//

import SwiftUI
import UserNotifications
import CoreLocation

class NotificationManager {
    static let instance = NotificationManager()
    
    func requestAuthorization() {
        let options: UNAuthorizationOptions = [.alert, .badge, .sound]
        
        UNUserNotificationCenter.current().requestAuthorization(options: options) { (success, error) in
            if let error = error {
                print("Error: \(error)")
            } else {
                print("Success")
            }
        }
    }
    
    func scheduleNotification() {
        let content = UNMutableNotificationContent()
        content.title = "This is title"
        content.subtitle = "This is subtitle"
        content.sound = .default
        content.badge = 1
        
        //time
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 3.0, repeats: false)
        
        //date
        /*
        var dateComponents = DateComponents()
        dateComponents.hour = 20
        dateComponents.minute = 26
        dateComponents.weekday = 2
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
        */
        
        // location
        /*
        let coordinates = CLLocationCoordinate2D(latitude: 40.0, longitude: 50.00)
        let region = CLCircularRegion(center: coordinates, radius: 100, identifier: UUID().uuidString)
        region.notifyOnEntry = true
        region.notifyOnExit = true
        
        let trigger = UNLocationNotificationTrigger(region: region, repeats: true)
        */
        
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request)
    }
    
    func cancelNotification() {
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
        UNUserNotificationCenter.current().removeAllDeliveredNotifications()
    }
}


struct NotificationManagerView: View {
    
    var body: some View {
        VStack(spacing: 40) {
            Button("Request permission") {
                NotificationManager.instance.requestAuthorization()
            }
            Button("Scedule notification") {
                NotificationManager.instance.scheduleNotification()
            }
            Button("Cancel notification") {
                NotificationManager.instance.cancelNotification()
            }
        }
        .onAppear {
            UIApplication.shared.applicationIconBadgeNumber = 0
        }
    }
}

#Preview {
    NotificationManagerView()
}
