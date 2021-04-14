# s_client
# Autogenerated from man page /usr/share/man/man1/s_client.1ssl.gz
complete -c s_client -o help --description 'Print out a usage message.'
complete -c s_client -o connect --description 'This specifies the host and optional port to connect to.'
complete -c s_client -o bind --description 'This specifies the host address and or port to bind as the source for the con…'
complete -c s_client -o proxy --description 'When used with the -connect flag, the program uses the host and port specifie…'
complete -c s_client -o unix --description 'Connect over the specified Unix-domain socket.'
complete -c s_client -s 4 --description 'Use IPv4 only.'
complete -c s_client -s 6 --description 'Use IPv6 only.'
complete -c s_client -o servername --description 'Set the \\s-1TLS SNI\\s0 (Server Name Indication) extension in the ClientHello …'
complete -c s_client -o noservername --description 'Suppresses sending of the \\s-1SNI\\s0 (Server Name Indication) extension in th…'
complete -c s_client -o cert --description 'The certificate to use, if one is requested by the server.'
complete -c s_client -o certform --description 'The certificate format to use: \\s-1DER\\s0 or \\s-1PEM.  PEM\\s0 is the default.'
complete -c s_client -o key --description 'The private key to use.'
complete -c s_client -o keyform --description 'The private format to use: \\s-1DER\\s0 or \\s-1PEM.  PEM\\s0 is the default.'
complete -c s_client -o cert_chain --description 'A file containing trusted certificates to use when attempting to build the cl…'
complete -c s_client -o build_chain --description 'Specify whether the application should build the certificate chain to be prov…'
complete -c s_client -o xkey -o xcert -o xchain --description 'Specify an extra certificate, private key and certificate chain.'
complete -c s_client -o xchain_build --description 'Specify whether the application should build the certificate chain to be prov…'
complete -c s_client -o xcertform -o xkeyform --description 'Extra certificate and private key format respectively.'
complete -c s_client -o pass --description 'the private key password source.'
complete -c s_client -o verify --description 'The verify depth to use.'
complete -c s_client -o verify_return_error --description 'Return verification errors instead of continuing.'
complete -c s_client -o nameopt --description 'Option which determines how the subject or issuer names are displayed.'
complete -c s_client -o CApath --description 'The directory to use for server certificate verification.'
complete -c s_client -o CAfile --description 'A file containing trusted certificates to use during server authentication an…'
complete -c s_client -o chainCApath --description 'The directory to use for building the chain provided to the server.'
complete -c s_client -o chainCAfile --description 'A file containing trusted certificates to use when attempting to build the cl…'
complete -c s_client -o no-CAfile --description 'Do not load the trusted \\s-1CA\\s0 certificates from the default file location.'
complete -c s_client -o no-CApath --description 'Do not load the trusted \\s-1CA\\s0 certificates from the default directory loc…'
complete -c s_client -o requestCAfile --description 'A file containing a list of certificates whose subject names will be sent to …'
complete -c s_client -o dane_tlsa_domain --description 'Enable \\s-1RFC6698/RFC7671 DANE TLSA\\s0 authentication and specify the \\s-1TL…'
complete -c s_client -o dane_tlsa_rrdata --description 'Use one or more times to specify the \\s-1RRDATA\\s0 fields of the \\s-1DANE TLS…'
complete -c s_client -o dane_ee_no_namechecks --description 'This disables server name checks when authenticating via \\s-1DANE-EE\\s0\\|(3) …'
complete -c s_client -o attime -o check_ss_sig -o crl_check -o crl_check_all -o explicit_policy -o extended_crl -o ignore_critical -o inhibit_any -o inhibit_map -o no_alt_chains -o no_check_time -o partial_chain -o policy -o policy_check -o policy_print -o purpose -o suiteB_128 -o suiteB_128_only -o suiteB_192 -o trusted_first -o use_deltas -o auth_level -o verify_depth -o verify_email -o verify_hostname -o verify_ip -o verify_name -o x509_strict --description 'Set various certificate chain validation options.'
complete -c s_client -o reconnect --description 'Reconnects to the same server 5 times using the same session \\s-1ID,\\s0 this …'
complete -c s_client -o showcerts --description 'Displays the server certificate list as sent by the server: it only consists …'
complete -c s_client -o prexit --description 'Print session information when the program exits.'
complete -c s_client -o state --description 'Prints out the \\s-1SSL\\s0 session states.'
complete -c s_client -o debug --description 'Print extensive debugging information including a hex dump of all traffic.'
complete -c s_client -o msg --description 'Show all protocol messages with hex dump.'
complete -c s_client -o trace --description 'Show verbose trace output of protocol messages.'
complete -c s_client -o msgfile --description 'File to send output of -msg or -trace to, default standard output.'
complete -c s_client -o nbio_test --description 'Tests non-blocking I/O.'
complete -c s_client -o nbio --description 'Turns on non-blocking I/O.'
complete -c s_client -o crlf --description 'This option translated a line feed from the terminal into \\s-1CR+LF\\s0 as req…'
complete -c s_client -o ign_eof --description 'Inhibit shutting down the connection when end of file is reached in the input.'
complete -c s_client -o quiet --description 'Inhibit printing of session and certificate information.'
complete -c s_client -o no_ign_eof --description 'Shut down the connection when end of file is reached in the input.'
complete -c s_client -o psk_identity --description 'Use the \\s-1PSK\\s0 identity identity when using a \\s-1PSK\\s0 cipher suite.'
complete -c s_client -o psk --description 'Use the \\s-1PSK\\s0 key key when using a \\s-1PSK\\s0 cipher suite.'
complete -c s_client -o psk_session --description 'Use the pem encoded \\s-1SSL_SESSION\\s0 data stored in file as the basis of a …'
complete -c s_client -o ssl3 -o tls1 -o tls1_1 -o tls1_2 -o tls1_3 -o no_ssl3 -o no_tls1 -o no_tls1_1 -o no_tls1_2 -o no_tls1_3 --description 'These options require or disable the use of the specified \\s-1SSL\\s0 or \\s-1T…'
complete -c s_client -o dtls -o dtls1 -o dtls1_2 --description 'These options make s_client use \\s-1DTLS\\s0 protocols instead of \\s-1TLS.'
complete -c s_client -o sctp --description 'Use \\s-1SCTP\\s0 for the transport protocol instead of \\s-1UDP\\s0 in \\s-1DTLS.'
complete -c s_client -o fallback_scsv --description 'Send \\s-1TLS_FALLBACK_SCSV\\s0 in the ClientHello.'
complete -c s_client -o async --description 'Switch on asynchronous mode.'
complete -c s_client -o max_send_frag --description 'The maximum size of data fragment to send.'
complete -c s_client -o split_send_frag --description 'The size used to split data for encrypt pipelines.'
complete -c s_client -o max_pipelines --description 'The maximum number of encrypt/decrypt pipelines to be used.'
complete -c s_client -o read_buf --description 'The default read buffer size to be used for connections.'
complete -c s_client -o bugs --description 'There are several known bug in \\s-1SSL\\s0 and \\s-1TLS\\s0 implementations.'
complete -c s_client -o comp --description 'Enables support for \\s-1SSL/TLS\\s0 compression.'
complete -c s_client -o no_comp --description 'Disables support for \\s-1SSL/TLS\\s0 compression.'
complete -c s_client -o brief --description 'Only provide a brief summary of connection parameters instead of the normal v…'
complete -c s_client -o sigalgs --description 'Specifies the list of signature algorithms that are sent by the client.'
complete -c s_client -o curves --description 'Specifies the list of supported curves to be sent by the client.'
complete -c s_client -o cipher --description 'This allows the TLSv1.'
complete -c s_client -o ciphersuites --description 'This allows the TLSv1. 3 ciphersuites sent by the client to be modified.'
complete -c s_client -o starttls --description 'Send the protocol-specific message(s) to switch to \\s-1TLS\\s0 for communicati…'
complete -c s_client -o xmpphost --description 'This option, when used with \\*(L"-starttls xmpp\\*(R" or \\*(L"-starttls xmpp-s…'
complete -c s_client -o name --description 'This option is used to specify hostname information for various protocols use…'
complete -c s_client -o tlsextdebug --description 'Print out a hex dump of any \\s-1TLS\\s0 extensions received from the server.'
complete -c s_client -o no_ticket --description 'Disable RFC4507bis session ticket support.'
complete -c s_client -o sess_out --description 'Output \\s-1SSL\\s0 session to filename.'
complete -c s_client -o sess_in --description 'Load \\s-1SSL\\s0 session from filename.'
complete -c s_client -o engine --description 'Specifying an engine (by its unique id string) will cause s_client to attempt…'
complete -c s_client -o rand --description 'A file or files containing random data used to seed the random number generat…'
complete -c s_client -o writerand --description 'Writes random data to the specified file upon exit.'
complete -c s_client -o serverinfo --description 'A list of comma-separated \\s-1TLS\\s0 Extension Types (numbers between 0 and 6…'
complete -c s_client -o status --description 'Sends a certificate status request to the server (\\s-1OCSP\\s0 stapling).'
complete -c s_client -o alpn -o nextprotoneg --description 'These flags enable the Enable the Application-Layer Protocol Negotiation or N…'
complete -c s_client -o ct -o noct --description 'Use one of these two options to control whether Certificate Transparency (\\s-…'
complete -c s_client -o ctlogfile --description 'A file containing a list of known Certificate Transparency logs.'
complete -c s_client -o keylogfile --description 'Appends \\s-1TLS\\s0 secrets to the specified keylog file such that external pr…'
complete -c s_client -o early_data --description 'Reads the contents of the specified file and attempts to send it as early dat…'
complete -c s_client -o enable_pha --description 'For TLSv1. 3 only, send the Post-Handshake Authentication extension.'

