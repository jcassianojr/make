# Sincroniza e atualiza o sistema base 
pacman -Sy
pacman -Syu --noconfirm
pacman -Su --noconfirm

# Ferramentas essenciais de build e controle de versão 
pacman -S --noconfirm --needed git bison make ccache

# [A] Compiladores e Toolchain 
pacman -S --noconfirm --needed mingw-w64-i686-toolchain mingw-w64-i686-gcc

# [B] Bancos de Dados (Database) 
pacman -S --noconfirm --needed \
mingw-w64-i686-sqlite3 \
mingw-w64-i686-postgresql \
mingw-w64-i686-mariadb-connector-c \
mingw-w64-i686-firebird2

# [C] Gráficos, Interface e Documentos 
pacman -S --noconfirm --needed \
mingw-w64-i686-allegro \
mingw-w64-i686-cairo \
mingw-w64-i686-freeimage \
mingw-w64-i686-libgd \
mingw-w64-i686-qt5-base \
mingw-w64-i686-ghostscript

# [D] Bibliotecas de Sistema e Contribs Faltantes (Expat, LZF, Zlib)
pacman -S --noconfirm --needed \
mingw-w64-i686-curl \
mingw-w64-i686-openssl \
mingw-w64-i686-libssh2 \
mingw-w64-i686-icu \
mingw-w64-i686-bzip2 \
mingw-w64-i686-libyaml \
mingw-w64-i686-libharu \
mingw-w64-i686-libxlsxwriter \
mingw-w64-i686-unrar \
mingw-w64-i686-amqp-cpp \
mingw-w64-i686-rabbitmq-c \
mingw-w64-i686-expat \
mingw-w64-i686-liblzf \
mingw-w64-i686-zlib

#libmagic o pacote e file
pacman -S mingw-w64-i686-file

#Para o CRT (C Runtime - cabeçalhos e libs do sistema):
pacman -S mingw-w64-i686-crt-git

#Para o Binutils (ferramentas de linker/montador):
pacman -S mingw-w64-i686-binutil

# [A] Compiladores e Toolchain 
pacman -S --noconfirm --needed mingw-w64-x86_64-toolchain mingw-w64-x86_64-gcc

# [B] Bancos de Dados (Database) 
pacman -S --noconfirm --needed \
mingw-w64-x86_64-sqlite3 \
mingw-w64-x86_64-postgresql \
mingw-w64-x86_64-mariadb-connector-c \
mingw-w64-x86_64-libmariadbclient \
mingw-w64-x86_64-firebird2

# [C] Gráficos, Interface e Documentos 
pacman -S --noconfirm --needed \
mingw-w64-x86_64-allegro \
mingw-w64-x86_64-cairo \
mingw-w64-x86_64-freeimage \
mingw-w64-x86_64-libgd \
mingw-w64-x86_64-qt5-base \
mingw-w64-x86_64-imagemagick \
mingw-w64-x86_64-ghostscript

# [D] Bibliotecas de Sistema e Contribs Faltantes (Expat, LZF, Zlib)
pacman -S --noconfirm --needed \
mingw-w64-x86_64-curl \
mingw-w64-x86_64-openssl \
mingw-w64-x86_64-libssh2 \
mingw-w64-x86_64-icu \
mingw-w64-x86_64-bzip2 \
mingw-w64-x86_64-libyaml \
mingw-w64-x86_64-libharu \
mingw-w64-x86_64-libxlsxwriter \
mingw-w64-x86_64-unrar \
mingw-w64-x86_64-amqp-cpp \
mingw-w64-x86_64-rabbitmq-c \
mingw-w64-x86_64-expat \
mingw-w64-x86_64-liblzf \
mingw-w64-x86_64-zlib

#libmagic o pacote e file
pacman -S mingw-w64-x86_64-file

#Para o CRT (C Runtime - cabeçalhos e libs do sistema):
pacman -S mingw-w64-x86_64-crt-git

#Para o Binutils (ferramentas de linker/montador):
pacman -S mingw-w64-x86_64-binutils

# Limpa o cache para reduzir o tamanho da pasta do MSYS2
pacman -Sc --noconfirm


pacman -S ccache
pacman -S mingw-w64-x86_64-ccache
pacman -S mingw-w64-i686-ccache

pacman -S mingw-w64-x86_64-ninja
pacman -S mingw-w64-i686-ninja



# =============================================================================
# [E] AMBIENTE MODERNO UCRT64 (64-bit Universal CRT)
# =============================================================================

# Atualização de segurança e ferramentas básicas de compilação UCRT
#pacman -S --noconfirm --needed \
#mingw-w64-ucrt-x86_64-toolchain \
#mingw-w64-ucrt-x86_64-gcc \
#mingw-w64-ucrt-x86_64-bison \
#mingw-w64-ucrt-x86_64-make \
#mingw-w64-ucrt-x86_64-ccache

# Bancos de Dados nativos UCRT
#pacman -S --noconfirm --needed \
#mingw-w64-ucrt-x86_64-sqlite3 \
#mingw-w64-ucrt-x86_64-postgresql \
#mingw-w64-ucrt-x86_64-mariadb-connector-c

# Gráficos, Interface e Documentação UCRT
#pacman -S --noconfirm --needed \
#mingw-w64-ucrt-x86_64-allegro \
#mingw-w64-ucrt-x86_64-cairo \
#mingw-w64-ucrt-x86_64-freeimage \
#mingw-w64-ucrt-x86_64-libgd \
#vmingw-w64-ucrt-x86_64-qt5-base \
#mingw-w64-ucrt-x86_64-ghostscript

# Bibliotecas de Sistema, Rede, Compressão e Criptografia UCRT
#pacman -S --noconfirm --needed \
#mingw-w64-ucrt-x86_64-curl \
#mingw-w64-ucrt-x86_64-openssl \
#mingw-w64-ucrt-x86_64-libssh2 \
#mingw-w64-ucrt-x86_64-icu \
#mingw-w64-ucrt-x86_64-bzip2 \
#mingw-w64-ucrt-x86_64-libyaml \
#mingw-w64-ucrt-x86_64-libharu \
#mingw-w64-ucrt-x86_64-libxlsxwriter \
#mingw-w64-ucrt-x86_64-rabbitmq-c \
vmingw-w64-ucrt-x86_64-expat \
#mingw-w64-ucrt-x86_64-zlib

# Libmagic para UCRT (O pacote oficial no MSYS2 chama-se 'file')
#pacman -S --noconfirm --needed mingw-w64-ucrt-x86_64-file
# Limpa o cache para reduzir o tamanho da pasta do MSYS2
#pacman -Sc --noconfirm
# CURL e GD (Estão disponíveis e são estáveis)
#pacman -S --noconfirm --needed mingw-w64-ucrt-x86_64-curl mingw-w64-ucrt-x86_64-libgd
# MARIADB / MYSQL (O MSYS2 usa o conector oficial do MariaDB, que substitui o do MySQL)
#pacman -S --noconfirm --needed mingw-w64-ucrt-x86_64-mariadb-connector-c
# UNRAR (Disponível nativamente)
#pacman -S --noconfirm --needed mingw-w64-ucrt-x86_64-unrar


pacman -S mingw-w64-x86_64-python-pip
pacman -S mingw-w64-x86_64-python-pipx



pacman -S intltool
pacman -S perl perl-XML-Parser