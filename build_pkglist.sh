xbps-query -l | awk '{ print $2}' | xargs -n1 xbps-uhelper getpkgname > pkgs.txt
echo 'xbps-query -l | awk '{ print $2}' | xargs -n1 xbps-uhelper getpkgname > pkgs.txt' >> pkgs.txt
