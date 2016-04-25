FROM hellofwy/rt-n56u

MAINTAINER j3r0lin <j3r0lin@icloud.com>

RUN git clone https://bitbucket.org/padavan/rt-n56u.git /opt/rt-n56u
RUN cd /opt/rt-n56u/toolchain-mipsel && ./clean_sources && ./build_toolchain_3.4.x
WORKDIR /opt/rt-n56u/trunk
RUN sed -i 's/N56U/AC54U/' .config &&  ./clear_tree && ./build_firmware