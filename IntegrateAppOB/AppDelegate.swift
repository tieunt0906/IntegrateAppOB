//
//  AppDelegate.swift
//  IntegrateAppOB
//
//  Created by vbee on 3/27/20.
//  Copyright © 2020 vbee. All rights reserved.
//

import UIKit
import Flutter
import FlutterPluginRegistrant
import flutter_downloader

@UIApplicationMain
class AppDelegate: FlutterAppDelegate {

    lazy var flutterEngine = FlutterEngine(name: "chatbot engine")

    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        flutterEngine.navigationChannel.invokeMethod("setInitialRoute", arguments:"/chat_bot")
        flutterEngine.run();
        GeneratedPluginRegistrant.register(with: self.flutterEngine);
        FlutterDownloaderPlugin.setPluginRegistrantCallback(registerPlugins)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions);
    }

}

private func registerPlugins(registry: FlutterPluginRegistry) {
    if (!registry.hasPlugin("FlutterDownloaderPlugin")) {
       FlutterDownloaderPlugin.register(with: registry.registrar(forPlugin: "FlutterDownloaderPlugin"))
    }
}

