# Install awesome_print to local directory
# GEM_HOME=${PWD}/.gem gem install awesome_print
require 'awesome_print'
# require 'kubernetes-operator'
#require './test'
require 'open-uri'

puts 'Content-Type: text/plain; charset=UTF-8'
puts 'Status: 200'

puts

puts 'Hello from ruby!'
puts
puts "ruby version: #{RUBY_VERSION} (#{RUBY_RELEASE_DATE}) [#{RUBY_PLATFORM}]"

puts

# crdGroup = "example.com"
# crdVersion = "v1alpha1"
# #crdPlural = "fancy-ruby-samples"
# crdPlural = "fancy-ruby-ns-samples"
#
# def upsert(obj)
#     @logger.info("create new fancy sample with the name #{obj["spec"]["sampleName"]}")
#     @eventHelper.add(obj,"fancy sample event")
#     {:status => {:message => "upsert works fine"}}
# end
#
# def delete(obj)
#     @logger.info("delete fancy sample with the name #{obj["spec"]["sampleName"]}")
# end
#
# opi = KubernetesOperator.new(crdGroup,crdVersion,crdPlural)
# @logger = opi.getLogger()
# @eventHelper = opi.getEventHelper()
# opi.setUpsertMethod(method(:upsert))
# opi.setDeleteMethod(method(:delete))
# opi.run()

puts "running test http client thingy"

client = Proc.new do |url|
  URI.open(url)
end

# puts get_current_stat_with_time(client)

puts

puts '### ARGV[0] ###'
puts
puts "$0            : #{$0}"
puts "__FILE__      : #{__FILE__}"
puts "$PROGRAM_NAME : #{$PROGRAM_NAME}"

puts

puts '### Arguments ###'
ap ARGV

puts

puts '### Env Vars ###'
ap ENV

puts

puts '### Files ###'
ap Dir.children('/usr') # returns 'local'
ap Dir.children('/') # returns 'local'
