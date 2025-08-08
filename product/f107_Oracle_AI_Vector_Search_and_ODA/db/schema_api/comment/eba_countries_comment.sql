
   COMMENT ON COLUMN "EBA_COUNTRIES"."COUNTRY_ID" IS 'Auto-incrementing primary key';
   COMMENT ON COLUMN "EBA_COUNTRIES"."NAME" IS 'The country name';
   COMMENT ON COLUMN "EBA_COUNTRIES"."NATIONALITY" IS 'The name of people from this country';
   COMMENT ON COLUMN "EBA_COUNTRIES"."COUNTRY_CODE" IS 'The 3-character ISO country code';
   COMMENT ON COLUMN "EBA_COUNTRIES"."ISO_ALPHA2" IS 'The 2-character ISO country code';
   COMMENT ON COLUMN "EBA_COUNTRIES"."CAPITAL" IS 'The country''s capital';
   COMMENT ON COLUMN "EBA_COUNTRIES"."POPULATION" IS 'The country''s population';
   COMMENT ON COLUMN "EBA_COUNTRIES"."AREA_KM2" IS 'The area of the country in square kilometers';
   COMMENT ON COLUMN "EBA_COUNTRIES"."REGION_ID" IS 'Which region this country is in';
   COMMENT ON COLUMN "EBA_COUNTRIES"."SUB_REGION_ID" IS 'Which sub-region this country is in';
   COMMENT ON COLUMN "EBA_COUNTRIES"."INTERMEDIATE_REGION_ID" IS 'Which intermediate region this country is in';
   COMMENT ON COLUMN "EBA_COUNTRIES"."ORGANIZATION_REGION_ID" IS 'Which organization region this country is in';
   COMMENT ON TABLE "EBA_COUNTRIES"  IS 'Worldwide Countries';