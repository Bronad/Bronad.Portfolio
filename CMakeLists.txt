depoly:
        flutter build web
        rm -r d:\OwnProjekts\PortfolioLive && \
        cp -R d:\OwnProjekts\EingenProjekte\build\web d:\OwnProjekts\PortfolioLive
        cd d:\OwnProjekts\EingenProjekte\build\web && git add . && git commit -m "Depoly" && git push