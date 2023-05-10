import UIKit

class AlbumViewController: UIViewController {
    // MARK: - Properties
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: - Models
    let albumName: [String] = ["꽃갈피","라일락","스무 살의 봄","조각집","Palatte","Modern Times","Love poem","Last Fantasy","CHAT-SHIRE"]
    
    // MARK: - View's life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // collectionView cell 설정
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }

    // MARK: - Methods

}

extension AlbumViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return albumName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell" , for: indexPath) as? AlbumCollectionViewCell else {return UICollectionViewCell()}
        
        cell.albumImage.image = UIImage(named: albumName[indexPath.row])
        cell.albumName.text = albumName[indexPath.row]
        
//        if indexPath.row == 3 {
//            cell.backgroundColor = UIColor.darkGray
//        }
//        else if indexPath.row % 2 == 1 {
//            cell.layer.borderWidth = 2.0
//            cell.layer.borderColor = UIColor.systemRed.cgColor
//        }
//
        return cell
    }
}

extension AlbumViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let deviceWidth = UIScreen.main.bounds.width
        print(deviceWidth)
        var imageWidth = deviceWidth / 3
        var imageHeight = imageWidth
        
        return CGSize(width: imageWidth , height: imageHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        print(cell?.bounds.width)
        print(cell?.bounds.height)
    }
}
