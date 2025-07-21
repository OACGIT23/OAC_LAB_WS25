--------------------------------------------------------
--  DDL for View EBA_COUNTRIES_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "WKSP_OACLABWS"."EBA_COUNTRIES_V" ("COUNTRY_ID", "NAME", "NATIONALITY", "COUNTRY_CODE", "CAPITAL", "POPULATION", "AREA", "REGION", "SUB_REGION", "INTERMEDIATE_REGION", "ORGNAIZATION_REGION") DEFAULT COLLATION "USING_NLS_COMP"  AS 
  select c.country_id,
c.name,
c.nationality,
c.country_code,
c.capital,
c.population,
c.area_km2 area,
r.name region,
s.name sub_region,
i.name intermediate_region,
o.name orgnaization_region
from eba_countries c
,    eba_country_regions r
,    eba_country_sub_regions s
,    eba_country_intermediates i
,    eba_country_organizations o
where c.region_id = r.id (+)
and   c.sub_region_id = s.id (+)
and   c.intermediate_region_id = i.id (+)
and   c.organization_region_id = o.id
;
