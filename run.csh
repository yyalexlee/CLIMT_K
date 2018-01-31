#/bin/csh

set year = 2018
set mon = FEB


/bin/cp -rf /home/yyalee/CLIMT_K/fig/$mon/$year/Tavg/*png ./fig_fcst_temp
/bin/cp -rf /home/yyalee/CLIMT_K/fig/$mon/$year/Rain/*png ./fig_fcst_rain

sed "s/YEAR/$year/g" README.org > imsi
sed "s/MON/$mon/g" imsi > README.md
/bin/rm -f imsi

git pull https://github.com/yyalexlee/CLIMT_K.git master

git init
git add .
git commit -m "update"

git push
