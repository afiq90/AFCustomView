Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '9.0'
s.name = "AFCustomView"
s.summary = "AFCustomView lets a user select an ice cream flavor."
s.requires_arc = true

# 2
s.version = "0.3.0"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "Afiq" => "afiqthedeveloper@gmail.com" }

# 5 - Replace this URL with your own GitHub page's URL (from the address bar)
s.homepage = "https://github.com/afiq90/AFCustomView"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/afiq90/AFCustomView.git",
:tag => "#{s.version}" }

# 8
s.source_files = "AFCustomView/**/*.{swift}"

# 9
s.resources = "AFCustomView/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"

# 10
s.swift_version = "4.2"

end

