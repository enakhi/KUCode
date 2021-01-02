//
//  KuCodeIOS.swift
//  KuCodeIOS
//
//  Created by Behnam Hosseini on 12/28/20.
//
import UIKit
public protocol ModuleInterface {
    func getViewController(moduleComunication:ModuleComunication) -> UIViewController
}
