{% sql {
  "query": "select r.Id, r.Url, r.Web, coalesce(group_concat('* ' || json_extract(j.value, '$.expression'), char(10)), '') as ContextOfUse, r.Description, r.Purpose from Resources r left join json_each(r.Json, '$.context') j where r.Type = 'StructureDefinition' and r.derivation = 'constraint' and r.sdType = 'Extension' group by r.Key, r.Id, r.Url, r.Web, r.Description, r.Purpose order by r.Id",
  "class": "table table-bordered table-condensed",
  "columns": [
    { "source": "Id", "title": "Id", "type": "link", "target": "Web" },
    { "source": "Url", "title": "Canonical url", "type": "text" },
    { "source": "ContextOfUse", "title": "Context of Use", "type": "markdown" },
    { "source": "Description", "title": "Description", "type": "markdown" },
    { "source": "Purpose", "title": "Purpose", "type": "markdown" }
  ]
} %}
