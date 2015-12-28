au BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/*,*/nginx/conf/* if &ft == '' | setfiletype nginx | endif 
au BufRead,BufNewFile */migwproxy-conf/* if &ft == '' | setfiletype haproxy | endif 
