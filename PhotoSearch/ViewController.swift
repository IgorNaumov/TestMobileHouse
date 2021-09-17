//
//  ViewController.swift
//  PhotoSearch
//
//  Created by nil on 17.09.2021.
//

import UIKit


class ViewController: UIViewController {
    
    
    @IBOutlet weak var searchTextField: UITextField!
    
    var getPhoto = NetworkService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let searchText = segue.destination as? PhotoCollectionViewController
        searchText?.searchText = searchTextField.text!
        
    }
    
}






