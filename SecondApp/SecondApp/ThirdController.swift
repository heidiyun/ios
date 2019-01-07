import UIKit

class ThirdController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    
    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true)
        // ViewController 닫기.
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
        // Do any additional setup after loading the view.
    }

}
