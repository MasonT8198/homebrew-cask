cask "xlink-kai" do
  version "7.4.43,606669993"
  sha256 "01ad053900d624e7b98507a7f2d2f15723bd40e08ea70dceee43057c230a0631"

  url "https://github.com/Team-XLink/releases/releases/download/#{version.before_comma}/XLinkKai-#{version.before_comma}-#{version.after_comma}-macOS_x86_64.dmg",
      verified: "github.com/Team-XLink/releases/"
  name "XLink Kai"
  desc "XLink Kai is a global gaming network - bringing together Xbox, Xbox 360, 
 Xbox One, Xbox Series X/S, Playstation 2, Playstation 3, Playstation 4,
 Playstation 5, PSP, PS Vita, Gamecube, Wii, Wiiu, and Switch, users, in 
 one integrated community. It is software running on your PC or Macintosh 
 that allows you to  play system-link enabled games online for free. 
 Kai is the only service that is not console specific, and boasts one of
 the friendliest communities available."
  homepage "https://www.teamxlink.co.uk/"

  livecheck do
    url "https://github.com/Team-XLink/releases/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/XLinkKai-(\d+(?:\.\d+)*)-(\d+)-macOS\.dmg}i)
      "#{match[1]},#{match[2]}"
    end
  end

  depends_on cask: "wireshark-chmodbpf"

  app "XLink Kai.app"
end
