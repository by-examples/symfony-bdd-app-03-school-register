class { 'symfony':
    username        => 'travis',
    directory       => '/home/travis/build/by-examples/symfony-bdd-app-03-school-register/web',
    withEnvironment => false,
    withNodejs      => false,
    withAllPhars    => false,
}
