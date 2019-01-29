//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    let cardView = UIView()
    let coverImageView = UIImageView()
    let titleLabel = UILabel()
    let captionLabel = UILabel()
    let descriptionLabel = UILabel()
    let backgroundImageView = UIImageView()
    let closeButton = UIButton()
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        cardView.frame = CGRect(x: 20, y: 255, width: 300, height: 250)
        cardView.backgroundColor = UIColor(red: 255/255, green: 45/255, blue: 85/255, alpha: 1)
        cardView.layer.cornerRadius = 14
        cardView.layer.shadowOpacity = 0.25
        cardView.layer.shadowRadius = 10
        
        titleLabel.frame = CGRect(x: 16, y: 16, width: 272, height: 38)
        titleLabel.text = "Learn Swift 4"
        titleLabel.textColor = .white
        titleLabel.font = .systemFont(ofSize: 32, weight: .semibold)
        
        captionLabel.frame = CGRect(x: 16, y: 204, width: 272, height: 40)
        captionLabel.text = "Design directoly in Playground"
        captionLabel.textColor = .white
        
        descriptionLabel.frame = CGRect(x: 20, y: 448, width: 335, height: 132)
        descriptionLabel.text = "I would like to learn Swift and Sketch. I am going to be an Engineer who can design and prototype products and implement it actually in the end"
        descriptionLabel.textColor = .black
        descriptionLabel.numberOfLines = 10
        descriptionLabel.alpha = 0
        
        coverImageView.frame = CGRect(x: 0, y: 0, width: 300, height: 250)
        coverImageView.contentMode = .scaleAspectFill
        coverImageView.image = UIImage(named: "Cover.jpg")
        coverImageView.clipsToBounds = true
        coverImageView.layer.cornerRadius = 14

        backgroundImageView.frame = CGRect(x: 0, y: 0, width: 375, height: 667)
        backgroundImageView.image = UIImage(named: "Chapters Screen@2x.png")
        
        closeButton.frame = CGRect(x: 328, y: 20, width: 28, height: 28)
        closeButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.5)
        closeButton.layer.cornerRadius = 14
        closeButton.setImage(UIImage(named:"Action-Close@2x.png"), for: .normal)
        closeButton.alpha = 0
        
        cardView.addSubview(coverImageView)
        cardView.addSubview(captionLabel)
        cardView.addSubview(titleLabel)
        cardView.addSubview(closeButton)
        cardView.addSubview(descriptionLabel)

        
        view.addSubview(backgroundImageView)
        view.addSubview(cardView)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(cardViewTapped))
        cardView.addGestureRecognizer(tap)
        cardView.isUserInteractionEnabled = true
        
        self.view = view
    }
    
    @objc func cardViewTapped() {
        let animator = UIViewPropertyAnimator(duration: 0.7, dampingRatio: 0.7) {
            self.cardView.frame = CGRect(x: 0, y: 0, width: 375, height: 667)
            self.cardView.layer.cornerRadius = 0
            self.titleLabel.frame = CGRect(x: 20, y: 20, width: 374, height: 38)
            self.captionLabel.frame = CGRect(x: 20, y: 20, width: 375, height: 38)
            self.descriptionLabel.alpha = 1
            self.coverImageView.frame = CGRect(x: 0, y: 0, width: 375, height: 420)
            self.coverImageView.layer.cornerRadius = 0
            self.closeButton.alpha = 1
            
        }
        animator.startAnimation()
    }
    
    @objc func closeButttonTapped() {
        let animator = UIViewPropertyAnimator(duration: 0.7, dampingRatio: 0.7) {
            self.cardView.frame = CGRect(x: 20, y: 256, width: 300, height: 250)
            self.cardView.layer.cornerRadius = 14
            self.titleLabel.frame = CGRect(x: 16, y: 16, width: 272, height: 38)
            self.captionLabel.frame = CGRect(x: 16, y: 204, width: 272, height: 40)
            self.descriptionLabel.alpha = 0
            self.coverImageView.frame = CGRect(x: 0, y: 0, width: 300 , height: 250)
            self.coverImageView.layer.cornerRadius = 14
            self.closeButton.alpha = 0
        }
        animator.startAnimation()
    }
    
    
    
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
