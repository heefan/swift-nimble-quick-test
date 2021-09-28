//
//  SampleAppTests.swift
//  SampleAppTests
//
//  Created by LI Tian on 24/9/21.
//

import Nimble
import Quick

@testable import SampleApp

class ViewControllerSpec: QuickSpec {
    override func spec() {
        var subject: ViewModel!
        
        describe("Describe_Test") {
            beforeEach {
                subject = ViewModel();

                SIADEBUG("before each ...")
            }
            
            context("context A") {
                it("it 1") {
                    expect(subject.foo()).to(beTrue())
                }
                
                it("it 2") {
                    expect(subject.foo()).to(beTrue())
                }
                
                it("it 3") {
                    expect(subject.foo()).to(beTrue())
                }
            }
            
            context("context B") {
                it("it 1") {
                    expect(subject.foo()).to(beTrue())
                }
                
                it("it 2") {
                    expect(subject.foo()).to(beTrue())
                }
                
                it("it 3") {
                    expect(subject.foo()).to(beTrue())
                }
            }
        }
    }
}
