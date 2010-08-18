# Generated by Buildr 1.4.0, change to your liking
# Version number for this release
VERSION_NUMBER = "1.0.0"
# Group identifier for your projects
GROUP = "org.lainsoft.forge"
COPYRIGHT = "Demetrio Cruz"

# Specify Maven 2.0 remote repositories here, like this:
repositories.remote << "http://www.ibiblio.org/maven2/"
repositories.remote << 'http://www.mvnsearch.org/maven2/'
repositories.remote << "http://jwm.dnsalias.com:8081/nexus/content/repositories/thirdparty/"

desc "The Forge project"
define "forge" do

  project.version = VERSION_NUMBER
  project.group = GROUP
  manifest["Implementation-Vendor"] = COPYRIGHT

  compile.from _('src') # using non standard maven layout
  compile.with artifact_ns(:root).artifacts # jars listed on build.yaml

  package(:jar)
  
end
