# This manifest is supposed to work on travis only
# It was not tested on other hosts
#

$pwd = generate('/bin/pwd')

class { 'symfony':
    username        => 'travis',
    directory       => $pwd,
    withEnvironment => false,
    withNodejs      => false,
    withAllPhars    => false,
}
