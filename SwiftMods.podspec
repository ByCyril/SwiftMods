Pod::Spec.new do |s|
  s.name             = 'SwiftMods'
  s.version          = '1.0.1'
  s.summary          = 'A library full of useful functions!'
 
  s.description      = <<-DESC
A library full of useful functions for developers
                       DESC
 
  s.homepage         = 'https://github.com/cyrilivargarcia/SwiftMods'
  s.license          = { :type => 'GNU General Public License v3.0', :file => 'LICENSE' }
  s.author           = { 'Cyril Garcis' => 'garciacy@bycyril.com' }
  s.source           = { :git => 'https://github.com/cyrilivargarcia/SwiftMods.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.source_files = 'SwiftMods/*.swift'
 
end