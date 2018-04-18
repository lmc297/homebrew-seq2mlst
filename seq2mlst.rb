class Seq2mlst < Formula
  desc "A command line tool for performing in silico multi-locus sequence typing (MLST) using bacterial genomic data"
  homepage "https://github.com/lmc297/seq2mlst/"
  url "https://github.com/lmc297/seq2mlst/raw/master/archive/seq2mlst-1.0.1.tar.gz"
  sha256 "2e6b7fce6b1cd7383876bd36dca773dd67811dd391d4b7e17bb5bf35f49af9eb"
  version "1.0.1"
  
  depends_on "python"
  depends_on "blast"
  depends_on "spades"
  depends_on "sratoolkit"
  
  #resource "biopython" do
  #  url "http://biopython.org/DIST/biopython-1.69.tar.gz"
  #  sha256 "169ffa90c3d3ec5678c7a5c99501c0cfeb54c40ca51a619ce6cee5026d3403eb"
  #end
  
  bottle :unneeded 
   
  def install
    bin.install "seq2mlst", "seq_mlst_db"
    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python2.7/site-packages"
    ENV.prepend "PYTHONPATH", libexec, ':'
    ENV.prepend "PYTHONPATH", libexec/"src", ':'
    puts "done with env"
    # for python_package in ["biopython"]
    #resource("biopython").stage do
    #  system "python", *Language::Python.setup_install_args(libexec)
    #end


  end
end
