//
//  ProductionConfig.swift
//  PackageTestDemo
//
//  Created by Ronan Mak on 30/10/2022.
//

import UIKit

public enum EnvironmentSetting {

    enum Production {

        static var prodUrl: String = ""
        static var prodEnv: String = ""

        struct ConfigPlist: Codable {
            let configurationProd: Configuration
            let configurationT1: Configuration
            let configurationT0: Configuration

            struct Configuration: Codable {
                let url: String
                let env: String
            }
        }
    }

    enum T0 {

    }

    enum T1 {
        
    }
}
