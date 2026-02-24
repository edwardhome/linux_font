call plug#begin('~/.vim/plugged')
  " --- 主題與外觀 ---
  Plug 'edwardhome/onedark.vim'

  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " --- 導航與搜尋 ---
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'preservim/tagbar'
  " -- 代碼補全與語法 ---
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-surround'
  Plug 'jiangmiao/auto-pairs'

  " --- Git 整合 ---
  Plug 'tpope/vim-fugitive'
  " --- 中文整合相關fcitx ---
  Plug 'lilydjwg/fcitx.vim'
  call plug#end()
  
" 設定配色
set termguicolors
colorscheme onedark
let g:airline#extensions#tabline#enabled = 1  " 開啟上方 Tabline
let g:airline#extensions#tabline#fnamemod = ':t' " 只顯示檔名，不顯示長路徑
let g:airline_theme='onedark'
" --- 基礎優化 ---
syntax on                   " 開啟語法高亮
filetype plugin indent on   " 自動識別檔案類型並載入對應插件與縮進
let mapleader = "\<Space>"  " 定義 Leader 鍵

" --- 持久化撤銷 (Undo) 安全檢查 ---
if !isdirectory(expand("~/.vim/undo"))
    call mkdir(expand("~/.vim/undo"), "p")
endif
set undofile
set undodir=~/.vim/undo

" --- 介面與操作優化 ---
set number
set relativenumber          " 相對行號，配合 5j, 10k 使用
set cursorline              " 高亮當前行
set wrap                    " 自動換行
set showcmd                 " 顯示指令
set updatetime=300          " 加速回應
set scrolloff=5             " 捲動時光標上下保留 5 行空間
" --- 縮進與搜尋 ---
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set incsearch
set ignorecase
set smartcase

" --- 快捷鍵映射 ---
" 清除搜尋高亮 按下兩次ESC即可清除高亮
nnoremap <Esc><Esc> :nohlsearch<CR>
" 快速存檔與退出
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
" 系統剪貼簿連動 (需先安裝 vim-gtk3)
vnoremap <Leader>y "+y
nnoremap <Leader>p "+p
" --- 快速導航 ---
" Space + f 找專案內所有檔案
nnoremap <Leader>f :Files<CR>
" Space + b 找已經開啟的檔案 (Buffers)
nnoremap <Leader>b :Buffers<CR>
" Space + g 搜尋代碼內容 (需安裝 ripgrep)
nnoremap <Leader>g :Rg<CR>
" 按 Tab 切換到下一個 Buffer (向右)
nnoremap <Tab> :bnext<CR>
" 按 Shift + Tab 切換到上一個 Buffer (向左)
nnoremap <S-Tab> :bprevious<CR>

nmap <F8> :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tagbar_width = 30
