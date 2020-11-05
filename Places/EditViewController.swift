//
//  EditViewController.swift
//  Places
//
//  Created by Айдана on 11/4/20.
//

import UIKit
import MapKit

protocol changePlace {
    func change(_ title: String, _ subtitle: String)
}

class EditViewController: UIViewController {
    var changeDelegate: changePlace?
    
    var titleStr: String?
    var subtitleStr: String?
    @IBOutlet weak var titleTF: UITextField!
    @IBOutlet weak var subtitleTF: UITextField!
    override func viewDidLoad() {
        titleTF.text = titleStr
        subtitleTF.text = subtitleStr
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(addTapped))
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelPressed))
        
        // Do any additional setup after loading the view.
    }
    
    @objc func addTapped() {
        print("h")
        changeDelegate?.change(titleTF.text!, subtitleTF.text!)
        navigationController?.popViewController(animated: true)

        dismiss(animated: true, completion: nil)
    }
    @objc func cancelPressed(sender: UIButton!) {
        navigationController?.popViewController(animated: true)

        dismiss(animated: true, completion: nil)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
