import UIKit
import FirebaseDatabase

class QRCodeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    var productsArray: [Products] = []
    
    var otherVC = QRScannerController()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        cell.textLabel?.text = productsArray[indexPath.row].name
        cell.detailTextLabel?.text = (productsArray[indexPath.row].price?.toString())! + " ₸"
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  

    
    // MARK: - Navigation

    @IBAction func unwindToHomeScreen(segue: UIStoryboardSegue) {
        dismiss(animated: true, completion: nil)
    }

}

extension Int {
    func toString() -> String {
        return String (self)
    }
}
