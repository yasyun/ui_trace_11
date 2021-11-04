import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var firstName: UITextField!
    @IBOutlet var lastName: UITextField!
    @IBOutlet var checkBox: UIButton!
    private var checked = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        checkBox.addTarget(self,
                           action: #selector(didTapRadioButton),
                           for: .touchUpInside)
        
        firstName.setUnderLine()
        lastName.setUnderLine()
        
        checkBox.layer.borderColor = (UIColor {_ in return #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)}).cgColor
        checkBox.layer.borderWidth = 1.0
    }
    
    @objc private func didTapRadioButton(){
        print("tap")
        
        switch checked {
        case false:
            checkBox.setImage(UIImage(systemName: "checkmark"), for: .normal)
            checked = true
        case true:
            checkBox.setImage(nil, for: .normal)
            checked = false

        }
    }
}

extension UITextField {
    func setUnderLine() {
        // 枠線を非表示にする
        borderStyle = .none
        let underline = UIView()
        // heightにはアンダーラインの高さを入れる
        underline.frame = CGRect(x: 0, y: frame.height, width: frame.width, height: 0.5)
        // 枠線の色
        underline.backgroundColor = UIColor {_ in return #colorLiteral(red: 0.4324146807, green: 0.4324917793, blue: 0.4324045777, alpha: 1)}
        addSubview(underline)
        // 枠線を最前面に
        bringSubviewToFront(underline)
    }
}
