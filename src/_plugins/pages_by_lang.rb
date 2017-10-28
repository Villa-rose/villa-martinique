# Generates a copy of site.pages as site.pages_by_lang

module Jekyll
  
  class PagesByLangGenerator < Generator
    safe true

    def generate(site)
      result = Hash.new()
      site.site_payload["site"]["pages"].each { |p|
        pageLang = p.data["lang"]
        unless result.has_key?(pageLang)
          result[pageLang] = []
        end
        result[pageLang].push(p)
      }
      result.each { |lang, pages| pages.sort_by! { |p| -p.data["tabs_priority"] } }
      site.config['pages_by_lang'] = result
    end

  end

end
