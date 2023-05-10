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
      
        let deviceWidth = UIScreen.main.bounds.width
        let imageWidth = deviceWidth / 3
        let imageHeight = imageWidth
        
        cell.height = imageWidth
        cell.width = imageHeight
        return cell
    }
}

extension AlbumViewController: UICollectionViewDelegateFlowLayout {
    // cell의 높이와 폭을 설정
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let deviceWidth = UIScreen.main.bounds.width
        let imageWidth = deviceWidth / 3
        let imageHeight = imageWidth
        
        return CGSize(width: imageWidth , height: imageHeight)
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
}
