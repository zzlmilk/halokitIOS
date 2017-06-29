
import UIKit

class FrameWorkViewController: UITabBarController {


	override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeViewController:UIViewController=HomeViewController()
		let homeNav=UINavigationController(rootViewController: homeViewController)
        homeNav.tabBarItem=UITabBarItem(title: "首页", image: UIImage(named: "0hight"), selectedImage:UIImage(named: "0normal"))
        
        
        
        
        
        let userViewController:UIViewController=UserViewController()
		let userNav=UINavigationController(rootViewController: userViewController)
        userNav.tabBarItem=UITabBarItem(title: "用户", image: UIImage(named: "0hight"), selectedImage:UIImage(named: "0normal"))
        


        
		let arr=[homeNav,userNav,homeNav]

		self.viewControllers=arr;




		print(homeNav);

		
    }
}
