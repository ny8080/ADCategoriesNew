#
# Be sure to run `pod lib lint ADCategoriesNew.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ADCategoriesNew'
  s.version          = '0.0.1'
  s.summary          = 'A short description of ADCategoriesNew.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/ny8080/ADCategoriesNew'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ny8080' => 'hongsang@2dfire.com' }
  s.source           = { :git => 'https://github.com/ny8080/ADCategoriesNew.git', :tag => s.version.to_s }


  s.ios.deployment_target = '8.0'

  s.source_files = 'ADCategoriesNew/Classes/TDFCategories.h'
  s.resources = "ADCategoriesNew/Assets/**/*.{lproj,png}"
  s.public_header_files = 'ADCategoriesNew/Classes/TDFCategories.h'
  
  subspec_hashs = [
  { spec_name: 'NSBundle', source_files: "Classes/NSBundle/*.{h,m}" }, 
  #{ spec_name: 'NSString', source_files: "Classes/NSString/*.{h,m}", spec_dependency: ["TDFDataCenterKit"] },
  { spec_name: 'NSString', source_files: "Classes/NSString/*.{h,m}", },
  { spec_name: 'UICollectionReusableView', source_files: "Classes/UICollectionReusableView/*.{h,m}" }, 
  { spec_name: 'UICollectionViewCell', source_files: "Classes/UICollectionViewCell/*.{h,m}" }, 
  { spec_name: 'UIColor', source_files: "Classes/UIColor/*.{h,m}" }, 
  { spec_name: 'UIImage', source_files: "Classes/UIImage/*.{h,m}" }, 
  { spec_name: 'UILabel', source_files: "Classes/UILabel/*.{h,m}" }, 
  { spec_name: 'UIScrollView', source_files: "Classes/UIScrollView/*.{h,m}" }, 
  { spec_name: 'UITableViewCell', source_files: "Classes/UITableViewCell/*.{h,m}",spec_dependency: ["Masonry"] }, 
  { spec_name: 'UITableViewHeaderFooterView', source_files: "Classes/UITableViewHeaderFooterView/*.{h,m}" }, 
  { spec_name: 'UIView', source_files: "Classes/UIView/*.{h,m}",spec_dependency: ["MBProgressHUD","Masonry"] },
  { spec_name: 'UIViewController', source_files: "Classes/UIViewController/*.{h,m}" },
  { spec_name: 'NSMutableArray', source_files: "Classes/NSMutableArray/*.{h,m}" },
  { spec_name: 'NSDictionay', source_files: "Classes/NSDictionay/*.{h,m}" },
  { spec_name: 'NSData', source_files: "Classes/NSData/*.{h,m}" },
  { spec_name: 'UIButton', source_files: "Classes/UIButton/*.{h,m}" }
  ]
  
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
