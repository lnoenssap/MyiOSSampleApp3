//
// MyiOSSampleApp3
//
// Created by SAP Cloud Platform SDK for iOS Assistant application on 08/05/20
//

import SAPFiori
import SAPFoundation
import UIKit

class DestinationsViewController: FUIFormTableViewController {
    let destinations = FileConfigurationProvider("AppParameters").provideConfiguration().configuration["Destinations"] as! NSDictionary

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return destinations.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DestinationCell", for: indexPath)
        cell.textLabel?.text = destinations.allValues[indexPath.row] as? String
        return cell
    }

    override func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        let UIStoryboardNames = [
            "com.sap.edm.sampleservice.v2": "Comsapedmsampleservicev2",
        ]
        let selectedDestination = UIStoryboardNames[destinations.allKeys[indexPath.row] as! String]!
        let collectionStoryBoard = UIStoryboard(name: selectedDestination, bundle: nil)
        let collectionViewController = collectionStoryBoard.instantiateViewController(withIdentifier: "\(selectedDestination)CollectionsView")
        navigationController?.pushViewController(collectionViewController, animated: true)
    }
}
