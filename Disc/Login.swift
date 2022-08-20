import UIKit
import SnapKit

class Login:UIViewController{
    let signInTitle = UILabel()
    let signInDescription = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .white
        styling()
    }
}

extension Login{
    private func styling(){
        signInTitle.text = "Sign in"
        signInTitle.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        view.addSubview(signInTitle)
        
        signInTitle.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(20)
            make.left.equalTo(view.snp.left).offset(24)
        }
        
        signInDescription.text = "Please sign in to your account"
        signInDescription.font = UIFont.systemFont(ofSize: 16)
        signInDescription.textColor = .gray
        view.addSubview(signInDescription)
        
        signInDescription.snp.makeConstraints { make in
            make.top.equalTo(signInTitle.snp.bottom).offset(6)
            make.left.equalTo(view.snp.left).offset(24)
        }
        
        
    }
    
}
