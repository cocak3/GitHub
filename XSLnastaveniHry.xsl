<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
       <xsl:template match="/">
        {
           <xsl:for-each select="nastaveni"> 
               "nastaveni": {
               <xsl:for-each select="hra">
                   "hra": {
                           "nick": "<xsl:value-of select="nick"/>",
                           "obtiznost": "<xsl:value-of select="obtiznost"/>",
                           "tutorial-povoleno": "<xsl:value-of select="tutorial/@povoleno"/>",
                           "autoBrzdy-povoleno": "<xsl:value-of select="autoBrzdy/@povoleno"/>",
                           "rady-povoleno": "<xsl:value-of select="rady/@povoleno"/>",
                           "auto": "<xsl:value-of select="auto"/>",
                           "trat": "<xsl:value-of select="trat"/>",
                           "pocetZavodniku": "<xsl:value-of select="pocetZavodniku/@hodnota"/>"
                           }</xsl:for-each>,
    
               <xsl:for-each select="grafika">
                   "grafika": {
                        "video": {
                   
                           "rozliseni": "<xsl:value-of select="video/rozliseni"/>",
                           "mod": "<xsl:value-of select="video/mod"/>",
                           "gamma-hodnota": "<xsl:value-of select="video/gamma/@hodnota"/>",
                           "jas-hodnota": "<xsl:value-of select="video/jas/@hodnota"/>",
                           "titulky": "<xsl:value-of select="video/titulky"/>",
                           "vertikalniSynchronizace-povoleno": "<xsl:value-of select="video/vertikalniSynchronizace/@povoleno"/>",
                           "directX": "<xsl:value-of select="video/directX"/>"
                           },
                           
                        "videoKvalita": {
                           
                        "textura": "<xsl:value-of select="videoKvalita/textura"/>",
                        "stiny": "<xsl:value-of select="videoKvalita/stiny"/>",
                        "autoKvalita": "<xsl:value-of select="videoKvalita/autoKvalita"/>",
                        "teren": "<xsl:value-of select="videoKvalita/teren"/>",
                        "voda": "<xsl:value-of select="videoKvalita/voda"/>",                 
                        "antiAliasing": "<xsl:value-of select="videoKvalita/antiAliasing"/>",
                        "anisotropickeFiltrovani-hodnota": "<xsl:value-of select="videoKvalita/anisotropickeFiltrovani/@hodnota"/>",
                        "efekty": "<xsl:value-of select="videoKvalita/efekty"/>",
                        "vicejadroveVykreslovani-povoleno": "<xsl:value-of select="videoKvalita/vicejadroveVykreslovani/@povoleno"/>"
                           
                        }
                             
                           
                           
                           }</xsl:for-each>,
                           
                           <xsl:for-each select="zvuk">
                               "zvuk": {                                                                        
                                        "zakladni":{
                                            
                                            "celkovaHlasitost": "<xsl:value-of select="zakladni/celkovaHlasitost"/>",
                                            "komentator": "<xsl:value-of select="zakladni/komentator"/>",
                                            "fanousci": "<xsl:value-of select="zakladni/fanousci"/>",
                                            "motor": "<xsl:value-of select="zakladni/motor"/>",
                                            "hudbaVPozadi": "<xsl:value-of select="zakladni/hudbaVPozadi"/>",
                                            "zvukKdyzJeHraNaPozadi-povoleno": "<xsl:value-of select="zakladni/zvukKdyzJeHraNaPozadi/@povoleno"/>"                                                                                         
                                                   },
                                            
                                        "pokrocila":{
                                            
                                            "konfiguraceReproduktoru":"<xsl:value-of select="pokrocile/konfiguraceReproduktoru"/>",
                                            "posledniKoloFanousci":"<xsl:value-of select="pokrocile/posledniKoloFanousci"/>"
                                                    },
                                            
                                        "hlasovaKomunikace":{
                                            
                                            "-povoleno": "<xsl:value-of select="hlasovaKomunikace/@povoleno"/>",
                                            "hlasitost": "<xsl:value-of select="hlasovaKomunikace/hlasitost"/>",
                                            "citlivostMikrofonu":"<xsl:value-of select="hlasovaKomunikace/citlivostMikrofonu"/>"
                                            
                                                            }
                               
                                       
                                       } </xsl:for-each>,
                           <xsl:for-each select="multiplayer"> 
                               
                               "multiplayer":{ 
                                              "port-hodnota": "<xsl:value-of select="port/@hodnota"/>",
                                              "chat-povoleno": "<xsl:value-of select="chat/@povoleno"/>",
                                              "aktualniPing": "<xsl:value-of select="aktualniPing"/>",
                                              "maxPing": "<xsl:value-of select="maxPing"/>",
                                              "server": "<xsl:value-of select="server"/>"
                                             
                                             } </xsl:for-each>,
                          <xsl:for-each select="zarizeni">
                                                 
                                "zarizeni":{
                                                        "vstup": "<xsl:value-of select="vstup"/>",
                                                        "citlivost": "<xsl:value-of select="citlivost"/>",
                                "obraceniMysi": {
                                                        "-horizont": "<xsl:value-of select="obraceniMysi/@horizont"/>",
                                                        "-vertikal": "<xsl:value-of select="obraceniMysi/@vertikal"/>"
                                                        },
                                "obraceniGamePade": {
                                                        "-horizontt": "<xsl:value-of select="obraceniGamePade/@horizontt"/>",
                                                        "-vertikall": "<xsl:value-of select="obraceniGamePade/@vertikall"/>"
                                                        },
                                                        "pohybVpred": "<xsl:value-of select="pohybVpred"/>",
                                                        "brzda": "<xsl:value-of select="brzda"/>",
                                                        "pohybVlevo": "<xsl:value-of select="pohybVlevo"/>",
                                                        "pohybVpravo": "<xsl:value-of select="pohybVpravo"/>"
                                                 
                                                            }    
                                             </xsl:for-each>
                    }
           </xsl:for-each>
                    
           
        }
    </xsl:template>

</xsl:stylesheet>
