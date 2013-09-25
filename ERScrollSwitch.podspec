Pod::Spec.new do |s|
  s.name         =  'ERScrollSwitch'
  s.version      =  '0.1'
  s.summary      =  'A custom switch for iOS'
  s.homepage     =  'https://github.com/alexnauda/ERScrollSwitch'
  s.author       =  { 'Alex Nauda' => 'alex@alexnauda.com' }
  s.source       =  { :git => 'https://github.com/alexnauda/ERScrollSwitch' }
  
  # Platform setup
  s.requires_arc = true
  s.ios.deployment_target = '5.0'

  # Dependencies
  # s.dependency       'SomePod', '~> 0.1'

  # Frameworks

  s.source_files = '**/*.{h,m}'
  s.resources = '**/*.png'
end
