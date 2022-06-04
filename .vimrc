" .vimrc

set nocompatible
filetype off
" Plugins Vundle
execute pathogen#infect()
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'LaTeX-Suite-aka-Vim-LaTeX'
Plugin 'vimwiki/vimwiki'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()
filetype plugin indent on

" set ctrlp plugin. Run :helptags ~/.vim/bundle/ctrlp.vim/doc
" :help ctrlp.txt
set runtimepath^=~/.vim/bundle/ctrlp.vim

"VimWiki settings
let g:vimwiki_list = [{'path': '~/Documents/vimwiki/', 'path_html': '~/vimwiki_html', 'syntax': 'markdown', 'ext': 'md'}]
let g:vimwiki_global_ext = 0

"nerdtree conf
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>
" airline themes
let g:airline_theme='base16'

syntax on 
syntax enable
set ruler "indicador fila y col
set hlsearch
set nobackup
set clipboard=unnamed "compatibility system clipboard
let mapleader = ',' "leader is comma

"call interactive shell
set shellcmdflag=-ic

" Pressing return clears highlighted search
nnoremap <CR> :nohlsearch<CR>/<BS>

nnoremap Q gqip "format a paragrahp
nnoremap S :vsplit<Return> "Split vertical screen
nnoremap <leader>ll :tabn<Return>
nnoremap <leader>hh :tabp<Return>


" Add optional packages.
set number relativenumber  "toogle relative numbering on (:set relativenumber)
"sys on  "agrega colores dependiendo del tipo de fichero
set tabstop=4  "Tabulador de 4 caracteres
set shiftwidth=4 "Indentación de 4 caracteres
set expandtab  "expandir tabuladores
set autoindent smartindent "automate indentations

"imap <leader>i <Esc> "i para entrar en insert mode, leader i para salir

"Activar color
colorscheme murphy 

"set textwidth
set tw=80
"set wrapmargin=4 "8 characters buffer before the end of the terminal

"disable arrow keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

"division horizontal pestañas
set splitright splitbelow

"acceso fácil a las teclas option
" nmap `` [[ "move to begining of current section
" nmap <leader>++ ]] " move to begining of next section
" nmap +` ][ "end of next section
" nmap `+ [] "end of current section
nmap <leader>` [
nmap <leader>+ ]
imap <leader>ñ ~
"Leader , en vez de crtl-c
imap <leader>, <ESC>

"cambiar de pantalla
nmap <leader>w <C-w>

"imaps cerrar bloques
imap <leader>'' ''<ESC>i
imap <leader>88 ()<ESC>i
imap <leader>` <ESC>A[]<ESC>i
imap <leader>´ <ESC>A{}<ESC>i

"maps de teclas con shift
map! º \
map! <leader>11 \|
map! <leader>111 \|\|
map! <leader>1 !
map! <leader>22 @
map! <leader>2 "
map! <leader>3 #
map! <leader>33 ·
map! <leader>4 $
map! <leader>5 %
map! <leader>6 &
map! <leader>66 &&
map! <leader>7 /
map! <leader>77 //
map! <leader>8 (
map! <leader>9 )
map! <leader>0 =
map! <leader>00 ==
map! <leader>' ?
map! <leader>¡ ¿
map! <leader>e €
map! <leader>< >
map! <leader><< >>
map! <leader>- _
" map! <leader>, <ESC>$a;<ESC>
map! <leader>. :

"skeletons
nnoremap <leader>html :-1read ~/.vim/.skeletons/skel.html<CR>4jf>a
nnoremap <leader>tex :-1read ~/.vim/.skeletons/skel.tex<CR>6jlwa
nnoremap <leader>gitig :-1read ~/.vim/.skeletons/skel.gitignore<CR>

"autocompletado al programar en Java
let java_highlight_functions = 1 "java highlight
imap <leader>sout System.out.println();<ESC>hi
imap <leader>psvm public static void main(String[] args){}<ESC>i<CR><ESC>O
imap <leader>scan Scanner scan = new Scanner(System.in);
imap <leader>rnd Random rnd = new Random();
imap <leader>if if () {<CR>}<ESC>%hhi
imap <leader>for for () {<CR>}<ESC>%hhi
imap <leader>while while () {<CR>}<ESC>%hhi
imap <leader>main public static void main (String[] args) {}<ESC>hi

"abreviaciones
iabbr myname Albert Nafría Febrer
iabbr myemail albert.nafria@gmail.com
iabbr teh the

"ultimos retoques
set fileformat=unix
"set ffs=unix
"set encoding=utf-8
"set fileencoding=utf-8
"set listchars=eol:¶
set list
