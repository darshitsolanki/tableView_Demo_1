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
    var movieDetail : String
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
        tableView.delegate = self
    }


}

extension ViewController {
    
    func addMovies() {
        
        movieList.append(Movie(movieName: "movie1", movieDetail: "It is movie1 with nice concept"))
        movieList.append(Movie(movieName: "movie2", movieDetail: "It is movie2 with nice drama"))
        movieList.append(Movie(movieName: "movie3", movieDetail: "It is movie3 with nice comedy"))
        movieList.append(Movie(movieName: "movie4", movieDetail: "It is movie4 with nice horror"))
        movieList.append(Movie(movieName: "movie5", movieDetail: "It is movie5 with nice story"))
        movieList.append(Movie(movieName: "movie6", movieDetail: "It is movie6 with nice emotion"))
        movieList.append(Movie(movieName: "movie7", movieDetail: "It is movie7 and family movie"))
        movieList.append(Movie(movieName: "movie8", movieDetail: "It is movie8 with nice concept"))
        movieList.append(Movie(movieName: "movie9", movieDetail: "It is movie9 with nice drama"))
        movieList.append(Movie(movieName: "movie10", movieDetail: "It is movie10 with nice politics"))
        
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

extension ViewController: UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else { return }
        vc.txt = movieList[indexPath.row].movieDetail
        print(movieList[indexPath.row].movieDetail)
        self.navigationController?.pushViewController(vc, animated: true)
        

    }
}
