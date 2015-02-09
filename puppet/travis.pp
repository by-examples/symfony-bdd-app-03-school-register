# This manifest is supposed to work on travis only
# It was not tested on other hosts
#

#$tmp_pwd = generate('/bin/bash', '-c', 'eval echo "~travis"')
#$final_pwd = inline_template('<%= @tmp_pwd.strip %>')
#notify { "FINAL PWD: ${final_pwd}": }


#
# The file travis-config.txt is created in .travis.yml
#
$tmp_pwd = generate('/bin/cat', 'travis-config.txt')
$final_pwd = inline_template('<%= @tmp_pwd.strip %>')
notify { "FINAL PWD: ${final_pwd}": }

class { 'symfony':
    username        => 'travis',
    directory       => "${final_pwd}/web",
#    directory       => '/home/travis/build/by-examples/symfony-bdd-app-03-school-register',
    withEnvironment => false,
    withNodejs      => false,
    withAllPhars    => false,
}
