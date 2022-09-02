import UIKit
import SnapKit

class LoginVC:UIViewController{
    let signInTitle = UILabel()
    let signInDescription = UILabel()
    let createOption = UIStackView()
    let createAccount = UILabel()
    let createAccBtn = UIButton()
    let mailPasswordWrapper = UIStackView()
    let mailWrapper = UIStackView()
    let mailLabel = UILabel()
    let mailTextField = UITextField()
    let passwordWrapper = UIStackView()
    let passwordLabel = UILabel()
    let passwordTextField = UITextField()
    let forgotPassword = UIButton()
    let loginVia = UIStackView()
    let googleButton = UIButton()
    let facebookButton = UIButton()
    let loginViaLabel = UILabel()
    let signInButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = AppColors.loginBackground
        navigationController?.navigationBar.isHidden = true
        styling()
    }
    
}

extension LoginVC{
    private func styling(){
        signInTitle.text = "Sign in"
        signInTitle.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        view.addSubview(signInTitle)
        
        signInTitle.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(40)
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
        
        view.addSubview(createOption)
        createOption.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(view.snp.bottom).offset(-40)
        }
        
        createOption.axis = .horizontal
        createOption.spacing = 8
        
        createAccount.text = "Don't have account?"
        createAccount.textColor = AppColors.darkGray
        createAccount.font = UIFont.systemFont(ofSize: 14, weight: .light)
        createOption.addArrangedSubview(createAccount)
        
        createAccBtn.setTitle("Create account", for: [])
        createOption.addArrangedSubview(createAccBtn)
        createAccBtn.setTitleColor(.blue, for: .normal)
        createAccBtn.titleLabel?.font = .systemFont(ofSize: 14, weight: .light)
        
        mailPasswordWrapper.axis = .vertical
        mailPasswordWrapper.spacing = 32
        view.addSubview(mailPasswordWrapper)
        mailPasswordWrapper.snp.makeConstraints { make in
            make.top.equalTo(signInDescription.snp.bottom).offset(50)
            make.left.equalToSuperview().offset(24)
            make.right.equalToSuperview().offset(-24)
        }
        mailWrapper.axis = .vertical
        mailWrapper.spacing = 12
        mailPasswordWrapper.addArrangedSubview(mailWrapper)
        
        mailWrapper.addArrangedSubview(mailLabel)
        mailLabel.text = "Email"
        mailLabel.textColor = AppColors.lightGray
        mailLabel.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        
        mailWrapper.addArrangedSubview(mailTextField)
        mailTextField.placeholder = "Enter your email"
        mailTextField.snp.makeConstraints { make in
            make.height.equalTo(52)
        }
        mailTextField.borderStyle = .roundedRect
        mailTextField.layer.cornerRadius = 8
        
        passwordWrapper.axis = .vertical
        passwordWrapper.spacing = 12
        mailPasswordWrapper.addArrangedSubview(passwordWrapper)
        
        passwordWrapper.addArrangedSubview(passwordLabel)
        passwordLabel.text = "Password"
        passwordLabel.textColor = AppColors.lightGray
        passwordLabel.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        
        passwordWrapper.addArrangedSubview(passwordTextField)
        passwordTextField.placeholder = "Password"
        passwordTextField.snp.makeConstraints { make in
            make.height.equalTo(52)
        }
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.layer.cornerRadius = 8
        
        forgotPassword.setTitle("Forgot password?", for: [])
        view.addSubview(forgotPassword)
        forgotPassword.setTitleColor(AppColors.darkBlue, for: .normal)
        forgotPassword.snp.makeConstraints { make in
            make.top.equalTo(mailPasswordWrapper.snp.bottom).offset(16)
            make.right.equalToSuperview().offset(-24)
        }
        forgotPassword.titleLabel?.font = .systemFont(ofSize: 14, weight: .light)
        
        loginVia.axis = .horizontal
        loginVia.spacing = 24
        view.addSubview(loginVia)
        loginVia.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(createOption.snp.top).offset(-32)
        }
        
        loginVia.addArrangedSubview(googleButton)
        googleButton.setImage(UIImage(named: "google"), for: .normal)
        
        loginVia.addArrangedSubview(facebookButton)
        facebookButton.setImage(UIImage(named: "facebook"), for: .normal)
        
        loginViaLabel.text = "Or sign in using your social profile"
        loginViaLabel.textColor = AppColors.darkGray
        loginViaLabel.font = UIFont.systemFont(ofSize: 14, weight: .light)
        view.addSubview(loginViaLabel)
        loginViaLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(loginVia.snp.top).offset(-16)
        }
        
        signInButton.setTitle("Sign in", for: [])
        signInButton.setTitleColor(.white, for: .normal)
        signInButton.backgroundColor = AppColors.darkBlue
        signInButton.layer.cornerRadius = 8
        signInButton.addTarget(self, action: #selector(goHome), for: .touchUpInside)
        view.addSubview(signInButton)
        signInButton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.right.equalToSuperview().offset(-24)
            make.bottom.equalTo(loginViaLabel).offset(-32)
            make.height.equalTo(52)
        }
    }
    
    @objc func goHome(){
        navigationController?.pushViewController(HomeVC(), animated: true)
    }
}
