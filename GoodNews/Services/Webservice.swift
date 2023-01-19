//
//  Webservice.swift
//  GoodNews
//
//  Created by Daniel Braga Barbosa on 17/01/23.
//

import Foundation

class Webservice
{
    
    func getArticles(url: URL, completion: @escaping ([Article]?) -> ())
//    func getArticles(url: URL, completion: ([Article]?) -> ())
    {
        
        URLSession.shared.dataTask(with: url) { data, responde, error in
            
            if let error = error
            {
                print(error.localizedDescription)
                completion(nil)
            }
            else if let data = data
            {
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                
                if let articleList = articleList
                {
                    completion(articleList.articles)
                }
                
//                print(data)
                print(articleList?.articles)
            }
            
        }.resume()
        
    }
    
}
