//
//  AppDelegate.swift
//  CompilationProblem
//
//  Created by Kostya Golenkov on 02.03.2021.
//

import UIKit
import Amplify
import AmplifyPlugins
import AWSPredictionsPlugin

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        configureAmplify()
        return true
    }

    @available(iOS 13, *)
    func configureAmplify() {
        do {
            Amplify.Logging.logLevel = .verbose
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.add(plugin: AWSPredictionsPlugin())
            try Amplify.configure()
        } catch {
            print("An error occurred setting up Amplify: \(error)")
        }
    }

}

