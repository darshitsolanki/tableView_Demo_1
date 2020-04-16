//
//  ViewController.swift
//  tableView_Demo_1
//
//  Created by Third Rock Techkno on 16/04/20.
//  Copyright © 2020 Third Rock Techkno. All rights reserved.
//

import UIKit

struct Movie {
    var movieName: String
}

class ViewController: UIViewController {

    var movieList = [Movie]()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addMovies()
        configTableView()
        
    }
    
    func configTableView() {
        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        
    }


}

extension ViewController {
    
    func addMovies() {
        
        movieList.append(Movie(movieName: "movie1"))
        movieList.append(Movie(movieName: "movie2"))
        movieList.append(Movie(movieName: "movie3"))
        movieList.append(Movie(movieName: "movie4"))
        movieList.append(Movie(movieName: "movie5"))
        movieList.append(Movie(movieName: "movie6"))
        movieList.append(Movie(movieName: "movie7"))
        movieList.append(Movie(movieName: "movie8"))
        movieList.append(Movie(movieName: "movie9"))
        movieList.append(Movie(movieName: "movie10"))
        
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return movieList.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.movieLabel.text = movieList[indexPath.row].movieName
        return cell
        
    }
    
}

