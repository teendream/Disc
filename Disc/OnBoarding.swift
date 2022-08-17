import UIKit
import SnapKit

class OnBoarding: UIViewController {
    let imageOnboarding = UIImageView(image: UIImage(named: "onBoarding"))
    let labelTitle = UILabel()
    let labelText = UILabel()
    let getStartedBtn = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        styling()
    }

}

extension OnBoarding{
    private func styling(){
        let color1 = hexStringToUIColor(hex: "FAFAFA")
        let color2 = hexStringToUIColor(hex: "#6F6F6F")
        let color3 = hexStringToUIColor(hex: "#0957DE")
        view.backgroundColor = color1
        
        view.addSubview(imageOnboarding)
        imageOnboarding.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(48)
            make.centerX.equalToSuperview()
        }
        
        labelTitle.text = "Discover Latest\n Music and Events"
        labelTitle.font = UIFont.systemFont( ofSize: 36, weight: .semibold)
        labelTitle.numberOfLines = 2
        labelTitle.textAlignment = .center
//        labelTitle.font = UIFont(name: "Plus Jakarta Sans", size: 36)
        
        view.addSubview(labelTitle)
        labelTitle.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(imageOnboarding.snp.bottom).offset(0)
        }
        
        labelText.text = "Listen to the latest music releases and buy music\n event only using Disc. app"
        labelText.numberOfLines = 2
        labelText.textColor = color2
        labelText.textAlignment = .center
        labelText.font = UIFont.systemFont(ofSize: 14)
        
        view.addSubview(labelText)
        labelText.snp.makeConstraints { make in
            make.top.equalTo(labelTitle.snp.bottom).offset(16)
            make.centerX.equalToSuperview()
        }
        
        getStartedBtn.setTitle("Start exploring", for: [])
        getStartedBtn.setTitleColor(.white, for: .normal)
        getStartedBtn.backgroundColor = color3
        getStartedBtn.layer.cornerRadius = 8
        getStartedBtn.addTarget(self, action: #selector(loginTransition), for: .touchUpInside)
        
        view.addSubview(getStartedBtn)
        getStartedBtn.snp.makeConstraints { make in
            make.height.equalTo(52)
            make.bottom.equalTo(view.snp.bottom).offset(-40)
            make.left.equalToSuperview().offset(24)
            make.right.equalTo(view.snp.right).offset(-24)
        }
    }
    
    func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }

        if ((cString.count) != 6) {
            return UIColor.gray
        }

        var rgbValue:UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)

        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    @objc func loginTransition(){
        navigationController?.pushViewController(Login(), animated: true)
    }
    
}

