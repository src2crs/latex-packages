use Cwd;
my $rootdir = getcwd;
my $builddir = "$rootdir/build";
my $auxdir = "$rootdir/aux";

@default_files = ();
sub addsrcfiles {
    my ($dirname, @filenames) = @_;
    for $filename (@filenames) {
        @default_files = (
            @default_files,
            "$dirname/$filename"
        );
    }
}

$emulate_aux = 1;
$out_dir = "$builddir";
$aux_dir = "$auxdir";
#$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode';
$pdflatex = 'lualatex -interaction=nonstopmode';
$pdf_mode = 1;
$do_cd = 1;
$clean_ext = 'snm nav synctex.gz';

my $examples_distdocs = "$rootdir/examples/distributed_documents";
addsrcfiles("$examples_distdocs/example1",
    "subdoc1/subdoc1.tex",
    "subdoc2/subdoc2.tex",
);
