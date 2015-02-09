# This manifest is supposed to work on travis only
# It was not tested on other hosts
#

$pwd = generate('/bin/pwd')

notify { "Command /bin/pwd returns: ${pwd}": }

class { 'symfony':
    username        => 'travis',
    directory       => "${pwd}/web",
    withEnvironment => false,
    withNodejs      => false,
    withAllPhars    => false,
}
