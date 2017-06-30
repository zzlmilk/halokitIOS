
import UIKit

class FrameWorkViewController: UITabBarController {


<<<<<<< HEAD
	override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeViewController:UIViewController=HomeViewController()
		let homeNav=UINavigationController(rootViewController: homeViewController)
        homeNav.tabBarItem=UITabBarItem(title: "首页", image: UIImage(named: "0hight"), selectedImage:UIImage(named: "0normal"))
        
        
        let userViewController:UIViewController=UserViewController()
		let userNav=UINavigationController(rootViewController: userViewController)
        userNav.tabBarItem=UITabBarItem(title: "用户", image: UIImage(named: "0hight"), selectedImage:UIImage(named: "0normal"))
=======

	override class func initialize() {
>>>>>>> 723d3073ef57421449c161ef95b1e42a974f8f71

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
