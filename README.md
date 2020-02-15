# DelphinusDNS
DelphinusDNS is a non-caching, non-recursing DNS server that serves
authoritative answers for A, AAAA, CNAME, DNSKEY, DS, MX, NAPTR, NS,
NSEC3, NSEC3PARAM, PTR, RRSIG, SOA, SRV, SSHFP, TLSA, and TXT resource
records.

For more information please visit DelphinusDNS's [website](https://delphinusdns.org).

# Installation

```shell
$ doas pkg_add delphinusdnsd-1.4.1
print s
```

# Thanks

* Peter J. Philipp for the patience
* @gonzalo for helping with post-install instructions
* Brian Robert Callahan for the awesome [guide](https://www.youtube.com/watch?v=z_TnemhzbXQ) on how to make OpenBSD ports
