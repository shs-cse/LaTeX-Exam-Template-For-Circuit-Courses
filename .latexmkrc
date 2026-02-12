$ENV{'TZ'}='Asia/Dhaka';

use File::Basename;
use File::Copy;
use Cwd;

END {
    my $dir_name = basename(getcwd());
    my $source = "main.pdf";
    my $dest = "${dir_name}.pdf";
    
    if (-f $source) {
        copy($source, $dest);
    }
}