import UIKit

class AlbumCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var albumImage: UIImageView!{
        didSet{
            albumImage.translatesAutoresizingMaskIntoConstraints = false
            albumImage.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
            albumImage.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        }
    }
    
    @IBOutlet weak var albumName: UILabel!{
        didSet{
            albumName.translatesAutoresizingMaskIntoConstraints = false
            albumName.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
            albumName.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
            albumName.textAlignment = .center
            albumName.backgroundColor = .systemGray6
        }
    }
    // Cell의 폭
    var width: CGFloat!{
        didSet{
            albumName.translatesAutoresizingMaskIntoConstraints = false
            albumName.widthAnchor.constraint(equalToConstant: width - 18).isActive = true
        }
    }
    // Cell의 높이
    var height: CGFloat!{
        didSet{
            albumImage.translatesAutoresizingMaskIntoConstraints = false
            albumImage.heightAnchor.constraint(equalToConstant: height - 18).isActive = true
            albumImage.widthAnchor.constraint(equalToConstant: height - 18).isActive = true
            
            albumName.translatesAutoresizingMaskIntoConstraints = false
            albumName.heightAnchor.constraint(equalToConstant: 15).isActive = true
        }
    }
    
}
