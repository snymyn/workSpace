//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .red
        
        let cardView = UIView()	
        cardView.frame = CGRect(x: 20, y: 255, width: 300, height: 250)
        cardView.backgroundColor = UIColor(red: 255/255, green: 45/255, blue: 85/255, alpha: 1)
        cardView.layer.cornerRadius = 14
        cardView.layer.shadowOpacity = 0.25
        cardView.layer.shadowRadius = 10
        
        let titleLabel = UILabel()
        titleLabel.frame = CGRect(x: 16, y: 16, width: 272, height: 38)
        titleLabel.textColor = .white
        titleLabel.text = "Learn Swift 4"
        titleLabel.font = .systemFont(ofSize: 32, weight: .semibold)
        
        let captionLabel = UILabel()
        captionLabel.frame = CGRect(x: 16, y: 204, width: 272, height: 40)
        captionLabel.textColor = .white
        captionLabel.text = "Design directoly in Playground"
        
        
        let coverImageView = UIImageView()
        coverImageView.frame = CGRect(x: 0, y: 0, width: 300, height: 250)
        coverImageView.contentMode = .scaleAspectFill
        coverImageView.image = UIImage(named: "Cover.jpg")
        coverImageView.clipsToBounds = true
        coverImageView.layer.cornerRadius = 14
        
        let backgroundImageView = UIImageView()
        backgroundImageView.frame = CGRect(x: 0, y: 0, width: 375, height: 667)
        backgroundImageView.image = #imageLiteral(resourceName: "Chapters Screen@2x.png")
        
        view.addSubview(backgroundImageView)
        view.addSubview(cardView)
        cardView.addSubview(coverImageView)
        cardView.addSubview(captionLabel)
        cardView.addSubview(titleLabel)
        view.addSubview(label)
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
