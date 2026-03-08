### Identifiers

These are identifiers defined in this IG. They are defined using [NamingSystem](https://hl7.org/fhir/R4/namingsystem.html) resources.

{% sql {
  "query": "select r.Description, json_extract(r.Json, '$.uniqueId[0].value') as Url, coalesce(group_concat(case when json_extract(j.value, '$.preferred') = 1 then null else '* ' || json_extract(j.value, '$.value') || ' (' || json_extract(j.value, '$.type') || ')' || coalesce(' ' || json_extract(j.value, '$.comment'), '') end, char(10)), '') as OtherIdentifiers, json_extract(r.Json, '$.responsible') as Responsible from Resources r left join json_each(r.Json, '$.uniqueId') j where r.Type = 'NamingSystem' group by r.Key, r.Description, r.Json order by r.Description",
  "class": "table table-bordered table-condensed",
  "columns": [
    { "source": "Description", "title": "Description", "type": "markdown" },
    { "source": "Url", "title": "Url", "type": "markdown" },
    { "source": "OtherIdentifiers", "title": "Other identifiers", "type": "markdown" },
    { "source": "Responsible", "title": "Responsible", "type": "markdown" }
  ]
} %}
