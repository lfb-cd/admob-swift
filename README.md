# admob-swift
第一步：注册账号
首先你得上admob官网注册账号，得到你的广告单位ID号
如下图：
![这里写图片描述](http://img.blog.csdn.net/20150428131817101)

第二步：下载admob SDK
1.下载地址：http://download.csdn.net/detail/li962429707/8640981
2.导入swift项目：
![这里写图片描述](http://img.blog.csdn.net/20150428134226921)
选择解压好的SDK
![这里写图片描述](http://img.blog.csdn.net/20150428134415620)
![这里写图片描述](http://img.blog.csdn.net/20150428134331333)

在storyboard中添加一块view，并设置好布局：
![这里写图片描述](http://img.blog.csdn.net/20150428134500283)
选择Class
![这里写图片描述](http://img.blog.csdn.net/20150428134604274)

编辑代码：
![这里写图片描述](http://img.blog.csdn.net/20150428134948993)
```

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {

    
    @IBOutlet weak var bannerView: GADBannerView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        bannerView.adUnitID = "你的广告ID"
        bannerView.rootViewController = self
        self.view.addSubview(bannerView)
        var request:GADRequest = GADRequest()
        request.testDevices = [""]
        bannerView.loadRequest(request)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

```

运行情况：
![这里写图片描述](http://img.blog.csdn.net/20150428134729109)
