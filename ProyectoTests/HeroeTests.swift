//
//  HeroeTests.swift
//  ProyectoTests
//
//  Created by vero on 22/12/22.
//

import XCTest
//3-hacemos un import testeable y nombre del proyecto: Proyecto
@testable import Proyecto

final class HeroeTests: XCTestCase {
//    2- testeamos ell heroe
    var heroe: Heroe!

    override func setUp() {
//        1- inicializadores enlaces padres super.setUp() y super.tearDown()
        super.setUp()
//        inicializamos el heroe
        heroe = Heroe(id: "4",
                      name: "Goku",
                      photo: "https://www.keepcoding.io",
                      description: "Goku always win!!!",
                      favorite: false)
    }

    override func tearDown() {
        heroe = nil
        super.tearDown()
    }
//    5.empezamos con los test. Nombre funciones test(camelCase) a-que no sea nulo, b que sea igual a 4 y que no sea igual a 7
    func testHeroeId() {
        XCTAssertNotNil(heroe.id)
        XCTAssertEqual(heroe.id, "4")
        XCTAssertNotEqual(heroe.id, "7")
    }
    
    func testHeroeName() {
        XCTAssertNotNil(heroe.name)
        XCTAssertEqual(heroe.name, "Goku")
        XCTAssertNotEqual(heroe.name, "Vegeta")
    }
    
    func testHeroePhoto() {
        let url = URL(string: heroe.photo)
        
        XCTAssertNotNil(heroe.photo)
        XCTAssertEqual(heroe.photo, "https://www.keepcoding.io")
        XCTAssertNotEqual(heroe.photo, "https://www.keepcoding.com")
        XCTAssertNotNil(url?.absoluteURL, "https://www.keepcoding.com/photo")
    
    }
    
    func testHeroeDescription() {
        XCTAssertNotNil(heroe.description)
        XCTAssertEqual(heroe.description, "Goku always win!!!")
        XCTAssertNotEqual(heroe.description, "Goku alwaySS win!!!")
    }
    
    func testHeroeFav() {
        XCTAssertNotNil(heroe.favorite)
        XCTAssertEqual(heroe.favorite, false)
    }


}
