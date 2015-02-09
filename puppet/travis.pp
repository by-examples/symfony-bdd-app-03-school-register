# This manifest is supposed to work on travis only
# It was not tested on other hosts
#

$tmp_pwd = generate('/bin/bash', '-c', 'eval echo "~travis"')
$final_pwd = inline_template('<%= @tmp_pwd.strip %>')

notify { "FINAL PWD: ${final_pwd}": }

class { 'symfony':
    username        => 'travis',
    directory       => "${final_pwd}/web",
    withEnvironment => false,
    withNodejs      => false,
    withAllPhars    => false,
}
