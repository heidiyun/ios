import UIKit

class SecondController: UIViewController {

    // UIViewController 전환 방법
    @IBAction func next(_ sender: UIButton) {
        // 1. Controller 생성
        let controller = ThirdController()
        controller.name = "hello"
        // view가 생성되기 전.
        present(controller, animated: true)
        // controller.nameLabel = "hello"
        // 로드되는게 보인다.
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("SecondController - ViewDidLoad")
    }
    
    @objc func foo() {
        print("foo")
    }
    
    @objc func goo(sender: UISwitch) {
        print("goo \(sender.isOn ? "ON" : "OFF")")
    }
    

    // 아래 함수는 Storyboard - Segue(화면 전환)가 발생할 때마다 호출되는 함수.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //        let thirdController = segue.destination as? ThirdController
        //        if (thirdController != nil) {
        //            thiredController.name = "Hello"
        //        }
        
        if let thirdController = segue.destination as? ThirdController {
            thirdController.name = "Hello"
        }
    }
    
    // 1. UIView를 동적으로 코드를 통해서 생성하는 방법.
    /*
    override func loadView() {
        print("SecondController - loadView")
        // loadView - UIView
        // 사용자에게 보여지는 컴포넌트들을 추가하는 곳.
        let myView = UIView(frame: UIScreen.main.bounds)
        myView.backgroundColor = UIColor.white
        
        let button = UIButton(type: .infoDark)
        button.frame = CGRect(x: 10, y: 10, width: 100, height: 100)
        myView.addSubview(button)
        
        button.addTarget(self, action: #selector(foo), for: .touchUpInside)
        //  button은 targetAction으로 동작한다. /
        
        let sampleSwitch = UISwitch(frame:  CGRect(x: 100, y: 30, width: 100, height: 50))
        sampleSwitch.addTarget(self, action: #selector(goo), for: .valueChanged)
        myView.addSubview(sampleSwitch)
        
        self.view = myView
    } */
    
    // 2. UIView를 Interface Builder를 통해서 생성하는 방법
    /*
    override func loadView() {
        // SecondView.xib(xml)
        // -> Android Inflate : xml을 Java의 객체로 변경하는 과정
        
        // SecondView.xib -> compile -> SecondView.nib (bundle안에 포함된다.)
        // coder type으로 생성 (xml을 빌드했을 때 나오는 nib가 coder)
        let view = Bundle.main.loadNibNamed("SecondView", owner: nil, options: nil)?[0] as? UIView
        self.view = view
    } */
    
    // 3. 
}
