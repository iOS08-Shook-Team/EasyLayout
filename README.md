<div align="center">
<img width="150" src="https://github.com/user-attachments/assets/3e128bac-3a22-43ac-8543-b73c819db829">

# EasyLayout for iOS
[Documentation(KR)](https://github.com/boostcampwm-2024/iOS08-Shook/wiki/EasyLayout)
</div>



## 🔧 Installation
### EN
EasyLayout can be installed using Swift Package Manager.    
To add it to your project, open Xcode and go to File -> Add Packages...,    
search for `https://github.com/iOS08-Shook-Team/EasyLayout` and add the package as your project's dependency.

### KR
EasyLayout은 Swift Package Manager를 통해 설치할 수 있습니다.    
프로젝트에 추가하려면 Xcode를 열고 File -> Add Packages로 이동한 후,    
`https://github.com/iOS08-Shook-Team/EasyLayout`를 검색해 패키지를 프로젝트의 의존성으로 추가합니다.

## 📓 Quick Start - Usage

```Swift
import EasyLayout

final class ViewController: UIViewController {
    let redView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(redView)
        redView.backgroundColor = .red
        redView.ezl.makeConstraint {
            $0.top(to: view)
                .size(with: 100)
        }
    }
}
```

##  📜 License
MIT license
