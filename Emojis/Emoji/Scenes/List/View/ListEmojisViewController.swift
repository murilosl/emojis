//
//  ListEmojisViewController.swift
//  Emojis
//
//  Created by Murilo de Souza Lopes on 22/11/22.
//

import Foundation
import UIKit

class ListEmojisViewController : UIViewController{
    
    var viewModel : EmojisListViewModel!
    var data : [String : String]?
    var emojis : Emoj!
    var myCollectionView : UICollectionView?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupLayoutCollection()
        self.setupConstraints()
        
        DispatchQueue.main.async {
            self.viewModel.getEmijisList { data in
                self.data = data
                self.myCollectionView?.reloadData()
                self.myCollectionView?.collectionViewLayout.invalidateLayout()
                self.myCollectionView?.layoutSubviews()
            }
        }
    }
    
    func setupLayoutCollection() {
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        layout.itemSize = CGSize(width: 75, height: 75)
       
        myCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        
        myCollectionView?.register(ListCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        myCollectionView?.backgroundColor = UIColor.systemBlue
        
        myCollectionView?.dataSource = self
        myCollectionView?.delegate = self
        
        view.addSubview(myCollectionView ?? UICollectionView())
                        
        self.view = view
    }
    
    func setupConstraints(){
        myCollectionView?.translatesAutoresizingMaskIntoConstraints = false
        myCollectionView?.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        myCollectionView?.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        myCollectionView?.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        myCollectionView?.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
    }
}

extension ListEmojisViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return  self.data?.count ?? 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ListCollectionViewCell
        myCell.indicator.startAnimating()
        if let dataList = self.data{
            let url_image = Array(dataList)[indexPath.row].value
            myCell.setImage(image: url_image)
        }
        return myCell
    }
}

extension ListEmojisViewController : UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath)
    }
}
