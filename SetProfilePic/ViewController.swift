//
//  ViewController.swift
//  SetProfilePic
//
//  Created by  Scholar on 6/29/21.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var imagePicker = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }

    @IBAction func setPic(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion : nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info : [UIImagePickerController.InfoKey : Any]){
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            imageDisplay.image = selectedImage
        }
        
        imagePicker.dismiss(animated : true, completion: nil)
    }
    
    @IBOutlet weak var profilePic: UIImageView!
    
}

