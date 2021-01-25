resource "aws_route53_record" "tfer--Z07386303DNF5EP95AEU0_nire-002E-to-002E-_NS_" {
  name    = "nire.to"
  records = ["ns-1424.awsdns-50.org.", "ns-1897.awsdns-45.co.uk.", "ns-503.awsdns-62.com.", "ns-523.awsdns-01.net."]
  ttl     = "172800"
  type    = "NS"
  zone_id = "${aws_route53_zone.tfer--Z07386303DNF5EP95AEU0_nire-002E-to.zone_id}"
}

resource "aws_route53_record" "tfer--Z07386303DNF5EP95AEU0_nire-002E-to-002E-_SOA_" {
  name    = "nire.to"
  records = ["ns-503.awsdns-62.com. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
  ttl     = "900"
  type    = "SOA"
  zone_id = "${aws_route53_zone.tfer--Z07386303DNF5EP95AEU0_nire-002E-to.zone_id}"
}

resource "aws_route53_record" "tfer--Z3NXXB17ZWWQ87_4ovb6stgicbn67nd4l667pmckpnrnvuf-002E-_domainkey-002E-nire-002E-com-002E-_CNAME_" {
  name    = "4ovb6stgicbn67nd4l667pmckpnrnvuf._domainkey.nire.com"
  records = ["4ovb6stgicbn67nd4l667pmckpnrnvuf.dkim.amazonses.com"]
  ttl     = "1800"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z3NXXB17ZWWQ87_nire-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z3NXXB17ZWWQ87__amazonses-002E-nire-002E-com-002E-_TXT_" {
  name    = "_amazonses.nire.com"
  records = ["JMgIMOv+Rjw+4M5n4OklTZZhQLhcKslzYkImRe42DHk="]
  ttl     = "1800"
  type    = "TXT"
  zone_id = "${aws_route53_zone.tfer--Z3NXXB17ZWWQ87_nire-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z3NXXB17ZWWQ87__ba3523a83824cccfddff9ee22d2d0c14-002E-nire-002E-com-002E-_CNAME_" {
  name    = "_ba3523a83824cccfddff9ee22d2d0c14.nire.com"
  records = ["_ac8786b4f697727a89437928d6c1259a.ltfvzjuylp.acm-validations.aws."]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z3NXXB17ZWWQ87_nire-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z3NXXB17ZWWQ87_bs-002E-nire-002E-com-002E-_A_" {
  name    = "bs.nire.com"
  records = ["54.150.126.106"]
  ttl     = "300"
  type    = "A"
  zone_id = "${aws_route53_zone.tfer--Z3NXXB17ZWWQ87_nire-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z3NXXB17ZWWQ87_h2c7477a2xya3sry4to3fajrnw5lvm4f-002E-_domainkey-002E-nire-002E-com-002E-_CNAME_" {
  name    = "h2c7477a2xya3sry4to3fajrnw5lvm4f._domainkey.nire.com"
  records = ["h2c7477a2xya3sry4to3fajrnw5lvm4f.dkim.amazonses.com"]
  ttl     = "1800"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z3NXXB17ZWWQ87_nire-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z3NXXB17ZWWQ87_k8s-002D-worker-002D-ne1a-002E-nire-002E-com-002E-_A_" {
  name    = "k8s-worker-ne1a.nire.com"
  records = ["18.178.102.121"]
  ttl     = "300"
  type    = "A"
  zone_id = "${aws_route53_zone.tfer--Z3NXXB17ZWWQ87_nire-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z3NXXB17ZWWQ87_kurashibit-002E-nire-002E-com-002E-_AAAA_" {
  alias {
    evaluate_target_health = "false"
    name                   = "d375jb6bhklakv.cloudfront.net"
    zone_id                = "Z2FDTNDATAQYW2"
  }

  name    = "kurashibit.nire.com"
  type    = "AAAA"
  zone_id = "${aws_route53_zone.tfer--Z3NXXB17ZWWQ87_nire-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z3NXXB17ZWWQ87_kurashibit-002E-nire-002E-com-002E-_A_" {
  alias {
    evaluate_target_health = "false"
    name                   = "d375jb6bhklakv.cloudfront.net"
    zone_id                = "Z2FDTNDATAQYW2"
  }

  name    = "kurashibit.nire.com"
  type    = "A"
  zone_id = "${aws_route53_zone.tfer--Z3NXXB17ZWWQ87_nire-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z3NXXB17ZWWQ87_lab-002E-nire-002E-com-002E-_A_" {
  name    = "lab.nire.com"
  records = ["18.181.15.65"]
  ttl     = "300"
  type    = "A"
  zone_id = "${aws_route53_zone.tfer--Z3NXXB17ZWWQ87_nire-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z3NXXB17ZWWQ87_lb-002E-nire-002E-com-002E-_A_" {
  name    = "lb.nire.com"
  records = ["54.150.6.129"]
  ttl     = "300"
  type    = "A"
  zone_id = "${aws_route53_zone.tfer--Z3NXXB17ZWWQ87_nire-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z3NXXB17ZWWQ87_nire-002E-com-002E-_AAAA_" {
  alias {
    evaluate_target_health = "false"
    name                   = "d2sjkpkcivd1qt.cloudfront.net"
    zone_id                = "Z2FDTNDATAQYW2"
  }

  name    = "nire.com"
  type    = "AAAA"
  zone_id = "${aws_route53_zone.tfer--Z3NXXB17ZWWQ87_nire-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z3NXXB17ZWWQ87_nire-002E-com-002E-_A_" {
  alias {
    evaluate_target_health = "false"
    name                   = "d2sjkpkcivd1qt.cloudfront.net"
    zone_id                = "Z2FDTNDATAQYW2"
  }

  name    = "nire.com"
  type    = "A"
  zone_id = "${aws_route53_zone.tfer--Z3NXXB17ZWWQ87_nire-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z3NXXB17ZWWQ87_nire-002E-com-002E-_MX_" {
  name    = "nire.com"
  records = ["1 ASPMX.L.GOOGLE.COM.", "10 ALT3.ASPMX.L.GOOGLE.COM.", "5 ALT1.ASPMX.L.GOOGLE.COM.", "5 ALT2.ASPMX.L.GOOGLE.COM.", "10 ALT4.ASPMX.L.GOOGLE.COM."]
  ttl     = "300"
  type    = "MX"
  zone_id = "${aws_route53_zone.tfer--Z3NXXB17ZWWQ87_nire-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z3NXXB17ZWWQ87_nire-002E-com-002E-_NS_" {
  name    = "nire.com"
  records = ["ns-1423.awsdns-49.org.", "ns-593.awsdns-10.net.", "ns-1892.awsdns-44.co.uk.", "ns-248.awsdns-31.com."]
  ttl     = "172800"
  type    = "NS"
  zone_id = "${aws_route53_zone.tfer--Z3NXXB17ZWWQ87_nire-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z3NXXB17ZWWQ87_nire-002E-com-002E-_SOA_" {
  name    = "nire.com"
  records = ["ns-1423.awsdns-49.org. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
  ttl     = "900"
  type    = "SOA"
  zone_id = "${aws_route53_zone.tfer--Z3NXXB17ZWWQ87_nire-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z3NXXB17ZWWQ87_nire-002E-com-002E-_TXT_" {
  name    = "nire.com"
  records = ["v=spf1 a:mail.nire.to include:_spf.google.com ~all"]
  ttl     = "300"
  type    = "TXT"
  zone_id = "${aws_route53_zone.tfer--Z3NXXB17ZWWQ87_nire-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z3NXXB17ZWWQ87_origin-002E-nire-002E-com-002E-_A_" {
  name    = "origin.nire.com"
  records = ["54.65.77.72"]
  ttl     = "300"
  type    = "A"
  zone_id = "${aws_route53_zone.tfer--Z3NXXB17ZWWQ87_nire-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z3NXXB17ZWWQ87_www-002E-nire-002E-com-002E-_AAAA_" {
  alias {
    evaluate_target_health = "false"
    name                   = "d2sjkpkcivd1qt.cloudfront.net"
    zone_id                = "Z2FDTNDATAQYW2"
  }

  name    = "www.nire.com"
  type    = "AAAA"
  zone_id = "${aws_route53_zone.tfer--Z3NXXB17ZWWQ87_nire-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z3NXXB17ZWWQ87_www-002E-nire-002E-com-002E-_A_" {
  alias {
    evaluate_target_health = "false"
    name                   = "d2sjkpkcivd1qt.cloudfront.net"
    zone_id                = "Z2FDTNDATAQYW2"
  }

  name    = "www.nire.com"
  type    = "A"
  zone_id = "${aws_route53_zone.tfer--Z3NXXB17ZWWQ87_nire-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z3NXXB17ZWWQ87_x3u4w5qqkaebazzg6s236cu4p7pskd4w-002E-_domainkey-002E-nire-002E-com-002E-_CNAME_" {
  name    = "x3u4w5qqkaebazzg6s236cu4p7pskd4w._domainkey.nire.com"
  records = ["x3u4w5qqkaebazzg6s236cu4p7pskd4w.dkim.amazonses.com"]
  ttl     = "1800"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z3NXXB17ZWWQ87_nire-002E-com.zone_id}"
}
