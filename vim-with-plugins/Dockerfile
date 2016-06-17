FROM codecorrupt/vim:7.4

MAINTAINER Tyler Hoyt <tyler.hoyt@kindlingapps.com>

# This is needed to suppress warns from apt-get
ENV DEBIAN_FRONTEND noninteractive

# Go to root to apt-get
USER root

# Install git
RUN apt-get update && \
    apt-get -y install \
        git

# Install vim-plug
COPY plug.vim /home/dev/.vim/autoload/plug.vim

# Update the .vimrm
COPY .vimrc /home/dev/.vimrc

# Change ownership
RUN chown dev:dev .vimrc && \
    chown -R dev:dev .vim/

# Go back to the vim user
USER dev

# Install Vim Plugs
RUN vim +PlugInstall +qall

# Reset the frontend to default
ENV DEBIAN_FRONTEND newt

ENTRYPOINT ["vim"]
