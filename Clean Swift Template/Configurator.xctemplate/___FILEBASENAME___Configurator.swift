//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

/**
    Class to build view controller's dependency tree. Makes and links ViewController, Interactor, and Presenter objects.
 */
class ___VARIABLE_sceneName:identifier___Configurator {

    static let sharedInstance = ___VARIABLE_sceneName:identifier___Configurator()
    
    func configure(viewController: ___VARIABLE_sceneName:identifier___ViewController) {
        let router = ___VARIABLE_sceneName:identifier___Router()
        router.viewController = viewController
        
        let presenter = ___VARIABLE_sceneName:identifier___Presenter()
        presenter.output = viewController
        
        let interactor = ___VARIABLE_sceneName:identifier___Interactor()
        interactor.output = presenter
        interactor.worker = ___VARIABLE_sceneName:identifier___Worker()
        router.dataStore = interactor
        
        viewController.output = interactor
        viewController.router = router
    }
}
