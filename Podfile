# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'base_rxswift' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  # Pods for base_rxswift
  # Rx
  pod 'RxSwift', '6.5.0'
  pod 'RxCocoa', '6.5.0'
  pod 'RxRelay', '6.5.0'
  pod 'RxViewController'
  
  # Core
  pod 'Reusable', '~> 4.1.2'
  pod 'Then', '~> 2.7.0'
  
  # Others
  pod 'MBProgressHUD', '~> 1.2.0'
  pod 'SDWebImage', '~> 5.8.3'
  
  #Lint
  pod 'SwiftLint'
  
  target 'base_rxswiftTests' do
    inherit! :search_paths
    # Pods for testing
    # Rx
    pod 'RxBlocking', '6.5.0'
    pod 'RxTest', '6.5.0'
  end

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      if config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'].to_f < 12.0
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
      end
    end
  end
end
