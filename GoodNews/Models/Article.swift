//
//  Article.swift
//  GoodNews
//
//  Created by Daniel Braga Barbosa on 18/01/23.
//

import Foundation

struct ArticleList: Decodable
{
    let articles: [Article]
}

struct Article: Decodable
{
    let title: String?
    let description: String?
}
