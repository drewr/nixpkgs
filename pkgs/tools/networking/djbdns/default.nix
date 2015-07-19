{ pkgconfig, stdenv, fetchurl }:

stdenv.mkDerivation rec {
  name = "djbdns-1.05";
  builder = ./builder.sh;

  src = fetchurl {
    url = "http://cr.yp.to/djbdns/${name}.tar.gz";
    md5 = "3147c5cd56832aa3b41955c7a51cbeb2";
  };

  meta = {
    description = "djbdns";
    homepage = http://cr.yp.to/djbdns.html;
  };
}
