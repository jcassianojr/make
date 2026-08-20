# =============================================================================
# SCRIPT DE CONFIGURAÇÃO E INSTALAÇÃO DE PACOTES - MSYS2
# =============================================================================

# Sincroniza e atualiza o sistema base
pacman -Sy
pacman -Syu --noconfirm
pacman -Su --noconfirm

# Ferramentas essenciais globais de build e controle de versão do MSYS
pacman -S --noconfirm --needed git bison make ccache ninja intltool perl perl-XML-Parser


# =============================================================================
# 1. AMBIENTE MINGW32 (32-bit)
# =============================================================================

# [A] Compiladores, Toolchain e Ferramentas de Sistema
pacman -S --noconfirm --needed \
    mingw-w64-i686-binutils \
    mingw-w64-i686-ccache \
    mingw-w64-i686-crt-git \
    mingw-w64-i686-file \
    mingw-w64-i686-gcc \
    mingw-w64-i686-ninja \
    mingw-w64-i686-toolchain

# [B] Bancos de Dados (Database)
pacman -S --noconfirm --needed \
    mingw-w64-i686-firebird2 \
    mingw-w64-i686-mariadb-connector-c \
    mingw-w64-i686-postgresql \
    mingw-w64-i686-sqlite3

# [C] Gráficos, Interface e Documentos
pacman -S --noconfirm --needed \
    mingw-w64-i686-allegro \
    mingw-w64-i686-cairo \
    mingw-w64-i686-freeimage \
    mingw-w64-i686-ghostscript \
    mingw-w64-i686-libgd \
    mingw-w64-i686-qt5-base

# [D] Bibliotecas de Sistema, Rede e Utilitários
pacman -S --noconfirm --needed \
    mingw-w64-i686-amqp-cpp \
    mingw-w64-i686-bzip2 \
    mingw-w64-i686-curl \
    mingw-w64-i686-expat \
    mingw-w64-i686-icu \
    mingw-w64-i686-libharu \
    mingw-w64-i686-liblzf \
    mingw-w64-i686-libssh2 \
    mingw-w64-i686-libxlsxwriter \
    mingw-w64-i686-libyaml \
    mingw-w64-i686-openssl \
    mingw-w64-i686-rabbitmq-c \
    mingw-w64-i686-unrar \
    mingw-w64-i686-zlib


# =============================================================================
# 2. AMBIENTE MINGW64 (64-bit tradicional)
# =============================================================================

# [A] Compiladores, Toolchain e Ferramentas de Sistema
pacman -S --noconfirm --needed \
    mingw-w64-x86_64-binutils \
    mingw-w64-x86_64-ccache \
    mingw-w64-x86_64-crt-git \
    mingw-w64-x86_64-file \
    mingw-w64-x86_64-gcc \
    mingw-w64-x86_64-ninja \
    mingw-w64-x86_64-toolchain

# [B] Bancos de Dados (Database)
pacman -S --noconfirm --needed \
    mingw-w64-x86_64-firebird2 \
    mingw-w64-x86_64-libmariadbclient \
    mingw-w64-x86_64-mariadb-connector-c \
    mingw-w64-x86_64-mongo-c-driver \
    mingw-w64-x86_64-postgresql \
    mingw-w64-x86_64-sqlite3

# [C] Gráficos, Interface e Documentos
pacman -S --noconfirm --needed \
    mingw-w64-x86_64-allegro \
    mingw-w64-x86_64-cairo \
    mingw-w64-x86_64-freeimage \
    mingw-w64-x86_64-ghostscript \
    mingw-w64-x86_64-imagemagick \
    mingw-w64-x86_64-libgd \
    mingw-w64-x86_64-qt5-base

# [D] Bibliotecas de Sistema, Rede e Utilitários
pacman -S --noconfirm --needed \
    mingw-w64-x86_64-amqp-cpp \
    mingw-w64-x86_64-bzip2 \
    mingw-w64-x86_64-curl \
    mingw-w64-x86_64-expat \
    mingw-w64-x86_64-icu \
    mingw-w64-x86_64-libharu \
    mingw-w64-x86_64-liblzf \
    mingw-w64-x86_64-libssh2 \
    mingw-w64-x86_64-libxlsxwriter \
    mingw-w64-x86_64-libyaml \
    mingw-w64-x86_64-openssl \
    mingw-w64-x86_64-python-pip \
    mingw-w64-x86_64-python-pipx \
    mingw-w64-x86_64-rabbitmq-c \
    mingw-w64-x86_64-unrar \
    mingw-w64-x86_64-zlib


# =============================================================================
# 3. AMBIENTE UCRT64 (64-bit Universal CRT Moderno)
# =============================================================================

# [A] Compiladores, Toolchain e Ferramentas de Sistema
pacman -S --noconfirm --needed \
    mingw-w64-ucrt-x86_64-ccache \
    mingw-w64-ucrt-x86_64-file \
    mingw-w64-ucrt-x86_64-gcc \
    mingw-w64-ucrt-x86_64-toolchain

# [B] Bancos de Dados (Database)
pacman -S --noconfirm --needed \
    mingw-w64-ucrt-x86_64-mariadb-connector-c \
    mingw-w64-ucrt-x86_64-postgresql \
    mingw-w64-ucrt-x86_64-sqlite3

# [C] Gráficos, Interface e Documentos
pacman -S --noconfirm --needed \
    mingw-w64-ucrt-x86_64-allegro \
    mingw-w64-ucrt-x86_64-cairo \
    mingw-w64-ucrt-x86_64-freeimage \
    mingw-w64-ucrt-x86_64-ghostscript \
    mingw-w64-ucrt-x86_64-libgd \
    mingw-w64-ucrt-x86_64-qt5-base

# [D] Bibliotecas de Sistema, Rede e Utilitários
pacman -S --noconfirm --needed \
    mingw-w64-ucrt-x86_64-bzip2 \
    mingw-w64-ucrt-x86_64-curl \
    mingw-w64-ucrt-x86_64-expat \
    mingw-w64-ucrt-x86_64-icu \
    mingw-w64-ucrt-x86_64-libharu \
    mingw-w64-ucrt-x86_64-liblzf \
    mingw-w64-ucrt-x86_64-libssh2 \
    mingw-w64-ucrt-x86_64-libxlsxwriter \
    mingw-w64-ucrt-x86_64-libyaml \
    mingw-w64-ucrt-x86_64-openssl \
    mingw-w64-ucrt-x86_64-rabbitmq-c \
    mingw-w64-ucrt-x86_64-unrar \
    mingw-w64-ucrt-x86_64-zlib


# =============================================================================
# LIMPEZA FINAL
# =============================================================================

# Limpa o cache de pacotes baixados para reduzir o tamanho da pasta do MSYS2[cite: 1]
pacman -Sc --noconfirm


pacman -S mingw-w64-x86_64-pcre2    # Para 64-bit (MinGW-w64)
pacman -S mingw-w64-i686-pcre2     # Para 32-bit (MinGW-w64)

pacman -S mingw-w64-ucrt-x86_64-sqlite3
pacman -S mingw-w64-x86_64-sqlite3
pacman -S mingw-w64-i686-sqlite3