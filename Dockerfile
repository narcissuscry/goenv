FROM 59a844eb6b66
RUN yum install -y tcl-devel gettext
RUN cd /tmp && bash ./install_git.sh

RUN bash ./install_go.sh
RUN bash ./install_protoBuf.sh
