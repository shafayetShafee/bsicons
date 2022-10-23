local function ensureHtmlDeps()
  quarto.doc.addHtmlDependency({
    name = "bootstrap-icons",
    version = "1.9.1",
    stylesheets = {"assets/css/all.css"}
  })
end

local function isEmpty(s)
  return s == nil or s == ''
end

return {
  ["bi"] = function(args, kwargs)

    local icon = pandoc.utils.stringify(args[1])
    local size = pandoc.utils.stringify(kwargs["size"])
    local color = pandoc.utils.stringify(kwargs["color"])
    local label = pandoc.utils.stringify(kwargs["label"])
    
    -- quarto.log.output(color)
    
    if not isEmpty(size) then
      size = "font-size: " .. size .. ";"
    else
      size = ''
    end
    
    if not isEmpty(color) then
      color = "color: " .. color  .. ";"
    else
      color = ''
    end
    
    local style = "style=\"" .. size .. color .. "\""
    
    if not isEmpty(label) then
      label = " aria-label=\"" .. label  .. "\""
    end
    
    local role = "role=\"img\""
    local aria_hidden = "aria-hidden=\"true\""

    if quarto.doc.isFormat("html:js") then
      ensureHtmlDeps()
      if isEmpty(label) then
        return pandoc.RawInline(
          'html',
          "<i class=\"bi-" .. icon .. "\"" .. style .. role .. aria_hidden .. "></i>"
        )
      else
        return pandoc.RawInline(
          'html',
          "<i class=\"bi-" .. icon .. "\"" .. style .. role .. label .. "></i>"
        )
      end
    else
      return pandoc.Null()
    end

  end
}