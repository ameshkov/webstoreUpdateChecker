#!/bin/bash

URL="https://clients2.google.com/service/update2/crx?os=mac&arch=x64&os_arch=x86_64&nacl_arch=x86-64&prod=chromecrx&prodchannel=beta&prodversion=65.0.3325.181&lang=en-GB&acceptformat=crx2,crx3&x=id%3Dmiijbmhjndcihicbljlcieiajhemmdeb%26v%3D3.0.1.9%26uc&x=id%3Djfgcnchfnokfoojgpmjplmmhbdgnemfl%26v%3D1.19.4.16%26uc&x=id%3Dpnhflmgomffaphmnbcogleagmloijbkd%26v%3D2.3%26uc&x=id%3Doofnbdifeelbaidfgpikinijekkjcicg%26v%3D1.5.2%26uc&x=id%3Djacihiikpacjaggdldhcdfjpbibbfjmh%26v%3D1.0.6%26uc&x=id%3Dlpaeiedcpepdabnchbgddmnjbbkaebgj%26v%3D6.0%26uc&x=id%3Dpgbllmbdjgcalkoimdfcpknbjgnhjclg%26v%3D1.3%26uc&x=id%3Dkmljjoddjjkoidiahlgbgjjgodcajhgf%26v%3D1.3.0.10%26uc"

if curl -L "$URL" | grep -q codebase; then
    echo found update
    exit 1
else
    echo not found
fi