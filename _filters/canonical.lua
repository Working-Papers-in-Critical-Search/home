-- Inject per-page canonical / og:url / twitter:url into the HTML head.
-- Quarto 1.6 does not emit these even with site-url + open-graph set, so we
-- compute them here from site-url + the output file path. HTML format only.

-- Project site URL (must end with /). Quarto's site-url lives in project
-- metadata which Pandoc filters can't see, so it's hardcoded here.
local SITE_URL = "https://working-papers-in-critical-search.github.io/home/"

function Meta(meta)
  if not quarto.doc.is_format("html") then return nil end
  -- Skip pages that declare their own canonical via the `external` front
  -- matter convention (paper landing stubs that canonical-link to the
  -- paper's own repo).
  if meta.external ~= nil then return nil end

  local out = quarto.doc.output_file or ""
  local rel = out:match("_site/(.*)$") or out
  rel = rel:gsub("index%.html$", "")

  local url = SITE_URL .. rel

  local head = string.format(
    '<link rel="canonical" href="%s">\n' ..
    '<meta property="og:url" content="%s">\n' ..
    '<meta name="twitter:url" content="%s">',
    url, url, url
  )

  quarto.doc.include_text("in-header", head)
  return nil
end
