# openssl-ca
# Autogenerated from man page /usr/share/man/man1/openssl-ca.1ssl.gz
complete -c openssl-ca -o help --description 'Print out a usage message.'
complete -c openssl-ca -o verbose --description 'This prints extra details about the operations being performed.'
complete -c openssl-ca -o config --description 'Specifies the configuration file to use.'
complete -c openssl-ca -o name --description 'Specifies the configuration file section to use (overrides default_ca in the …'
complete -c openssl-ca -o in --description 'An input filename containing a single certificate request to be signed by the…'
complete -c openssl-ca -o ss_cert --description 'A single self-signed certificate to be signed by the \\s-1CA. \\s0.'
complete -c openssl-ca -o spkac --description 'A file containing a single Netscape signed public key and challenge and addit…'
complete -c openssl-ca -o infiles --description 'If present this should be the last option, all subsequent arguments are taken…'
complete -c openssl-ca -o out --description 'The output file to output certificates to.  The default is standard output.'
complete -c openssl-ca -o outdir --description 'The directory to output certificates to.'
complete -c openssl-ca -o cert --description 'The \\s-1CA\\s0 certificate file.'
complete -c openssl-ca -o keyfile --description 'The private key to sign requests with.'
complete -c openssl-ca -o keyform --description 'The format of the data in the private key file.  The default is \\s-1PEM. \\s0.'
complete -c openssl-ca -o key --description 'The password used to encrypt the private key.'
complete -c openssl-ca -o selfsign --description 'Indicates the issued certificates are to be signed with the key the certifica…'
complete -c openssl-ca -o passin --description 'The key password source.'
complete -c openssl-ca -o notext --description 'Don\'t output the text form of a certificate to the output file.'
complete -c openssl-ca -o startdate --description 'This allows the start date to be explicitly set.'
complete -c openssl-ca -o enddate --description 'This allows the expiry date to be explicitly set.'
complete -c openssl-ca -o days --description 'The number of days to certify the certificate for.'
complete -c openssl-ca -o md --description 'The message digest to use.'
complete -c openssl-ca -o policy --description 'This option defines the \\s-1CA\\s0 \\*(L"policy\\*(R" to use.'
complete -c openssl-ca -o msie_hack --description 'This is a deprecated option to make ca work with very old versions of the \\s-…'
complete -c openssl-ca -o preserveDN --description 'Normally the \\s-1DN\\s0 order of a certificate is the same as the order of the…'
complete -c openssl-ca -o noemailDN --description 'The \\s-1DN\\s0 of a certificate can contain the \\s-1EMAIL\\s0 field if present …'
complete -c openssl-ca -o batch --description 'This sets the batch mode.'
complete -c openssl-ca -o extensions --description 'The section of the configuration file containing certificate extensions to be…'
complete -c openssl-ca -o extfile --description 'An additional configuration file to read certificate extensions from (using t…'
complete -c openssl-ca -o engine --description 'Specifying an engine (by its unique id string) will cause ca to attempt to ob…'
complete -c openssl-ca -o subj --description 'Supersedes subject name given in the request.'
complete -c openssl-ca -o utf8 --description 'This option causes field values to be interpreted as \\s-1UTF8\\s0 strings, by …'
complete -c openssl-ca -o create_serial --description 'If reading serial from the text file as specified in the configuration fails,…'
complete -c openssl-ca -o rand_serial --description 'Generate a large random number to use as the serial number.'
complete -c openssl-ca -o multivalue-rdn --description 'This option causes the -subj argument to be interpreted with full support for…'
complete -c openssl-ca -o rand --description 'A file or files containing random data used to seed the random number generat…'

