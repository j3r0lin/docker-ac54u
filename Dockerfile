FROM hellofwy/rt-n56u

MAINTAINER j3r0lin <j3r0lin@icloud.com>

WORKDIR /opt/rt-n56u/trunk
RUN sed -i 's/N56U/AC54U/' .config &&  ./clear_tree && ./build_firmware
RUN mv images/* /opt && rm -rf /opt/rt-n56u