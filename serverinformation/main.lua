addEventHandler("onClientRender", getRootElement(),
    function()
        --local font = exports.fonts:getFont('Roboto', 10)
        --local font = exports.fonts:getFont('RobotoL', 10)
        --local font = exports.fonts:getFont('RobotoB', 10)
        clabel = guiCreateButton(1215, 727, 141, 27, "Sunucu Bilgilendirme", false)
        addEventHandler("onClientGUIClick", clabel, cproc, true)
        guiLabelSetHorizontalAlign(clabel, "center", false)
        guiLabelSetVerticalAlign(clabel, "center")
        guiLabelSetFont(clabel, "default-bold")    
        --clabel = dxDrawText("Sunucu Bilgilendirme", 1222 + 1, 732 + 1, 1356 + 1, 753 + 1, tocolor(255, 254, 254, 128), 1.00, font, "left", "top", false, false, false, false, false)
        --clabel = dxDrawText("Sunucu Bilgilendirme", 1222, 732, 1356, 753, tocolor(0, 0, 0, 0), 1.00, font, "left", "top", false, false, false, false, false)
    end
)

function cproc()
    if not getElementData(localPlayer, "maininterface:open") then
        maininterface()
    end
end

--addEventHandler("onClientGUIClick", getRootElement(),
    --function()
        --if source == clabel then
            --maininterface()
        --end
    --end
--)

function maininterface()
    local screenW, screenH = guiGetScreenSize()
        interface = guiCreateWindow((screenW - 457) / 2, (screenH - 514) / 2, 457, 514, "Sunucu Bilgilendirme Arayüzü", false)
        guiWindowSetSizable(interface, false)
        setElementData(localPlayer, "infointerface:open", true)

        close = guiCreateButton(9, 464, 438, 40, "Arayüzü Kapat", false, interface)
        addEventHandler("onClientGUIClick", close, clprocl, true)
        tabpanel = guiCreateTabPanel(10, 31, 437, 423, false, interface)

        rules = guiCreateTab("Kurallar", tabpanel)

        hilabel = guiCreateLabel(12, 17, 415, 54, "Sunucu bilgilendirme arayüzüne hoş geldiniz. \nBu arayüzden sunucumuz hakkında bilgi, \nbu sekmeden ise kuralları öğrenebilirsiniz. İyi okumalar. :)", false, rules)
        guiLabelSetHorizontalAlign(hilabel, "center", false)
        rulesinterface = guiCreateGridList(11, 77, 416, 29, false, rules)
        ruleslabel = guiCreateLabel(19, 81, 408, 22, "KURALLAR", false, rules)
        guiSetFont(ruleslabel, "default-bold-small")
        guiLabelSetHorizontalAlign(ruleslabel, "center", false)
        guiLabelSetVerticalAlign(ruleslabel, "center")
        ruleslabel2 = guiCreateLabel(13, 113, 414, 275, "> Sunucumuzda karşı kişiye rahatsızlık vermek yasaktır.\n\n> Karşı tarafı sunucuya karşı provoke etmek, sunucuyu kötülmek yasaktır. \n\n>Sözlü veya sözlü kışkırtma yapmak yasaktır.\n\n> Yetkililerimizden & yönetim ekibimizden yetki istemek yasaktır. \n\n> Sunucumuz içerisinde troll yapmak yasaktır. \n\n İyi oyunlar, sadece kurallara uyun.", false, rules)
        guiLabelSetHorizontalAlign(ruleslabel2, "center", false)
        guiLabelSetVerticalAlign(ruleslabel2, "center")    
    --end
end

function clprocl()
    if source == close then
              destroyElement(interface)
              showCursor(localPlayer, false)
              setElementData(localPlayer,"maininterface:open", false)
        end
end

--addEventHandler("onClientGUIClick", getRootElement(),
  --  function(click)
    --    if source == close then
      --      destroyElement(interface)
        --    showCursor(localPlayer, false)
          --  setElementData(localPlayer,"maininterface:open", false)
        --end
    --end
--)