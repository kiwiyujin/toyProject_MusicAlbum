//
//  ViewController.swift
//  MusicAlbum
//
//  Created by Yujin on 2023/04/05.
//

import UIKit

class AlbumViewController: UIViewController {
    // MARK: - Properties
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: - Models
    
    // MARK: - View's life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // collectionView 설정
        collectionView.delegate = self
        // collectionView cell 설정
        collectionView.dataSource = self
    }

    // MARK: - Methods

}

extension AlbumViewController: UICollectionViewDelegate {
    
}

extension AlbumViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell" , for: indexPath) as? UICollectionViewCell else {return UICollectionViewCell()}
        
        if indexPath.row == 3 {
            cell.backgroundColor = UIColor.darkGray
        }
        else if indexPath.row % 2 == 1 {
            cell.layer.borderWidth = 2.0
            cell.layer.borderColor = UIColor.systemRed.cgColor
        }
        
        return cell
    }
}

extension AlbumViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var width: CGFloat = 0
        var height: CGFloat = 0
        
        if indexPath.row == 0 {
            width = 50.0
            height = 50.0
        } else {
            width = 150.0
            height = 150.0
        }
        
        return CGSize(width: width , height: height)
    }
}
