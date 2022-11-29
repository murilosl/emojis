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
    var myCollectionView : UICollectionView?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupLayoutCollection()
    }
    
    func setupLayoutCollection() {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = CGSize(width: 60, height: 60)
        
        myCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        
        myCollectionView?.register(ListCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        myCollectionView?.backgroundColor = UIColor.blue
        
        myCollectionView?.dataSource = self
        myCollectionView?.delegate = self
        
        view.addSubview(myCollectionView ?? UICollectionView())
                        
        self.view = view
    }
}

extension ListEmojisViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.data?.count ?? 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ListCollectionViewCell
        myCell.setImage(image: "https://github.githubassets.com/images/icons/emoji/unicode/1f18e.png?v8")
        return myCell
    }
}

extension ListEmojisViewController : UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath)
    }
}
