-- Part 4 of 10
-- Projects 601 to 800 of 1992
-- Run this AFTER 0008_part01.sql (and before 0008_final.sql)

DO $$
DECLARE
  v_tenant_id uuid;
  v_inserted int := 0;
  v_skipped int := 0;
BEGIN
  SELECT id INTO v_tenant_id FROM tenants WHERE slug = 'newchandigarh';
  IF v_tenant_id IS NULL THEN
    RAISE EXCEPTION 'Tenant newchandigarh not found';
  END IF;

  -- PBRERA-FZL19-PC0287: Sitara City (Commercial)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZL19-PC0287',
      'Sitara City (Commercial)',
      'sitara-city-commercial',
      'active',
      'Promoter: EMESCO REALITY  (Other than Individual). Address: Khandwala Road, Abohar. PIN: 152116. Valid upto: 30-Jan-2029',
      '{"district":"Fazilka","promoter":"EMESCO REALITY  (Other than Individual)","address":"Khandwala Road, Abohar","pin_code":"152116","registration_date":"30-Sep-2024","valid_upto":"30-Jan-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR77-PC0283: MAGNUM
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR77-PC0283',
      'MAGNUM',
      'magnum',
      'active',
      'Promoter: RAMA BUILDERS (Other than Individual). Address: VILLAGE SANGRUR, HADBAST 23, TEHSIL SANGRUR. PIN: 148001. Valid upto: 31-Jul-2029',
      '{"district":"Sangrur","promoter":"RAMA BUILDERS (Other than Individual)","address":"VILLAGE SANGRUR, HADBAST 23, TEHSIL SANGRUR","pin_code":"148001","registration_date":"27-Sep-2024","valid_upto":"31-Jul-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0848: Northview Homez
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0848',
      'Northview Homez',
      'northview-homez',
      'active',
      'Promoter: KG Enterprises (Other than Individual). Address: Village Bhankharpur, Ambala Chandigarh Higway, Zirakpur. PIN: 140603. Valid upto: 31-Oct-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KG Enterprises (Other than Individual)","address":"Village Bhankharpur, Ambala Chandigarh Higway, Zirakpur","pin_code":"140603","registration_date":"24-Apr-2023","valid_upto":"31-Oct-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR1079: HLP Palmillas- 3
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR1079',
      'HLP Palmillas- 3',
      'hlp-palmillas-3',
      'active',
      'Promoter: HLP INFRATECH LLP (Other than Individual). Address: Village Ramgarh Bhudha, zirkapur. PIN: 140603. Valid upto: 01-Sep-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"HLP INFRATECH LLP (Other than Individual)","address":"Village Ramgarh Bhudha, zirkapur","pin_code":"140603","registration_date":"26-Sep-2024","valid_upto":"01-Sep-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0280: WESTEND MALL
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0280',
      'WESTEND MALL',
      'westend-mall',
      'active',
      'Promoter: Sandeep   Poddar (Individual). Address: Village Peermuchalla, HB No 53, Zirakpur. PIN: 140603. Valid upto: 05-Aug-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sandeep   Poddar (Individual)","address":"Village Peermuchalla, HB No 53, Zirakpur","pin_code":"140603","registration_date":"25-Sep-2024","valid_upto":"05-Aug-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR1069: Jubilee Parklane Extension
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR1069',
      'Jubilee Parklane Extension',
      'jubilee-parklane-extension',
      'active',
      'Promoter: Jubilee Joy Homes LLP (Other than Individual). Address: Village Daun. PIN: 140308. Valid upto: 31-Aug-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jubilee Joy Homes LLP (Other than Individual)","address":"Village Daun","pin_code":"140308","website":"www.jubileegroup.in","registration_date":"20-Sep-2024","valid_upto":"31-Aug-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR1013: Mexmon Dreams
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR1013',
      'Mexmon Dreams',
      'mexmon-dreams-dup1',
      'active',
      'Promoter: MEXMON INFRASTRUCTURE LLP (Other than Individual). Address: H.B. No 301, Village Kingra, Tehsil & Distt - Jalandhar. PIN: 144008. Valid upto: 09-Jun-2028',
      '{"district":"Jalandhar","promoter":"MEXMON INFRASTRUCTURE LLP (Other than Individual)","address":"H.B. No 301, Village Kingra, Tehsil & Distt - Jalandhar","pin_code":"144008","registration_date":"24-Sep-2024","valid_upto":"09-Jun-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL62-PR1071: NABHA ESTATE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL62-PR1071',
      'NABHA ESTATE',
      'nabha-estate',
      'active',
      'Promoter: JINDAL BUILDERS (Other than Individual). Address: HARBAST NO 204, VILLAGE NABHA, NABHA. PIN: 147201. Valid upto: 31-Mar-2028',
      '{"district":"Patiala","promoter":"JINDAL BUILDERS (Other than Individual)","address":"HARBAST NO 204, VILLAGE NABHA, NABHA","pin_code":"147201","registration_date":"24-Sep-2024","valid_upto":"31-Mar-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PM0171: CHD HILLS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PM0171',
      'CHD HILLS',
      'chd-hills',
      'active',
      'Promoter: MOTIA BUILDERS (Other than Individual). Address: Village Gulabgarh, HB No 9, Tehsil Dera Bassi. PIN: 140507. Valid upto: 30-Jun-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MOTIA BUILDERS (Other than Individual)","address":"Village Gulabgarh, HB No 9, Tehsil Dera Bassi","pin_code":"140507","registration_date":"23-Sep-2024","valid_upto":"30-Jun-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR1070: MANGLAM HOMES
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR1070',
      'MANGLAM HOMES',
      'manglam-homes',
      'active',
      'Promoter: RS REALINFRA PRIVATE LIMITED (Other than Individual). Address: VILLAGE DOOMWALI, TEHSIL SANGAT. PIN: 151401. Valid upto: 31-Jul-2027',
      '{"district":"Bathinda","promoter":"RS REALINFRA PRIVATE LIMITED (Other than Individual)","address":"VILLAGE DOOMWALI, TEHSIL SANGAT","pin_code":"151401","registration_date":"19-Sep-2024","valid_upto":"31-Jul-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR02-PR1066: Aviva Greens
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR02-PR1066',
      'Aviva Greens',
      'aviva-greens',
      'active',
      'Promoter: A.V. BUILDERS (Other than Individual). Address: Village Sohian Khurd, HB No 288, Tehsil Amritsar. PIN: 143001. Valid upto: 18-Jul-2029',
      '{"district":"Amritsar","promoter":"A.V. BUILDERS (Other than Individual)","address":"Village Sohian Khurd, HB No 288, Tehsil Amritsar","pin_code":"143001","registration_date":"13-Sep-2024","valid_upto":"18-Jul-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR1068: Mulberry Greens Chandigarh
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR1068',
      'Mulberry Greens Chandigarh',
      'mulberry-greens-chandigarh',
      'active',
      'Promoter: Edmond Capital Ventures  (Other than Individual). Address: Village Padiala, HB no. 379, Kurali, Tehsil Kharar, SAS Nagar. PIN: 140103. Valid upto: 04-Jul-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Edmond Capital Ventures  (Other than Individual)","address":"Village Padiala, HB no. 379, Kurali, Tehsil Kharar, SAS Nagar","pin_code":"140103","registration_date":"13-Sep-2024","valid_upto":"04-Jul-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0278: Sigma Cross Roads
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0278',
      'Sigma Cross Roads',
      'sigma-cross-roads',
      'active',
      'Promoter: Shiva S S Strips Private Limited (Other than Individual). Address: Village Zirakpur, Hadbast No. 235, Within MC Zirakpur, Sub Tehsil Zirakpur. PIN: 140603. Valid upto: 23-Jun-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Shiva S S Strips Private Limited (Other than Individual)","address":"Village Zirakpur, Hadbast No. 235, Within MC Zirakpur, Sub Tehsil Zirakpur","pin_code":"140603","registration_date":"12-Sep-2024","valid_upto":"23-Jun-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR1061: CITY OF DREAM 6
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR1061',
      'CITY OF DREAM 6',
      'city-of-dream-6',
      'active',
      'Promoter: CREDO ASSETS PRIVATE LIMITED (Other than Individual). Address: Village  Sante Majra, HB No 186, Tehsil Kharar. PIN: 140307. Valid upto: 15-Jul-2031',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CREDO ASSETS PRIVATE LIMITED (Other than Individual)","address":"Village  Sante Majra, HB No 186, Tehsil Kharar","pin_code":"140307","registration_date":"11-Sep-2024","valid_upto":"15-Jul-2031"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR1062: PARK VIEW RESIDENCY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR1062',
      'PARK VIEW RESIDENCY',
      'park-view-residency',
      'active',
      'Promoter: Ganpati Builders (Other than Individual). Address: Village Rampura Phul, HB – 072, Tehsil Rampura. PIN: 151103. Valid upto: 22-Feb-2029',
      '{"district":"Bathinda","promoter":"Ganpati Builders (Other than Individual)","address":"Village Rampura Phul, HB – 072, Tehsil Rampura","pin_code":"151103","registration_date":"11-Sep-2024","valid_upto":"22-Feb-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR1059: Northview Kunj
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR1059',
      'Northview Kunj',
      'northview-kunj',
      'active',
      'Promoter: KG Enterprises (Other than Individual). Address: High Ground Road, Opposite Apple Resort, Village Nabha, Zirakpur. PIN: 140603. Valid upto: 30-Apr-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KG Enterprises (Other than Individual)","address":"High Ground Road, Opposite Apple Resort, Village Nabha, Zirakpur","pin_code":"140603","registration_date":"11-Sep-2024","valid_upto":"30-Apr-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0276: Aetro Square
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0276',
      'Aetro Square',
      'aetro-square',
      'active',
      'Promoter: Solty Infra (Other than Individual). Address: Village Tangori, Tehsil Mohali. PIN: 140306. Valid upto: 01-Aug-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Solty Infra (Other than Individual)","address":"Village Tangori, Tehsil Mohali","pin_code":"140306","registration_date":"11-Sep-2024","valid_upto":"01-Aug-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL34-PR1064: Dream Town
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL34-PR1064',
      'Dream Town',
      'dream-town',
      'active',
      'Promoter: Dream Town Land Developers (Other than Individual). Address: Village Chohak, H.B. No. 218, Tehsil and District Jalandhar. PIN: 144007. Valid upto: 18-Jan-2029',
      '{"district":"Jalandhar","promoter":"Dream Town Land Developers (Other than Individual)","address":"Village Chohak, H.B. No. 218, Tehsil and District Jalandhar","pin_code":"144007","registration_date":"11-Sep-2024","valid_upto":"18-Jan-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PC0275: Victoria Street
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PC0275',
      'Victoria Street',
      'victoria-street',
      'active',
      'Promoter: MAA GANGA DEVELPORS (Other than Individual). Address: Opposite Green City Square, Dabwali Road, Bathinda. PIN: 151001. Valid upto: 02-May-2029',
      '{"district":"Bathinda","promoter":"MAA GANGA DEVELPORS (Other than Individual)","address":"Opposite Green City Square, Dabwali Road, Bathinda","pin_code":"151001","registration_date":"11-Sep-2024","valid_upto":"02-May-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZR22-PR1060: GOBIND ESTATE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZR22-PR1060',
      'GOBIND ESTATE',
      'gobind-estate',
      'active',
      'Promoter: EVERGREEN DEVELOPERS (Other than Individual). Address: Village Satyewala, Hadbast No. 114. PIN: 154002. Valid upto: 05-Nov-2028',
      '{"district":"Firozpur","promoter":"EVERGREEN DEVELOPERS (Other than Individual)","address":"Village Satyewala, Hadbast No. 114","pin_code":"154002","registration_date":"11-Sep-2024","valid_upto":"05-Nov-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR1049: Suncity Ultima
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR1049',
      'Suncity Ultima',
      'suncity-ultima',
      'active',
      'Promoter: ESSEL INFRA LLP (Other than Individual). Address: Suncity Ultima, Village Gazipur, Hadbast No. 50, Zirakpur,. PIN: 140507. Valid upto: 23-Jul-2031',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ESSEL INFRA LLP (Other than Individual)","address":"Suncity Ultima, Village Gazipur, Hadbast No. 50, Zirakpur,","pin_code":"140507","website":"https://www.suncityprojects.com","registration_date":"28-Aug-2024","valid_upto":"23-Jul-2031"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL64-PR1054: Green Avenue Phase II
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL64-PR1054',
      'Green Avenue Phase II',
      'green-avenue-phase-ii',
      'active',
      'Promoter: Parmod Kumar And Others (Other than Individual). Address: H.B No. 176, Village Patran,, Tehsil - Patran. PIN: 147105. Valid upto: 10-Jun-2029',
      '{"district":"Patiala","promoter":"Parmod Kumar And Others (Other than Individual)","address":"H.B No. 176, Village Patran,, Tehsil - Patran","pin_code":"147105","registration_date":"30-Aug-2024","valid_upto":"10-Jun-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR1052: DREAM CITY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR1052',
      'DREAM CITY',
      'dream-city-dup2',
      'active',
      'Promoter: Dream Home Colonisers & Developers (Other than Individual). Address: Village Sofi Pind, (H.B.No.231). PIN: 144024. Valid upto: 28-Aug-2028',
      '{"district":"Jalandhar","promoter":"Dream Home Colonisers & Developers (Other than Individual)","address":"Village Sofi Pind, (H.B.No.231)","pin_code":"144024","registration_date":"30-Aug-2024","valid_upto":"28-Aug-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZL19-PR1051: Royal Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZL19-PR1051',
      'Royal Enclave',
      'royal-enclave',
      'active',
      'Promoter: Sunray Cotspin Private Limited (Other than Individual). Address: Old Fazilka Road, Abohar. PIN: 152116. Valid upto: 01-Jan-2028',
      '{"district":"Fazilka","promoter":"Sunray Cotspin Private Limited (Other than Individual)","address":"Old Fazilka Road, Abohar","pin_code":"152116","registration_date":"29-Aug-2024","valid_upto":"01-Jan-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR1057: ATLANTIS HEIGHTS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR1057',
      'ATLANTIS HEIGHTS',
      'atlantis-heights',
      'active',
      'Promoter: ATLANTIS (Other than Individual). Address: VILLAGE - NABHA HIGH GROUND ROAD, HB No 290, SUB TEHSIL ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ATLANTIS (Other than Individual)","address":"VILLAGE - NABHA HIGH GROUND ROAD, HB No 290, SUB TEHSIL ZIRAKPUR","pin_code":"140603","registration_date":"03-Sep-2024","valid_upto":"31-Dec-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0273: Jubilee Westgrove
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0273',
      'Jubilee Westgrove',
      'jubilee-westgrove',
      'active',
      'Promoter: Jubilee Joy Homes LLP (Other than Individual). Address: Jubilee Westgrove , Village Bairampur, Sector-112. PIN: 140307. Valid upto: 30-Jun-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jubilee Joy Homes LLP (Other than Individual)","address":"Jubilee Westgrove , Village Bairampur, Sector-112","pin_code":"140307","website":"www.jubileegroup.in","registration_date":"30-Aug-2024","valid_upto":"30-Jun-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PI0026: Highland Industrial City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PI0026',
      'Highland Industrial City',
      'highland-industrial-city',
      'active',
      'Promoter: NEXXON INDUSTRIAL CITY  (Other than Individual). Address: Village Tofanpur, Lalru, HB No 206, Tehsil Derabassi.. PIN: 140501. Valid upto: 22-Jul-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"NEXXON INDUSTRIAL CITY  (Other than Individual)","address":"Village Tofanpur, Lalru, HB No 206, Tehsil Derabassi.","pin_code":"140501","registration_date":"21-Aug-2024","valid_upto":"22-Jul-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR1055: MUIRWOODS ECOCITY EXTENSION - 4 (POCKET-C)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR1055',
      'MUIRWOODS ECOCITY EXTENSION - 4 (POCKET-C)',
      'muirwoods-ecocity-extension-4-pocket-c',
      'active',
      'Promoter: ALTUS SPACE BUILDERS PRIVATE LIMITED (Other than Individual). Address: SECTOR 14, NEW CHANDIGARH. PIN: 140901. Valid upto: 07-Jun-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ALTUS SPACE BUILDERS PRIVATE LIMITED (Other than Individual)","address":"SECTOR 14, NEW CHANDIGARH","pin_code":"140901","registration_date":"30-Aug-2024","valid_upto":"07-Jun-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR1046: THE WELKIN HEIGHTS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR1046',
      'THE WELKIN HEIGHTS',
      'the-welkin-heights',
      'active',
      'Promoter: MEADOWS BUILDSYS LLP (Other than Individual). Address: Village Malakpur, Ludhiana West. PIN: 142027. Valid upto: 27-Mar-2029',
      '{"district":"Ludhiana","promoter":"MEADOWS BUILDSYS LLP (Other than Individual)","address":"Village Malakpur, Ludhiana West","pin_code":"142027","registration_date":"21-Aug-2024","valid_upto":"27-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0270: Amulyam Square
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0270',
      'Amulyam Square',
      'amulyam-square',
      'active',
      'Promoter: SRV Infrastructure (Other than Individual). Address: Village Padiala, Ward no 9 Kurali, Tehsil kharar. PIN: 140103. Valid upto: 12-Jun-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SRV Infrastructure (Other than Individual)","address":"Village Padiala, Ward no 9 Kurali, Tehsil kharar","pin_code":"140103","registration_date":"21-Aug-2024","valid_upto":"12-Jun-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PC0272: Umbera Orchard Commercial
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PC0272',
      'Umbera Orchard Commercial',
      'umbera-orchard-commercial',
      'active',
      'Promoter: Umbera Group (Other than Individual). Address: Village Dakha-1(H.B. No. 142), Tehsil Mullanpur Dakha. PIN: 141102. Valid upto: 29-Jan-2029',
      '{"district":"Ludhiana","promoter":"Umbera Group (Other than Individual)","address":"Village Dakha-1(H.B. No. 142), Tehsil Mullanpur Dakha","pin_code":"141102","registration_date":"23-Aug-2024","valid_upto":"29-Jan-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR1048: JANDU ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR1048',
      'JANDU ENCLAVE',
      'jandu-enclave',
      'active',
      'Promoter: JANDU LAND DEVELOPERS PRIVATE LIMITED (Other than Individual). Address: Village Balloke. PIN: 141001. Valid upto: 13-Dec-2028',
      '{"district":"Ludhiana","promoter":"JANDU LAND DEVELOPERS PRIVATE LIMITED (Other than Individual)","address":"Village Balloke","pin_code":"141001","registration_date":"23-Aug-2024","valid_upto":"13-Dec-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR1050: Parivaas
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR1050',
      'Parivaas',
      'parivaas',
      'active',
      'Promoter: VIBRANT HEIGHTS PRIVATE LIMITED (Other than Individual). Address: Village Banur, HB No 280, Tehsil Banur. PIN: 140601. Valid upto: 19-May-2031',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"VIBRANT HEIGHTS PRIVATE LIMITED (Other than Individual)","address":"Village Banur, HB No 280, Tehsil Banur","pin_code":"140601","registration_date":"23-Aug-2024","valid_upto":"19-May-2031"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SBS83-PC0271: MAXON PLAZA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SBS83-PC0271',
      'MAXON PLAZA',
      'maxon-plaza',
      'active',
      'Promoter: LEADER INFRASTRUCTURES PRIVATE LIMITED (Other than Individual). Address: Village Banga (Mukandpur Road), HB No 82, Tehsil Banga. PIN: 144505. Valid upto: 18-Oct-2026',
      '{"district":"Shahid Bhagat Singh Nagar (Nawanshahr)","promoter":"LEADER INFRASTRUCTURES PRIVATE LIMITED (Other than Individual)","address":"Village Banga (Mukandpur Road), HB No 82, Tehsil Banga","pin_code":"144505","registration_date":"23-Aug-2024","valid_upto":"18-Oct-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZL19-PR1011: SUN CITY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZL19-PR1011',
      'SUN CITY',
      'sun-city',
      'active',
      'Promoter: Fazilka Developers (Other than Individual). Address: Dera Sacha Sauda Road, Near Radha Soami Satsang Bhawan No 3,, Village Painchanwali. PIN: 152123. Valid upto: 31-Mar-2029',
      '{"district":"Fazilka","promoter":"Fazilka Developers (Other than Individual)","address":"Dera Sacha Sauda Road, Near Radha Soami Satsang Bhawan No 3,, Village Painchanwali","pin_code":"152123","registration_date":"08-Aug-2024","valid_upto":"31-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PC0269: CANAL GALLERIA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PC0269',
      'CANAL GALLERIA',
      'canal-galleria',
      'active',
      'Promoter: VISHESH INFRATECH INDIA PRIVATE LIMITED (Other than Individual). Address: Sidhwan Canal Road, village Jhamat. PIN: 142027. Valid upto: 31-Dec-2028',
      '{"district":"Ludhiana","promoter":"VISHESH INFRATECH INDIA PRIVATE LIMITED (Other than Individual)","address":"Sidhwan Canal Road, village Jhamat","pin_code":"142027","registration_date":"20-Aug-2024","valid_upto":"31-Dec-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PR1045: Casa Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PR1045',
      'Casa Homes',
      'casa-homes',
      'active',
      'Promoter: Deepak  Kumar Garg (Individual). Address: VVillage Talwara, HB No 149, Tehsil & District Ludhiana. PIN: 141012. Valid upto: 31-Mar-2026',
      '{"district":"Ludhiana","promoter":"Deepak  Kumar Garg (Individual)","address":"VVillage Talwara, HB No 149, Tehsil & District Ludhiana","pin_code":"141012","registration_date":"13-Aug-2024","valid_upto":"31-Mar-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR1038: Chetak-Utopia
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR1038',
      'Chetak-Utopia',
      'chetak-utopia',
      'active',
      'Promoter: CHETAK BUILDERS AND COLONIZERS (Other than Individual). Address: Vill. Gulabgarh, Hadbast No. 09, Dera Bassi. PIN: 140507. Valid upto: 31-Mar-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CHETAK BUILDERS AND COLONIZERS (Other than Individual)","address":"Vill. Gulabgarh, Hadbast No. 09, Dera Bassi","pin_code":"140507","registration_date":"06-Aug-2024","valid_upto":"31-Mar-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR1044: Garden Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR1044',
      'Garden Enclave',
      'garden-enclave',
      'active',
      'Promoter: Friends Builders (Other than Individual). Address: St No:3, Arjan Nagar, Paras Ram Nagar. PIN: 151001. Valid upto: 04-Jun-2029',
      '{"district":"Bathinda","promoter":"Friends Builders (Other than Individual)","address":"St No:3, Arjan Nagar, Paras Ram Nagar","pin_code":"151001","registration_date":"09-Aug-2024","valid_upto":"04-Jun-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR1040: Richmond Residency
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR1040',
      'Richmond Residency',
      'richmond-residency',
      'active',
      'Promoter: Richmond Developers (Other than Individual). Address: Village Alipur, HB.No 294. PIN: 144003. Valid upto: 31-Dec-2026',
      '{"district":"Jalandhar","promoter":"Richmond Developers (Other than Individual)","address":"Village Alipur, HB.No 294","pin_code":"144003","registration_date":"09-Aug-2024","valid_upto":"31-Dec-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZL20-PR1010: M R Valley
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZL20-PR1010',
      'M R Valley',
      'm-r-valley',
      'active',
      'Promoter: Sandeep  Gilhotra (Individual). Address: Salemshah Road, Opposite MR Enclave, Village Sultanpura. PIN: 152123. Valid upto: 09-Jun-2025',
      '{"district":"Fazilka","promoter":"Sandeep  Gilhotra (Individual)","address":"Salemshah Road, Opposite MR Enclave, Village Sultanpura","pin_code":"152123","registration_date":"09-Aug-2024","valid_upto":"09-Jun-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZL20-PM0173: MODEL TOWN
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZL20-PM0173',
      'MODEL TOWN',
      'model-town-dup2',
      'active',
      'Promoter: PRIME DEVELOPERS (Other than Individual). Address: CANTT ROAD, FAZILKA. PIN: 152123. Valid upto: 02-Oct-2028',
      '{"district":"Fazilka","promoter":"PRIME DEVELOPERS (Other than Individual)","address":"CANTT ROAD, FAZILKA","pin_code":"152123","registration_date":"08-Aug-2024","valid_upto":"02-Oct-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH48-PC0268: SHOPLAZA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH48-PC0268',
      'SHOPLAZA',
      'shoplaza',
      'active',
      'Promoter: S.R. DEVELOPERS AND COLONISERS PRIVATE LIMITED (Other than Individual). Address: Village Bondli, Tehsil Samrala. PIN: 141114. Valid upto: 27-Mar-2029',
      '{"district":"Ludhiana","promoter":"S.R. DEVELOPERS AND COLONISERS PRIVATE LIMITED (Other than Individual)","address":"Village Bondli, Tehsil Samrala","pin_code":"141114","registration_date":"08-Aug-2024","valid_upto":"27-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL65-PI0025: MK Industrial Park
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL65-PI0025',
      'MK Industrial Park',
      'mk-industrial-park',
      'active',
      'Promoter: Mahakali Elevation Estates Private Limited (Other than Individual). Address: Hadbast No. 144, Mehmadpur, NH1, Rajpura - Ambala Road. PIN: 140417. Valid upto: 15-Apr-2029',
      '{"district":"Patiala","promoter":"Mahakali Elevation Estates Private Limited (Other than Individual)","address":"Hadbast No. 144, Mehmadpur, NH1, Rajpura - Ambala Road","pin_code":"140417","registration_date":"08-Aug-2024","valid_upto":"15-Apr-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0267: City Of Dreams - 3
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0267',
      'City Of Dreams - 3',
      'city-of-dreams-3',
      'active',
      'Promoter: SBP Township Private Limited (Other than Individual). Address: Village Nabha, H.B No.  Sub Tehsil Zirakpur, District SAS Nagar. PIN: 140308. Valid upto: 30-May-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SBP Township Private Limited (Other than Individual)","address":"Village Nabha, H.B No.  Sub Tehsil Zirakpur, District SAS Nagar","pin_code":"140308","registration_date":"08-Aug-2024","valid_upto":"30-May-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR1042: ONE CITY HAMLET - F
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR1042',
      'ONE CITY HAMLET - F',
      'one-city-hamlet-f',
      'active',
      'Promoter: PUMA REALTORS PRIVATE LIMITED (Other than Individual). Address: Sector-105, Mohali, SAS Nagar. PIN: 140308. Valid upto: 31-Mar-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PUMA REALTORS PRIVATE LIMITED (Other than Individual)","address":"Sector-105, Mohali, SAS Nagar","pin_code":"140308","registration_date":"08-Aug-2024","valid_upto":"31-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR73-PR0984: Anil Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR73-PR0984',
      'Anil Enclave',
      'anil-enclave',
      'active',
      'Promoter: KATBUILDERS LLP (Other than Individual). Address: Village Dhuri, H.B No. 94 in revenue Tehsil Dhuri, Dist. Sangrur. PIN: 148024. Valid upto: 03-Sep-2028',
      '{"district":"Sangrur","promoter":"KATBUILDERS LLP (Other than Individual)","address":"Village Dhuri, H.B No. 94 in revenue Tehsil Dhuri, Dist. Sangrur","pin_code":"148024","registration_date":"14-Jun-2024","valid_upto":"03-Sep-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0969: ANANTHAM ELEGANT
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0969',
      'ANANTHAM ELEGANT',
      'anantham-elegant',
      'active',
      'Promoter: ANANTHAM INFCON (Other than Individual). Address: WHITE CITY, VILLAGE KAILON, SECTOR 114. PIN: 140307. Valid upto: 01-Jul-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ANANTHAM INFCON (Other than Individual)","address":"WHITE CITY, VILLAGE KAILON, SECTOR 114","pin_code":"140307","registration_date":"14-Jun-2024","valid_upto":"01-Jul-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR73-PR0982: NEW GOLDEN AVENUE PHASE II
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR73-PR0982',
      'NEW GOLDEN AVENUE PHASE II',
      'new-golden-avenue-phase-ii',
      'active',
      'Promoter: SUNRISE BUILDERS (Other than Individual). Address: VILLAGE DAULATPUR, HB NO. 64, TESH DHURI,DIST SANGRUR. PIN: 148024. Valid upto: 01-Feb-2029',
      '{"district":"Sangrur","promoter":"SUNRISE BUILDERS (Other than Individual)","address":"VILLAGE DAULATPUR, HB NO. 64, TESH DHURI,DIST SANGRUR","pin_code":"148024","registration_date":"14-Jun-2024","valid_upto":"01-Feb-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BNL06-PR0981: ANANTA ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BNL06-PR0981',
      'ANANTA ENCLAVE',
      'ananta-enclave',
      'active',
      'Promoter: SALDHA LAND DEVELOPERS (Other than Individual). Address: VILLAGE HANDIAYA B`, HADBAST NO. 58,BARNALA. PIN: 148101. Valid upto: 01-Nov-2028',
      '{"district":"Barnala","promoter":"SALDHA LAND DEVELOPERS (Other than Individual)","address":"VILLAGE HANDIAYA B`, HADBAST NO. 58,BARNALA","pin_code":"148101","registration_date":"14-Jun-2024","valid_upto":"01-Nov-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0238: Mohali Citi Centre 4
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0238',
      'Mohali Citi Centre 4',
      'mohali-citi-centre-4',
      'active',
      'Promoter: KLG Infra (Other than Individual). Address: Commercial Chunk Site No. Pocket 2, Block-F, Aero City. PIN: 140603. Valid upto: 10-Feb-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KLG Infra (Other than Individual)","address":"Commercial Chunk Site No. Pocket 2, Block-F, Aero City","pin_code":"140603","registration_date":"11-Jun-2024","valid_upto":"10-Feb-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR1007: Duplex Floors Ludhiana
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR1007',
      'Duplex Floors Ludhiana',
      'duplex-floors-ludhiana',
      'active',
      'Promoter: OMAXE LIMITED (Other than Individual). Address: Duplex Floors Ludhiana, Pakhowal Road, Ludhiana. PIN: 142022. Valid upto: 31-Mar-2029',
      '{"district":"Ludhiana","promoter":"OMAXE LIMITED (Other than Individual)","address":"Duplex Floors Ludhiana, Pakhowal Road, Ludhiana","pin_code":"142022","website":"www.omaxe.com","registration_date":"18-Jul-2024","valid_upto":"31-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR1028: ORBIT CITY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR1028',
      'ORBIT CITY',
      'orbit-city',
      'active',
      'Promoter: Roop  Singh (Individual). Address: Ballopur Road, Village Lalru, Tehsil Derabassi. PIN: 140501. Valid upto: 30-May-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Roop  Singh (Individual)","address":"Ballopur Road, Village Lalru, Tehsil Derabassi","pin_code":"140501","registration_date":"18-Jul-2024","valid_upto":"30-May-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0266: Chandigarh Street
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0266',
      'Chandigarh Street',
      'chandigarh-street',
      'active',
      'Promoter: Sabharwal Land Promoters Private Limited (Other than Individual). Address: Village Bhabat, H.B. No. 234, within M.C. Zirakpur. PIN: 140603. Valid upto: 16-May-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sabharwal Land Promoters Private Limited (Other than Individual)","address":"Village Bhabat, H.B. No. 234, within M.C. Zirakpur","pin_code":"140603","registration_date":"24-Jul-2024","valid_upto":"16-May-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0826: AGI SKY VILLAS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0826',
      'AGI SKY VILLAS',
      'agi-sky-villas',
      'active',
      'Promoter: AGI INFRA LIMITED (Other than Individual). Address: Village Daad (H.B.No.279), Pakhowal Road, Tehsil Ludhiana West. PIN: 141012. Valid upto: 29-Mar-2027',
      '{"district":"Ludhiana","promoter":"AGI INFRA LIMITED (Other than Individual)","address":"Village Daad (H.B.No.279), Pakhowal Road, Tehsil Ludhiana West","pin_code":"141012","website":"www.agiinfra.com","registration_date":"26-Oct-2022","valid_upto":"29-Mar-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-GSP27-PR0977: Shri Chander Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-GSP27-PR0977',
      'Shri Chander Enclave',
      'shri-chander-enclave',
      'active',
      'Promoter: Gurmukh  Singh (Individual). Address: Village Haripur, H.B No.306. PIN: 143531. Valid upto: 31-Dec-2028',
      '{"district":"Gurdaspur","promoter":"Gurmukh  Singh (Individual)","address":"Village Haripur, H.B No.306","pin_code":"143531","registration_date":"21-Jun-2024","valid_upto":"31-Dec-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR73-PR0937: Ekta Vihar
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR73-PR0937',
      'Ekta Vihar',
      'ekta-vihar',
      'active',
      'Promoter: Ekta Real Estate Developers (Other than Individual). Address: Village Khai, Hadbast No. 65 tehsil Lehra, Distt. Sangrur. PIN: 148031. Valid upto: 16-Apr-2027',
      '{"district":"Sangrur","promoter":"Ekta Real Estate Developers (Other than Individual)","address":"Village Khai, Hadbast No. 65 tehsil Lehra, Distt. Sangrur","pin_code":"148031","registration_date":"03-May-2024","valid_upto":"16-Apr-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0249: OPERA SHOPPING CENTER
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0249',
      'OPERA SHOPPING CENTER',
      'opera-shopping-center',
      'active',
      'Promoter: CHANDIGARH COLONISERS PRIVATE LIMITED (Other than Individual). Address: H.B NO. 54 VILLAGE KISHANPURA,, ZIRAKPUR, DISTT SAS NAGAR. PIN: 140603. Valid upto: 13-Feb-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CHANDIGARH COLONISERS PRIVATE LIMITED (Other than Individual)","address":"H.B NO. 54 VILLAGE KISHANPURA,, ZIRAKPUR, DISTT SAS NAGAR","pin_code":"140603","registration_date":"21-Jun-2024","valid_upto":"13-Feb-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PR0973: Anand Enclave Block-E
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PR0973',
      'Anand Enclave Block-E',
      'anand-enclave-block-e',
      'active',
      'Promoter: Anand Enclave Developers Pvt. Ltd. (Other than Individual). Address: Village Lalton Kalan-I. PIN: 142022. Valid upto: 31-Mar-2029',
      '{"district":"Ludhiana","promoter":"Anand Enclave Developers Pvt. Ltd. (Other than Individual)","address":"Village Lalton Kalan-I","pin_code":"142022","registration_date":"13-Jun-2024","valid_upto":"31-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FGS18-PC0248: Chandigarh Premium Outlets
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FGS18-PC0248',
      'Chandigarh Premium Outlets',
      'chandigarh-premium-outlets',
      'active',
      'Promoter: Guru Nanak Realtors (Other than Individual). Address: Village Pohlo Majra, Tehsil Khamanon , Distt. Fatehgarh Sahib. PIN: 140308. Valid upto: 19-Dec-2028',
      '{"district":"Fatehgarh Sahib","promoter":"Guru Nanak Realtors (Other than Individual)","address":"Village Pohlo Majra, Tehsil Khamanon , Distt. Fatehgarh Sahib","pin_code":"140308","registration_date":"20-Jun-2024","valid_upto":"19-Dec-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0979: Magnolia Greens 1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0979',
      'Magnolia Greens 1',
      'magnolia-greens-1',
      'active',
      'Promoter: Summerset Buildcon Private Limited  (Other than Individual). Address: City of Dreams 4, Sante Majra, H.B No 186, Kharar, Punjab. PIN: 140301. Valid upto: 10-Aug-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Summerset Buildcon Private Limited  (Other than Individual)","address":"City of Dreams 4, Sante Majra, H.B No 186, Kharar, Punjab","pin_code":"140301","registration_date":"13-Jun-2024","valid_upto":"10-Aug-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0975: PR TOWN
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0975',
      'PR TOWN',
      'pr-town',
      'active',
      'Promoter: GURPREET  SINGH (Individual). Address: PR TOWN,TRIBUNE COLONY ROAD ,BALTANA,MOUJA-BALTANA,TEHSIL ZIRAKPUR,SAS NAGAR, SAME. PIN: 140603. Valid upto: 12-Oct-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GURPREET  SINGH (Individual)","address":"PR TOWN,TRIBUNE COLONY ROAD ,BALTANA,MOUJA-BALTANA,TEHSIL ZIRAKPUR,SAS NAGAR, SAME","pin_code":"140603","registration_date":"13-Jun-2024","valid_upto":"12-Oct-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-MGA54-PR1030: Divya Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-MGA54-PR1030',
      'Divya Enclave',
      'divya-enclave',
      'active',
      'Promoter: Divya Real Estates (Other than Individual). Address: Baghapurana Moga Road, SH-16, Village Gill, Tehsil Baghapurana. PIN: 142038. Valid upto: 31-Jan-2029',
      '{"district":"Moga","promoter":"Divya Real Estates (Other than Individual)","address":"Baghapurana Moga Road, SH-16, Village Gill, Tehsil Baghapurana","pin_code":"142038","registration_date":"24-Jul-2024","valid_upto":"31-Jan-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FGS16-PC0263: SANT ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FGS16-PC0263',
      'SANT ENCLAVE',
      'sant-enclave',
      'active',
      'Promoter: SANT ENCLAVE (Other than Individual). Address: VILLAGE CHUNNI KALAN, (H.B. NO. 62) TEHSIL BASSI PATHANA. PIN: 140406. Valid upto: 16-Nov-2028',
      '{"district":"Fatehgarh Sahib","promoter":"SANT ENCLAVE (Other than Individual)","address":"VILLAGE CHUNNI KALAN, (H.B. NO. 62) TEHSIL BASSI PATHANA","pin_code":"140406","registration_date":"24-Jul-2024","valid_upto":"16-Nov-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH42-PC0261: Lords Square
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH42-PC0261',
      'Lords Square',
      'lords-square',
      'active',
      'Promoter: RIPSS INFRASTRUCTURE PVT LTD (Other than Individual). Address: Village Malakpur HB no. 147 Tehsil & District Ludhiana. PIN: 142027. Valid upto: 27-Mar-2029',
      '{"district":"Ludhiana","promoter":"RIPSS INFRASTRUCTURE PVT LTD (Other than Individual)","address":"Village Malakpur HB no. 147 Tehsil & District Ludhiana","pin_code":"142027","registration_date":"19-Jul-2024","valid_upto":"27-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR1034: SUNWISE 2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR1034',
      'SUNWISE 2',
      'sunwise-2',
      'active',
      'Promoter: SATISH ESTATE PRIVATE LIMITED (Other than Individual). Address: HADBAST NO. 05, VILLAGE MAHIWALA. PIN: 140507. Valid upto: 23-Apr-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SATISH ESTATE PRIVATE LIMITED (Other than Individual)","address":"HADBAST NO. 05, VILLAGE MAHIWALA","pin_code":"140507","registration_date":"19-Jul-2024","valid_upto":"23-Apr-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-MGA54-PR1035: SUN ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-MGA54-PR1035',
      'SUN ENCLAVE',
      'sun-enclave',
      'active',
      'Promoter: HEMCHE DEVELOPERS LLP (Other than Individual). Address: NEAR GURUDWARA DERA BABA MAL SINGH, OLD GHAL KALAN ROAD, MOGA. PIN: 142001. Valid upto: 01-Feb-2029',
      '{"district":"Moga","promoter":"HEMCHE DEVELOPERS LLP (Other than Individual)","address":"NEAR GURUDWARA DERA BABA MAL SINGH, OLD GHAL KALAN ROAD, MOGA","pin_code":"142001","registration_date":"19-Jul-2024","valid_upto":"01-Feb-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR1032: Homeland enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR1032',
      'Homeland enclave',
      'homeland-enclave',
      'active',
      'Promoter: Homeland Enclave  (Other than Individual). Address: Homeland Enclave, Goninan Road , Bathinda. PIN: 151001. Valid upto: 09-Jun-2028',
      '{"district":"Bathinda","promoter":"Homeland Enclave  (Other than Individual)","address":"Homeland Enclave, Goninan Road , Bathinda","pin_code":"151001","registration_date":"19-Jul-2024","valid_upto":"09-Jun-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BNL06-PC0236: H.G. SQUARE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BNL06-PC0236',
      'H.G. SQUARE',
      'hg-square',
      'active',
      'Promoter: B R DEVELOPERS (Other than Individual). Address: BARNALA BATHINDA ROAD VPO HANDIAYA. PIN: 148107. Valid upto: 12-Mar-2028',
      '{"district":"Barnala","promoter":"B R DEVELOPERS (Other than Individual)","address":"BARNALA BATHINDA ROAD VPO HANDIAYA","pin_code":"148107","registration_date":"11-Jun-2024","valid_upto":"12-Mar-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0234: MILLENNIA WALK
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0234',
      'MILLENNIA WALK',
      'millennia-walk',
      'active',
      'Promoter: KDM REALTORS (Other than Individual). Address: VILL. RAMGARH BHUDDA,, TEH. ZIRAKPUR,. PIN: 140603. Valid upto: 17-Jan-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KDM REALTORS (Other than Individual)","address":"VILL. RAMGARH BHUDDA,, TEH. ZIRAKPUR,","pin_code":"140603","registration_date":"11-Jun-2024","valid_upto":"17-Jan-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR1033: Surya Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR1033',
      'Surya Enclave',
      'surya-enclave-dup1',
      'active',
      'Promoter: SURYA BUILD INNOVATORS (Other than Individual). Address: near aroma marriage palace. PIN: 151001. Valid upto: 04-Mar-2029',
      '{"district":"Bathinda","promoter":"SURYA BUILD INNOVATORS (Other than Individual)","address":"near aroma marriage palace","pin_code":"151001","registration_date":"19-Jul-2024","valid_upto":"04-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZR22-PC0264: Chhabeela Emporio Plaza
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZR22-PC0264',
      'Chhabeela Emporio Plaza',
      'chhabeela-emporio-plaza',
      'active',
      'Promoter: Chhabeella Emporio Plaza (Other than Individual). Address: Village Satyewala H. B No. 114, Tehsil & Distt. Ferozpur. PIN: 152001. Valid upto: 30-Jan-2029',
      '{"district":"Firozpur","promoter":"Chhabeella Emporio Plaza (Other than Individual)","address":"Village Satyewala H. B No. 114, Tehsil & Distt. Ferozpur","pin_code":"152001","registration_date":"22-Jul-2024","valid_upto":"30-Jan-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0103: Palm Village
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0103',
      'Palm Village',
      'palm-village',
      'active',
      'Promoter: BEE GEE BUILTECH (Other than Individual). Address: SECTOR-126, VILLAGE DESUMAJRA, KHARAR, MOHALI. PIN: 140301. Valid upto: 31-Dec-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"BEE GEE BUILTECH (Other than Individual)","address":"SECTOR-126, VILLAGE DESUMAJRA, KHARAR, MOHALI","pin_code":"140301","website":"beegeebuildtech.com","registration_date":"19-Sep-2017","valid_upto":"31-Dec-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0974: NEXXON CITY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0974',
      'NEXXON CITY',
      'nexxon-city',
      'active',
      'Promoter: NEXXON INDUSTRIAL CITY  (Other than Individual). Address: VILLAGE KAULI MAZRA, LALRU, TEHSIL DERABASSI. PIN: 140501. Valid upto: 22-Oct-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"NEXXON INDUSTRIAL CITY  (Other than Individual)","address":"VILLAGE KAULI MAZRA, LALRU, TEHSIL DERABASSI","pin_code":"140501","registration_date":"19-Jun-2024","valid_upto":"22-Oct-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR1029: The Lutyens
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR1029',
      'The Lutyens',
      'the-lutyens',
      'active',
      'Promoter: RS ENTERPRISES (Other than Individual). Address: Hadbast No. 280, Village Banur. PIN: 140601. Valid upto: 30-May-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"RS ENTERPRISES (Other than Individual)","address":"Hadbast No. 280, Village Banur","pin_code":"140601","registration_date":"17-Jul-2024","valid_upto":"30-May-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0259: HELIOS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0259',
      'HELIOS',
      'helios',
      'active',
      'Promoter: SABHYA INFRASTRUCTURE LIMITED (Other than Individual). Address: VILLAGE BISHANPURA, HB No 44, ZIRAKPUR. PIN: 140603. Valid upto: 17-Jul-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SABHYA INFRASTRUCTURE LIMITED (Other than Individual)","address":"VILLAGE BISHANPURA, HB No 44, ZIRAKPUR","pin_code":"140603","registration_date":"17-Jul-2024","valid_upto":"17-Jul-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-KPT39-PC0256: Saffron High Street
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-KPT39-PC0256',
      'Saffron High Street',
      'saffron-high-street',
      'active',
      'Promoter: Saffron Infraprojects India Limited (Other than Individual). Address: Village Wadala Kalan, H.B. No. 193. PIN: 144603. Valid upto: 04-Apr-2029',
      '{"district":"Kapurthala","promoter":"Saffron Infraprojects India Limited (Other than Individual)","address":"Village Wadala Kalan, H.B. No. 193","pin_code":"144603","registration_date":"17-Jul-2024","valid_upto":"04-Apr-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR1002: Gardenia Floors 2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR1002',
      'Gardenia Floors 2',
      'gardenia-floors-2',
      'active',
      'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe, New Chandigarh, Mullanpur. PIN: 141003. Valid upto: 30-Apr-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe, New Chandigarh, Mullanpur","pin_code":"141003","website":"www.omaxe.com","registration_date":"18-Jul-2024","valid_upto":"30-Apr-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR1004: THE PALACE LUDHIANA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR1004',
      'THE PALACE LUDHIANA',
      'the-palace-ludhiana',
      'active',
      'Promoter: OMAXE LIMITED (Other than Individual). Address: The Palace  Omaxe Royal Residency,, Pakhowal Road, Ludhiana. PIN: 142022. Valid upto: 31-Mar-2029',
      '{"district":"Ludhiana","promoter":"OMAXE LIMITED (Other than Individual)","address":"The Palace  Omaxe Royal Residency,, Pakhowal Road, Ludhiana","pin_code":"142022","website":"www.omaxe.com","registration_date":"18-Jul-2024","valid_upto":"31-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH42-PR1027: Nivasa
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH42-PR1027',
      'Nivasa',
      'nivasa',
      'active',
      'Promoter: Ayali Developers & Colonisers Pvt. Ltd (Other than Individual). Address: Village Birmi Hb No. 146 Mullanpur dakha, distt. Ludhiana. PIN: 141102. Valid upto: 11-Dec-2028',
      '{"district":"Ludhiana","promoter":"Ayali Developers & Colonisers Pvt. Ltd (Other than Individual)","address":"Village Birmi Hb No. 146 Mullanpur dakha, distt. Ludhiana","pin_code":"141102","registration_date":"17-Jul-2024","valid_upto":"11-Dec-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL35-PR1005: Royal City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL35-PR1005',
      'Royal City',
      'royal-city-dup1',
      'active',
      'Promoter: Highlander Estate Developers & Builders (Other than Individual). Address: Village Khurampur(H.B. No. 51), Village Shahpur(H.B. No. 50), Tehsil Nakodar(Mehatpur). PIN: 144041. Valid upto: 12-Feb-2029',
      '{"district":"Jalandhar","promoter":"Highlander Estate Developers & Builders (Other than Individual)","address":"Village Khurampur(H.B. No. 51), Village Shahpur(H.B. No. 50), Tehsil Nakodar(Mehatpur)","pin_code":"144041","registration_date":"16-Jul-2024","valid_upto":"12-Feb-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZL20-PR1015: Dada Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZL20-PR1015',
      'Dada Enclave',
      'dada-enclave',
      'active',
      'Promoter: Kartikay  Sawansukha (Individual). Address: Near Royal City, Resident Colony, Village Rampura. PIN: 152123. Valid upto: 30-Apr-2029',
      '{"district":"Fazilka","promoter":"Kartikay  Sawansukha (Individual)","address":"Near Royal City, Resident Colony, Village Rampura","pin_code":"152123","registration_date":"15-Jul-2024","valid_upto":"30-Apr-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR1006: The Medallion Nova
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR1006',
      'The Medallion Nova',
      'the-medallion-nova',
      'active',
      'Promoter: AG Realty (Other than Individual). Address: Sector 66-A , SAS Nagar. PIN: 160059. Valid upto: 30-Dec-2030',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AG Realty (Other than Individual)","address":"Sector 66-A , SAS Nagar","pin_code":"160059","registration_date":"16-Jul-2024","valid_upto":"30-Dec-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR1019: Arjun Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR1019',
      'Arjun Enclave',
      'arjun-enclave',
      'active',
      'Promoter: Arjun Prime Builders and Promoters (Other than Individual). Address: Arjun enclave , Multiana Road. PIN: 151001. Valid upto: 01-Apr-2029',
      '{"district":"Bathinda","promoter":"Arjun Prime Builders and Promoters (Other than Individual)","address":"Arjun enclave , Multiana Road","pin_code":"151001","registration_date":"16-Jul-2024","valid_upto":"01-Apr-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH48-PC0258: SAMRALA FASHION DISTRICT
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH48-PC0258',
      'SAMRALA FASHION DISTRICT',
      'samrala-fashion-district',
      'active',
      'Promoter: INDERJIT   SINGH (Individual). Address: VILLAGE BONDLI (HADBAST NO. 107), TEHSIL SAMRALA. PIN: 141114. Valid upto: 18-Jan-2029',
      '{"district":"Ludhiana","promoter":"INDERJIT   SINGH (Individual)","address":"VILLAGE BONDLI (HADBAST NO. 107), TEHSIL SAMRALA","pin_code":"141114","registration_date":"16-Jul-2024","valid_upto":"18-Jan-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR1022: WESTOWN GREENS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR1022',
      'WESTOWN GREENS',
      'westown-greens',
      'active',
      'Promoter: LUDHIANA GREEN LAND DEVELOPERS LLP (Other than Individual). Address: Villages Threeke and Jhande, Ludhiana West. PIN: 141008. Valid upto: 13-Mar-2029',
      '{"district":"Ludhiana","promoter":"LUDHIANA GREEN LAND DEVELOPERS LLP (Other than Individual)","address":"Villages Threeke and Jhande, Ludhiana West","pin_code":"141008","registration_date":"16-Jul-2024","valid_upto":"13-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZL20-PR1024: Aashiyana Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZL20-PR1024',
      'Aashiyana Enclave',
      'aashiyana-enclave',
      'active',
      'Promoter: Aashiyana Enclave (Other than Individual). Address: Dera Sacha Sauda Road, Near Radha Soami Satsang Bhawan No. 3, Village Painchanwali. PIN: 152123. Valid upto: 31-Mar-2029',
      '{"district":"Fazilka","promoter":"Aashiyana Enclave (Other than Individual)","address":"Dera Sacha Sauda Road, Near Radha Soami Satsang Bhawan No. 3, Village Painchanwali","pin_code":"152123","registration_date":"16-Jul-2024","valid_upto":"31-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BNL06-PM0172: SHRI BALA JI ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BNL06-PM0172',
      'SHRI BALA JI ENCLAVE',
      'shri-bala-ji-enclave',
      'active',
      'Promoter: SHREE BALAJI DEVELOPERS (Other than Individual). Address: Hadbast no -64, Village Tapa -A,, Tehsil Tapa. PIN: 148108. Valid upto: 20-Jul-2028',
      '{"district":"Barnala","promoter":"SHREE BALAJI DEVELOPERS (Other than Individual)","address":"Hadbast no -64, Village Tapa -A,, Tehsil Tapa","pin_code":"148108","registration_date":"16-Jul-2024","valid_upto":"20-Jul-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR1016: VINTAGE ARCH
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR1016',
      'VINTAGE ARCH',
      'vintage-arch',
      'active',
      'Promoter: SRI SAI LAND BUILDERS AND DEVELOPERS LLP (Other than Individual). Address: Aero Business Park, Village Manakpur kallar. PIN: 140306. Valid upto: 30-May-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SRI SAI LAND BUILDERS AND DEVELOPERS LLP (Other than Individual)","address":"Aero Business Park, Village Manakpur kallar","pin_code":"140306","registration_date":"16-Jul-2024","valid_upto":"30-May-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PR1020: California Estates
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PR1020',
      'California Estates',
      'california-estates',
      'active',
      'Promoter: Metro Developers And Builders (Other than Individual). Address: Village Bakshiwala (H.B No. 353), Teh & Dist. Patiala. PIN: 147001. Valid upto: 27-Mar-2029',
      '{"district":"Patiala","promoter":"Metro Developers And Builders (Other than Individual)","address":"Village Bakshiwala (H.B No. 353), Teh & Dist. Patiala","pin_code":"147001","registration_date":"16-Jul-2024","valid_upto":"27-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH43-PC0250: Central Plaza Khanna
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH43-PC0250',
      'Central Plaza Khanna',
      'central-plaza-khanna',
      'active',
      'Promoter: Janta Builders (Other than Individual). Address: Central Plaza Khana, Adjoining Sai Mandir, Khanna-Amloh Road,, Village Galwadi, Khanna. PIN: 141401. Valid upto: 27-Mar-2029',
      '{"district":"Ludhiana","promoter":"Janta Builders (Other than Individual)","address":"Central Plaza Khana, Adjoining Sai Mandir, Khanna-Amloh Road,, Village Galwadi, Khanna","pin_code":"141401","registration_date":"20-Jun-2024","valid_upto":"27-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZL19-PR1014: Sitara City (Residential)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZL19-PR1014',
      'Sitara City (Residential)',
      'sitara-city-residential',
      'active',
      'Promoter: EMESCO REALITY  (Other than Individual). Address: Gurdyal Nagar, Sitto Road,, Abohar. PIN: 152116. Valid upto: 25-Apr-2028',
      '{"district":"Fazilka","promoter":"EMESCO REALITY  (Other than Individual)","address":"Gurdyal Nagar, Sitto Road,, Abohar","pin_code":"152116","registration_date":"16-Jul-2024","valid_upto":"25-Apr-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR1009: Wave Estate, Group Housing-2 (Phase-2)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR1009',
      'Wave Estate, Group Housing-2 (Phase-2)',
      'wave-estate-group-housing-2-phase-2',
      'active',
      'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: WAVE ESTATE, sector-85. PIN: 143308. Valid upto: 31-Mar-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"WAVE ESTATE, sector-85","pin_code":"143308","registration_date":"16-Jul-2024","valid_upto":"31-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0243: ARISTA CITY CENTER
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0243',
      'ARISTA CITY CENTER',
      'arista-city-center',
      'active',
      'Promoter: Manish  Bansal (Individual). Address: VILL JANDPUR, HARBAST NO 28, TEHSIL KHARAR. PIN: 140301. Valid upto: 21-Feb-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Manish  Bansal (Individual)","address":"VILL JANDPUR, HARBAST NO 28, TEHSIL KHARAR","pin_code":"140301","registration_date":"12-Jun-2024","valid_upto":"21-Feb-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0255: ABNEY SQUARE 2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0255',
      'ABNEY SQUARE 2',
      'abney-square-2',
      'active',
      'Promoter: ALTUS SPACE BUILDERS PRIVATE LIMITED (Other than Individual). Address: SECTOR 15, VILLAGE SAINIMAJRA. PIN: 140901. Valid upto: 07-Jun-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ALTUS SPACE BUILDERS PRIVATE LIMITED (Other than Individual)","address":"SECTOR 15, VILLAGE SAINIMAJRA","pin_code":"140901","registration_date":"15-Jul-2024","valid_upto":"07-Jun-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR1001: AEROVISTA MEADOWS 2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR1001',
      'AEROVISTA MEADOWS 2',
      'aerovista-meadows-2',
      'active',
      'Promoter: Manglam Infra  (Other than Individual). Address: VILLAGE DYALPURA, MC ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Manglam Infra  (Other than Individual)","address":"VILLAGE DYALPURA, MC ZIRAKPUR","pin_code":"140603","registration_date":"02-Jul-2024","valid_upto":"31-Dec-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0163: SAVITRY GREENS-2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0163',
      'SAVITRY GREENS-2',
      'savitry-greens-2',
      'active',
      'Promoter: N K SHARMA ENTERPRISES PVT LTD (Other than Individual). Address: GAZIPUR ROAD, ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"N K SHARMA ENTERPRISES PVT LTD (Other than Individual)","address":"GAZIPUR ROAD, ZIRAKPUR","pin_code":"140603","registration_date":"27-Oct-2017","valid_upto":"31-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR0965: DDC Gardens
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR0965',
      'DDC Gardens',
      'ddc-gardens',
      'active',
      'Promoter: Dost Developers and colonizers LLP (Other than Individual). Address: Ring Road ,. PIN: 151001. Valid upto: 01-Apr-2028',
      '{"district":"Bathinda","promoter":"Dost Developers and colonizers LLP (Other than Individual)","address":"Ring Road ,","pin_code":"151001","registration_date":"12-Jun-2024","valid_upto":"01-Apr-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-KPT39-PR1000: KIRAT ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-KPT39-PR1000',
      'KIRAT ENCLAVE',
      'kirat-enclave-dup1',
      'active',
      'Promoter: KIRAT LAND DEVELOPERS (Other than Individual). Address: Kirat Enclave, Village Kapurthala West. PIN: 144601. Valid upto: 19-Dec-2027',
      '{"district":"Kapurthala","promoter":"KIRAT LAND DEVELOPERS (Other than Individual)","address":"Kirat Enclave, Village Kapurthala West","pin_code":"144601","registration_date":"03-Jul-2024","valid_upto":"19-Dec-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PC0254: MINIPLEX
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PC0254',
      'MINIPLEX',
      'miniplex',
      'active',
      'Promoter: PADMA DEVELOPERS (Other than Individual). Address: DABWALI ROAD, NEAR AIIMS HOSPITAL. PIN: 151001. Valid upto: 31-Jan-2026',
      '{"district":"Bathinda","promoter":"PADMA DEVELOPERS (Other than Individual)","address":"DABWALI ROAD, NEAR AIIMS HOSPITAL","pin_code":"151001","registration_date":"08-Jul-2024","valid_upto":"31-Jan-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR0987: Amoha Leaf
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR0987',
      'Amoha Leaf',
      'amoha-leaf',
      'active',
      'Promoter: Aggarwal Builders & Promoters (Other than Individual). Address: Ring Road 2. PIN: 151001. Valid upto: 05-Sep-2028',
      '{"district":"Bathinda","promoter":"Aggarwal Builders & Promoters (Other than Individual)","address":"Ring Road 2","pin_code":"151001","registration_date":"18-Jun-2024","valid_upto":"05-Sep-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0996: Golden Era Home
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0996',
      'Golden Era Home',
      'golden-era-home',
      'active',
      'Promoter: ABS Infra Developers (Other than Individual). Address: Village Singhpura,HB No 43 Zirakpur, Dist SAS Nagar. PIN: 140063. Valid upto: 04-Jan-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ABS Infra Developers (Other than Individual)","address":"Village Singhpura,HB No 43 Zirakpur, Dist SAS Nagar","pin_code":"140063","registration_date":"01-Jul-2024","valid_upto":"04-Jan-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PC0252: BROOKLYN SQUARE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PC0252',
      'BROOKLYN SQUARE',
      'brooklyn-square',
      'active',
      'Promoter: PREMIERE INFRA HOMES LLP (Other than Individual). Address: BHUCHO MANDI (BHUCHO KALAN). PIN: 151101. Valid upto: 29-Mar-2029',
      '{"district":"Bathinda","promoter":"PREMIERE INFRA HOMES LLP (Other than Individual)","address":"BHUCHO MANDI (BHUCHO KALAN)","pin_code":"151101","registration_date":"01-Jul-2024","valid_upto":"29-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0976: ATLANTIS GRAND
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0976',
      'ATLANTIS GRAND',
      'atlantis-grand',
      'active',
      'Promoter: KRISHNA BUILDERS (Other than Individual). Address: VILLAGE : NABHA HIGH GROUND ROAD, ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KRISHNA BUILDERS (Other than Individual)","address":"VILLAGE : NABHA HIGH GROUND ROAD, ZIRAKPUR","pin_code":"140603","registration_date":"12-Jun-2024","valid_upto":"31-Dec-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PR0972: The Wilton
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PR0972',
      'The Wilton',
      'the-wilton',
      'active',
      'Promoter: Vadhera Apartments Private Limited (Other than Individual). Address: H.B No. 153, Village Ayali Khurd, Hambran Road, Tehsil & Distt ludhiana. PIN: 141001. Valid upto: 30-Sep-2028',
      '{"district":"Ludhiana","promoter":"Vadhera Apartments Private Limited (Other than Individual)","address":"H.B No. 153, Village Ayali Khurd, Hambran Road, Tehsil & Distt ludhiana","pin_code":"141001","registration_date":"02-Jul-2024","valid_upto":"30-Sep-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR73-PC0253: Pawan Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR73-PC0253',
      'Pawan Enclave',
      'pawan-enclave',
      'active',
      'Promoter: PVS Builders and Colonizers Pvt. Ltd. (Other than Individual). Address: Pawan Enclave, Dhuri Road, Malerkotla. PIN: 148023. Valid upto: 31-Mar-2027',
      '{"district":"Sangrur","promoter":"PVS Builders and Colonizers Pvt. Ltd. (Other than Individual)","address":"Pawan Enclave, Dhuri Road, Malerkotla","pin_code":"148023","registration_date":"02-Jul-2024","valid_upto":"31-Mar-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0978: AEROVISTA MEADOWS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0978',
      'AEROVISTA MEADOWS',
      'aerovista-meadows',
      'active',
      'Promoter: Manglam Infra  (Other than Individual). Address: Village Dayalpura MC Zirakpur. PIN: 140603. Valid upto: 31-Jan-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Manglam Infra  (Other than Individual)","address":"Village Dayalpura MC Zirakpur","pin_code":"140603","registration_date":"13-Jun-2024","valid_upto":"31-Jan-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL65-PI0023: Mohali Industrial Logistics Park
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL65-PI0023',
      'Mohali Industrial Logistics Park',
      'mohali-industrial-logistics-park',
      'active',
      'Promoter: ANM BUILDERS LLP (Other than Individual). Address: Village Tepla, Tehsil Rajpura, Distt. Patiala. PIN: 140417. Valid upto: 31-Mar-2029',
      '{"district":"Patiala","promoter":"ANM BUILDERS LLP (Other than Individual)","address":"Village Tepla, Tehsil Rajpura, Distt. Patiala","pin_code":"140417","registration_date":"13-Jun-2024","valid_upto":"31-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-MNS49-PR0970: Aggarwal Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-MNS49-PR0970',
      'Aggarwal Enclave',
      'aggarwal-enclave-dup1',
      'active',
      'Promoter: Aggarwal Enclave (Other than Individual). Address: Bhikhi Road Budhlada, Budhlada. PIN: 151502. Valid upto: 28-Jan-2029',
      '{"district":"Mansa","promoter":"Aggarwal Enclave (Other than Individual)","address":"Bhikhi Road Budhlada, Budhlada","pin_code":"151502","registration_date":"13-Jun-2024","valid_upto":"28-Jan-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR0997: Paradise Homz
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR0997',
      'Paradise Homz',
      'paradise-homz',
      'active',
      'Promoter: Shri Krishna Developers (Other than Individual). Address: Near Virat Green Colony, Multana Road Bathinda,. PIN: 151001. Valid upto: 01-Feb-2027',
      '{"district":"Bathinda","promoter":"Shri Krishna Developers (Other than Individual)","address":"Near Virat Green Colony, Multana Road Bathinda,","pin_code":"151001","registration_date":"01-Jul-2024","valid_upto":"01-Feb-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-MKT57-PR0961: ROYAL GREENS COLONY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-MKT57-PR0961',
      'ROYAL GREENS COLONY',
      'royal-greens-colony',
      'active',
      'Promoter: SHIVA DEVELOPERS (Other than Individual). Address: SHEKHU ROAD, NEAR GURU TEG BAHADUR SCHOOL. PIN: 152107. Valid upto: 05-Jul-2028',
      '{"district":"Muktsar","promoter":"SHIVA DEVELOPERS (Other than Individual)","address":"SHEKHU ROAD, NEAR GURU TEG BAHADUR SCHOOL","pin_code":"152107","registration_date":"01-Jul-2024","valid_upto":"05-Jul-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0239: GNG HIGH STREET
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0239',
      'GNG HIGH STREET',
      'gng-high-street',
      'active',
      'Promoter: G&G BUILDERS & PROMOTERS (Other than Individual). Address: VILLAGE DHAKOLI, ZIRAKPUR. PIN: 160104. Valid upto: 30-Jun-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"G&G BUILDERS & PROMOTERS (Other than Individual)","address":"VILLAGE DHAKOLI, ZIRAKPUR","pin_code":"160104","registration_date":"11-Jun-2024","valid_upto":"30-Jun-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BNL06-PR0956: GOVARDHAN  CITY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BNL06-PR0956',
      'GOVARDHAN  CITY',
      'govardhan-city',
      'active',
      'Promoter: BARNALA LAND PROMOTERS (Other than Individual). Address: Village Patti Sekhwan Hadbast No. 42, Sub Tehsil of Barnala Distt Barnala. PIN: 148101. Valid upto: 03-Oct-2028',
      '{"district":"Barnala","promoter":"BARNALA LAND PROMOTERS (Other than Individual)","address":"Village Patti Sekhwan Hadbast No. 42, Sub Tehsil of Barnala Distt Barnala","pin_code":"148101","registration_date":"11-Jun-2024","valid_upto":"03-Oct-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PC0247: Time Square
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PC0247',
      'Time Square',
      'time-square-dup1',
      'active',
      'Promoter: Pioneer Developers (Other than Individual). Address: Adjoining D-Mart, Mansa Road. PIN: 151001. Valid upto: 14-Mar-2029',
      '{"district":"Bathinda","promoter":"Pioneer Developers (Other than Individual)","address":"Adjoining D-Mart, Mansa Road","pin_code":"151001","registration_date":"21-Jun-2024","valid_upto":"14-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0993: F TOWERS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0993',
      'F TOWERS',
      'f-towers',
      'active',
      'Promoter: SBP HOUSING PRIVATE LIMITED (Other than Individual). Address: Village Birmi, Tehsil Mullanpur Dakha. PIN: 141102. Valid upto: 27-Mar-2029',
      '{"district":"Ludhiana","promoter":"SBP HOUSING PRIVATE LIMITED (Other than Individual)","address":"Village Birmi, Tehsil Mullanpur Dakha","pin_code":"141102","registration_date":"24-Jun-2024","valid_upto":"27-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0990: PRAKRIT
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0990',
      'PRAKRIT',
      'prakrit',
      'active',
      'Promoter: LUXE LANES DEVELOPERS (Other than Individual). Address: VILLAGE NABHA, ZIRAKPUR. PIN: 140603. Valid upto: 11-Feb-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"LUXE LANES DEVELOPERS (Other than Individual)","address":"VILLAGE NABHA, ZIRAKPUR","pin_code":"140603","registration_date":"24-Jun-2024","valid_upto":"11-Feb-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0995: Jubilee Vallum
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0995',
      'Jubilee Vallum',
      'jubilee-vallum',
      'active',
      'Promoter: Unistar Builders Pvt Ltd (Other than Individual). Address: Site No. 4, GH, Sector 90-91(JLPL). PIN: 140307. Valid upto: 31-Dec-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Unistar Builders Pvt Ltd (Other than Individual)","address":"Site No. 4, GH, Sector 90-91(JLPL)","pin_code":"140307","website":"www.jubileegroup.in","registration_date":"21-Jun-2024","valid_upto":"31-Dec-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0999: City of Dreams 5
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0999',
      'City of Dreams 5',
      'city-of-dreams-5',
      'active',
      'Promoter: Sbp shinestar private limited (Other than Individual). Address: Village dyalpura, Hadbast no. 289 Sub tehsil Zirakpur. PIN: 140603. Valid upto: 31-Jan-2031',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sbp shinestar private limited (Other than Individual)","address":"Village dyalpura, Hadbast no. 289 Sub tehsil Zirakpur","pin_code":"140603","registration_date":"21-Jun-2024","valid_upto":"31-Jan-2031"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PC0231: THE EMPIRE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PC0231',
      'THE EMPIRE',
      'the-empire',
      'active',
      'Promoter: JSG ROYAL INFRA LLP (Other than Individual). Address: VILLAGE MULTANPUR (H B NO 103), TEHSIL RAJPURA. PIN: 140401. Valid upto: 01-Oct-2028',
      '{"district":"Patiala","promoter":"JSG ROYAL INFRA LLP (Other than Individual)","address":"VILLAGE MULTANPUR (H B NO 103), TEHSIL RAJPURA","pin_code":"140401","registration_date":"11-Jun-2024","valid_upto":"01-Oct-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BNL06-PC0246: J.R. SQUARE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BNL06-PC0246',
      'J.R. SQUARE',
      'jr-square',
      'active',
      'Promoter: TRUE PROMOTERS AND DEVELOPERS (Other than Individual). Address: VILLAGE HANDIAYA B, HADBAST NUMBER 58 ,BARNALA. PIN: 148101. Valid upto: 01-Jan-2028',
      '{"district":"Barnala","promoter":"TRUE PROMOTERS AND DEVELOPERS (Other than Individual)","address":"VILLAGE HANDIAYA B, HADBAST NUMBER 58 ,BARNALA","pin_code":"148101","registration_date":"13-Jun-2024","valid_upto":"01-Jan-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0971: MELODY OF LIFE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0971',
      'MELODY OF LIFE',
      'melody-of-life',
      'active',
      'Promoter: Manglam Infra  (Other than Individual). Address: HB No. 289, Village Dayalpura, Zirakpur. PIN: 140603. Valid upto: 31-Jan-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Manglam Infra  (Other than Individual)","address":"HB No. 289, Village Dayalpura, Zirakpur","pin_code":"140603","registration_date":"13-Jun-2024","valid_upto":"31-Jan-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0988: EL VALLE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0988',
      'EL VALLE',
      'el-valle',
      'active',
      'Promoter: AMARJIT  SINGH (Individual). Address: VILLAGE SHEKHPURA KHURD TESIL DERABASSI SAS NAGAR. PIN: 140507. Valid upto: 17-Sep-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AMARJIT  SINGH (Individual)","address":"VILLAGE SHEKHPURA KHURD TESIL DERABASSI SAS NAGAR","pin_code":"140507","registration_date":"21-Jun-2024","valid_upto":"17-Sep-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0242: SBC COMMERCIAL STREET
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0242',
      'SBC COMMERCIAL STREET',
      'sbc-commercial-street',
      'active',
      'Promoter: BANSAL INFRATECH (Other than Individual). Address: VILL KHANPUR, HADBAST NO 183,, TEHSIL KHARAR. PIN: 140603. Valid upto: 10-Jan-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"BANSAL INFRATECH (Other than Individual)","address":"VILL KHANPUR, HADBAST NO 183,, TEHSIL KHARAR","pin_code":"140603","registration_date":"18-Jun-2024","valid_upto":"10-Jan-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR76-PC0241: Taj Complex Phase-II Extension
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR76-PC0241',
      'Taj Complex Phase-II Extension',
      'taj-complex-phase-ii-extension',
      'active',
      'Promoter: Sh. Mandeep  Singh Turna (Individual). Address: Hadbast No. 129, Village Khanauri Kalan, Tehsil Moonak. PIN: 148027. Valid upto: 31-Dec-2027',
      '{"district":"Sangrur","promoter":"Sh. Mandeep  Singh Turna (Individual)","address":"Hadbast No. 129, Village Khanauri Kalan, Tehsil Moonak","pin_code":"148027","registration_date":"18-Jun-2024","valid_upto":"31-Dec-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZL19-PR0992: Vrindavan Greens
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZL19-PR0992',
      'Vrindavan Greens',
      'vrindavan-greens',
      'active',
      'Promoter: Ganpati Developers  (Other than Individual). Address: Khandhwala Road Byepass To Hanumangarh Road Byepass, Abohar. PIN: 152116. Valid upto: 14-Jan-2029',
      '{"district":"Fazilka","promoter":"Ganpati Developers  (Other than Individual)","address":"Khandhwala Road Byepass To Hanumangarh Road Byepass, Abohar","pin_code":"152116","registration_date":"19-Jun-2024","valid_upto":"14-Jan-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0968: ELDECO VIVIANA SELECT
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0968',
      'ELDECO VIVIANA SELECT',
      'eldeco-viviana-select',
      'active',
      'Promoter: ELDECO MAKSAD PROPERTIES LIMITED (Other than Individual). Address: VIVIANA PROJECT, Village Lalton Kalan 1& 2. PIN: 142022. Valid upto: 29-Mar-2029',
      '{"district":"Ludhiana","promoter":"ELDECO MAKSAD PROPERTIES LIMITED (Other than Individual)","address":"VIVIANA PROJECT, Village Lalton Kalan 1& 2","pin_code":"142022","website":"www.eldecogroup.com","registration_date":"20-Jun-2024","valid_upto":"29-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0986: Velora Urbano
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0986',
      'Velora Urbano',
      'velora-urbano',
      'active',
      'Promoter: Vistara Buildtech (Other than Individual). Address: Village Karala, Tehsil Banur & Dist. SAS Nagar, Punjab. PIN: 140601. Valid upto: 30-Jan-2029',
      '{"district":"Patiala","promoter":"Vistara Buildtech (Other than Individual)","address":"Village Karala, Tehsil Banur & Dist. SAS Nagar, Punjab","pin_code":"140601","registration_date":"14-Jun-2024","valid_upto":"30-Jan-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0245: Commercial 3
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0245',
      'Commercial 3',
      'commercial-3',
      'active',
      'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Village Sainimajra, Tehsil Kharar. PIN: 140301. Valid upto: 09-Apr-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Village Sainimajra, Tehsil Kharar","pin_code":"140301","website":"www.omaxe.com","registration_date":"13-Jun-2024","valid_upto":"09-Apr-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0233: RIPSS BUSINESS PARK
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0233',
      'RIPSS BUSINESS PARK',
      'ripss-business-park',
      'active',
      'Promoter: RIPSS INFRASTRUCTURE PVT LTD (Other than Individual). Address: Sector 66-A , SAS Nagar. PIN: 160062. Valid upto: 08-Mar-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"RIPSS INFRASTRUCTURE PVT LTD (Other than Individual)","address":"Sector 66-A , SAS Nagar","pin_code":"160062","registration_date":"07-Jun-2024","valid_upto":"08-Mar-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0959: VELORA HAPPINEST
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0959',
      'VELORA HAPPINEST',
      'velora-happinest',
      'active',
      'Promoter: Velora Infratech (Other than Individual). Address: Village Banur, Hadbast No. 280,, Tehsil Banur, Distt. S.AS. Nagar, Mohali. PIN: 140601. Valid upto: 05-Mar-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Velora Infratech (Other than Individual)","address":"Village Banur, Hadbast No. 280,, Tehsil Banur, Distt. S.AS. Nagar, Mohali","pin_code":"140601","registration_date":"07-Jun-2024","valid_upto":"05-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0244: Central Square
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0244',
      'Central Square',
      'central-square',
      'active',
      'Promoter: DLF Home Developers Limited (Other than Individual). Address: Hyde Park Estate, New Chandigarh, Mullanpur. PIN: 140901. Valid upto: 30-Sep-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"DLF Home Developers Limited (Other than Individual)","address":"Hyde Park Estate, New Chandigarh, Mullanpur","pin_code":"140901","registration_date":"12-Jun-2024","valid_upto":"30-Sep-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0950: AURA VALLEY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0950',
      'AURA VALLEY',
      'aura-valley',
      'active',
      'Promoter: THE FIRE STONE ASSETS  (Other than Individual). Address: VILLAGE BANUR, HADBAST NO. 280, DISTT SAS NAGAR MOHALI. PIN: 140601. Valid upto: 24-Jan-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"THE FIRE STONE ASSETS  (Other than Individual)","address":"VILLAGE BANUR, HADBAST NO. 280, DISTT SAS NAGAR MOHALI","pin_code":"140601","registration_date":"11-Jun-2024","valid_upto":"24-Jan-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR75-PC0235: WE FIVE FACTORY OUTLETS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR75-PC0235',
      'WE FIVE FACTORY OUTLETS',
      'we-five-factory-outlets',
      'active',
      'Promoter: We Five Land Developers (Other than Individual). Address: VILLAGE SEKHOPUR SANGRAM, DHURI ROAD MALERKOTLA. PIN: 148023. Valid upto: 31-Dec-2025',
      '{"district":"Sangrur","promoter":"We Five Land Developers (Other than Individual)","address":"VILLAGE SEKHOPUR SANGRAM, DHURI ROAD MALERKOTLA","pin_code":"148023","registration_date":"11-Jun-2024","valid_upto":"31-Dec-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PC0237: SHEESH MAHAL COMMERCIAL
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PC0237',
      'SHEESH MAHAL COMMERCIAL',
      'sheesh-mahal-commercial',
      'active',
      'Promoter: Sheesh Mahal Developers Ltd (Other than Individual). Address: Dabwali Road, Bathinda,, Punjab. PIN: 151001',
      '{"district":"Bathinda","promoter":"Sheesh Mahal Developers Ltd (Other than Individual)","address":"Dabwali Road, Bathinda,, Punjab","pin_code":"151001","registration_date":"11-Jun-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0966: GREEN HOMES - 1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0966',
      'GREEN HOMES - 1',
      'green-homes-1',
      'active',
      'Promoter: N K SHARMA ENTERPRISES PVT LTD (Other than Individual). Address: Village Gazipur, Zirakpur, Zirakpur. PIN: 140603. Valid upto: 30-Sep-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"N K SHARMA ENTERPRISES PVT LTD (Other than Individual)","address":"Village Gazipur, Zirakpur, Zirakpur","pin_code":"140603","registration_date":"12-Jun-2024","valid_upto":"30-Sep-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0232: Outlet Village
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0232',
      'Outlet Village',
      'outlet-village',
      'active',
      'Promoter: VSS Infra Developers (Other than Individual). Address: VILLAGE BHANKHARPUR, TEH DERABASSI. PIN: 140201. Valid upto: 17-Aug-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"VSS Infra Developers (Other than Individual)","address":"VILLAGE BHANKHARPUR, TEH DERABASSI","pin_code":"140201","registration_date":"07-Jun-2024","valid_upto":"17-Aug-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0957: One Rise (P-1)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0957',
      'One Rise (P-1)',
      'one-rise-p-1',
      'active',
      'Promoter: PUMA REALTORS PRIVATE LIMITED (Other than Individual). Address: Sector 99,, District SAS Nagar(Mohali),. PIN: 140306',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PUMA REALTORS PRIVATE LIMITED (Other than Individual)","address":"Sector 99,, District SAS Nagar(Mohali),","pin_code":"140306","website":"www.onecity.in","registration_date":"07-Jun-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0958: One City Hamlet 1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0958',
      'One City Hamlet 1',
      'one-city-hamlet-1',
      'active',
      'Promoter: PUMA REALTORS PRIVATE LIMITED (Other than Individual). Address: Sector 98,, District SAS Nagar(Mohali),. PIN: 140308',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PUMA REALTORS PRIVATE LIMITED (Other than Individual)","address":"Sector 98,, District SAS Nagar(Mohali),","pin_code":"140308","website":"www.onecity.in","registration_date":"07-Jun-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-KPT40-PR0963: GREEN VALLEY PHASE-II
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-KPT40-PR0963',
      'GREEN VALLEY PHASE-II',
      'green-valley-phase-ii',
      'active',
      'Promoter: GURU AMAR DASS ESTATES (Other than Individual). Address: Village Maheru H.B.No.84, Tehsil Phagwara. PIN: 144411. Valid upto: 20-Mar-2029',
      '{"district":"Kapurthala","promoter":"GURU AMAR DASS ESTATES (Other than Individual)","address":"Village Maheru H.B.No.84, Tehsil Phagwara","pin_code":"144411","registration_date":"12-Jun-2024","valid_upto":"20-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0159: SAVITRY GREENS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0159',
      'SAVITRY GREENS',
      'savitry-greens',
      'active',
      'Promoter: VN SHARMA BUILDERS PVRIVATE LIMITED (Other than Individual). Address: VIP ROAD, ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"VN SHARMA BUILDERS PVRIVATE LIMITED (Other than Individual)","address":"VIP ROAD, ZIRAKPUR","pin_code":"140603","registration_date":"16-Oct-2017","valid_upto":"31-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR0980: Hyde Park Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR0980',
      'Hyde Park Enclave',
      'hyde-park-enclave',
      'active',
      'Promoter: VRC THAKUR DEVELOPERS PRIVATE LIMITED (Other than Individual). Address: Dabwali Road, Bathinda. PIN: 151001. Valid upto: 20-Oct-2026',
      '{"district":"Bathinda","promoter":"VRC THAKUR DEVELOPERS PRIVATE LIMITED (Other than Individual)","address":"Dabwali Road, Bathinda","pin_code":"151001","registration_date":"12-Jun-2024","valid_upto":"20-Oct-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PM0169: Mexmon Palm City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PM0169',
      'Mexmon Palm City',
      'mexmon-palm-city',
      'active',
      'Promoter: United Builders (Other than Individual). Address: Mexmon Palm City, Village Qadianwali, 66Ft. Road. PIN: 144020. Valid upto: 31-Aug-2028',
      '{"district":"Jalandhar","promoter":"United Builders (Other than Individual)","address":"Mexmon Palm City, Village Qadianwali, 66Ft. Road","pin_code":"144020","registration_date":"07-Jun-2024","valid_upto":"31-Aug-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR0955: Paris City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR0955',
      'Paris City',
      'paris-city',
      'active',
      'Promoter: Paris Infra (Other than Individual). Address: Village Patti Jhutti, Ring Road Phase 2, H.B No. 70, Distt. Bathinda. PIN: 151001. Valid upto: 13-Sep-2028',
      '{"district":"Bathinda","promoter":"Paris Infra (Other than Individual)","address":"Village Patti Jhutti, Ring Road Phase 2, H.B No. 70, Distt. Bathinda","pin_code":"151001","registration_date":"06-Jun-2024","valid_upto":"13-Sep-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BNL06-PR0947: GANPATI ENCLAVE EXT 1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BNL06-PR0947',
      'GANPATI ENCLAVE EXT 1',
      'ganpati-enclave-ext-1',
      'active',
      'Promoter: GANPATI BUILDERS AND DEVELOPERS  (Other than Individual). Address: OPP.D-MART,, HANDIAYA ROAD. PIN: 148101. Valid upto: 25-Sep-2027',
      '{"district":"Barnala","promoter":"GANPATI BUILDERS AND DEVELOPERS  (Other than Individual)","address":"OPP.D-MART,, HANDIAYA ROAD","pin_code":"148101","registration_date":"04-Jun-2024","valid_upto":"25-Sep-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PC0225: The Wilton(Commercial)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PC0225',
      'The Wilton(Commercial)',
      'the-wiltoncommercial',
      'active',
      'Promoter: Vadhera Apartments Private Limited (Other than Individual). Address: Village Ayali Khurd, H.B. No. 153,. PIN: 142027. Valid upto: 27-Mar-2029',
      '{"district":"Ludhiana","promoter":"Vadhera Apartments Private Limited (Other than Individual)","address":"Village Ayali Khurd, H.B. No. 153,","pin_code":"142027","registration_date":"04-Jun-2024","valid_upto":"27-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0941: AMELIA ESTATE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0941',
      'AMELIA ESTATE',
      'amelia-estate',
      'active',
      'Promoter: MU BUILDERS AND PROMOTERS (Other than Individual). Address: VILLAGE RAMGARH BHUDA, ZIRAKPUR. PIN: 140603. Valid upto: 11-Sep-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MU BUILDERS AND PROMOTERS (Other than Individual)","address":"VILLAGE RAMGARH BHUDA, ZIRAKPUR","pin_code":"140603","registration_date":"30-May-2024","valid_upto":"11-Sep-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0946: BJBF HEIGHTS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0946',
      'BJBF HEIGHTS',
      'bjbf-heights',
      'active',
      'Promoter: BJBF DEVELOPERS & BUILDERS PVT LTD (Other than Individual). Address: At village Santemajra, hadbast no. 186. PIN: 140307. Valid upto: 13-Dec-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"BJBF DEVELOPERS & BUILDERS PVT LTD (Other than Individual)","address":"At village Santemajra, hadbast no. 186","pin_code":"140307","registration_date":"03-Jun-2024","valid_upto":"13-Dec-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0954: BELGRAVIA HOMES
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0954',
      'BELGRAVIA HOMES',
      'belgravia-homes',
      'active',
      'Promoter: RIPSS INFRASTRUCTURE PVT LTD (Other than Individual). Address: VILLAGE BHATTIAN (HADBAST NO. 89), VILLAGE RAJPURA URF HUSAINPURA (HADBAST NO. 99),, VILLAGE KADIAN (HADBAST NO. 91). PIN: 143517. Valid upto: 24-Nov-2028',
      '{"district":"Ludhiana","promoter":"RIPSS INFRASTRUCTURE PVT LTD (Other than Individual)","address":"VILLAGE BHATTIAN (HADBAST NO. 89), VILLAGE RAJPURA URF HUSAINPURA (HADBAST NO. 99),, VILLAGE KADIAN (HADBAST NO. 91)","pin_code":"143517","registration_date":"06-Jun-2024","valid_upto":"24-Nov-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PC0229: ONE AMG
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PC0229',
      'ONE AMG',
      'one-amg',
      'active',
      'Promoter: Rauni Developers Private Limited (Other than Individual). Address: Urban Estate, Phase I, Opp. Labour Colony, Dugri Road. PIN: 141002. Valid upto: 30-Dec-2027',
      '{"district":"Ludhiana","promoter":"Rauni Developers Private Limited (Other than Individual)","address":"Urban Estate, Phase I, Opp. Labour Colony, Dugri Road","pin_code":"141002","registration_date":"06-Jun-2024","valid_upto":"30-Dec-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR0952: SOHANA RESIDENCY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR0952',
      'SOHANA RESIDENCY',
      'sohana-residency',
      'active',
      'Promoter: SOHANA RESIDENCY (Other than Individual). Address: VILLAGE PHOLRIWAL, HB NO. 252 TEHSIL JALANDHAR. PIN: 144022. Valid upto: 19-Aug-2028',
      '{"district":"Jalandhar","promoter":"SOHANA RESIDENCY (Other than Individual)","address":"VILLAGE PHOLRIWAL, HB NO. 252 TEHSIL JALANDHAR","pin_code":"144022","registration_date":"06-May-2024","valid_upto":"19-Aug-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-KPT40-PR0951: AGI SKY GARDEN-III
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-KPT40-PR0951',
      'AGI SKY GARDEN-III',
      'agi-sky-garden-iii',
      'active',
      'Promoter: AGI INFRA LIMITED (Other than Individual). Address: Village Khazurla (H.B.NO.82). PIN: 144411. Valid upto: 27-Mar-2027',
      '{"district":"Kapurthala","promoter":"AGI INFRA LIMITED (Other than Individual)","address":"Village Khazurla (H.B.NO.82)","pin_code":"144411","website":"www.agiinfra.com","registration_date":"06-Jun-2024","valid_upto":"27-Mar-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-KPT40-PC0228: GRAND VIEW STREET
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-KPT40-PC0228',
      'GRAND VIEW STREET',
      'grand-view-street',
      'active',
      'Promoter: Amico Builders & Developers (Other than Individual). Address: Village Chaheru, H.B.No.83, Tehsil Phagwara. PIN: 144411. Valid upto: 08-Aug-2028',
      '{"district":"Kapurthala","promoter":"Amico Builders & Developers (Other than Individual)","address":"Village Chaheru, H.B.No.83, Tehsil Phagwara","pin_code":"144411","registration_date":"03-Jun-2024","valid_upto":"08-Aug-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PC0226: BLESSING LUXURIA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PC0226',
      'BLESSING LUXURIA',
      'blessing-luxuria',
      'active',
      'Promoter: Western Living Private Limited (Other than Individual). Address: Village Malakpur, Ludhiana West. PIN: 142027. Valid upto: 30-Oct-2028',
      '{"district":"Ludhiana","promoter":"Western Living Private Limited (Other than Individual)","address":"Village Malakpur, Ludhiana West","pin_code":"142027","registration_date":"31-May-2024","valid_upto":"30-Oct-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR03-PR0945: ONE WORLD
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR03-PR0945',
      'ONE WORLD',
      'one-world',
      'active',
      'Promoter: DREAM COUNTY HOMES & VILLAS LLP (Other than Individual). Address: New City Center, Opp Hotel Taj Swarna, NEAR TRILIUM MALL,  Amritsar. PIN: 143001. Valid upto: 05-Apr-2028',
      '{"district":"Amritsar","promoter":"DREAM COUNTY HOMES & VILLAS LLP (Other than Individual)","address":"New City Center, Opp Hotel Taj Swarna, NEAR TRILIUM MALL,  Amritsar","pin_code":"143001","registration_date":"30-May-2024","valid_upto":"05-Apr-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PR0943: MAVEN ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PR0943',
      'MAVEN ENCLAVE',
      'maven-enclave',
      'active',
      'Promoter: MAVEN ENCLAVE (Other than Individual). Address: VILLAGE ALAMGIR, HADBAST NO 273,, TEHSIL LUDHIANA SOUTH. PIN: 141116. Valid upto: 14-Aug-2028',
      '{"district":"Ludhiana","promoter":"MAVEN ENCLAVE (Other than Individual)","address":"VILLAGE ALAMGIR, HADBAST NO 273,, TEHSIL LUDHIANA SOUTH","pin_code":"141116","registration_date":"30-May-2024","valid_upto":"14-Aug-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0940: AMARI HILLS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0940',
      'AMARI HILLS',
      'amari-hills',
      'active',
      'Promoter: S7 HOLDINGS (Other than Individual). Address: Mianpur Changar, Tehsil Kharar. PIN: 140109. Valid upto: 14-Mar-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"S7 HOLDINGS (Other than Individual)","address":"Mianpur Changar, Tehsil Kharar","pin_code":"140109","registration_date":"30-May-2024","valid_upto":"14-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZL20-PR0944: Green City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZL20-PR0944',
      'Green City',
      'green-city-dup2',
      'active',
      'Promoter: Prestige Developers (Other than Individual). Address: Fazilka-Jalalabad Road, Near Orbit Palace. PIN: 152024. Valid upto: 31-Dec-2027',
      '{"district":"Fazilka","promoter":"Prestige Developers (Other than Individual)","address":"Fazilka-Jalalabad Road, Near Orbit Palace","pin_code":"152024","registration_date":"30-May-2024","valid_upto":"31-Dec-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL62-PI0018: Nabha Industrial Zone
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL62-PI0018',
      'Nabha Industrial Zone',
      'nabha-industrial-zone',
      'active',
      'Promoter: Ashok  Kumar (Individual). Address: Nabha Industrial Zone, Village Rohti Khas & Rohti Chhanna, Nabha. PIN: 147201. Valid upto: 13-Feb-2027',
      '{"district":"Patiala","promoter":"Ashok  Kumar (Individual)","address":"Nabha Industrial Zone, Village Rohti Khas & Rohti Chhanna, Nabha","pin_code":"147201","registration_date":"28-May-2024","valid_upto":"13-Feb-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR73-PC0224: SHRIH PLAZA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR73-PC0224',
      'SHRIH PLAZA',
      'shrih-plaza',
      'active',
      'Promoter: SHRIH PLAZA CITY CENTER LLP (Other than Individual). Address: Village Dhuri, Hudbust no 94, Mk Road, Dhuri. PIN: 148024. Valid upto: 24-Apr-2029',
      '{"district":"Sangrur","promoter":"SHRIH PLAZA CITY CENTER LLP (Other than Individual)","address":"Village Dhuri, Hudbust no 94, Mk Road, Dhuri","pin_code":"148024","registration_date":"27-May-2024","valid_upto":"24-Apr-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZL19-PR0939: D.R.Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZL19-PR0939',
      'D.R.Enclave',
      'drenclave',
      'active',
      'Promoter: D.R. ENTERPRISES (Other than Individual). Address: Old Fazilka Road, Abohar. PIN: 152123. Valid upto: 30-Jan-2029',
      '{"district":"Fazilka","promoter":"D.R. ENTERPRISES (Other than Individual)","address":"Old Fazilka Road, Abohar","pin_code":"152123","registration_date":"20-May-2024","valid_upto":"30-Jan-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PC0214: Mexmon Highstreet
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PC0214',
      'Mexmon Highstreet',
      'mexmon-highstreet',
      'active',
      'Promoter: Mexmon Global Developers LLP (Other than Individual). Address: Mexmon Highstreet, 66 Ft. Road, Vill. Qadianwali. PIN: 144020. Valid upto: 28-Aug-2028',
      '{"district":"Jalandhar","promoter":"Mexmon Global Developers LLP (Other than Individual)","address":"Mexmon Highstreet, 66 Ft. Road, Vill. Qadianwali","pin_code":"144020","registration_date":"15-May-2024","valid_upto":"28-Aug-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0215: DAZZ MART 127
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0215',
      'DAZZ MART 127',
      'dazz-mart-127',
      'active',
      'Promoter: Sidhi Vinayak Infra (Other than Individual). Address: VILLAGE SANTE MAJRA, KHARAR LANDHRA ROAD. PIN: 140307. Valid upto: 30-Nov-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sidhi Vinayak Infra (Other than Individual)","address":"VILLAGE SANTE MAJRA, KHARAR LANDHRA ROAD","pin_code":"140307","registration_date":"13-May-2024","valid_upto":"30-Nov-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0219: SOUTH EXTENSION-I
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0219',
      'SOUTH EXTENSION-I',
      'south-extension-i',
      'active',
      'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: SECTOR 118 TDI CITY, SAS NAGAR MOHALI. PIN: 140301. Valid upto: 31-Dec-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"SECTOR 118 TDI CITY, SAS NAGAR MOHALI","pin_code":"140301","registration_date":"09-May-2024","valid_upto":"31-Dec-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0222: APNA BAZAAR
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0222',
      'APNA BAZAAR',
      'apna-bazaar',
      'active',
      'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: SECTOR 117 TDI CITY, SAS NAGAR. PIN: 140301. Valid upto: 31-Dec-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"SECTOR 117 TDI CITY, SAS NAGAR","pin_code":"140301","registration_date":"09-May-2024","valid_upto":"31-Dec-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0221: GOLF LINK COMMERCIAL MARKET
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0221',
      'GOLF LINK COMMERCIAL MARKET',
      'golf-link-commercial-market',
      'active',
      'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: SECTOR 118 TDI CITY, SAS NAGAR MOHALI. PIN: 140301. Valid upto: 31-Dec-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"SECTOR 118 TDI CITY, SAS NAGAR MOHALI","pin_code":"140301","registration_date":"09-May-2024","valid_upto":"31-Dec-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0220: SADAR BAZAAR
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0220',
      'SADAR BAZAAR',
      'sadar-bazaar',
      'active',
      'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: SECTOR 117 TDI CITY, SAS NAGAR. PIN: 140301. Valid upto: 31-Dec-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"SECTOR 117 TDI CITY, SAS NAGAR","pin_code":"140301","registration_date":"09-May-2024","valid_upto":"31-Dec-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0938: GOLF LINK EXTENSION
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0938',
      'GOLF LINK EXTENSION',
      'golf-link-extension',
      'active',
      'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: SECTOR 118 TDI CITY. PIN: 140301. Valid upto: 31-Dec-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"SECTOR 118 TDI CITY","pin_code":"140301","registration_date":"09-May-2024","valid_upto":"31-Dec-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL34-PR0933: TOWER HOMES
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL34-PR0933',
      'TOWER HOMES',
      'tower-homes',
      'active',
      'Promoter: Harveen  Kaur (Individual). Address: Village Wadala H.B.No.281, Tehsil Jalandhar-2. PIN: 144003. Valid upto: 21-Sep-2028',
      '{"district":"Jalandhar","promoter":"Harveen  Kaur (Individual)","address":"Village Wadala H.B.No.281, Tehsil Jalandhar-2","pin_code":"144003","registration_date":"09-May-2024","valid_upto":"21-Sep-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PC0223: URBAN SQUARE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PC0223',
      'URBAN SQUARE',
      'urban-square-dup1',
      'active',
      'Promoter: TAMPRA INFRATECH PRIVATE LIMITED (Other than Individual). Address: Mullanpur Dakha, GT Road. PIN: 141101. Valid upto: 31-May-2028',
      '{"district":"Ludhiana","promoter":"TAMPRA INFRATECH PRIVATE LIMITED (Other than Individual)","address":"Mullanpur Dakha, GT Road","pin_code":"141101","registration_date":"09-May-2024","valid_upto":"31-May-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0931: HIGHLAND PARK LUXURIA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0931',
      'HIGHLAND PARK LUXURIA',
      'highland-park-luxuria',
      'active',
      'Promoter: HIGHLAND PARK HOMES (Other than Individual). Address: HADBAST NO.234, VILLAGE BHABAT , ZIRAKPUR. PIN: 140603. Valid upto: 02-Jan-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"HIGHLAND PARK HOMES (Other than Individual)","address":"HADBAST NO.234, VILLAGE BHABAT , ZIRAKPUR","pin_code":"140603","registration_date":"09-May-2024","valid_upto":"02-Jan-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-MKT56-PR0932: Imperial Green
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-MKT56-PR0932',
      'Imperial Green',
      'imperial-green',
      'active',
      'Promoter: SNOW PALM INFRASTRUCTURE LLP (Other than Individual). Address: Village Gidderbaha, Distt. Sh. Muktsar Sahib. PIN: 152101. Valid upto: 13-Sep-2028',
      '{"district":"Muktsar","promoter":"SNOW PALM INFRASTRUCTURE LLP (Other than Individual)","address":"Village Gidderbaha, Distt. Sh. Muktsar Sahib","pin_code":"152101","registration_date":"09-May-2024","valid_upto":"13-Sep-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BNL06-PR0936: Aggarwal Grands
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BNL06-PR0936',
      'Aggarwal Grands',
      'aggarwal-grands',
      'active',
      'Promoter: Radhey Developers (Other than Individual). Address: opp. Gurkirpa Automobiles. Dhanaula Road. PIN: 148101. Valid upto: 31-Dec-2027',
      '{"district":"Barnala","promoter":"Radhey Developers (Other than Individual)","address":"opp. Gurkirpa Automobiles. Dhanaula Road","pin_code":"148101","registration_date":"09-May-2024","valid_upto":"31-Dec-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PI0021: ROYAL BUSINESSS PARK
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PI0021',
      'ROYAL BUSINESSS PARK',
      'royal-businesss-park',
      'active',
      'Promoter: SHIVA DEVELOPERS (Other than Individual). Address: Village Behman Deewana, Malaut Road. PIN: 151001. Valid upto: 23-Jul-2028',
      '{"district":"Bathinda","promoter":"SHIVA DEVELOPERS (Other than Individual)","address":"Village Behman Deewana, Malaut Road","pin_code":"151001","registration_date":"07-May-2024","valid_upto":"23-Jul-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR73-PR0935: NEW GOLDEN AVENUE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR73-PR0935',
      'NEW GOLDEN AVENUE',
      'new-golden-avenue',
      'active',
      'Promoter: SUNRISE BUILDERS (Other than Individual). Address: VILL BARDWAL HB NO 92, TEH DHURI. PIN: 148024. Valid upto: 01-Dec-2027',
      '{"district":"Sangrur","promoter":"SUNRISE BUILDERS (Other than Individual)","address":"VILL BARDWAL HB NO 92, TEH DHURI","pin_code":"148024","registration_date":"07-May-2024","valid_upto":"01-Dec-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PC0217: DREAM SQUARE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PC0217',
      'DREAM SQUARE',
      'dream-square',
      'active',
      'Promoter: Prime Land Promoters (Other than Individual). Address: NEAR KISAN CHOWNK, RING ROAD, MULTANIA ROAD, BATHINDA. PIN: 151001. Valid upto: 20-Oct-2025',
      '{"district":"Bathinda","promoter":"Prime Land Promoters (Other than Individual)","address":"NEAR KISAN CHOWNK, RING ROAD, MULTANIA ROAD, BATHINDA","pin_code":"151001","registration_date":"07-May-2024","valid_upto":"20-Oct-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH42-PR0919: SHINE CITY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH42-PR0919',
      'SHINE CITY',
      'shine-city',
      'active',
      'Promoter: SHINE HOMES (Other than Individual). Address: VILLAGE SANGOWAL HADBAST NO. 257, TEH. & DISTT. LUDHIANA. PIN: 141122. Valid upto: 13-Oct-2028',
      '{"district":"Ludhiana","promoter":"SHINE HOMES (Other than Individual)","address":"VILLAGE SANGOWAL HADBAST NO. 257, TEH. & DISTT. LUDHIANA","pin_code":"141122","registration_date":"07-May-2024","valid_upto":"13-Oct-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0926: Splande Supreme
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0926',
      'Splande Supreme',
      'splande-supreme',
      'active',
      'Promoter: Sarayu Construction (Other than Individual). Address: Village Dyalpura and Nabha, MC Zirakpur. PIN: 140603. Valid upto: 30-Apr-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sarayu Construction (Other than Individual)","address":"Village Dyalpura and Nabha, MC Zirakpur","pin_code":"140603","registration_date":"06-May-2024","valid_upto":"30-Apr-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL66-PC0213: PRO LAND SQUARE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL66-PC0213',
      'PRO LAND SQUARE',
      'pro-land-square',
      'active',
      'Promoter: A-ONE DEVELOPERS (Other than Individual). Address: SAMANA PATIALA ROAD, SAMANA DISTRICT PATIALA. PIN: 147101. Valid upto: 13-Mar-2028',
      '{"district":"Patiala","promoter":"A-ONE DEVELOPERS (Other than Individual)","address":"SAMANA PATIALA ROAD, SAMANA DISTRICT PATIALA","pin_code":"147101","registration_date":"06-May-2024","valid_upto":"13-Mar-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0209: PLAZA 21
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0209',
      'PLAZA 21',
      'plaza-21',
      'active',
      'Promoter: REKHA  RANI (Individual). Address: VILLAGE RADIALA, TEHSIL KHARAR,. PIN: 140301. Valid upto: 09-Jun-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"REKHA  RANI (Individual)","address":"VILLAGE RADIALA, TEHSIL KHARAR,","pin_code":"140301","registration_date":"06-May-2024","valid_upto":"09-Jun-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PC0206: COMMERCIAL COLONY VILLAGE BAREWAL AWANA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PC0206',
      'COMMERCIAL COLONY VILLAGE BAREWAL AWANA',
      'commercial-colony-village-barewal-awana',
      'active',
      'Promoter: Mohinder Paul  Singh (Individual). Address: VILLAGE BAREWAL AWANA. PIN: 141012. Valid upto: 30-Oct-2028',
      '{"district":"Ludhiana","promoter":"Mohinder Paul  Singh (Individual)","address":"VILLAGE BAREWAL AWANA","pin_code":"141012","registration_date":"03-May-2024","valid_upto":"30-Oct-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0925: DEV HOMES
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0925',
      'DEV HOMES',
      'dev-homes',
      'active',
      'Promoter: DEN ART INFRA PVT. LTD. (Other than Individual). Address: Village Santemajra, Sector 116, Tehsil Kharar. PIN: 140301. Valid upto: 25-May-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"DEN ART INFRA PVT. LTD. (Other than Individual)","address":"Village Santemajra, Sector 116, Tehsil Kharar","pin_code":"140301","registration_date":"06-May-2024","valid_upto":"25-May-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-KPT40-PR0920: Gilco Greens Extension
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-KPT40-PR0920',
      'Gilco Greens Extension',
      'gilco-greens-extension',
      'active',
      'Promoter: GILLSONS CONSTRUCTIONS LIMITED (Other than Individual). Address: Gilco Greens Extension, Hoshiarpur Road. PIN: 144401. Valid upto: 28-Mar-2028',
      '{"district":"Kapurthala","promoter":"GILLSONS CONSTRUCTIONS LIMITED (Other than Individual)","address":"Gilco Greens Extension, Hoshiarpur Road","pin_code":"144401","registration_date":"06-May-2024","valid_upto":"28-Mar-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PR0916: ELDECO VIVIANA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PR0916',
      'ELDECO VIVIANA',
      'eldeco-viviana',
      'active',
      'Promoter: ELDECO MAKSAD PROPERTIES LIMITED (Other than Individual). Address: Village Lalton kalan 1&2 Hadbast No 291. PIN: 142022. Valid upto: 31-May-2026',
      '{"district":"Ludhiana","promoter":"ELDECO MAKSAD PROPERTIES LIMITED (Other than Individual)","address":"Village Lalton kalan 1&2 Hadbast No 291","pin_code":"142022","registration_date":"06-May-2024","valid_upto":"31-May-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH46-PC0216: CREEK SIDE VILLAGE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH46-PC0216',
      'CREEK SIDE VILLAGE',
      'creek-side-village',
      'active',
      'Promoter: HAVENLEY DEVELOPERS (Other than Individual). Address: Village Kaddon, HB.No. 246, Malipur, HB.No. 247, Haraichan, HB.No. 248, Tehsil Payal. PIN: 141421. Valid upto: 21-Dec-2028',
      '{"district":"Ludhiana","promoter":"HAVENLEY DEVELOPERS (Other than Individual)","address":"Village Kaddon, HB.No. 246, Malipur, HB.No. 247, Haraichan, HB.No. 248, Tehsil Payal","pin_code":"141421","website":"www.havenleydevelopers.com","registration_date":"06-May-2024","valid_upto":"21-Dec-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0921: Pavitra Luxury Residences
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0921',
      'Pavitra Luxury Residences',
      'pavitra-luxury-residences',
      'active',
      'Promoter: Pavitra Homes (Other than Individual). Address: Pavitra Luxury Residences, Nabha, Zirakpur, near SAI Stadium. PIN: 140603. Valid upto: 30-Sep-2031',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Pavitra Homes (Other than Individual)","address":"Pavitra Luxury Residences, Nabha, Zirakpur, near SAI Stadium","pin_code":"140603","registration_date":"06-May-2024","valid_upto":"30-Sep-2031"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PC0212: The Outlet Walk
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PC0212',
      'The Outlet Walk',
      'the-outlet-walk',
      'active',
      'Promoter: NAGPAL LIFESTYLE COMPANY (Other than Individual). Address: Village Chuharpur Marasian, HB No. 44. PIN: 147001. Valid upto: 31-Dec-2026',
      '{"district":"Patiala","promoter":"NAGPAL LIFESTYLE COMPANY (Other than Individual)","address":"Village Chuharpur Marasian, HB No. 44","pin_code":"147001","registration_date":"06-May-2024","valid_upto":"31-Dec-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0210: Grand Carnival
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0210',
      'Grand Carnival',
      'grand-carnival',
      'active',
      'Promoter: RGI INFRA (Other than Individual). Address: M/s. RGI Infra, Block-H, Airport Road, Aerocity,S.A.S Nagar, Mohali. PIN: 140306. Valid upto: 31-Dec-2030',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"RGI INFRA (Other than Individual)","address":"M/s. RGI Infra, Block-H, Airport Road, Aerocity,S.A.S Nagar, Mohali","pin_code":"140306","registration_date":"06-May-2024","valid_upto":"31-Dec-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BNL06-PC0211: BRH SQUARE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BNL06-PC0211',
      'BRH SQUARE',
      'brh-square',
      'active',
      'Promoter: BRH EATON PRIVATE LIMITED (Other than Individual). Address: VILLAGE HANDIAYA-D (H.B NO.58). PIN: 148107. Valid upto: 08-Jun-2028',
      '{"district":"Barnala","promoter":"BRH EATON PRIVATE LIMITED (Other than Individual)","address":"VILLAGE HANDIAYA-D (H.B NO.58)","pin_code":"148107","registration_date":"06-May-2024","valid_upto":"08-Jun-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0917: MOTIA GRAND PHASE I
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0917',
      'MOTIA GRAND PHASE I',
      'motia-grand-phase-i',
      'active',
      'Promoter: MOTIA GRAND LLP (Other than Individual). Address: Village Madhopur, H.B.No. 11, DERABASSI BARWALA ROAD. PIN: 140507. Valid upto: 23-May-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MOTIA GRAND LLP (Other than Individual)","address":"Village Madhopur, H.B.No. 11, DERABASSI BARWALA ROAD","pin_code":"140507","registration_date":"06-May-2024","valid_upto":"23-May-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0927: THE GRAND SKY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0927',
      'THE GRAND SKY',
      'the-grand-sky',
      'active',
      'Promoter: MRLK Builders and Promoters Pvt. Ltd (Other than Individual). Address: Hadbast No. 77, Village, Radiala. PIN: 140301. Valid upto: 24-Jan-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MRLK Builders and Promoters Pvt. Ltd (Other than Individual)","address":"Hadbast No. 77, Village, Radiala","pin_code":"140301","registration_date":"06-May-2024","valid_upto":"24-Jan-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL64-PR0924: SUN CITY PHASE 2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL64-PR0924',
      'SUN CITY PHASE 2',
      'sun-city-phase-2',
      'active',
      'Promoter: SUNRIZE COLONIZERS (Other than Individual). Address: VILLAGE KAHANGARH GHARCHO, HADBAST NO. 175. PIN: 147105. Valid upto: 31-May-2026',
      '{"district":"Patiala","promoter":"SUNRIZE COLONIZERS (Other than Individual)","address":"VILLAGE KAHANGARH GHARCHO, HADBAST NO. 175","pin_code":"147105","registration_date":"06-May-2024","valid_upto":"31-May-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0923: Royal Apartment Premium
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0923',
      'Royal Apartment Premium',
      'royal-apartment-premium',
      'active',
      'Promoter: Garg Realty Infra Promoters LLP (Other than Individual). Address: Village Peer Muhhalla, MC ZIRAKPUR. PIN: 160104. Valid upto: 23-Mar-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Garg Realty Infra Promoters LLP (Other than Individual)","address":"Village Peer Muhhalla, MC ZIRAKPUR","pin_code":"160104","registration_date":"06-May-2024","valid_upto":"23-Mar-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-MGA54-PC0208: HG EATON SHOPPING COMPLEX
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-MGA54-PC0208',
      'HG EATON SHOPPING COMPLEX',
      'hg-eaton-shopping-complex',
      'active',
      'Promoter: HG EATON SHOPPING COMPLEX (Other than Individual). Address: NEAR NEELAM NOVA CINEMAS AT NH-5, LUDHIANA-FEROZPUR ROAD,MOGA. PIN: 142001. Valid upto: 04-Jul-2027',
      '{"district":"Moga","promoter":"HG EATON SHOPPING COMPLEX (Other than Individual)","address":"NEAR NEELAM NOVA CINEMAS AT NH-5, LUDHIANA-FEROZPUR ROAD,MOGA","pin_code":"142001","registration_date":"06-May-2024","valid_upto":"04-Jul-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BNL06-PR0922: AASTHA ENCLAVE EXT-2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BNL06-PR0922',
      'AASTHA ENCLAVE EXT-2',
      'aastha-enclave-ext-2',
      'active',
      'Promoter: Barnala Builders & Developers Pvt. Ltd. (Other than Individual). Address: DHANAULA ROAD. PIN: 148101. Valid upto: 24-Apr-2026',
      '{"district":"Barnala","promoter":"Barnala Builders & Developers Pvt. Ltd. (Other than Individual)","address":"DHANAULA ROAD","pin_code":"148101","registration_date":"06-May-2024","valid_upto":"24-Apr-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR02-PR0929: AMALTAS ESTATE CRESCENT PARC
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR02-PR0929',
      'AMALTAS ESTATE CRESCENT PARC',
      'amaltas-estate-crescent-parc',
      'active',
      'Promoter: Impact Sare Magnum Townships  Private Limited  (Other than Individual). Address: Vill- Vallah, GT Road Bye Pass. PIN: 143501. Valid upto: 31-Aug-2028',
      '{"district":"Amritsar","promoter":"Impact Sare Magnum Townships  Private Limited  (Other than Individual)","address":"Vill- Vallah, GT Road Bye Pass","pin_code":"143501","registration_date":"06-May-2024","valid_upto":"31-Aug-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PI0019: Industrial Park
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PI0019',
      'Industrial Park',
      'industrial-park-dup1',
      'active',
      'Promoter: Nahar Industrial Enterprises Ltd (Other than Individual). Address: Village Bholapur, Mundian Khurd & Mangli Nichi, Dist. Ludhiana. PIN: 141001. Valid upto: 04-May-2027',
      '{"district":"Ludhiana","promoter":"Nahar Industrial Enterprises Ltd (Other than Individual)","address":"Village Bholapur, Mundian Khurd & Mangli Nichi, Dist. Ludhiana","pin_code":"141001","registration_date":"02-May-2024","valid_upto":"04-May-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PC0207: MORGAN CROSSING
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PC0207',
      'MORGAN CROSSING',
      'morgan-crossing',
      'active',
      'Promoter: GURBIR SINGH KAHLON (Individual). Address: VILLAGE BRAHMAN MAJRA. PIN: 141204. Valid upto: 05-Feb-2029',
      '{"district":"Ludhiana","promoter":"GURBIR SINGH KAHLON (Individual)","address":"VILLAGE BRAHMAN MAJRA","pin_code":"141204","registration_date":"06-May-2024","valid_upto":"05-Feb-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0915: ROSEATE HOMES Extension
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0915',
      'ROSEATE HOMES Extension',
      'roseate-homes-extension',
      'active',
      'Promoter: Roseate Buildetech LLP (Other than Individual). Address: Village Gazipur HB NO. 50, MC Zirakpur, East VIP Road, Zirakpur. PIN: 140603. Valid upto: 31-Mar-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Roseate Buildetech LLP (Other than Individual)","address":"Village Gazipur HB NO. 50, MC Zirakpur, East VIP Road, Zirakpur","pin_code":"140603","registration_date":"03-May-2024","valid_upto":"31-Mar-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR77-PR0901: Varindavan Garden
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR77-PR0901',
      'Varindavan Garden',
      'varindavan-garden-dup1',
      'active',
      'Promoter: Suraj Builders & Developers (Other than Individual). Address: Village Sohian , Sangrur, Punjab. PIN: 148001. Valid upto: 16-Feb-2028',
      '{"district":"Sangrur","promoter":"Suraj Builders & Developers (Other than Individual)","address":"Village Sohian , Sangrur, Punjab","pin_code":"148001","registration_date":"02-May-2024","valid_upto":"16-Feb-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0911: MUIRWOODS ECOCITY EXTENSION -2 (POCKET-B)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0911',
      'MUIRWOODS ECOCITY EXTENSION -2 (POCKET-B)',
      'muirwoods-ecocity-extension-2-pocket-b',
      'active',
      'Promoter: ALTUS SPACE BUILDERS PRIVATE LIMITED (Other than Individual). Address: Salamatpur, Rasulpur, New Chandigarh, Mullanpur. PIN: 140301. Valid upto: 15-Apr-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ALTUS SPACE BUILDERS PRIVATE LIMITED (Other than Individual)","address":"Salamatpur, Rasulpur, New Chandigarh, Mullanpur","pin_code":"140301","registration_date":"03-May-2024","valid_upto":"15-Apr-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;


  RAISE NOTICE 'Chunk 4: % inserted, % skipped', v_inserted, v_skipped;
END $$;
