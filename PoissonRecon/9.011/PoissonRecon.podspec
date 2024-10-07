#
#  Be sure to run `pod spec lint Poisson.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "PoissonRecon"
  s.version      = "9.011"
  s.summary      = "Poisson Surface Reconstruction"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
    "Screened Poisson Surface Reconstruction and Smoothed Signed Distance Reconstruction"
                      DESC


  s.homepage     = "https://github.com/StandardCyborg/PoissonRecon"

  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  s.license      = { :type => "MIT", :file => "LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "Standard Cyborg" => "sdk@standardcyborg.com" }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  #  When using multiple platforms
  s.ios.deployment_target = "13.0"
  s.osx.deployment_target = "11.0"

  s.source       = { :git => "git@github.com:StandardCyborg/PoissonRecon.git", :branch => "xcodeproj" }


  s.source_files  = [
    # "Src",
    # "PNG",
    # "JPEG",
    # "ZLIB",  
    "PoissonRecon-Xcode/*.{h,m,mm,cpp}",
    "PoissonRecon-Xcode/Meshing/*.{h,m,mm,cpp}",
    "Src/*.{h,inl,cpp}",
    "**/*.{h,inl,cpp}",
  ]
  s.exclude_files = [
    "Src/PoissonRecon.cpp",
    "Src/SSDRecon.cpp",
    "Src/SurfaceTrimmer.cpp",
    "Src/CmdLineParser.*",
    "Src/VoxelCompare.*",
    "Src/EDTInHeat.*",
    "Src/AdaptiveTreeVisualization.*",
    "Src/ImageStitching.*",
    "JPEG/ckconfig.cpp",
  ]
  s.public_header_files = [
    "PoissonRecon-Xcode/Meshing/MeshingOperation.h",
  ]
  s.preserve_paths = [
    "PoissonRecon-Xcode/*",
    "PoissonRecon-Xcode/**/*",
  ]

  s.requires_arc = true

  s.compiler_flags = "$(inherited) -Wno-deprecated-register -Wno-shift-negative-value -Wno-invalid-offsetof -Wno-unused-variable"

  s.xcconfig = {
      'HEADER_SEARCH_PATHS' => 
        ("$(inherited) " +
         "\"$(PODS_ROOT)/PoissonRecon\" " +
         "\"$(PODS_ROOT)/PoissonRecon/PoissonRecon-Xcode\" "
        ),
  }

end
