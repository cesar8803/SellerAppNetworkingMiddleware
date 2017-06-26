Pod::Spec.new do |s|
    # 1 Settings
    s.platform = :ios
    s.ios.deployment_target = '10.0'
    s.name = "SellerAppNetworkingMW"
    s.summary = "Pod con la colección de servicios de Midleware."
    s.requires_arc = true
    # 1 Version
    s.version = "1.0.0"
    # 3 License
    s.license = { :type => "MIT", :file => "LICENSE" }
    # 4 Author
    s.author = { "Bernardino Guerrero Ibarra" => "bernardino.guerrero@gmail.com" }
    # 5 HomePage
    s.homepage = "https://www.liverpool.com.mx"
    # 6 URL Git
    s.source = { :git => "https://github.com/cesar8803/SellerAppNetworkingMiddleware.git", :tag => "#{s.version}" }
    # 7 Dependencies
    s.framework = "Foundation"
    s.dependency 'Alamofire', '~> 4.0'
    s.dependency 'AlamofireObjectMapper', '~> 4.0'
    # 8 Sources Files
    s.source_files = "SellerAppNetworkingMW/**/*.{swift}"
    # 9 Resources
    # s.resources = "SellerAppNetworkingMW/**/*.{png,jpeg,jpg,storyboard,xib}"
end
