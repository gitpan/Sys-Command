use strict;
use warnings;
use Test::More;
use Sys::Command::Process;

my $perl = Sys::Command::Process->new( cmd => [ $^X, '-v' ] );
warn join('', $perl->stdout->getlines);
$perl->close;
ok $perl->exit == 0, 'exit with 0';

done_testing();
