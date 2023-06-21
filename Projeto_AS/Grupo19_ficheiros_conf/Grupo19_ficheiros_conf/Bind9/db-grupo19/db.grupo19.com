$TTL    604800
@       IN      SOA  ns.grupo19.com.      webmaster.grupo19.com. (
                     2023060801         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;

@       IN      NS      ns.grupo19.com.
@       IN      MX  5   mail.grupo19.com.
@       IN      MX  10  mail1.grupo19.com.
;
@               IN      A       192.168.182.159
mail            IN      A       192.168.182.211
www             IN      A       192.168.100.10
www1		IN	A	192.168.100.10
www2		IN	A	192.168.100.10
otrs		IN	A	192.168.100.11
ns		IN	A	192.168.182.159
@               IN      TXT     "conf bind grupo19.com"
mail1		IN	A	192.168.182.160
