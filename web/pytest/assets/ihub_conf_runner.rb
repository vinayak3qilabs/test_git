require 'rest-client'
require 'zip'
#not required incase of ruby lite shamisen
if !(ENV["IS_RUBY"] == "true")
 require 'java'
end
require 'active_record'
require 'json'
require 'csv'
require 'base64'
require 'pry'

# require "#{File.dirname(__FILE__)}/project_assets/ihub_conf_assets.rb"
require "#{File.dirname(__FILE__)}/ihub_conf_assets.rb"
# Dir["./app/*.rb"].each {|file| require file}

# filename = ARGV[0]
# p filename
t = Time.now
filename = "awe_report_#{t.strftime("%m_%d_%Y_%I_%M_%3N")}"
# Initial Setup
# manifest_file = File.join(File.dirname(__FILE__), 'manifest.json')
# @manifest_data = JSON.parse(File.open(manifest_file).read)['params']
# Get urser creds from PARAMS
# @params = @manifest_data['variables']['conn_details']
@params = {}
# @params['hostname'] = @manifest_data['environment']['url']
# @params['uid'] = @manifest_data['variables'][@manifest_data['environment']['name']]['uid']
# @params['pwd'] = @manifest_data['variables'][@manifest_data['environment']['name']]['pwd']

@params['IL_CL'] = 'sample_test'
@params['TBL_NM'] = 'Test Table'
@params['TYPE_FLAG'] = 'TYPE SELECTION'
@params['TYPE'] = 'TYPE SAMPLE'
@params['SUB_TYPE'] = 'SUB TYPE'

@test_runs_queue = {}
@total_passed = 0
@total_failed = 0
@test_runs_queue[filename] = {"total_tests" => 0, "completed_tests" => 0}
@myRoot = File.join(File.dirname(__FILE__))

run_test_and_report_data(filename)
