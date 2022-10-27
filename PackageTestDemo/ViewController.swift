//
//  ViewController.swift
//  PackageTestDemo
//
//  Created by Ronan Mak on 23/10/2022.
//

import UIKit
import Kingfisher
import ScreenPackage
import Booking
import AppConfig

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 40)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        label.widthAnchor.constraint(equalToConstant: 100).isActive = true
        label.heightAnchor.constraint(equalToConstant: 50).isActive = true

        // t9 config
//        do {
//            let appPList = try AppConfig<InfoPList.Configuration>()
//
//            // then read values
//            let url = appPList.data.url // it’s an URL
//            print("debugg: \(url)")
//        } catch let err {
//            print("Failed to parse data: \(err)")
//        }

        // t0 config
        do {
            let appPList = try AppConfig<InfoPList>()

            // then read values
            let url = appPList.data.configuration // it’s an URL
            print("debugg: \(url)")
        } catch let err {
            print("Failed to parse data: \(err)")
        }
    }

    @IBAction func goToBookingTapped(_ sender: Any) {
        let vc = BookingVC.storyboardVC
        self.present(vc!, animated: true, completion: nil)
    }

    @IBAction func goToPackageTapped(_ sender: Any) {
        let vc = ScreenVC.storyboardVC
        self.present(vc!, animated: true, completion: nil)
    }

}

