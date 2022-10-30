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
        setupView()
        setupAppConfig()
    }

    private func setupAppConfig() {
        do {
            let appPlist = try AppConfig<EnvironmentSetting.Production.ConfigPlist>(.plist("Production", Bundle.main))
            let plistData = appPlist.data.configurationProd
            EnvironmentSetting.Production.prodEnv = plistData.env
            EnvironmentSetting.Production.prodUrl = plistData.url
        } catch let err {
            print("Failed to parse data: \(err)")
        }
    }

    private func setupView() {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 40)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        label.widthAnchor.constraint(equalToConstant: 100).isActive = true
        label.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }

    @IBAction func goToBookingTapped(_ sender: Any) {
        guard let vc = BookingVC.storyboardVC else { return }
        
        self.present(vc, animated: true, completion: nil)
    }

    @IBAction func goToPackageTapped(_ sender: Any) {
        let vc = ScreenVC.storyboardVC
        self.present(vc!, animated: true, completion: nil)
    }

}

