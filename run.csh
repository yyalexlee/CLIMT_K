#/bin/csh

set year = 2017
set mon = APR


/bin/cp -rf /home/yyalee/KOSPRET/fig/$mon/$year/Tavg/*png ./fig_fcst_temp
/bin/cp -rf /home/yyalee/KOSPRET/fig/$mon/$year/Rain/*png ./fig_fcst_rain

sed "s/YEAR/$year/g" README.org > imsi
sed "s/MON/$mon/g" imsi > README.md
/bin/rm -f imsi

git pull https://github.com/yyalexlee/CLiMT_K.git master

git init
git add .
git commit -m "update"

git push
