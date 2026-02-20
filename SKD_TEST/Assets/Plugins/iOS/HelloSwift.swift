import UIKit
@objc public class HelloSwift: NSObject
{
    
    @objc public static func showHello() {
        DispatchQueue.main.async {
            guard let rootVC = UIApplication.shared.connectedScenes.compactMap({($0 as? UIWindowScene)?.keyWindow}).first?.rootViewController else { return }
            let alert = UIAlertController(
                title: "Hello World",
                message: "This is a native iOS window from Swift",
                preferredStyle: .alert
            )
            
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            rootVC.present(alert, animated:true)
        }
    }
}
