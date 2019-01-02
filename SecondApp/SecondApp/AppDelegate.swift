

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       let frame = UIScreen.main.bounds
        //  현재 화면의 크기
        window = UIWindow(frame:frame)
        // coder : xml처럼 레이아웃 파일로 제공
        window?.backgroundColor = UIColor.yellow
//        window?.rootViewController = SecondController()
        // FirstController.xib를 로드합니다.
        // ViewController의 연결된 xib를 만들 경우, ViewController와 이름을 동일하게 작성하면, 아래와 같은 생성자를 작성하지 않아도 됩니다.
        
//        window?.rootViewController = SecondController(nibName: "SecondView", bundle: nil)
        
        window?.rootViewController = SecondController()
        
        window?.makeKeyAndVisible()
        return true
    }

}

