import Foundation
import UIKit

class HomeVC: UIViewController{
    let topBarNavigation = UIStackView()
    let discoverBtn = UIButton()
    let profilePicture = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = AppColors.onBoardingBackground
        styles()
    }
}

extension HomeVC{
    private func styles(){
        topBarNavigation.axis = .horizontal
        topBarNavigation.distribution = .equalSpacing
        view.addSubview(topBarNavigation)
        topBarNavigation.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(10)
            make.left.equalToSuperview().offset(24)
            make.right.equalToSuperview().offset(-24)
        }
        
        discoverBtn.setTitle("Discover", for: [])
        discoverBtn.setTitleColor(AppColors.darkBlack, for: .normal)
        discoverBtn.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        topBarNavigation.addArrangedSubview(discoverBtn)
        
        profilePicture.setImage(UIImage(named: "profilePic"), for: .normal)
        topBarNavigation.addArrangedSubview(profilePicture)
        
    }
}
