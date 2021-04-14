# dh_installsystemd
# Autogenerated from man page /usr/share/man/man1/dh_installsystemd.1.gz
complete -c dh_installsystemd -l no-enable --description 'Disable the service(s) on purge, but do not enable them on install.'
complete -c dh_installsystemd -l name --description 'Install the service file as name.'
complete -c dh_installsystemd -l restart-after-upgrade --description 'Do not stop the unit file until after the package upgrade has been completed.'
complete -c dh_installsystemd -l no-restart-after-upgrade --description 'Undo a previous --restart-after-upgrade (or the default of compat 10).'
complete -c dh_installsystemd -s r -l no-stop-on-upgrade -l no-restart-on-upgrade --description 'Do not stop service on upgrade.'

