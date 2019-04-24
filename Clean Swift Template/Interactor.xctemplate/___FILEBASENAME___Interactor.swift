//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

// MARK: Boundary protocols
protocol ___VARIABLE_sceneName:identifier___InteractorInput {
    func doSomething(_ request: ___VARIABLE_sceneName:identifier___.Request)
}

protocol ___VARIABLE_sceneName:identifier___InteractorOutput {
    func presentSomething(_ response: ___VARIABLE_sceneName:identifier___.Response)
}

protocol ___VARIABLE_sceneName:identifier___DataStore {
    var sampleDataStore: ___VARIABLE_sceneName:identifier___.ViewModel! { get set }
}

// MARK: Class
/**
    Class to <#business#>.
 */
class ___VARIABLE_sceneName:identifier___Interactor: ___VARIABLE_sceneName:identifier___InteractorInput, ___VARIABLE_sceneName:identifier___DataStore {
    var output: ___VARIABLE_sceneName:identifier___InteractorOutput!
    var sampleDataStore: Test.ViewModel!
    var worker: ___VARIABLE_sceneName:identifier___Worker?
    
    // MARK: Business logic
    func doSomething(_ request: ___VARIABLE_sceneName:identifier___.Request) {
        // NOTE: Create some Entity to do the work
        //let entity = ___VARIABLE_sceneName:identifier___Worker()
        //entity.doSomeWork()
        
        // NOTE: Pass the result to the Presenter
        let response = ___VARIABLE_sceneName:identifier___.Response()
        output.presentSomething(response)
    }
}
