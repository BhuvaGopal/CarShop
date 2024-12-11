//
//  Product.swift
//  CarShop
//
//  Created by GOPAL BHUVA on 06/06/24.
//



import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [
    Product(name: "Rr", image: "RR", price: 450000),
    Product(name: "lambo", image: "lamborgini", price: 300000),
    Product(name: "Swift", image: "swift", price: 22000),
    Product(name: "tata", image: "tata", price: 50000),
    Product(name: "Scorpio", image: "Scorpio", price: 20000),
    Product(name: "alto", image: "Alto", price: 1500),
    Product(name: "Ferrari", image: "Ferrari", price: 250000),
    Product(name: "Renolt", image: "Kia", price: 3000),
    Product(name: "Buggati", image: "Buggati", price: 200000),
    Product(name: "Supramk4", image: "Supramk4", price: 90000),
    Product(name: "Bently", image: "bently", price: 30000),
    Product(name: "BMWsport", image: "bmw", price: 3000),
    
    
]
