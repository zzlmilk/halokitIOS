
import UIKit

class FrameWorkViewController: UITabBarController {



	override class func initialize() {

        var  attrs = [String: NSObject]()
        
//		  attrs[NSForegroundColorAttributeName] = UIColor(r: 87, g: 206, b: 138)
		   UITabBarItem.appearance().setTitleTextAttributes(attrs, for:.selected)
	}

	override func viewDidLoad() {
        super.viewDidLoad()
        
       
                               
		addChildViewControllers()

		
    }

     func addChildViewControllers() {
        setupChildViewController("首页", image: "", selectedImage: "", controller: HomeViewController.init())
        setupChildViewController("用户", image: "", selectedImage: "", controller: UserViewController.init())
         setupChildViewController("用户2", image: "", selectedImage: "", controller: UserViewController.init())
       
    }

     func setupChildViewController(_ title: String, image: String, selectedImage: String, controller: UIViewController) {
     	controller.tabBarItem.title = title
        controller.title = title
        controller.tabBarItem.image = UIImage(named: image)
        controller.tabBarItem.selectedImage = UIImage(named: selectedImage)
        let naviController = UINavigationController.init(rootViewController: controller)
        addChildViewController(naviController)

     }


}
