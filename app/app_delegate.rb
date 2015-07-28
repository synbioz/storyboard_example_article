class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

    storyboard = UIStoryboard.storyboardWithName("main", bundle:nil)
    rootVC = storyboard.instantiateViewControllerWithIdentifier("main")

    @window.rootViewController = rootVC
    @window.makeKeyAndVisible

    true
  end
end
