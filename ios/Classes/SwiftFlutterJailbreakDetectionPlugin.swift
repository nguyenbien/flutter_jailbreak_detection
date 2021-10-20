import Flutter
import UIKit
import DTTJailbreakDetection

public class SwiftFlutterJailbreakDetectionPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_jailbreak_detection", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterJailbreakDetectionPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      switch call.method {
      case "isJailBroken":
          let isJailBroken = DTTJailbreakDetection.isJailbroken()
          result(isJailBroken)
          break
      case "canMockLocation":
           let isJailBroken = DTTJailbreakDetection.isJailbroken()
           result(isJailBroken || (TARGET_OS_SIMULATOR != 0))
          break
      case "isRealDevice":
           let isRealDevice = (TARGET_OS_SIMULATOR == 0)
           result(isRealDevice)
          break
      default:
          result(FlutterMethodNotImplemented)
      }
}
}
