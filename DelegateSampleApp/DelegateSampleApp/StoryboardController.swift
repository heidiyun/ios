import UIKit

class StoryboardController: UIViewController {

    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.dataSource = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
    }
}

extension StoryboardController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 어떤 cell을 생성해야 하는지 알고있다.
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        // nullable이 아니다.
        
        cell.textLabel?.text = "Hello"
        cell.detailTextLabel?.text = "World"
        return cell
    }
}
