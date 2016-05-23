# %S はソースファイル，%O はオプション，%D は出力ファイル，%B は拡張子無しのソースファイルに置換
# 後々次のリンクの設定を取り入れる
#http://konn-san.com/prog/why-not-latexmk.html
$latex = 'platex -interaction=nonstopmode -kanji=utf-8 %O %S';
$dvipdf = 'dvipdfmx %O -o %D %S'; 
$bibtex = 'pbibtex -kanji=utf8';
$biber = 'biber --bblencoding=utf8 -u -U --output_safechars';
$max_repeat = 5;
$pdf_mode = 3; # use dvipdf
$pdf_update_method = 4;

# PDF previewer
$pdf_previewer = 'open -ga Preview %S';
$pdf_update_command = 'open -ga Preview %S';
#$pdf_previewer = 'open -ga ~/Applications/Skim.app %S';
#$pdf_update_command = 'open -ga ~/Applications/Skim.app %S';

# Prevent latexmk from removing PDF after typeset.
# $pvc_view_file_via_temporary = 0;

