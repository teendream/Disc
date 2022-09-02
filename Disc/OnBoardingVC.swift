import UIKit
import SnapKit

class OnBoardingVC:UIViewController{
    let onBoardImage = UIImageView(image: UIImage(named: "onBoardImage"))
    let confirmButton  = UIButton()
    let stackView = UIStackView()
    let appTitle = UILabel()
    let appDescription = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styles()
    }
}

extension OnBoardingVC{
    
    private func styles(){
        view.backgroundColor = AppColors.onBoardingBackground
        
        //MARK: Start exploring button
        confirmButton.setTitle("Start Exploring", for: [])
        confirmButton.backgroundColor = AppColors.darkBlue
        confirmButton.layer.cornerRadius = 8
        confirmButton.addTarget(self, action: #selector(loginTransition), for: .touchUpInside)
        
        view.addSubview(confirmButton)
        confirmButton.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-10)
            make.left.equalToSuperview().offset(24)
            make.right.equalToSuperview().offset(-24)
            make.height.equalTo(52)
        }
        
        view.addSubview(onBoardImage)
        
        onBoardImage.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.centerX.equalToSuperview()
        }
        
        stackView.axis = .vertical
        stackView.spacing = 16
        view.addSubview(stackView)
        stackView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.right.equalToSuperview().offset(-24)
            make.top.equalTo(onBoardImage.snp.bottom).offset(32)
        }
        
        appTitle.text = "Discover latest\n Music and Events"
        appTitle.numberOfLines = 2
        appDescription.numberOfLines = 2
        appDescription.text = "Listen to the latest music releases and buy music\n event only using Disc"
        appTitle.textColor = AppColors.darkBlack
        appTitle.font = UIFont.systemFont(ofSize: 36, weight: .semibold)
        appTitle.textAlignment = .center
        appDescription.textColor = AppColors.darkGray
        appDescription.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        appDescription.textAlignment = .center
        
        
        
        stackView.addArrangedSubview(appTitle)
        stackView.addArrangedSubview(appDescription)
        
    }
    
    @objc func loginTransition(){
        navigationController?.pushViewController(LoginVC(), animated: true)
    }
}
