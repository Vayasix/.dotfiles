$latex = 'platex -interaction=nonstopmode -kanji=utf-8 %O %S';
$dvipdf = 'dvipdfmx %O -o %D %S'; 
$bibtex = 'pbibtex -kanji=utf8';
$pdf_mode = 3; # use dvipdf
$pdf_update_method = 2;
#$pdf_previewer = "open -a Preview %S";
#$pdf_previewer = "start mupdf %O %S";
$pdf_previewer = 'open -ga /Applications/Skim.app';
$pdf_update_command = 'open -ga /Applications/Skim.app';

# Prevent latexmk from removing PDF after typeset.
# $pvc_view_file_via_temporary = 0;

