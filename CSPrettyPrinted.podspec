Pod::Spec.new do |s|
  s.name         = "CSPrettyPrinted"
  s.version      = "0.0.1"
  s.summary      = "一个带层级标记的支持中文的控制台打印。"
  s.license      = { :type => 'MIT License', :file => 'LICENSE' }
  s.authors      = { 'Joslyn' => 'cs_joslyn@foxmail.com' }
  s.homepage     = 'https://github.com/JoslynWu/CSPrettyPrinted'
  s.social_media_url   = "http://www.jianshu.com/u/fb676e32e2e9"
  s.ios.deployment_target = '8.0'
  s.source       = { :git => 'git@github.com:JoslynWu/CSPrettyPrinted.git', :tag => s.version.to_s }
  s.requires_arc = true
  s.source_files = 'Sources/*.{h,m}'
  s.public_header_files = 'Sources/*.{h}'
end