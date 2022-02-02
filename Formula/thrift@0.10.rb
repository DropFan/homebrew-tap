class ThriftAT010 < Formula
  desc 'Framework for scalable cross-language services development'
  homepage 'https://thrift.apache.org/'

  stable do
    url 'https://www.apache.org/dyn/closer.cgi?path=/thrift/0.10.0/thrift-0.10.0.tar.gz'
    sha256 '2289d02de6e8db04cbbabb921aeb62bfe3098c4c83f36eec6c31194301efa10b'

    # :( It looks not solve the problem.
    # Fix -flat_namespace being used on Big Sur and later.
    # patch do
    #   url 'https://raw.githubusercontent.com/Homebrew/formula-patches/03cf8088210822aa2c1ab544ed58ea04c897d9c4/libtool/configure-big_sur.diff'
    #   sha256 '35acd6aebc19843f1a2b3a63e880baceb0f5278ab1ace661e57a502d9d78c93c'
    # end
  end

  head do
    # url "https://git-wip-us.apache.org/repos/asf/thrift.git"
    url 'https://github.com/apache/thrift.git', branch: '0.10.0'

    # depends_on 'autoconf' => :build
    # depends_on 'automake' => :build
    # depends_on 'libtool' => :build
    # depends_on 'pkg-config' => :build
  end

  depends_on 'autoconf' => :build
  depends_on 'automake' => :build
  depends_on 'libtool' => :build
  depends_on 'pkg-config' => :build

  depends_on 'bison' => :build
  depends_on 'boost' => [:optional, :test, 'with-boost']
  depends_on 'go' => [:optional, :test, 'with-go']
  depends_on 'ruby' => [:optional, :test, 'with-ruby']
  depends_on 'openssl@1.1'

  conflicts_with 'thrift', because: 'both install `thrift` binaries'
  conflicts_with 'thrift@0.9', because: 'both install `thrift` binaries'

  # option 'with-qt4', 'build the Qt library'
  # option 'with-qt5', 'build the Qt5 library'
  # option 'with-c_glib', 'build the C (GLib) library'
  # option 'with-cpp', 'build the C++ library'
  # option 'with-csharp', 'build the C# library'
  # option 'with-java', 'build the Java library'
  # option 'with-erlang', 'build the Erlang library'
  # option 'with-nodejs', 'build the Nodejs library'
  # option 'with-lua', 'build the Lua library'
  # option 'with-python', 'build the Python library'
  # option 'with-perl', 'build the Perl library'
  # option 'with-php', 'build the PHP library'
  # option 'with-php_extension', 'build the PHP_EXTENSION library'
  # option 'with-dart', 'build the DART library'
  # option 'with-ruby', 'build the Ruby library'
  # option 'with-haskell', 'build the Haskell library'
  # option 'with-go', 'build the Go library'
  # option 'with-haxe', 'build the Haxe library'
  # option 'with-d', 'build the D library'

  # depends_on 'go' => :optional
  # depends_on 'java' => :optional
  # depends_on 'php' => :optional
  # depends_on 'python' => :optional
  # depends_on 'ruby' => :optional

  def install
    system './bootstrap.sh' unless build.stable?

    args = %W[
      --disable-debug
      --disable-tests
      --prefix=#{prefix}
      --libdir=#{lib}
      --with-openssl=#{Formula['openssl@1.1'].opt_prefix}
    ]

    # args << '--without-qt4' unless build.with? 'qt4'
    # args << '--without-qt5' unless build.with? 'qt5'
    # args << '--without-c_glib' unless build.with? 'c_glib'
    # args << '--without-cpp' unless build.with? 'cpp'
    # args << '--without-csharp' unless build.with? 'csharp'
    # args << '--without-d' unless build.with? 'd'
    # args << '--without-dart' unless build.with? 'dart'
    # args << '--without-erlang' unless build.with? 'erlang'
    # args << '--without-go' unless build.with? 'go'
    # args << '--without-haskell' unless build.with? 'haskell'
    # args << '--without-haxe' unless build.with? 'haxe'
    # args << '--without-java' unless build.with? 'java'
    # args << '--without-lua' unless build.with? 'lua'
    # args << '--without-nodejs' unless build.with? 'nodejs'
    # args << '--without-perl' unless build.with? 'perl'
    # args << '--without-php' unless build.with? 'php'
    # args << '--without-php_extension' unless build.with? 'php_extension'
    # args << '--without-python' unless build.with? 'python'
    # args << '--without-ruby' unless build.with? 'ruby'

    # args << '--with-tiger' if build.with? 'tiger'

    args << "--with-qt4=#{build.with?('qt4') ? 'yes' : 'no'}"
    args << "--with-qt5=#{build.with?('qt5') ? 'yes' : 'no'}"
    args << "--with-c_glib=#{build.with?('c_glib') ? 'yes' : 'no'}"
    args << "--with-cpp=#{build.with?('cpp') ? 'yes' : 'no'}"
    args << "--with-csharp=#{build.with?('csharp') ? 'yes' : 'no'}"
    args << "--with-d=#{build.with?('d') ? 'yes' : 'no'}"
    args << "--with-dart=#{build.with?('dart') ? 'yes' : 'no'}"
    args << "--with-erlang=#{build.with?('erlang') ? 'yes' : 'no'}"
    args << "--with-go=#{build.with?('go') ? 'yes' : 'no'}"
    args << "--with-haskell=#{build.with?('haskell') ? 'yes' : 'no'}"
    args << "--with-haxe=#{build.with?('haxe') ? 'yes' : 'no'}"
    args << "--with-java=#{build.with?('java') ? 'yes' : 'no'}"
    args << "--with-lua=#{build.with?('lua') ? 'yes' : 'no'}"
    args << "--with-nodejs=#{build.with?('nodejs') ? 'yes' : 'no'}"
    args << "--with-perl=#{build.with?('perl') ? 'yes' : 'no'}"
    args << "--with-php=#{build.with?('php') ? 'yes' : 'no'}"
    args << "--with-php_extension=#{build.with?('php_extension') ? 'yes' : 'no'}"
    args << "--with-python=#{build.with?('python') ? 'yes' : 'no'}"
    # args << "--with-ruby=#{build.with?('ruby') ? 'yes' : 'no'}"

    # There are some problems, so we disable it.
    # You can install thrift library with package management tool in your language or modify this formula.
    args << '--without-ruby' unless build.with? 'ruby'
    args << '--without-go' unless build.with? 'go'

    if build.with? 'boost'
      args << "--with-boost=#{Formula['boost'].opt_prefix}"
      args << "--with-boost-libdir=#{Formula['boost'].opt_prefix}/lib"
    else
      args << '--without-boost'
    end

    ENV.cxx11 if MacOS.version >= :mavericks && ENV.compiler == :clang

    # Don't install extensions to /usr:
    ENV['PY_PREFIX'] = prefix
    ENV['PHP_PREFIX'] = prefix
    ENV['JAVA_PREFIX'] = buildpath

    ENV['RUBY'] = "#{HOMEBREW_PREFIX}/bin/ruby"
    ENV['RUBY_PREFIX'] = "#{HOMEBREW_PREFIX}/lib/ruby/gems/3.0.0"
    ENV['BUNDLER'] = "#{HOMEBREW_PREFIX}/bin/bundle"

    ENV['GO'] = "#{HOMEBREW_PREFIX}/bin/go"

    system './configure', *args
    ENV.deparallelize

    system 'make'
    system 'make', 'install'
  end

  test do
    system "#{bin}/thrift", '--version'
    (testpath / 'demoservice.thrift').write <<~'TESTIDL'
      service DemoService {
        string Hello(1:string name),
      }
    TESTIDL

    system "#{bin}/thrift", '-r', '--gen', 'rb', 'demoservice.thrift'

    if build.with?('cpp')
      system "#{bin}/thrift", '-r', '--gen', 'cpp', 'demoservice.thrift'
      system ENV.cxx, '-std=c++11', 'gen-cpp/DemoService.cpp',
             'gen-cpp/DemoService_server.skeleton.cpp',
             "-I#{include}/include",
             "-L#{lib}", '-lthrift'
    end

    if build.with? 'go'
      system "#{bin}/thrift", '-r', '--gen', 'go', 'demoservice.thrift'
      system 'go', 'mod', 'init', 'demoservice'
      system 'go', 'get', 'git.apache.org/thrift.git/lib/go/thrift@0.10.0'
      system 'go', 'vet', './gen-go/demoservice'
    end
  end

  def caveats
    <<-CAVEATS

  To find thrift library of your language in github:
      https://github.com/apache/thrift/tree/0.10.0/lib

  You can install thrift library with package management tool in your language.
  eg:

  For golang, you should install thrift library via `go get` in your project root dir
      go get git.apache.org/thrift.git/lib/go/thrift@0.10.0

  To install Ruby binding:
      gem install thrift --version 0.10.0

  Notice:
    There are some issues when build thrift 0.10 with some language library depends on c/c++ on the macOS Montery or m1 mac.
    But build without any language library, thrift binary and generate code is **working** on my m1 mac.

    If you need to build any library with c/c++, make sure that all dependencies can be accessed by `configure` & `make`.
    Please make your own solution if you care about it.

    Welcome to submit PR: https://github.com/DropFan/homebrew-tap/pulls

    CAVEATS
  end
end
