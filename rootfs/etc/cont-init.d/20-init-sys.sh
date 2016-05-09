#!/usr/bin/with-contenv sh

ns_srv=$(grep -m1 '^nameserver' /etc/resolv.conf)
ns_other=$(grep -Ev '^#|^nameserver' /etc/resolv.conf)
printf '%s\n%s\n' "${ns_srv}" "${ns_other}" > /etc/resolv.conf
