//
//  EmojisListViewModel.swift
//  Emojis
//
//  Created by Murilo de Souza Lopes on 22/11/22.
//

import Foundation

protocol EmojisListViewModelCoordinatorDelegate {
    func didTap(with data: Emoj)
}

protocol EmojisListViewModelProtocol {
    var data : [Emoj]? { get }
    var service : EmojisService{ get }
    var coordinatorDelegate : EmojisListViewModelCoordinatorDelegate?{ get set }
    var title: String{ get }
    
    var showData: (()->())?{get set}
    var showLoader: (()->())?{get set}
    var hideLoader: (()->())?{get set}
    
    func didTapOnEmojis(of index: Int)
    func heightForRow(at index: Int, of section: Int)-> Int
    func numberOfRowsInSection(section: Int) -> Int
    func viewDidLoad()
    func getEmoji(at index: Int)->String
}


class EmojisListViewModel : EmojisListViewModelProtocol {
    
    var data: [Emoj]?
    
    var service: EmojisService
    
    var coordinatorDelegate: EmojisListViewModelCoordinatorDelegate?
    
    var title: String = ""
    
    var showData: (() -> ())?
    
    var showLoader: (() -> ())?
    
    var hideLoader: (() -> ())?
    
    private var shouldShowLoader = false{
        didSet{
            (self.shouldShowLoader) ? self.showLoader?() : self.hideLoader?()
        }
    }
    
    init(service: EmojisService) {
        self.service = service
        service.getEmijisList { result in
            print(result)
        }
    }
    
    func didTapOnEmojis(of index: Int) {
        self.coordinatorDelegate?.didTap(with: self.data![index])
    }
    
    func heightForRow(at index: Int, of section: Int) -> Int {
        return 70
    }
    
    func numberOfRowsInSection(section: Int) -> Int {
        return (data != nil) ? (data?.count)! : 0
    }
    
    func viewDidLoad() {
        (shouldShowLoader) ? self.showLoader?() : self.hideLoader?()
        
    }
    
    func getEmoji(at index: Int) -> String {
        return String()
    }
    
    
}
