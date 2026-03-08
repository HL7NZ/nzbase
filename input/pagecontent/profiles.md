**Profiles defined in this guide**

{% sql {
  "query": "select Id, Url, Web, Description from Resources where Type = 'StructureDefinition' and derivation = 'constraint' and coalesce(sdType, '') <> 'Extension' order by Id",
  "class": "table table-bordered table-hover table-sm",
  "columns": [
    { "source": "Id", "title": "Id", "type": "link", "target": "Web" },
    { "source": "Url", "title": "Canonical url", "type": "text" },
    { "source": "Description", "title": "Description", "type": "markdown" }
  ]
} %}
