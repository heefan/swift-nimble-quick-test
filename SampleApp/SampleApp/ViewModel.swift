//
//  ViewModel.swift
//  SampleApp
//
//  Created by LI Tian on 24/9/21.
//

import Foundation

class ViewModel {
    init() {
        debugPrint("init: view model")
    }
    
    deinit {
        debugPrint("deinit: view model")
    }
    
    func foo() -> Bool {
        return true
    }
}
