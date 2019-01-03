import UIKit

// UITableView
//  UITableViewDataSource
//  UITableViewDelegate

// IndexPath
//  section, cell

class XIBController: UIViewController {

    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.dataSource = self
            tableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        }
    }
    
    let people = [
        "IU", "이지은", "카이", "제니", "도경수", "바다", "빅뱅"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// Android - View Holder Pattern
// 화면에 보이는 개수 만큼 뷰를 생성한다.

extension XIBController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reuseIdentifier = "MyCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        cell.textLabel?.text = "Hello"
        cell.detailTextLabel?.text = "World"
        return cell
    }
}

    /*
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reuseIdentifier = "MyCell"
        var cell: UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier)
        if cell == nil {
            print("Cell 생성")
            // 어떤 cell을 생성하는지 모른다.
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: reuseIdentifier)
        } else {
            print("Cell 재사용")
        }
        
        cell.textLabel?.text = "Hello"
        cell.detailTextLabel?.text = "world"
        return cell
        
        
//        cell!.textLabel?.text = "Hello"
//        cell!.detailTextLabel?.text = "world"
//        return cell!
        //          위와 같이 쓸 수도 있다.
    }
 */
    
    /*
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        // 지정초기화 생성자
        cell.textLabel?.text = "Hello"
        return cell
    } */
    // 위와 같이 작성하면 데이터가 많을 수록 메모리가 부족해진다.
    
    

