//
//  NewsListTableViewController.swift
//  GoodNews
//
//  Created by Daniel Braga Barbosa on 10/01/23.
//

import Foundation

import UIKit

class NewsListTableViewController: UITableViewController
{
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
    }
    
    private func setup()
    {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let url = URL (string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=584ce5595bfa4bb6ac37b1b5442f4b11")!
        
        Webservice().getArticles(url: url) { _ in
            
        }
    }
    
}
