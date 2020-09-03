Pod::Spec.new do |s|
  s.name           = 'BDGViews'
  s.version        = '0.0.10'
  s.summary        = 'Great UIView subclasses with IBInspectables'
  s.license 	   = 'MIT'
  s.description    = 'Great UIView subclasses with IBInspectable properties to quickly have a shadowed view, rounded view, circular view, etc.'
  s.homepage       = 'https://github.com/officeapp/BDGViews'
  s.authors        = {'Bob de Graaf' => 'graafict@gmail.com'}
  s.source         = { :git => 'https://github.com/officeapp/BDGViews.git', :tag => s.version.to_s }
  s.source_files   = 'BDGViews/**/*.{h,m}'
  s.frameworks     = 'UIKit'
  s.platform       	= :ios, '8.0'
  s.requires_arc   	= true
end
