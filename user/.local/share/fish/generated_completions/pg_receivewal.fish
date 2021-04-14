# pg_receivewal
# Autogenerated from man page /usr/share/man/man1/pg_receivewal.1.gz
complete -c pg_receivewal -s D --description 'Directory to write the output to. sp This parameter is required.'
complete -c pg_receivewal -l if-not-exists --description 'Do not error out when --create-slot is specified and a slot with the specifie…'
complete -c pg_receivewal -o 'n
.br
--no-loop' --description 'Don\\*(Aqt loop on connection errors.  Instead, exit right away with an error.'
complete -c pg_receivewal -s s --description 'Specifies the number of seconds between status packets sent back to the serve…'
complete -c pg_receivewal -s S --description 'Require pg_receivewal to use an existing replication slot (see Section26. 2.'
complete -c pg_receivewal -l synchronous --description 'Flush the WAL data to disk immediately after it has been received.'
complete -c pg_receivewal -o 'v
.br
--verbose' --description 'Enables verbose mode.'
complete -c pg_receivewal -s Z --description 'Enables gzip compression of write-ahead logs, and specifies the compression l…'
complete -c pg_receivewal -s d --description 'Specifies parameters used to connect to the server, as a connection string; t…'
complete -c pg_receivewal -s h --description 'Specifies the host name of the machine on which the server is running.'
complete -c pg_receivewal -s p --description 'Specifies the TCP port or local Unix domain socket file extension on which th…'
complete -c pg_receivewal -s U --description 'User name to connect as.'
complete -c pg_receivewal -o 'w
.br
--no-password' --description 'Never issue a password prompt.'
complete -c pg_receivewal -o 'W
.br
--password' --description 'Force pg_receivewal to prompt for a password before connecting to a database.'
complete -c pg_receivewal -l create-slot --description 'Create a new physical replication slot with the name specified in --slot, the…'
complete -c pg_receivewal -l drop-slot --description 'Drop the replication slot with the name specified in --slot, then exit.'
complete -c pg_receivewal -o 'V
.br
--version' --description 'Print the pg_receivewal version and exit.'
complete -c pg_receivewal -o '?
.br
--help' --description 'Show help about pg_receivewal command line arguments, and exit.'
complete -c pg_receivewal -s n --description 'parameter.  OPTIONS.'
complete -c pg_receivewal -l directory --description '.'
complete -c pg_receivewal -l no-loop --description '.'
complete -c pg_receivewal -l status-interval --description '.'
complete -c pg_receivewal -l slot --description '.'
complete -c pg_receivewal -s v --description '.'
complete -c pg_receivewal -l verbose --description '.'
complete -c pg_receivewal -l compress --description '.'
complete -c pg_receivewal -l dbname --description '.'
complete -c pg_receivewal -l host --description '.'
complete -c pg_receivewal -l port --description '.'
complete -c pg_receivewal -l username --description '.'
complete -c pg_receivewal -s w --description '.'
complete -c pg_receivewal -l no-password --description '.'
complete -c pg_receivewal -s W --description '.'
complete -c pg_receivewal -l password --description '.'
complete -c pg_receivewal -s V --description '.'
complete -c pg_receivewal -l version --description '.'
complete -c pg_receivewal -s '?' --description '.'
complete -c pg_receivewal -l help --description '.'

