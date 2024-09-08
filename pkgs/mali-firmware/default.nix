{
  stdenv,
  fetchurl,
}:
stdenv.mkDerivation {
  pname = "mali-g610-firmware";
  version = "g21p0-01eac0";

  src = fetchurl {
    url = "https://github.com/JeffyCN/mirrors/raw/libmali/firmware/g610/mali_csffw.bin";
    hash = "sha256-jnyCGlXKHDRcx59hJDYW3SX8NbgfCQlG8wKIbWdxLfU=";
  };

  buildCommand = ''
    install -Dm444 $src $out/lib/firmware/mali_csffw.bin
  '';
}
