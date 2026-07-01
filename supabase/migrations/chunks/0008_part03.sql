-- Part 3 of 10
-- Projects 401 to 600 of 1992
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

  -- PBRERA-SAS80-PR1228: Himalayan City 2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR1228',
      'Himalayan City 2',
      'himalayan-city-2',
      'active',
      'Promoter: RLTS Infra Private Limited (Other than Individual). Address: Village Kurali, Harbast No 121,, Tehsil Kharar. PIN: 140103. Valid upto: 24-Apr-2030',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"RLTS Infra Private Limited (Other than Individual)","address":"Village Kurali, Harbast No 121,, Tehsil Kharar","pin_code":"140103","registration_date":"14-Jul-2025","valid_upto":"24-Apr-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL64-PC0363: Western Street
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL64-PC0363',
      'Western Street',
      'western-street',
      'active',
      'Promoter: RSR GROUP (Other than Individual). Address: Village Attalan, H.B.No.181,, Teh Patran. PIN: 147105. Valid upto: 23-Mar-2030',
      '{"district":"Patiala","promoter":"RSR GROUP (Other than Individual)","address":"Village Attalan, H.B.No.181,, Teh Patran","pin_code":"147105","registration_date":"14-Jul-2025","valid_upto":"23-Mar-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PR1221: Baidwan Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PR1221',
      'Baidwan Enclave',
      'baidwan-enclave',
      'active',
      'Promoter: RYAN Real Estate (Other than Individual). Address: Village Taffazalpura (H.B. No. 31). PIN: 147111. Valid upto: 21-Aug-2029',
      '{"district":"Patiala","promoter":"RYAN Real Estate (Other than Individual)","address":"Village Taffazalpura (H.B. No. 31)","pin_code":"147111","registration_date":"14-Jul-2025","valid_upto":"21-Aug-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR1220: Green Valley
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR1220',
      'Green Valley',
      'green-valley-dup1',
      'active',
      'Promoter: R L DEVELOPERS (Other than Individual). Address: Main multania road, Bathinda. PIN: 151005. Valid upto: 01-Dec-2029',
      '{"district":"Bathinda","promoter":"R L DEVELOPERS (Other than Individual)","address":"Main multania road, Bathinda","pin_code":"151005","registration_date":"07-Jul-2025","valid_upto":"01-Dec-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0361: VINTAGE ARCADE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0361',
      'VINTAGE ARCADE',
      'vintage-arcade',
      'active',
      'Promoter: Highcross Buildtech LLP (Other than Individual). Address: VILL. RAMGARH BHUDDA,, Zirakpur. PIN: 140603. Valid upto: 27-Feb-2030',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Highcross Buildtech LLP (Other than Individual)","address":"VILL. RAMGARH BHUDDA,, Zirakpur","pin_code":"140603","registration_date":"04-Jul-2025","valid_upto":"27-Feb-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR1195: Amar Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR1195',
      'Amar Enclave',
      'amar-enclave',
      'active',
      'Promoter: Accor Developers LLP  (Other than Individual). Address: Village Bishangarh, H.B No. 45. PIN: 140506. Valid upto: 31-Dec-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Accor Developers LLP  (Other than Individual)","address":"Village Bishangarh, H.B No. 45","pin_code":"140506","registration_date":"30-Jun-2025","valid_upto":"31-Dec-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-KPT39-PC0360: APEX VIEW
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-KPT39-PC0360',
      'APEX VIEW',
      'apex-view',
      'active',
      'Promoter: JASHER REALTTY PRIVATE LIMITED (Other than Individual). Address: Village Saido Bhulana (H.B.No.124). PIN: 144602. Valid upto: 27-Aug-2029',
      '{"district":"Kapurthala","promoter":"JASHER REALTTY PRIVATE LIMITED (Other than Individual)","address":"Village Saido Bhulana (H.B.No.124)","pin_code":"144602","registration_date":"01-Jul-2025","valid_upto":"27-Aug-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0091: Woodland Heights (Formerly known as Shaurya Ananda)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0091',
      'Woodland Heights (Formerly known as Shaurya Ananda)',
      'woodland-heights-formerly-known-as-shaurya-ananda',
      'active',
      'Promoter: Wooden Heights Developers Pvt Ltd (Other than Individual). Address: Shaurya Ananda, Group Housing Site No 1,, Sector 86, Mohali. PIN: 140308. Valid upto: 31-Aug-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Wooden Heights Developers Pvt Ltd (Other than Individual)","address":"Shaurya Ananda, Group Housing Site No 1,, Sector 86, Mohali","pin_code":"140308","registration_date":"15-Sep-2017","valid_upto":"31-Aug-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR1217: GREEN FIELDS HOMES
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR1217',
      'GREEN FIELDS HOMES',
      'green-fields-homes',
      'active',
      'Promoter: HARFATEH DEVELOPERS  (Other than Individual). Address: Village Bhabhat, Tehsil Derabassi, Zirakpur, Distt SAS Nagar, Mohali (PB.). PIN: 140603. Valid upto: 16-Feb-2030',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"HARFATEH DEVELOPERS  (Other than Individual)","address":"Village Bhabhat, Tehsil Derabassi, Zirakpur, Distt SAS Nagar, Mohali (PB.)","pin_code":"140603","registration_date":"27-Jun-2025","valid_upto":"16-Feb-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR1219: AMAYRA SKY CITY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR1219',
      'AMAYRA SKY CITY',
      'amayra-sky-city',
      'active',
      'Promoter: Omni Pacific Colonizers Pvt Ltd (Other than Individual). Address: Viilage Aujla, Hadbast No. 77, Tehsil Kjharar, District SAS Nagar. PIN: 144036. Valid upto: 14-May-2030',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omni Pacific Colonizers Pvt Ltd (Other than Individual)","address":"Viilage Aujla, Hadbast No. 77, Tehsil Kjharar, District SAS Nagar","pin_code":"144036","registration_date":"26-Jun-2025","valid_upto":"14-May-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR1215: Aashiana Green City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR1215',
      'Aashiana Green City',
      'aashiana-green-city',
      'active',
      'Promoter: Radha Madhav Developers (Other than Individual). Address: Near Wazir-E-Bagh. PIN: 151001. Valid upto: 20-Nov-2029',
      '{"district":"Bathinda","promoter":"Radha Madhav Developers (Other than Individual)","address":"Near Wazir-E-Bagh","pin_code":"151001","registration_date":"26-Jun-2025","valid_upto":"20-Nov-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZL20-PR1199: MC-II
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZL20-PR1199',
      'MC-II',
      'mc-ii',
      'active',
      'Promoter: Executive Officer Municipal Council Fazilka (Other than Individual). Address: Near Water Works, Fazilka. PIN: 152123. Valid upto: 31-Dec-2026',
      '{"district":"Fazilka","promoter":"Executive Officer Municipal Council Fazilka (Other than Individual)","address":"Near Water Works, Fazilka","pin_code":"152123","registration_date":"26-Jun-2025","valid_upto":"31-Dec-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR1214: IRISH TOWN
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR1214',
      'IRISH TOWN',
      'irish-town',
      'active',
      'Promoter: DH DEVELOPERS (Other than Individual). Address: Banur , Tehsil Mohali , Distt . SAS Nagar , Punjab. PIN: 140601. Valid upto: 31-May-2030',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"DH DEVELOPERS (Other than Individual)","address":"Banur , Tehsil Mohali , Distt . SAS Nagar , Punjab","pin_code":"140601","registration_date":"26-Jun-2025","valid_upto":"31-May-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-GSP27-PR1210: Shri Yash Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-GSP27-PR1210',
      'Shri Yash Enclave',
      'shri-yash-enclave',
      'active',
      'Promoter: Ajay  Gupta (Individual). Address: Near Shri Ram Mandir. PIN: 143521. Valid upto: 30-Jun-2027',
      '{"district":"Gurdaspur","promoter":"Ajay  Gupta (Individual)","address":"Near Shri Ram Mandir","pin_code":"143521","registration_date":"26-Jun-2025","valid_upto":"30-Jun-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FDK12-PR1213: Gobind  Green
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FDK12-PR1213',
      'Gobind  Green',
      'gobind-green',
      'active',
      'Promoter: Axiom Foundation  (Other than Individual). Address: Jaitu Bathinda Byepass Road, H.B. No 129. PIN: 151204. Valid upto: 06-Oct-2029',
      '{"district":"Faridkot","promoter":"Axiom Foundation  (Other than Individual)","address":"Jaitu Bathinda Byepass Road, H.B. No 129","pin_code":"151204","registration_date":"26-Jun-2025","valid_upto":"06-Oct-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL62-PR1211: MOTIA GREEN
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL62-PR1211',
      'MOTIA GREEN',
      'motia-green',
      'active',
      'Promoter: Prabal  Jindal (Individual). Address: Hadbast no 204, village Nabha, Mehas-Nabha Road, Opp Punjab Public School Ground. PIN: 147201. Valid upto: 03-Oct-2029',
      '{"district":"Patiala","promoter":"Prabal  Jindal (Individual)","address":"Hadbast no 204, village Nabha, Mehas-Nabha Road, Opp Punjab Public School Ground","pin_code":"147201","registration_date":"24-Jun-2025","valid_upto":"03-Oct-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BNL06-PC0359: ZIPGROWTH ESTATES
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BNL06-PC0359',
      'ZIPGROWTH ESTATES',
      'zipgrowth-estates',
      'active',
      'Promoter: ZIPGROWTH ESTATES LLP (Other than Individual). Address: VILLAGE HANDIAYA -D, HADBAST NO. 58, TEHSIL & DISTRICT BARNALA. PIN: 148107. Valid upto: 15-Oct-2029',
      '{"district":"Barnala","promoter":"ZIPGROWTH ESTATES LLP (Other than Individual)","address":"VILLAGE HANDIAYA -D, HADBAST NO. 58, TEHSIL & DISTRICT BARNALA","pin_code":"148107","registration_date":"24-Jun-2025","valid_upto":"15-Oct-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-RPR68-PR1212: Classic Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-RPR68-PR1212',
      'Classic Homes',
      'classic-homes',
      'active',
      'Promoter: Vishal  Keshyap (Individual). Address: Ward No 10. Manemajra, Road Chamkaur Sahib, Tehsil Chamkaur Sahib,. PIN: 140112. Valid upto: 17-Jan-2029',
      '{"district":"Rupnagar (Ropar)","promoter":"Vishal  Keshyap (Individual)","address":"Ward No 10. Manemajra, Road Chamkaur Sahib, Tehsil Chamkaur Sahib,","pin_code":"140112","registration_date":"24-Jun-2025","valid_upto":"17-Jan-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR1209: PARADISE ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR1209',
      'PARADISE ENCLAVE',
      'paradise-enclave-dup1',
      'active',
      'Promoter: S. Ikram  Singh (Individual). Address: VILL GAZIPUR, H.B. NO 142. PIN: 144103. Valid upto: 13-Oct-2029',
      '{"district":"Jalandhar","promoter":"S. Ikram  Singh (Individual)","address":"VILL GAZIPUR, H.B. NO 142","pin_code":"144103","registration_date":"17-Jun-2025","valid_upto":"13-Oct-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0351: Star City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0351',
      'Star City',
      'star-city',
      'active',
      'Promoter: Gursewak   Singh (Individual). Address: Village Lohgarh, Zirakpur, Tehsil Dera Bassi,. PIN: 140603. Valid upto: 31-Dec-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gursewak   Singh (Individual)","address":"Village Lohgarh, Zirakpur, Tehsil Dera Bassi,","pin_code":"140603","registration_date":"18-Jun-2025","valid_upto":"31-Dec-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FGS17-PC0358: DUBAI WALK
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FGS17-PC0358',
      'DUBAI WALK',
      'dubai-walk',
      'active',
      'Promoter: GREWAL LAND DEVELOPERS (Other than Individual). Address: H.B. NO. 138, VILLAGE BRAHMAN MAJRA, SIRHIND, TEHSIL FATEHGARH SAHIB. PIN: 140406. Valid upto: 07-Jan-2030',
      '{"district":"Fatehgarh Sahib","promoter":"GREWAL LAND DEVELOPERS (Other than Individual)","address":"H.B. NO. 138, VILLAGE BRAHMAN MAJRA, SIRHIND, TEHSIL FATEHGARH SAHIB","pin_code":"140406","registration_date":"17-Jun-2025","valid_upto":"07-Jan-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0355: NAV  EMPORIO
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0355',
      'NAV  EMPORIO',
      'nav-emporio',
      'active',
      'Promoter: WISTERIA HOUSING PRIVATE LIMITED (Other than Individual). Address: Located at khasra No.14//13/2,14//18/2 village jandpur,tehsil kharar Distt. SAS Nagar, SAME. PIN: 140301. Valid upto: 11-Jul-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"WISTERIA HOUSING PRIVATE LIMITED (Other than Individual)","address":"Located at khasra No.14//13/2,14//18/2 village jandpur,tehsil kharar Distt. SAS Nagar, SAME","pin_code":"140301","registration_date":"17-Jun-2025","valid_upto":"11-Jul-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR1207: Amayra Trillium
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR1207',
      'Amayra Trillium',
      'amayra-trillium',
      'active',
      'Promoter: TOWNBELL INDIA LANDCRAFT PRIVATE LIMITED (Other than Individual). Address: Village Aujla, Hadbast No-182,. PIN: 140301. Valid upto: 14-May-2030',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TOWNBELL INDIA LANDCRAFT PRIVATE LIMITED (Other than Individual)","address":"Village Aujla, Hadbast No-182,","pin_code":"140301","registration_date":"16-Jun-2025","valid_upto":"14-May-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR1208: Florence Avenue
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR1208',
      'Florence Avenue',
      'florence-avenue',
      'active',
      'Promoter: Buildcon Solutions (Other than Individual). Address: Village Gill-2(HB No. 263), Tehsil Ludhiana South. PIN: 141116. Valid upto: 11-Sep-2029',
      '{"district":"Ludhiana","promoter":"Buildcon Solutions (Other than Individual)","address":"Village Gill-2(HB No. 263), Tehsil Ludhiana South","pin_code":"141116","registration_date":"16-Jun-2025","valid_upto":"11-Sep-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR1206: AETRO HEIGHTS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR1206',
      'AETRO HEIGHTS',
      'aetro-heights',
      'active',
      'Promoter: BIGBLOCK BUILDERS LLP (Other than Individual). Address: LANDRA KHARAR ROAD, village kharar, tehsil kharar. PIN: 140301. Valid upto: 06-Apr-2030',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"BIGBLOCK BUILDERS LLP (Other than Individual)","address":"LANDRA KHARAR ROAD, village kharar, tehsil kharar","pin_code":"140301","registration_date":"16-Jun-2025","valid_upto":"06-Apr-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-KPT38-PR1205: DHAN DHAN BABA BUDHA JI NAGAR
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-KPT38-PR1205',
      'DHAN DHAN BABA BUDHA JI NAGAR',
      'dhan-dhan-baba-budha-ji-nagar',
      'active',
      'Promoter: S. LOVEROOP   SINGH  (Individual). Address: Village Nadala Pati Khairdin, Village Nadala Pati Dadupur, Village. Nadala Pati Narangpur, HADBAST NO. 64. PIN: 144624. Valid upto: 05-Mar-2030',
      '{"district":"Kapurthala","promoter":"S. LOVEROOP   SINGH  (Individual)","address":"Village Nadala Pati Khairdin, Village Nadala Pati Dadupur, Village. Nadala Pati Narangpur, HADBAST NO. 64","pin_code":"144624","registration_date":"16-Jun-2025","valid_upto":"05-Mar-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0352: Gillco Business Center
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0352',
      'Gillco Business Center',
      'gillco-business-center',
      'active',
      'Promoter: Gillco Developers and Builders Private Limited  (Other than Individual). Address: Village Kharar Hadbast No. 184, Tehsil Kharar. PIN: 140301. Valid upto: 16-Feb-2030',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gillco Developers and Builders Private Limited  (Other than Individual)","address":"Village Kharar Hadbast No. 184, Tehsil Kharar","pin_code":"140301","registration_date":"05-Jun-2025","valid_upto":"16-Feb-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PR1188: Space City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PR1188',
      'Space City',
      'space-city',
      'active',
      'Promoter: Portolan Infratech (Other than Individual). Address: Village Sahnewal Kalan-1, HB No. 227, Tehsil Sahnewal. PIN: 141120. Valid upto: 10-Mar-2030',
      '{"district":"Ludhiana","promoter":"Portolan Infratech (Other than Individual)","address":"Village Sahnewal Kalan-1, HB No. 227, Tehsil Sahnewal","pin_code":"141120","registration_date":"05-Jun-2025","valid_upto":"10-Mar-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PR1203: Riviera Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PR1203',
      'Riviera Homes',
      'riviera-homes',
      'active',
      'Promoter: Shamsher Dass Mahal (Individual). Address: 33 Ft. Road, Mundian Kalan, H.B. No. 179. PIN: 141015. Valid upto: 03-Sep-2029',
      '{"district":"Ludhiana","promoter":"Shamsher Dass Mahal (Individual)","address":"33 Ft. Road, Mundian Kalan, H.B. No. 179","pin_code":"141015","registration_date":"10-Jun-2025","valid_upto":"03-Sep-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR1198: Ameeras Mansions-2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR1198',
      'Ameeras Mansions-2',
      'ameeras-mansions-2',
      'active',
      'Promoter: BHAVNOOR SINGH BEDI (Individual). Address: Village Partappura, H.B.No.263 and, Village Fathepur, H.B.No.259. PIN: 144035. Valid upto: 27-Mar-2030',
      '{"district":"Jalandhar","promoter":"BHAVNOOR SINGH BEDI (Individual)","address":"Village Partappura, H.B.No.263 and, Village Fathepur, H.B.No.259","pin_code":"144035","registration_date":"09-Jun-2025","valid_upto":"27-Mar-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0328: AC PLAZA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0328',
      'AC PLAZA',
      'ac-plaza',
      'active',
      'Promoter: AC INFRA (Other than Individual). Address: M/S AC INFRA AT VILLAGE PEERMUCHALLA HADBAST,53 MC ZIRAKPUR,DISTT.SAS NAGAR (MOHALI) Pb., SAME. PIN: 140603. Valid upto: 12-Jun-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AC INFRA (Other than Individual)","address":"M/S AC INFRA AT VILLAGE PEERMUCHALLA HADBAST,53 MC ZIRAKPUR,DISTT.SAS NAGAR (MOHALI) Pb., SAME","pin_code":"140603","registration_date":"27-May-2025","valid_upto":"12-Jun-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PR1201: SAI AVENUE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PR1201',
      'SAI AVENUE',
      'sai-avenue',
      'active',
      'Promoter: PRABH BUILDERS (Other than Individual). Address: VILLAGE JHILL TEH. & DIST. H.B. NO. 21. PIN: 147004. Valid upto: 28-Sep-2028',
      '{"district":"Patiala","promoter":"PRABH BUILDERS (Other than Individual)","address":"VILLAGE JHILL TEH. & DIST. H.B. NO. 21","pin_code":"147004","registration_date":"10-Jun-2025","valid_upto":"28-Sep-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-MKT58-PR1191: SAFE HOME ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-MKT58-PR1191',
      'SAFE HOME ENCLAVE',
      'safe-home-enclave',
      'active',
      'Promoter: SHREE SHYAM JI DEVELOPERS (Other than Individual). Address: BARKANDI ROAD, HADBAST NO.54. PIN: 152026. Valid upto: 29-Sep-2029',
      '{"district":"Muktsar","promoter":"SHREE SHYAM JI DEVELOPERS (Other than Individual)","address":"BARKANDI ROAD, HADBAST NO.54","pin_code":"152026","registration_date":"10-Jun-2025","valid_upto":"29-Sep-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZL19-PR1200: Signature Green City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZL19-PR1200',
      'Signature Green City',
      'signature-green-city',
      'active',
      'Promoter: KDM SURYACON DEVELOPERS (Other than Individual). Address: HINDUMALKOT ROAD. PIN: 152116. Valid upto: 11-Sep-2029',
      '{"district":"Fazilka","promoter":"KDM SURYACON DEVELOPERS (Other than Individual)","address":"HINDUMALKOT ROAD","pin_code":"152116","registration_date":"10-Jun-2025","valid_upto":"11-Sep-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR02-PR1202: Ashyaana Next
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR02-PR1202',
      'Ashyaana Next',
      'ashyaana-next',
      'active',
      'Promoter: ASHYAANA NEXT (Other than Individual). Address: Village Muradpura(H.B. No. 342), Village Bal Khurd(H.B. No. 339). PIN: 143008. Valid upto: 21-Aug-2029',
      '{"district":"Amritsar","promoter":"ASHYAANA NEXT (Other than Individual)","address":"Village Muradpura(H.B. No. 342), Village Bal Khurd(H.B. No. 339)","pin_code":"143008","registration_date":"09-Jun-2025","valid_upto":"21-Aug-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-MGA52-PC0347: Factory Outlets
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-MGA52-PC0347',
      'Factory Outlets',
      'factory-outlets',
      'active',
      'Promoter: BURJ DOWNTOWN PRIVATE LIMITED (Other than Individual). Address: BURJ DOWN TOWN PRIVATE LIMITED VILLAGE GILL MOGA ROAD, BAGAPURANA,BAGHAPURANA. PIN: 142038. Valid upto: 07-Nov-2028',
      '{"district":"Moga","promoter":"BURJ DOWNTOWN PRIVATE LIMITED (Other than Individual)","address":"BURJ DOWN TOWN PRIVATE LIMITED VILLAGE GILL MOGA ROAD, BAGAPURANA,BAGHAPURANA","pin_code":"142038","registration_date":"09-Jun-2025","valid_upto":"07-Nov-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FGS17-PR1182: SANT ENCLAVE (SIRHIND)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FGS17-PR1182',
      'SANT ENCLAVE (SIRHIND)',
      'sant-enclave-sirhind',
      'active',
      'Promoter: SANT ENCLAVE (Other than Individual). Address: VILLAGE SIRHIND, HADBAST NO. 125. PIN: 140406. Valid upto: 26-Aug-2029',
      '{"district":"Fatehgarh Sahib","promoter":"SANT ENCLAVE (Other than Individual)","address":"VILLAGE SIRHIND, HADBAST NO. 125","pin_code":"140406","registration_date":"06-Jun-2025","valid_upto":"26-Aug-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-MNS50-PR1192: MOTI BAGH
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-MNS50-PR1192',
      'MOTI BAGH',
      'moti-bagh',
      'active',
      'Promoter: Archit Construction Company (Other than Individual). Address: Hadbast No. 76, in the Revenue Tehsil and Distt. Mansa. PIN: 151505. Valid upto: 31-Jan-2030',
      '{"district":"Mansa","promoter":"Archit Construction Company (Other than Individual)","address":"Hadbast No. 76, in the Revenue Tehsil and Distt. Mansa","pin_code":"151505","registration_date":"06-Jun-2025","valid_upto":"31-Jan-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR1194: SPARSH CITY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR1194',
      'SPARSH CITY',
      'sparsh-city',
      'active',
      'Promoter: IBS BUILDERS & PROMOTERS (Other than Individual). Address: NH-205 WARD NO 8, KURALI, PADIALA. PIN: 140103. Valid upto: 23-Mar-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"IBS BUILDERS & PROMOTERS (Other than Individual)","address":"NH-205 WARD NO 8, KURALI, PADIALA","pin_code":"140103","registration_date":"06-Jun-2025","valid_upto":"23-Mar-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR1187: MOTIA SUNRISE HILLS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR1187',
      'MOTIA SUNRISE HILLS',
      'motia-sunrise-hills',
      'active',
      'Promoter: Metro Pro Infratech (Other than Individual). Address: Village Chanalon, Hadbast No. 110,, Within M.C. Limits. PIN: 140103. Valid upto: 31-Dec-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Metro Pro Infratech (Other than Individual)","address":"Village Chanalon, Hadbast No. 110,, Within M.C. Limits","pin_code":"140103","registration_date":"06-Jun-2025","valid_upto":"31-Dec-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0356: Motor Mechanic Market at Bulk Material Market, Sector-65, Mohali
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0356',
      'Motor Mechanic Market at Bulk Material Market, Sector-65, Mohali',
      'motor-mechanic-market-at-bulk-material-market-sector-65-mohali',
      'active',
      'Promoter: Greater Mohali Area Development Authority (GMADA) (Other than Individual). Address: Bulk Material Market, Sector-65, Mohali. PIN: 160062. Valid upto: 31-Dec-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Greater Mohali Area Development Authority (GMADA) (Other than Individual)","address":"Bulk Material Market, Sector-65, Mohali","pin_code":"160062","registration_date":"06-Jun-2025","valid_upto":"31-Dec-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PC0350: ONE CENTRUM
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PC0350',
      'ONE CENTRUM',
      'one-centrum',
      'active',
      'Promoter: A.D.S. BUILDWELL PRIVATE LIMITED (Other than Individual). Address: Site No. 1A,ADJ Westend Mall Ferozepur Road Ludhiana, SAME. PIN: 141001. Valid upto: 26-May-2029',
      '{"district":"Ludhiana","promoter":"A.D.S. BUILDWELL PRIVATE LIMITED (Other than Individual)","address":"Site No. 1A,ADJ Westend Mall Ferozepur Road Ludhiana, SAME","pin_code":"141001","registration_date":"06-Jun-2025","valid_upto":"26-May-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR1193: TIRTHANKAR ABODE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR1193',
      'TIRTHANKAR ABODE',
      'tirthankar-abode',
      'active',
      'Promoter: RICHVILLE INFRA PRIVATE LIMITED (Other than Individual). Address: Village Ayali Khurd. PIN: 142027. Valid upto: 27-Mar-2029',
      '{"district":"Ludhiana","promoter":"RICHVILLE INFRA PRIVATE LIMITED (Other than Individual)","address":"Village Ayali Khurd","pin_code":"142027","registration_date":"05-Jun-2025","valid_upto":"27-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PC0357: Kingston Terrace
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PC0357',
      'Kingston Terrace',
      'kingston-terrace',
      'active',
      'Promoter: Inayat Realtech Group (Other than Individual). Address: Village Fatehpur, H. B. No. 179, chandigarh-Bathinda Highway, Tehsil and Distt. Patial. PIN: 147001. Valid upto: 25-Mar-2030',
      '{"district":"Patiala","promoter":"Inayat Realtech Group (Other than Individual)","address":"Village Fatehpur, H. B. No. 179, chandigarh-Bathinda Highway, Tehsil and Distt. Patial","pin_code":"147001","registration_date":"06-Jun-2025","valid_upto":"25-Mar-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR1197: OPERA GARDEN
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR1197',
      'OPERA GARDEN',
      'opera-garden',
      'active',
      'Promoter: CHANDIGARH COLONISERS PRIVATE LIMITED (Other than Individual). Address: HADBAST NO. 54, VILLAGE KISHANPURA, Dhakoli, SAS Nagar, Mohali, Punjab. PIN: 160104. Valid upto: 01-Sep-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CHANDIGARH COLONISERS PRIVATE LIMITED (Other than Individual)","address":"HADBAST NO. 54, VILLAGE KISHANPURA, Dhakoli, SAS Nagar, Mohali, Punjab","pin_code":"160104","registration_date":"06-Jun-2025","valid_upto":"01-Sep-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL65-PR1177: MENTOR GREEN COURT
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL65-PR1177',
      'MENTOR GREEN COURT',
      'mentor-green-court',
      'active',
      'Promoter: SUNTECK DEVELOPERS AND PROMOTERS (Other than Individual). Address: VILLAGE JAMITGARH AND JABOMAJRA, Hadbast No. 388-389, Sub-Teshil Ghanour. PIN: 140401. Valid upto: 27-Feb-2030',
      '{"district":"Patiala","promoter":"SUNTECK DEVELOPERS AND PROMOTERS (Other than Individual)","address":"VILLAGE JAMITGARH AND JABOMAJRA, Hadbast No. 388-389, Sub-Teshil Ghanour","pin_code":"140401","registration_date":"05-Jun-2025","valid_upto":"27-Feb-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZL20-PR1196: Varindavan Garden
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZL20-PR1196',
      'Varindavan Garden',
      'varindavan-garden',
      'active',
      'Promoter: Vrindavan Garden (Other than Individual). Address: M.R College Road Opp. B.S.F. Campus. PIN: 152123. Valid upto: 03-Jul-2029',
      '{"district":"Fazilka","promoter":"Vrindavan Garden (Other than Individual)","address":"M.R College Road Opp. B.S.F. Campus","pin_code":"152123","registration_date":"05-Jun-2025","valid_upto":"03-Jul-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0353: Amayra Centrum Plaza
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0353',
      'Amayra Centrum Plaza',
      'amayra-centrum-plaza',
      'active',
      'Promoter: Omni Pacific Colonizers Pvt Ltd (Other than Individual). Address: NH 205 (Kharar Kurali section) at Village Dau Majra, Tehsil Kharar, District SAS Nagar. PIN: 140301. Valid upto: 15-Jan-2030',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omni Pacific Colonizers Pvt Ltd (Other than Individual)","address":"NH 205 (Kharar Kurali section) at Village Dau Majra, Tehsil Kharar, District SAS Nagar","pin_code":"140301","registration_date":"05-Jun-2025","valid_upto":"15-Jan-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL35-PR1189: PARAMOUNT ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL35-PR1189',
      'PARAMOUNT ENCLAVE',
      'paramount-enclave',
      'active',
      'Promoter: PARAMOUNT LAND BUILDERS PRIVATE LIMITED (Other than Individual). Address: VILLAGE NAKODAR, H.N.NO.31. PIN: 144040. Valid upto: 12-Feb-2029',
      '{"district":"Jalandhar","promoter":"PARAMOUNT LAND BUILDERS PRIVATE LIMITED (Other than Individual)","address":"VILLAGE NAKODAR, H.N.NO.31","pin_code":"144040","registration_date":"04-Jun-2025","valid_upto":"12-Feb-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-RPR70-PC0341: TOWN SQUARE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-RPR70-PC0341',
      'TOWN SQUARE',
      'town-square-dup1',
      'active',
      'Promoter: DASHMESH BUILDERS AND DEVELOPERS (Other than Individual). Address: Ward No. 14, Chandigarh- Ludhiana NH-05, Morinda. PIN: 140101. Valid upto: 19-Dec-2029',
      '{"district":"Rupnagar (Ropar)","promoter":"DASHMESH BUILDERS AND DEVELOPERS (Other than Individual)","address":"Ward No. 14, Chandigarh- Ludhiana NH-05, Morinda","pin_code":"140101","registration_date":"03-Jun-2025","valid_upto":"19-Dec-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PC0354: BAGH-E-KHAS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PC0354',
      'BAGH-E-KHAS',
      'bagh-e-khas',
      'active',
      'Promoter: RICHVILLE INFRA PRIVATE LIMITED (Other than Individual). Address: Village Malakpur, Hadbast No. 147. PIN: 142027. Valid upto: 27-Mar-2029',
      '{"district":"Ludhiana","promoter":"RICHVILLE INFRA PRIVATE LIMITED (Other than Individual)","address":"Village Malakpur, Hadbast No. 147","pin_code":"142027","registration_date":"05-Jun-2025","valid_upto":"27-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR1161: HERO HOMES Ludhiana Phase 2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR1161',
      'HERO HOMES Ludhiana Phase 2',
      'hero-homes-ludhiana-phase-2',
      'active',
      'Promoter: HERO REALTY PRIVATE LIMITED (Other than Individual). Address: Village Birmi, Tehsil Mullanpur Dakha,. PIN: 141101. Valid upto: 31-Dec-2031',
      '{"district":"Ludhiana","promoter":"HERO REALTY PRIVATE LIMITED (Other than Individual)","address":"Village Birmi, Tehsil Mullanpur Dakha,","pin_code":"141101","website":"https://herohomes.in/project-ludhiana/home.html","registration_date":"05-Jun-2025","valid_upto":"31-Dec-2031"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BNL06-PC0349: Barnala City Centre
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BNL06-PC0349',
      'Barnala City Centre',
      'barnala-city-centre',
      'active',
      'Promoter: Z-Power Developers (Other than Individual). Address: Barnala City Centre, Hadbast No. 55, Dhanaula Road, Barnala. PIN: 148101. Valid upto: 26-Apr-2029',
      '{"district":"Barnala","promoter":"Z-Power Developers (Other than Individual)","address":"Barnala City Centre, Hadbast No. 55, Dhanaula Road, Barnala","pin_code":"148101","registration_date":"05-Jun-2025","valid_upto":"26-Apr-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZL20-PR1179: J S City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZL20-PR1179',
      'J S City',
      'j-s-city',
      'active',
      'Promoter: J S Enterprises (Other than Individual). Address: Ganganagar Road, Vill. Alamgarh, Tehsil. Abohar & Distt. Fazilka. PIN: 152116. Valid upto: 31-Jul-2029',
      '{"district":"Fazilka","promoter":"J S Enterprises (Other than Individual)","address":"Ganganagar Road, Vill. Alamgarh, Tehsil. Abohar & Distt. Fazilka","pin_code":"152116","registration_date":"05-Jun-2025","valid_upto":"31-Jul-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SBS83-PC0344: NORTH WOOD
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SBS83-PC0344',
      'NORTH WOOD',
      'north-wood',
      'active',
      'Promoter: Richmond Developers (Other than Individual). Address: Village Chakk Mander, H.B.No.10, Tehsil Banga. PIN: 144501. Valid upto: 24-Mar-2030',
      '{"district":"Shahid Bhagat Singh Nagar (Nawanshahr)","promoter":"Richmond Developers (Other than Individual)","address":"Village Chakk Mander, H.B.No.10, Tehsil Banga","pin_code":"144501","registration_date":"05-Jun-2025","valid_upto":"24-Mar-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BNL07-PC0346: SS SQUARE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BNL07-PC0346',
      'SS SQUARE',
      'ss-square',
      'active',
      'Promoter: S.M. DEVELOPERS AND PROMOTERS (Other than Individual). Address: Near Paul Filling Station, Barnala to Bathinda Road, Tapa Mandi. PIN: 148108. Valid upto: 18-Feb-2030',
      '{"district":"Barnala","promoter":"S.M. DEVELOPERS AND PROMOTERS (Other than Individual)","address":"Near Paul Filling Station, Barnala to Bathinda Road, Tapa Mandi","pin_code":"148108","registration_date":"05-Jun-2025","valid_upto":"18-Feb-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PI0028: G.P. INDUSTRIAL ESTATE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PI0028',
      'G.P. INDUSTRIAL ESTATE',
      'gp-industrial-estate',
      'active',
      'Promoter: Piyush   Aneja (Individual). Address: Village Dharour, Hadbast No. 232, Tehsil Sahnewal. PIN: 141120. Valid upto: 04-Nov-2029',
      '{"district":"Ludhiana","promoter":"Piyush   Aneja (Individual)","address":"Village Dharour, Hadbast No. 232, Tehsil Sahnewal","pin_code":"141120","registration_date":"05-Jun-2025","valid_upto":"04-Nov-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR1181: Vintage Greens
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR1181',
      'Vintage Greens',
      'vintage-greens',
      'active',
      'Promoter: Vintage Buildtech  (Other than Individual). Address: Village Ramgarh Bhudda, Zirakpur. PIN: 123456. Valid upto: 27-Apr-2030',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Vintage Buildtech  (Other than Individual)","address":"Village Ramgarh Bhudda, Zirakpur","pin_code":"123456","registration_date":"05-Jun-2025","valid_upto":"27-Apr-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PC0348: THE BUSINESS CENTRAL
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PC0348',
      'THE BUSINESS CENTRAL',
      'the-business-central',
      'active',
      'Promoter: CONNAUGHT PLACE DEVELOPERS (Other than Individual). Address: Village Arain Majra Tehsil and Distt Patiala. PIN: 147001. Valid upto: 18-Jun-2029',
      '{"district":"Patiala","promoter":"CONNAUGHT PLACE DEVELOPERS (Other than Individual)","address":"Village Arain Majra Tehsil and Distt Patiala","pin_code":"147001","registration_date":"05-Jun-2025","valid_upto":"18-Jun-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZL19-PR1190: GOKULDHAM
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZL19-PR1190',
      'GOKULDHAM',
      'gokuldham',
      'active',
      'Promoter: M M TRADERS (Other than Individual). Address: KANDHWALA ROAD, DURGA NAGRI. PIN: 152116. Valid upto: 30-Jan-2029',
      '{"district":"Fazilka","promoter":"M M TRADERS (Other than Individual)","address":"KANDHWALA ROAD, DURGA NAGRI","pin_code":"152116","registration_date":"05-Jun-2025","valid_upto":"30-Jan-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR1184: Vaishali Residency
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR1184',
      'Vaishali Residency',
      'vaishali-residency',
      'active',
      'Promoter: Nirmaan Builders and Developers (Other than Individual). Address: Village Talwara, H.B. No. 149. PIN: 141008. Valid upto: 01-Sep-2029',
      '{"district":"Ludhiana","promoter":"Nirmaan Builders and Developers (Other than Individual)","address":"Village Talwara, H.B. No. 149","pin_code":"141008","registration_date":"05-Jun-2025","valid_upto":"01-Sep-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR1176: Royal Greens (Jalandhar)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR1176',
      'Royal Greens (Jalandhar)',
      'royal-greens-jalandhar',
      'active',
      'Promoter: PERFECT HOMES (Other than Individual). Address: Village Bambianwali, H.B.No.235, Tehsil Jalandhar-1. PIN: 144024. Valid upto: 27-Mar-2030',
      '{"district":"Jalandhar","promoter":"PERFECT HOMES (Other than Individual)","address":"Village Bambianwali, H.B.No.235, Tehsil Jalandhar-1","pin_code":"144024","registration_date":"28-May-2025","valid_upto":"27-Mar-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-MGA54-PC0343: Olive Plaza
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-MGA54-PC0343',
      'Olive Plaza',
      'olive-plaza',
      'active',
      'Promoter: Prestin Olive Enterprises LLP (Other than Individual). Address: Village Khera Swadh, HB No. 29. PIN: 142011. Valid upto: 24-Apr-2030',
      '{"district":"Moga","promoter":"Prestin Olive Enterprises LLP (Other than Individual)","address":"Village Khera Swadh, HB No. 29","pin_code":"142011","registration_date":"28-May-2025","valid_upto":"24-Apr-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PC0342: Alvista Mart
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PC0342',
      'Alvista Mart',
      'alvista-mart',
      'active',
      'Promoter: Paragon Infra (Other than Individual). Address: Village Bhucho Kalan(HB No. 201), and Lehra Khana(HB No. 202), Tehsil Nathana. PIN: 151101. Valid upto: 27-Mar-2030',
      '{"district":"Bathinda","promoter":"Paragon Infra (Other than Individual)","address":"Village Bhucho Kalan(HB No. 201), and Lehra Khana(HB No. 202), Tehsil Nathana","pin_code":"151101","registration_date":"28-May-2025","valid_upto":"27-Mar-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0345: Sushma Hubtown
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0345',
      'Sushma Hubtown',
      'sushma-hubtown',
      'active',
      'Promoter: Northedge Developers LLP (Other than Individual). Address: Village Azizpur, Near Azizpur Toll Plaza. PIN: 140603. Valid upto: 15-Oct-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Northedge Developers LLP (Other than Individual)","address":"Village Azizpur, Near Azizpur Toll Plaza","pin_code":"140603","website":"www.sushma.co.in","registration_date":"28-May-2025","valid_upto":"15-Oct-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR1175: Dream Valley
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR1175',
      'Dream Valley',
      'dream-valley',
      'active',
      'Promoter: DREAM LAND DEVELOPERS (Other than Individual). Address: Village Beer Talab, HB No.072. PIN: 151001. Valid upto: 12-Feb-2032',
      '{"district":"Bathinda","promoter":"DREAM LAND DEVELOPERS (Other than Individual)","address":"Village Beer Talab, HB No.072","pin_code":"151001","registration_date":"28-May-2025","valid_upto":"12-Feb-2032"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZL20-PR1174: M R Goldwoods
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZL20-PR1174',
      'M R Goldwoods',
      'm-r-goldwoods',
      'active',
      'Promoter: Sandeep  Gilhotra (Individual). Address: Freedom Fighter Road, Adjoining MR Grand, Village Salemshah and Badha. PIN: 152123. Valid upto: 25-Mar-2030',
      '{"district":"Fazilka","promoter":"Sandeep  Gilhotra (Individual)","address":"Freedom Fighter Road, Adjoining MR Grand, Village Salemshah and Badha","pin_code":"152123","registration_date":"28-May-2025","valid_upto":"25-Mar-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FGS16-PC0330: ALC CROSSWALK-1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FGS16-PC0330',
      'ALC CROSSWALK-1',
      'alc-crosswalk-1',
      'active',
      'Promoter: ALC CROSSWALK (Other than Individual). Address: ALC CROSSWALK-1 Village Mukaronpur, Landran -Sirhind Road. PIN: 140412. Valid upto: 07-Apr-2027',
      '{"district":"Fatehgarh Sahib","promoter":"ALC CROSSWALK (Other than Individual)","address":"ALC CROSSWALK-1 Village Mukaronpur, Landran -Sirhind Road","pin_code":"140412","website":"www.aroralandcorp.com","registration_date":"26-May-2025","valid_upto":"07-Apr-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PC0331: CENTRAL CITY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PC0331',
      'CENTRAL CITY',
      'central-city',
      'active',
      'Promoter: GL DEVELOPERS (Other than Individual). Address: Village Nakodar Hadbast No 31, Tehsil Nakodar. PIN: 144040. Valid upto: 06-Feb-2030',
      '{"district":"Jalandhar","promoter":"GL DEVELOPERS (Other than Individual)","address":"Village Nakodar Hadbast No 31, Tehsil Nakodar","pin_code":"144040","registration_date":"27-May-2025","valid_upto":"06-Feb-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-HSP29-PR1146: Nilgiri Gardens
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-HSP29-PR1146',
      'Nilgiri Gardens',
      'nilgiri-gardens',
      'active',
      'Promoter: S. Santosh  Kumar (Individual). Address: Vill. Usman Shahid (H.No.-142) & Village Dasuya(H.No.-128),, Tehsil. Dasuya. PIN: 144205. Valid upto: 09-Sep-2029',
      '{"district":"Hoshiarpur","promoter":"S. Santosh  Kumar (Individual)","address":"Vill. Usman Shahid (H.No.-142) & Village Dasuya(H.No.-128),, Tehsil. Dasuya","pin_code":"144205","registration_date":"27-May-2025","valid_upto":"09-Sep-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BNL06-PC0317: HG CITY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BNL06-PC0317',
      'HG CITY',
      'hg-city',
      'active',
      'Promoter: HG CITY BARNALA PVT LTD (Other than Individual). Address: Village Handiaya-C, Tehsil & District Barnala. PIN: 148107. Valid upto: 07-Aug-2029',
      '{"district":"Barnala","promoter":"HG CITY BARNALA PVT LTD (Other than Individual)","address":"Village Handiaya-C, Tehsil & District Barnala","pin_code":"148107","registration_date":"27-May-2025","valid_upto":"07-Aug-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR1172: Gardenia Floors - 3B
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR1172',
      'Gardenia Floors - 3B',
      'gardenia-floors-3b',
      'active',
      'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),Punjab-141003. PIN: 141003. Valid upto: 05-Nov-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),Punjab-141003","pin_code":"141003","registration_date":"27-May-2025","valid_upto":"05-Nov-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR02-PR1171: Omaxe New Amritsar Integrated Township
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR02-PR1171',
      'Omaxe New Amritsar Integrated Township',
      'omaxe-new-amritsar-integrated-township',
      'active',
      'Promoter: DINKAR REALCON PRIVATE LIMITED (Other than Individual). Address: Omaxe New Amritsar. PIN: 143115. Valid upto: 20-Dec-2029',
      '{"district":"Amritsar","promoter":"DINKAR REALCON PRIVATE LIMITED (Other than Individual)","address":"Omaxe New Amritsar","pin_code":"143115","registration_date":"27-May-2025","valid_upto":"20-Dec-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0340: Commercial 2 Phase 2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0340',
      'Commercial 2 Phase 2',
      'commercial-2-phase-2',
      'active',
      'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),Punjab-141003. PIN: 140901. Valid upto: 03-Dec-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),Punjab-141003","pin_code":"140901","registration_date":"27-May-2025","valid_upto":"03-Dec-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PR1162: ELYSIAN SPHERE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PR1162',
      'ELYSIAN SPHERE',
      'elysian-sphere',
      'active',
      'Promoter: GOPALA ENCLAVE  (Other than Individual). Address: Village Bholapur and Village Mundian Kalan, Hadbast No. 238 and 179, Tehsil Sahnewal. PIN: 141015. Valid upto: 27-Oct-2029',
      '{"district":"Ludhiana","promoter":"GOPALA ENCLAVE  (Other than Individual)","address":"Village Bholapur and Village Mundian Kalan, Hadbast No. 238 and 179, Tehsil Sahnewal","pin_code":"141015","registration_date":"26-May-2025","valid_upto":"27-Oct-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BNL06-PC0329: LA-CASA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BNL06-PC0329',
      'LA-CASA',
      'la-casa',
      'active',
      'Promoter: SHIVA ENTERPRISES (Other than Individual). Address: NEAR CIVIL HOSPITAL,HOSPITAL ROAD ,BARNALATEHSIL&DISTT. BARNALA(CORE AREA - 9 ), SAME. PIN: 148101. Valid upto: 10-Oct-2029',
      '{"district":"Barnala","promoter":"SHIVA ENTERPRISES (Other than Individual)","address":"NEAR CIVIL HOSPITAL,HOSPITAL ROAD ,BARNALATEHSIL&DISTT. BARNALA(CORE AREA - 9 ), SAME","pin_code":"148101","registration_date":"26-May-2025","valid_upto":"10-Oct-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR1166: The Pinnacle
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR1166',
      'The Pinnacle',
      'the-pinnacle',
      'active',
      'Promoter: KLG Infra (Other than Individual). Address: Chunnk Site No. 8, Block-C, 83 Alpha SAS Nagar. PIN: 140306. Valid upto: 31-Jan-2034',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KLG Infra (Other than Individual)","address":"Chunnk Site No. 8, Block-C, 83 Alpha SAS Nagar","pin_code":"140306","registration_date":"26-May-2025","valid_upto":"31-Jan-2034"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR1170: Sahara City III
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR1170',
      'Sahara City III',
      'sahara-city-iii',
      'active',
      'Promoter: LV DEVELOPERS (Other than Individual). Address: Rampura Phul, Rampura Phul. PIN: 151103. Valid upto: 29-Jan-2030',
      '{"district":"Bathinda","promoter":"LV DEVELOPERS (Other than Individual)","address":"Rampura Phul, Rampura Phul","pin_code":"151103","registration_date":"26-May-2025","valid_upto":"29-Jan-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR77-PC0337: Sangrur City Center
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR77-PC0337',
      'Sangrur City Center',
      'sangrur-city-center',
      'active',
      'Promoter: AAT Developers (Other than Individual). Address: Village Sangrur A & B, Hadbast No. 23. PIN: 148001. Valid upto: 10-Feb-2030',
      '{"district":"Sangrur","promoter":"AAT Developers (Other than Individual)","address":"Village Sangrur A & B, Hadbast No. 23","pin_code":"148001","registration_date":"26-May-2025","valid_upto":"10-Feb-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL62-PC0336: URBAN SQUARE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL62-PC0336',
      'URBAN SQUARE',
      'urban-square',
      'active',
      'Promoter: A-One Builders and Developers (Other than Individual). Address: Village Nabha H. B No. 204, Tehsil Nabha. PIN: 147201. Valid upto: 17-Dec-2029',
      '{"district":"Patiala","promoter":"A-One Builders and Developers (Other than Individual)","address":"Village Nabha H. B No. 204, Tehsil Nabha","pin_code":"147201","registration_date":"26-May-2025","valid_upto":"17-Dec-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR1160: ATC ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR1160',
      'ATC ENCLAVE',
      'atc-enclave',
      'active',
      'Promoter: Shiv Om Strips Pvt. Ltd (Other than Individual). Address: H.B. No. 12 Village Sadhemajra, Haibtpur Road, Tehsil Derabassi. PIN: 140201. Valid upto: 26-Mar-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Shiv Om Strips Pvt. Ltd (Other than Individual)","address":"H.B. No. 12 Village Sadhemajra, Haibtpur Road, Tehsil Derabassi","pin_code":"140201","registration_date":"26-May-2025","valid_upto":"26-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-KPT39-PR1164: Baba Shree Chand Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-KPT39-PR1164',
      'Baba Shree Chand Enclave',
      'baba-shree-chand-enclave',
      'active',
      'Promoter: Satguru Land Developers (Other than Individual). Address: Village Saido Bhulana (H.B no 124), Kapurthala. PIN: 144602. Valid upto: 25-Mar-2029',
      '{"district":"Kapurthala","promoter":"Satguru Land Developers (Other than Individual)","address":"Village Saido Bhulana (H.B no 124), Kapurthala","pin_code":"144602","registration_date":"26-May-2025","valid_upto":"25-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-KPT39-PC0332: Baba Shri Chand Plaza
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-KPT39-PC0332',
      'Baba Shri Chand Plaza',
      'baba-shri-chand-plaza',
      'active',
      'Promoter: Satguru Land Developers (Other than Individual). Address: Village Saido Bhulana (H.B. No. 124), Tehsil & Distt. Kapurthala. PIN: 144602. Valid upto: 23-Apr-2029',
      '{"district":"Kapurthala","promoter":"Satguru Land Developers (Other than Individual)","address":"Village Saido Bhulana (H.B. No. 124), Tehsil & Distt. Kapurthala","pin_code":"144602","registration_date":"26-May-2025","valid_upto":"23-Apr-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SBS84-PR1163: DREAM CITY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SBS84-PR1163',
      'DREAM CITY',
      'dream-city-dup1',
      'active',
      'Promoter: GURCON PROJECTS PRIVATE LIMITED  (Other than Individual). Address: Village Barnala Kalan-1, H.B.No.135. PIN: 144516. Valid upto: 02-Feb-2030',
      '{"district":"Shahid Bhagat Singh Nagar (Nawanshahr)","promoter":"GURCON PROJECTS PRIVATE LIMITED  (Other than Individual)","address":"Village Barnala Kalan-1, H.B.No.135","pin_code":"144516","registration_date":"26-May-2025","valid_upto":"02-Feb-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR1167: Gardenia Floors - 3
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR1167',
      'Gardenia Floors - 3',
      'gardenia-floors-3',
      'active',
      'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),Punjab-141003. PIN: 141003. Valid upto: 05-Nov-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),Punjab-141003","pin_code":"141003","registration_date":"22-May-2025","valid_upto":"05-Nov-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR1159: ATLANTIS THREE SIXTY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR1159',
      'ATLANTIS THREE SIXTY',
      'atlantis-three-sixty',
      'active',
      'Promoter: KRISHNA BUILDERS & DEVELOPERS (Other than Individual). Address: VILLAGE RAMGHAR BHUDDA, NEAR PR7 MARBLE MARKET. PIN: 140601. Valid upto: 01-Jan-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KRISHNA BUILDERS & DEVELOPERS (Other than Individual)","address":"VILLAGE RAMGHAR BHUDDA, NEAR PR7 MARBLE MARKET","pin_code":"140601","registration_date":"22-May-2025","valid_upto":"01-Jan-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR1169: GMI Elite Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR1169',
      'GMI Elite Homes',
      'gmi-elite-homes',
      'active',
      'Promoter: GMI HOUSING LLP (Other than Individual). Address: Village Banur, Hadbast No .280,, Tehsil Banur. PIN: 160022. Valid upto: 14-Jan-2030',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GMI HOUSING LLP (Other than Individual)","address":"Village Banur, Hadbast No .280,, Tehsil Banur","pin_code":"160022","registration_date":"22-May-2025","valid_upto":"14-Jan-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0333: GMI Platinum Square
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0333',
      'GMI Platinum Square',
      'gmi-platinum-square',
      'active',
      'Promoter: GMI HOUSING LLP (Other than Individual). Address: Village Banur, Hadbast No .280, Tehsil Banur ,District S.AS Nagar. PIN: 140601. Valid upto: 14-Jan-2030',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GMI HOUSING LLP (Other than Individual)","address":"Village Banur, Hadbast No .280, Tehsil Banur ,District S.AS Nagar","pin_code":"140601","registration_date":"22-May-2025","valid_upto":"14-Jan-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0334: The Cybrum
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0334',
      'The Cybrum',
      'the-cybrum',
      'active',
      'Promoter: ALC Cybrum  (Other than Individual). Address: The Cybrum CP-04 Phase 8A, SAS Nagar Mohali, SAS Nagar Mohali. PIN: 160062. Valid upto: 22-Mar-2030',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ALC Cybrum  (Other than Individual)","address":"The Cybrum CP-04 Phase 8A, SAS Nagar Mohali, SAS Nagar Mohali","pin_code":"160062","website":"www.aroralandcorp.com","registration_date":"22-May-2025","valid_upto":"22-Mar-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0327: AKRITI COMPLEX
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0327',
      'AKRITI COMPLEX',
      'akriti-complex',
      'active',
      'Promoter: GBM BUILDTECH PVT LTD (Other than Individual). Address: VILLAGE SINGHPURA, HB. NO. 43, ZIRAKPUR. PIN: 140601. Valid upto: 31-Dec-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GBM BUILDTECH PVT LTD (Other than Individual)","address":"VILLAGE SINGHPURA, HB. NO. 43, ZIRAKPUR","pin_code":"140601","registration_date":"22-May-2025","valid_upto":"31-Dec-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR1168: Gardenia Floors - 3A
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR1168',
      'Gardenia Floors - 3A',
      'gardenia-floors-3a',
      'active',
      'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),Punjab-141003. PIN: 141003. Valid upto: 05-Nov-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),Punjab-141003","pin_code":"141003","registration_date":"23-May-2025","valid_upto":"05-Nov-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0335: FLORENCE PARK PHASE IV
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0335',
      'FLORENCE PARK PHASE IV',
      'florence-park-phase-iv',
      'active',
      'Promoter: AMBIKA REALCON PRIVATE LIMITED (Other than Individual). Address: FLORENCE PARK PHASE IV, SECTOR 14 NEW CHANDIGARH. PIN: 121001. Valid upto: 31-Dec-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AMBIKA REALCON PRIVATE LIMITED (Other than Individual)","address":"FLORENCE PARK PHASE IV, SECTOR 14 NEW CHANDIGARH","pin_code":"121001","website":"www.ambikarealcon.com","registration_date":"23-May-2025","valid_upto":"31-Dec-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-KPT39-PC0338: Gilco 1313 Market
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-KPT39-PC0338',
      'Gilco 1313 Market',
      'gilco-1313-market',
      'active',
      'Promoter: GILLSONS CONSTRUCTIONS LIMITED (Other than Individual). Address: Vill.Khurampur (HB No.63), and Vill.Hajipur (HB No.62), Hosiarpur Road,Tehsil Phagwara. PIN: 144401. Valid upto: 16-Feb-2030',
      '{"district":"Kapurthala","promoter":"GILLSONS CONSTRUCTIONS LIMITED (Other than Individual)","address":"Vill.Khurampur (HB No.63), and Vill.Hajipur (HB No.62), Hosiarpur Road,Tehsil Phagwara","pin_code":"144401","registration_date":"23-May-2025","valid_upto":"16-Feb-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PC0318: PEEJAY AND DHALIWAL OUTLETS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PC0318',
      'PEEJAY AND DHALIWAL OUTLETS',
      'peejay-and-dhaliwal-outlets',
      'active',
      'Promoter: PEEJAY PROMOTERS (Other than Individual). Address: PARK PANORAMA COLONY, GREEN PALACE ROAD. PIN: 151001. Valid upto: 09-Sep-2029',
      '{"district":"Bathinda","promoter":"PEEJAY PROMOTERS (Other than Individual)","address":"PARK PANORAMA COLONY, GREEN PALACE ROAD","pin_code":"151001","registration_date":"22-May-2025","valid_upto":"09-Sep-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0326: Cyber Square
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0326',
      'Cyber Square',
      'cyber-square',
      'active',
      'Promoter: Cee Dee Developers Pvt Ltd (Other than Individual). Address: SITE NO I & II SHOPPING COMPLEX PHASE-IX, EXPANSION INDUSTRIAL FOCAL POINT, SAS NAGAR MOHALI. PIN: 160062. Valid upto: 22-Mar-2030',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Cee Dee Developers Pvt Ltd (Other than Individual)","address":"SITE NO I & II SHOPPING COMPLEX PHASE-IX, EXPANSION INDUSTRIAL FOCAL POINT, SAS NAGAR MOHALI","pin_code":"160062","registration_date":"22-May-2025","valid_upto":"22-Mar-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0325: CP Atelier
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0325',
      'CP Atelier',
      'cp-atelier',
      'active',
      'Promoter: HOMELAND REALTY PRIVATE LIMITED (Other than Individual). Address: Commercial Allocable Pocket M3, A-40A, PHASE VIII EXTENSION, INDUSTRIAL FOCAL POINT, INDUSTRIAL AREA. PIN: 160059. Valid upto: 31-Mar-2035',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"HOMELAND REALTY PRIVATE LIMITED (Other than Individual)","address":"Commercial Allocable Pocket M3, A-40A, PHASE VIII EXTENSION, INDUSTRIAL FOCAL POINT, INDUSTRIAL AREA","pin_code":"160059","registration_date":"21-May-2025","valid_upto":"31-Mar-2035"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FDK12-PC0301: FACTORY OUTLET
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FDK12-PC0301',
      'FACTORY OUTLET',
      'factory-outlet',
      'active',
      'Promoter: Indocan Developers (Other than Individual). Address: PELICAN PLAZA,   VILL. PAKKA, NH-54 ,  FARIDKOT - TALWANDI ROAD, FARIDKOT. PIN: 151203. Valid upto: 21-Sep-2027',
      '{"district":"Faridkot","promoter":"Indocan Developers (Other than Individual)","address":"PELICAN PLAZA,   VILL. PAKKA, NH-54 ,  FARIDKOT - TALWANDI ROAD, FARIDKOT","pin_code":"151203","registration_date":"09-May-2025","valid_upto":"21-Sep-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR1151: Joynest Aerocity
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR1151',
      'Joynest Aerocity',
      'joynest-aerocity',
      'active',
      'Promoter: BSBP ESTATES PRIVATE LIMITED (Other than Individual). Address: Village Azizpur, Near Azizpur Toll Plaza. PIN: 140603. Valid upto: 03-Dec-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"BSBP ESTATES PRIVATE LIMITED (Other than Individual)","address":"Village Azizpur, Near Azizpur Toll Plaza","pin_code":"140603","website":"www.sushma.co.in","registration_date":"20-May-2025","valid_upto":"03-Dec-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0323: High Street -II
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0323',
      'High Street -II',
      'high-street-ii',
      'active',
      'Promoter: Motia Builder and Promoters (Other than Individual). Address: Village Dyalpura HB no 289, within MC Zirakpur, Sub tehsil Zirakpur. PIN: 140601. Valid upto: 31-Dec-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Motia Builder and Promoters (Other than Individual)","address":"Village Dyalpura HB no 289, within MC Zirakpur, Sub tehsil Zirakpur","pin_code":"140601","registration_date":"20-May-2025","valid_upto":"31-Dec-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL64-PC0322: Time Square
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL64-PC0322',
      'Time Square',
      'time-square',
      'active',
      'Promoter: Metro Developers and Builders (Other than Individual). Address: Jakhal Road, Patran. PIN: 147105. Valid upto: 03-Mar-2029',
      '{"district":"Patiala","promoter":"Metro Developers and Builders (Other than Individual)","address":"Jakhal Road, Patran","pin_code":"147105","registration_date":"20-May-2025","valid_upto":"03-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0321: London Square
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0321',
      'London Square',
      'london-square',
      'active',
      'Promoter: Saturn Realtors & Developers (Other than Individual). Address: Villagge Banur, Hadbast No. 280, Sub- tehsil Banur. PIN: 140601. Valid upto: 12-Sep-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Saturn Realtors & Developers (Other than Individual)","address":"Villagge Banur, Hadbast No. 280, Sub- tehsil Banur","pin_code":"140601","registration_date":"20-May-2025","valid_upto":"12-Sep-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PC0320: Broadways Plaza
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PC0320',
      'Broadways Plaza',
      'broadways-plaza',
      'active',
      'Promoter: Deep Infrastructure (Other than Individual). Address: Village Mallupotta, H.B. No. 76, tehsil Banga, District S.B.S. Nagar. PIN: 144505. Valid upto: 27-Oct-2029',
      '{"district":"Jalandhar","promoter":"Deep Infrastructure (Other than Individual)","address":"Village Mallupotta, H.B. No. 76, tehsil Banga, District S.B.S. Nagar","pin_code":"144505","registration_date":"20-May-2025","valid_upto":"27-Oct-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-RPR70-PR1149: SKY CITY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-RPR70-PR1149',
      'SKY CITY',
      'sky-city-dup2',
      'active',
      'Promoter: Ropar Properties & Builders Pvt Ltd (Other than Individual). Address: Hadbast No. 46, Village Araaji, Ropar, Bypass Road Rupnagar. PIN: 160062. Valid upto: 30-Sep-2029',
      '{"district":"Rupnagar (Ropar)","promoter":"Ropar Properties & Builders Pvt Ltd (Other than Individual)","address":"Hadbast No. 46, Village Araaji, Ropar, Bypass Road Rupnagar","pin_code":"160062","registration_date":"20-May-2025","valid_upto":"30-Sep-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL34-PR1152: SUNRISE HOMES
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL34-PR1152',
      'SUNRISE HOMES',
      'sunrise-homes',
      'active',
      'Promoter: United Developers (Other than Individual). Address: Vill Laroi. PIN: 144201. Valid upto: 31-Mar-2028',
      '{"district":"Jalandhar","promoter":"United Developers (Other than Individual)","address":"Vill Laroi","pin_code":"144201","registration_date":"20-May-2025","valid_upto":"31-Mar-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR1156: The Residency
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR1156',
      'The Residency',
      'the-residency',
      'active',
      'Promoter: KLG Infra (Other than Individual). Address: Village khijargarh and Azizpur, Sub Tehsil Banur. PIN: 140601. Valid upto: 31-Jan-2030',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KLG Infra (Other than Individual)","address":"Village khijargarh and Azizpur, Sub Tehsil Banur","pin_code":"140601","registration_date":"20-May-2025","valid_upto":"31-Jan-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR1154: ASTER TOWERS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR1154',
      'ASTER TOWERS',
      'aster-towers',
      'active',
      'Promoter: HANUMANT BUILDERS & PROMOTERS (Other than Individual). Address: SECTOR 113, LANDRAN- CHUNNI SIRHIND, ROAD. PIN: 140301. Valid upto: 31-Dec-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"HANUMANT BUILDERS & PROMOTERS (Other than Individual)","address":"SECTOR 113, LANDRAN- CHUNNI SIRHIND, ROAD","pin_code":"140301","registration_date":"20-May-2025","valid_upto":"31-Dec-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR1153: IRIS FLOORS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR1153',
      'IRIS FLOORS',
      'iris-floors',
      'active',
      'Promoter: Hanumant Buildtech (Other than Individual). Address: Village Landran, Sector 113. PIN: 160055. Valid upto: 31-Dec-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Hanumant Buildtech (Other than Individual)","address":"Village Landran, Sector 113","pin_code":"160055","registration_date":"20-May-2025","valid_upto":"31-Dec-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PR1155: Vijay Vallabh Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PR1155',
      'Vijay Vallabh Homes',
      'vijay-vallabh-homes',
      'active',
      'Promoter: Brother Hood Realtors Private Limited (Other than Individual). Address: Ghalewal, Rahon Road. PIN: 141007. Valid upto: 05-Sep-2029',
      '{"district":"Ludhiana","promoter":"Brother Hood Realtors Private Limited (Other than Individual)","address":"Ghalewal, Rahon Road","pin_code":"141007","registration_date":"20-May-2025","valid_upto":"05-Sep-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR1157: Urabanic Villa
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR1157',
      'Urabanic Villa',
      'urabanic-villa',
      'active',
      'Promoter: Kuber Builders & Developers  (Other than Individual). Address: Village Ladhewali, H.B No. 220, Teh & Distt. Jalandhar. PIN: 144007. Valid upto: 12-Nov-2029',
      '{"district":"Jalandhar","promoter":"Kuber Builders & Developers  (Other than Individual)","address":"Village Ladhewali, H.B No. 220, Teh & Distt. Jalandhar","pin_code":"144007","registration_date":"20-May-2025","valid_upto":"12-Nov-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR73-PR1148: Ekta Vihar 3
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR73-PR1148',
      'Ekta Vihar 3',
      'ekta-vihar-3',
      'active',
      'Promoter: Ekta Land Promotor (Other than Individual). Address: Village Dhuri Hadbast no. 94, Tehsil Dhuri. PIN: 148024. Valid upto: 03-Oct-2029',
      '{"district":"Sangrur","promoter":"Ekta Land Promotor (Other than Individual)","address":"Village Dhuri Hadbast no. 94, Tehsil Dhuri","pin_code":"148024","registration_date":"20-May-2025","valid_upto":"03-Oct-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-MGA53-PC0314: Friends Market
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-MGA53-PC0314',
      'Friends Market',
      'friends-market',
      'active',
      'Promoter: Friends Developers (Other than Individual). Address: Village Dharamkot Shmali , H.B No. 290,  Tehsil Dharamkot, District Moga , Punjab. PIN: 142042. Valid upto: 31-Mar-2028',
      '{"district":"Moga","promoter":"Friends Developers (Other than Individual)","address":"Village Dharamkot Shmali , H.B No. 290,  Tehsil Dharamkot, District Moga , Punjab","pin_code":"142042","registration_date":"16-May-2025","valid_upto":"31-Mar-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BNL07-PC0319: HG MART
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BNL07-PC0319',
      'HG MART',
      'hg-mart',
      'active',
      'Promoter: SPKR PROMOTERS & DEVELOPERS LLP (Other than Individual). Address: VILLAGE HANDIAYA, TEHSIL AND DISTRICT BARNALA. PIN: 148107. Valid upto: 07-Aug-2029',
      '{"district":"Barnala","promoter":"SPKR PROMOTERS & DEVELOPERS LLP (Other than Individual)","address":"VILLAGE HANDIAYA, TEHSIL AND DISTRICT BARNALA","pin_code":"148107","registration_date":"20-May-2025","valid_upto":"07-Aug-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR1147: BLISSBEL
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR1147',
      'BLISSBEL',
      'blissbel',
      'active',
      'Promoter: BLISSBEL BUILDERS & DEVELOPERS (Other than Individual). Address: Village Kishanpura,. PIN: 140603. Valid upto: 16-Feb-2032',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"BLISSBEL BUILDERS & DEVELOPERS (Other than Individual)","address":"Village Kishanpura,","pin_code":"140603","registration_date":"20-May-2025","valid_upto":"16-Feb-2032"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR1145: PANORAMA-54
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR1145',
      'PANORAMA-54',
      'panorama-54',
      'active',
      'Promoter: PARAMOUNT PROMOTERS (Other than Individual). Address: Village Nehianwala and Amargarh, Tehsil Goniana Mandi. PIN: 151201. Valid upto: 12-Jan-2030',
      '{"district":"Bathinda","promoter":"PARAMOUNT PROMOTERS (Other than Individual)","address":"Village Nehianwala and Amargarh, Tehsil Goniana Mandi","pin_code":"151201","registration_date":"20-May-2025","valid_upto":"12-Jan-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0324: Amayra Plaza
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0324',
      'Amayra Plaza',
      'amayra-plaza',
      'active',
      'Promoter: Omni Pacific Colonizers Pvt Ltd (Other than Individual). Address: vilage Radiala and Dau Majra, Hadbast no. 77 and 76, TEHSIL KHARAR , DISTRICT SAS NAGAR. PIN: 140301. Valid upto: 19-Jan-2030',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omni Pacific Colonizers Pvt Ltd (Other than Individual)","address":"vilage Radiala and Dau Majra, Hadbast no. 77 and 76, TEHSIL KHARAR , DISTRICT SAS NAGAR","pin_code":"140301","registration_date":"20-May-2025","valid_upto":"19-Jan-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR1144: Urban Green View
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR1144',
      'Urban Green View',
      'urban-green-view',
      'active',
      'Promoter: Urban Realty Partners DB (Other than Individual). Address: Village Gulabgarh, Tehsil: Dera Bassi,, SAS Nagar. PIN: 140507. Valid upto: 30-Sep-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Urban Realty Partners DB (Other than Individual)","address":"Village Gulabgarh, Tehsil: Dera Bassi,, SAS Nagar","pin_code":"140507","registration_date":"16-May-2025","valid_upto":"30-Sep-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FDK12-PR1142: SHERWOOD PARKS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FDK12-PR1142',
      'SHERWOOD PARKS',
      'sherwood-parks',
      'active',
      'Promoter: ROSE VALLEY COLONISERS (Other than Individual). Address: MOGA ROAD, KOTKAPURA. PIN: 151204. Valid upto: 30-Sep-2029',
      '{"district":"Faridkot","promoter":"ROSE VALLEY COLONISERS (Other than Individual)","address":"MOGA ROAD, KOTKAPURA","pin_code":"151204","registration_date":"15-May-2025","valid_upto":"30-Sep-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0315: CYBER COURTYARD
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0315',
      'CYBER COURTYARD',
      'cyber-courtyard',
      'active',
      'Promoter: HALE AND NICHE DEVELOPERS PRIVATE LIMITED (Other than Individual). Address: VILLAGE SANETA, HADBAST NO.288, TEHSIL MOHALI. PIN: 140307. Valid upto: 31-Oct-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"HALE AND NICHE DEVELOPERS PRIVATE LIMITED (Other than Individual)","address":"VILLAGE SANETA, HADBAST NO.288, TEHSIL MOHALI","pin_code":"140307","registration_date":"15-May-2025","valid_upto":"31-Oct-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FGS15-PR1140: Model Town
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FGS15-PR1140',
      'Model Town',
      'model-town-dup1',
      'active',
      'Promoter: Kanav  Sood (Individual). Address: Vilage Beer  Hadbast no. 27 Amloh. PIN: 147203. Valid upto: 20-Jan-2030',
      '{"district":"Fatehgarh Sahib","promoter":"Kanav  Sood (Individual)","address":"Vilage Beer  Hadbast no. 27 Amloh","pin_code":"147203","registration_date":"14-May-2025","valid_upto":"20-Jan-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-MNS50-PR1141: Blue Heaven City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-MNS50-PR1141',
      'Blue Heaven City',
      'blue-heaven-city',
      'active',
      'Promoter: Kat Builders And Developers LLP (Other than Individual). Address: Village Thuthianwali and Mansa Khurd, HB No 57& 55. PIN: 151505. Valid upto: 16-Dec-2029',
      '{"district":"Mansa","promoter":"Kat Builders And Developers LLP (Other than Individual)","address":"Village Thuthianwali and Mansa Khurd, HB No 57& 55","pin_code":"151505","registration_date":"14-May-2025","valid_upto":"16-Dec-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0311: KTS THE PROMONADE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0311',
      'KTS THE PROMONADE',
      'kts-the-promonade',
      'active',
      'Promoter: KTS ENTERPRISES  (Other than Individual). Address: Village Padiala, Kurali, Hadbast No. 379, Tehsil Kharar, Distt SAS Nagar. PIN: 140103. Valid upto: 27-Aug-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KTS ENTERPRISES  (Other than Individual)","address":"Village Padiala, Kurali, Hadbast No. 379, Tehsil Kharar, Distt SAS Nagar","pin_code":"140103","registration_date":"07-May-2025","valid_upto":"27-Aug-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PC0308: City Center
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PC0308',
      'City Center',
      'city-center',
      'active',
      'Promoter: Ganpati Land Promoters (Other than Individual). Address: NH-07, Bathinda-Malout Road, Village Behman Diwana. PIN: 151001. Valid upto: 06-Feb-2030',
      '{"district":"Bathinda","promoter":"Ganpati Land Promoters (Other than Individual)","address":"NH-07, Bathinda-Malout Road, Village Behman Diwana","pin_code":"151001","registration_date":"25-Apr-2025","valid_upto":"06-Feb-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR1138: Olympian City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR1138',
      'Olympian City',
      'olympian-city',
      'active',
      'Promoter: Sohana Land Promoters (Other than Individual). Address: Village Khusropur Hb no. 246, & Sansarpur Hb no 247 Teh & Dist Jalandhar. PIN: 144024. Valid upto: 30-Jul-2029',
      '{"district":"Jalandhar","promoter":"Sohana Land Promoters (Other than Individual)","address":"Village Khusropur Hb no. 246, & Sansarpur Hb no 247 Teh & Dist Jalandhar","pin_code":"144024","registration_date":"28-Apr-2025","valid_upto":"30-Jul-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-MNS50-PC0309: Blue Heaven Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-MNS50-PC0309',
      'Blue Heaven Enclave',
      'blue-heaven-enclave',
      'active',
      'Promoter: Kat Builders And Developers LLP (Other than Individual). Address: Village Thuthianwali and Mansa Khurd, HB No 57& 55. PIN: 151505. Valid upto: 11-Aug-2029',
      '{"district":"Mansa","promoter":"Kat Builders And Developers LLP (Other than Individual)","address":"Village Thuthianwali and Mansa Khurd, HB No 57& 55","pin_code":"151505","registration_date":"30-Apr-2025","valid_upto":"11-Aug-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR1136: NOBLE AURELLIA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR1136',
      'NOBLE AURELLIA',
      'noble-aurellia',
      'active',
      'Promoter: CRA BUILDTECH LLP (Other than Individual). Address: Group Housing Site  No. 04 Sector 88 SAS Nagar, Punjab. PIN: 160055. Valid upto: 20-Apr-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CRA BUILDTECH LLP (Other than Individual)","address":"Group Housing Site  No. 04 Sector 88 SAS Nagar, Punjab","pin_code":"160055","registration_date":"25-Apr-2025","valid_upto":"20-Apr-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR1135: KS ONE-O-8
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR1135',
      'KS ONE-O-8',
      'ks-one-o-8',
      'active',
      'Promoter: K S INFRACON PVT. LTD. (Other than Individual). Address: Village Singhpura, Zirakpur. PIN: 140603. Valid upto: 19-Dec-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"K S INFRACON PVT. LTD. (Other than Individual)","address":"Village Singhpura, Zirakpur","pin_code":"140603","registration_date":"25-Apr-2025","valid_upto":"19-Dec-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0310: VILLAGE-P3
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0310',
      'VILLAGE-P3',
      'village-p3',
      'active',
      'Promoter: Jaskaran  Singh (Individual). Address: Village Padiala Kurali. PIN: 140103. Valid upto: 08-Jul-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jaskaran  Singh (Individual)","address":"Village Padiala Kurali","pin_code":"140103","registration_date":"30-Apr-2025","valid_upto":"08-Jul-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR1139: Anandam Estates
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR1139',
      'Anandam Estates',
      'anandam-estates',
      'active',
      'Promoter: Ananda Developers (Other than Individual). Address: Village Goniana, Teh Bathinda. PIN: 151001. Valid upto: 15-Jan-2030',
      '{"district":"Bathinda","promoter":"Ananda Developers (Other than Individual)","address":"Village Goniana, Teh Bathinda","pin_code":"151001","registration_date":"30-Apr-2025","valid_upto":"15-Jan-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL65-PC0307: GOLDUST
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL65-PC0307',
      'GOLDUST',
      'goldust',
      'active',
      'Promoter: GOLDUST LAND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: Site Office Goldust City Centre, On National Highway,, HB 173, Village Ramgarh, Ramgarh Urf Buta Singhwala,. PIN: 140601. Valid upto: 01-Feb-2029',
      '{"district":"Patiala","promoter":"GOLDUST LAND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"Site Office Goldust City Centre, On National Highway,, HB 173, Village Ramgarh, Ramgarh Urf Buta Singhwala,","pin_code":"140601","registration_date":"25-Apr-2025","valid_upto":"01-Feb-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR1118: Amayra Vista
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR1118',
      'Amayra Vista',
      'amayra-vista',
      'active',
      'Promoter: Omni Pacific Colonizers Pvt Ltd (Other than Individual). Address: Village Pandiala Hadbast no. 379, within Municipal Council Kurali, Tehsil Kharar , District SAS Nagar. PIN: 140103. Valid upto: 14-Jan-2030',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omni Pacific Colonizers Pvt Ltd (Other than Individual)","address":"Village Pandiala Hadbast no. 379, within Municipal Council Kurali, Tehsil Kharar , District SAS Nagar","pin_code":"140103","registration_date":"17-Apr-2025","valid_upto":"14-Jan-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0306: Amayra Trillium Street
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0306',
      'Amayra Trillium Street',
      'amayra-trillium-street',
      'active',
      'Promoter: TOWNBELL INDIA LANDCRAFT PRIVATE LIMITED (Other than Individual). Address: HARBAST NO 182, Village Aujla, Tehsil Kharar. PIN: 140301. Valid upto: 15-Jan-2030',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TOWNBELL INDIA LANDCRAFT PRIVATE LIMITED (Other than Individual)","address":"HARBAST NO 182, Village Aujla, Tehsil Kharar","pin_code":"140301","registration_date":"17-Apr-2025","valid_upto":"15-Jan-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-HSP29-PR1078: Cheema Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-HSP29-PR1078',
      'Cheema Enclave',
      'cheema-enclave',
      'active',
      'Promoter: Satnam   Singh (Individual). Address: Village Chak Alla Baksh HB no 236, Tehsil Mukerian. PIN: 144211. Valid upto: 27-Mar-2028',
      '{"district":"Hoshiarpur","promoter":"Satnam   Singh (Individual)","address":"Village Chak Alla Baksh HB no 236, Tehsil Mukerian","pin_code":"144211","registration_date":"17-Apr-2025","valid_upto":"27-Mar-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZL19-PR1122: VARINDAVAN VIHAR
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZL19-PR1122',
      'VARINDAVAN VIHAR',
      'varindavan-vihar',
      'active',
      'Promoter: Krishna Enterprises (Other than Individual). Address: FAZILKA ROAD. PIN: 152116. Valid upto: 30-Jan-2029',
      '{"district":"Fazilka","promoter":"Krishna Enterprises (Other than Individual)","address":"FAZILKA ROAD","pin_code":"152116","registration_date":"15-Apr-2025","valid_upto":"30-Jan-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH42-PM0174: BELAIRE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH42-PM0174',
      'BELAIRE',
      'belaire',
      'active',
      'Promoter: SKB INFRA (Other than Individual). Address: Village Gureh. PIN: 142023. Valid upto: 27-Mar-2029',
      '{"district":"Ludhiana","promoter":"SKB INFRA (Other than Individual)","address":"Village Gureh","pin_code":"142023","registration_date":"15-Apr-2025","valid_upto":"27-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR1132: City of Dream 115, Extension
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR1132',
      'City of Dream 115, Extension',
      'city-of-dream-115-extension',
      'active',
      'Promoter: G K Residency Private Limited (Other than Individual). Address: Village Santemajra HB No. 186, MC Kharar, Tehsil Kharar. PIN: 140307. Valid upto: 30-Sep-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"G K Residency Private Limited (Other than Individual)","address":"Village Santemajra HB No. 186, MC Kharar, Tehsil Kharar","pin_code":"140307","registration_date":"16-Apr-2025","valid_upto":"30-Sep-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR1131: BN Enclave Phase-2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR1131',
      'BN Enclave Phase-2',
      'bn-enclave-phase-2',
      'active',
      'Promoter: B N Builders And Promoters (Other than Individual). Address: Village Jagadhari, HB no 37, Tehsil Derabassi, SAS Nagar. PIN: 140507. Valid upto: 19-Dec-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"B N Builders And Promoters (Other than Individual)","address":"Village Jagadhari, HB no 37, Tehsil Derabassi, SAS Nagar","pin_code":"140507","registration_date":"16-Apr-2025","valid_upto":"19-Dec-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR1130: AGI Smart Homes-II Extension
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR1130',
      'AGI Smart Homes-II Extension',
      'agi-smart-homes-ii-extension',
      'active',
      'Promoter: AGI Infra Limited (Other than Individual). Address: Village Pholriwal, H.B. No. 252. PIN: 144022. Valid upto: 03-Dec-2029',
      '{"district":"Jalandhar","promoter":"AGI Infra Limited (Other than Individual)","address":"Village Pholriwal, H.B. No. 252","pin_code":"144022","website":"www.agiinfra.com","registration_date":"16-Apr-2025","valid_upto":"03-Dec-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FDK12-PR1129: Baghel Estate
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FDK12-PR1129',
      'Baghel Estate',
      'baghel-estate',
      'active',
      'Promoter: S. Yudhvir  Singh Sandhu (Individual). Address: Hari Nau Road, Kothe Sainian, Kotkapura. PIN: 151204. Valid upto: 14-Nov-2028',
      '{"district":"Faridkot","promoter":"S. Yudhvir  Singh Sandhu (Individual)","address":"Hari Nau Road, Kothe Sainian, Kotkapura","pin_code":"151204","registration_date":"16-Apr-2025","valid_upto":"14-Nov-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR1126: KIRAT ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR1126',
      'KIRAT ENCLAVE',
      'kirat-enclave',
      'active',
      'Promoter: R L DEVELOPERS (Other than Individual). Address: LAL SINGH BASTI, MAIN ROAD BATHINDA. PIN: 151001. Valid upto: 07-Aug-2029',
      '{"district":"Bathinda","promoter":"R L DEVELOPERS (Other than Individual)","address":"LAL SINGH BASTI, MAIN ROAD BATHINDA","pin_code":"151001","registration_date":"16-Apr-2025","valid_upto":"07-Aug-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-GSP27-PC0305: J.S. SQUARE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-GSP27-PC0305',
      'J.S. SQUARE',
      'js-square',
      'active',
      'Promoter: S. Simarjit   Singh  (Individual). Address: VILLAGE SHAHZADA NANGAL, HB NO 335. PIN: 143533. Valid upto: 27-Jun-2029',
      '{"district":"Gurdaspur","promoter":"S. Simarjit   Singh  (Individual)","address":"VILLAGE SHAHZADA NANGAL, HB NO 335","pin_code":"143533","registration_date":"09-Apr-2025","valid_upto":"27-Jun-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR1127: Kirat Enclave-2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR1127',
      'Kirat Enclave-2',
      'kirat-enclave-2',
      'active',
      'Promoter: Shree Buildtech (Other than Individual). Address: Lal Singh Basti , main Road Bathinda. PIN: 151001. Valid upto: 07-Aug-2029',
      '{"district":"Bathinda","promoter":"Shree Buildtech (Other than Individual)","address":"Lal Singh Basti , main Road Bathinda","pin_code":"151001","registration_date":"09-Apr-2025","valid_upto":"07-Aug-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR1125: BIR AVENUE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR1125',
      'BIR AVENUE',
      'bir-avenue',
      'active',
      'Promoter: PRMIERE ESTATES (Other than Individual). Address: AFORDABLE COLONY BIR AVENUE OWNED BY PREMIER ESTATES AT BIR ROAD BATHINDA, SAME. PIN: 151001. Valid upto: 09-Apr-2029',
      '{"district":"Bathinda","promoter":"PRMIERE ESTATES (Other than Individual)","address":"AFORDABLE COLONY BIR AVENUE OWNED BY PREMIER ESTATES AT BIR ROAD BATHINDA, SAME","pin_code":"151001","registration_date":"09-Apr-2025","valid_upto":"09-Apr-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PC0303: Somsons Plazza
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PC0303',
      'Somsons Plazza',
      'somsons-plazza',
      'active',
      'Promoter: Somsons Infra Limited (Other than Individual). Address: Village Daad,, Ludhiana West. PIN: 142022. Valid upto: 27-Mar-2029',
      '{"district":"Ludhiana","promoter":"Somsons Infra Limited (Other than Individual)","address":"Village Daad,, Ludhiana West","pin_code":"142022","registration_date":"03-Apr-2025","valid_upto":"27-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PC0304: G.K.s Burj Street
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PC0304',
      'G.K.s Burj Street',
      'gks-burj-street',
      'active',
      'Promoter: G.K.HOUSING &DEVELOPERS PRIVATE LIMITED  (Other than Individual). Address: Village Jaspal Banger(H.B.No. 259)Tehsil Ludhiana West Distt Ludhiana, SAME. PIN: 141122. Valid upto: 11-Sep-2029',
      '{"district":"Ludhiana","promoter":"G.K.HOUSING &DEVELOPERS PRIVATE LIMITED  (Other than Individual)","address":"Village Jaspal Banger(H.B.No. 259)Tehsil Ludhiana West Distt Ludhiana, SAME","pin_code":"141122","registration_date":"03-Apr-2025","valid_upto":"11-Sep-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZL19-PR1119: CCD Signature Green city
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZL19-PR1119',
      'CCD Signature Green city',
      'ccd-signature-green-city',
      'active',
      'Promoter: CCD Signature Green City (Other than Individual). Address: Malout- Fazilka Road, Arniwala Shekh Subhan, Distt. Fazilka, Fazilka. PIN: 152124. Valid upto: 31-May-2029',
      '{"district":"Fazilka","promoter":"CCD Signature Green City (Other than Individual)","address":"Malout- Fazilka Road, Arniwala Shekh Subhan, Distt. Fazilka, Fazilka","pin_code":"152124","registration_date":"03-Apr-2025","valid_upto":"31-May-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR1123: THE ETHEREAL
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR1123',
      'THE ETHEREAL',
      'the-ethereal',
      'active',
      'Promoter: EVERMARK DEVELOPERS & PROMOTERS PVT. LTD. (Other than Individual). Address: VILLAGE RAMGARH BHUDDA, ZIRAKPUR , PUNJAB. PIN: 140603. Valid upto: 23-Dec-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"EVERMARK DEVELOPERS & PROMOTERS PVT. LTD. (Other than Individual)","address":"VILLAGE RAMGARH BHUDDA, ZIRAKPUR , PUNJAB","pin_code":"140603","registration_date":"03-Apr-2025","valid_upto":"23-Dec-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-KPT39-PR1124: APEX GREENS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-KPT39-PR1124',
      'APEX GREENS',
      'apex-greens',
      'active',
      'Promoter: JASHER REALTTY PRIVATE LIMITED (Other than Individual). Address: Village Saido Bhulana (H.B.No.124) and Village Rasulpur Chisti (H.B.No.127),. PIN: 144602. Valid upto: 31-Jul-2029',
      '{"district":"Kapurthala","promoter":"JASHER REALTTY PRIVATE LIMITED (Other than Individual)","address":"Village Saido Bhulana (H.B.No.124) and Village Rasulpur Chisti (H.B.No.127),","pin_code":"144602","registration_date":"03-Apr-2025","valid_upto":"31-Jul-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PR1128: Tricone Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PR1128',
      'Tricone Enclave',
      'tricone-enclave',
      'active',
      'Promoter: Tricone Projects India Ltd (Other than Individual). Address: Village Kasiana, H. B. No. 335, Tehsil & District Patiala. PIN: 147001. Valid upto: 24-Nov-2029',
      '{"district":"Patiala","promoter":"Tricone Projects India Ltd (Other than Individual)","address":"Village Kasiana, H. B. No. 335, Tehsil & District Patiala","pin_code":"147001","registration_date":"03-Apr-2025","valid_upto":"24-Nov-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0394: BELISTON AVENUES
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0394',
      'BELISTON AVENUES',
      'beliston-avenues',
      'active',
      'Promoter: GVT INFRA (Other than Individual). Address: OLD KALKA AMBALA ROAD, Opposite Delhi Public World School, Gazipur, NAC Zirakpur. PIN: 160104. Valid upto: 10-Apr-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GVT INFRA (Other than Individual)","address":"OLD KALKA AMBALA ROAD, Opposite Delhi Public World School, Gazipur, NAC Zirakpur","pin_code":"160104","registration_date":"11-Oct-2018","valid_upto":"10-Apr-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR77-PC0300: Fun Square Green City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR77-PC0300',
      'Fun Square Green City',
      'fun-square-green-city',
      'active',
      'Promoter: G & G Associates (Other than Individual). Address: Village Akoi, H. B. No. 21, Dhuri Road, Sangrur. PIN: 148001. Valid upto: 13-Nov-2029',
      '{"district":"Sangrur","promoter":"G & G Associates (Other than Individual)","address":"Village Akoi, H. B. No. 21, Dhuri Road, Sangrur","pin_code":"148001","registration_date":"26-Mar-2025","valid_upto":"13-Nov-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR1117: THE VIBE LIVE THE HIGH LIFE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR1117',
      'THE VIBE LIVE THE HIGH LIFE',
      'the-vibe-live-the-high-life',
      'active',
      'Promoter: MEYDAN INFRA LLP (Other than Individual). Address: VILLAGE SINGHPURA, HB. NO 43, ZIRAKPUR. PIN: 140603. Valid upto: 21-Jan-2030',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MEYDAN INFRA LLP (Other than Individual)","address":"VILLAGE SINGHPURA, HB. NO 43, ZIRAKPUR","pin_code":"140603","registration_date":"25-Mar-2025","valid_upto":"21-Jan-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FGS17-PC0299: Shergill Complex
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FGS17-PC0299',
      'Shergill Complex',
      'shergill-complex',
      'active',
      'Promoter: Raunak  Shergill (Individual). Address: Village Bara, Hadbast No 137, Teh. Distt Fatehgarh Sahib. PIN: 140412. Valid upto: 04-Jul-2029',
      '{"district":"Fatehgarh Sahib","promoter":"Raunak  Shergill (Individual)","address":"Village Bara, Hadbast No 137, Teh. Distt Fatehgarh Sahib","pin_code":"140412","registration_date":"24-Mar-2025","valid_upto":"04-Jul-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0111: Beverly Golf Avenue-Phase-1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0111',
      'Beverly Golf Avenue-Phase-1',
      'beverly-golf-avenue-phase-1',
      'active',
      'Promoter: MB Infrabuild Private Limited (Other than Individual). Address: Beverly Golf Avenue, Golf Range, SAS Nagar, Sector-65. PIN: 160062. Valid upto: 31-Jul-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MB Infrabuild Private Limited (Other than Individual)","address":"Beverly Golf Avenue, Golf Range, SAS Nagar, Sector-65","pin_code":"160062","website":"www.beverlygolfavenue.com","registration_date":"22-Sep-2017","valid_upto":"31-Jul-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR1105: MOTIA DWARKA RIVERFRONT
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR1105',
      'MOTIA DWARKA RIVERFRONT',
      'motia-dwarka-riverfront',
      'active',
      'Promoter: SUKHDA TRADING COMPANY (Other than Individual). Address: VILLAGE KURALI NO. 121, KURALI. PIN: 140103. Valid upto: 01-Aug-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SUKHDA TRADING COMPANY (Other than Individual)","address":"VILLAGE KURALI NO. 121, KURALI","pin_code":"140103","registration_date":"21-Jan-2025","valid_upto":"01-Aug-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PC0292: Elite City Square
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PC0292',
      'Elite City Square',
      'elite-city-square',
      'active',
      'Promoter: KHATUJI BUILDCON PRIVATE LIMITED (Other than Individual). Address: Vill. Doomwali, Tehsil Sangat, Distt Bathinda. PIN: 151401. Valid upto: 29-Sep-2029',
      '{"district":"Bathinda","promoter":"KHATUJI BUILDCON PRIVATE LIMITED (Other than Individual)","address":"Vill. Doomwali, Tehsil Sangat, Distt Bathinda","pin_code":"151401","registration_date":"17-Feb-2025","valid_upto":"29-Sep-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR1114: HERO HOMES Mohali Phase 3
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR1114',
      'HERO HOMES Mohali Phase 3',
      'hero-homes-mohali-phase-3',
      'active',
      'Promoter: HERO REALTY PRIVATE LIMITED (Other than Individual). Address: Group Housing Site No. 1, Sector 88,. PIN: 140308. Valid upto: 01-Nov-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"HERO REALTY PRIVATE LIMITED (Other than Individual)","address":"Group Housing Site No. 1, Sector 88,","pin_code":"140308","website":"https://herohomes.in/project-mohali/phase-2.html","registration_date":"17-Feb-2025","valid_upto":"01-Nov-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH42-PR1116: Jandu Residency
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH42-PR1116',
      'Jandu Residency',
      'jandu-residency',
      'active',
      'Promoter: JANDU LAND PROMOTERS LLP (Other than Individual). Address: Village Balloke. PIN: 141001. Valid upto: 29-Oct-2029',
      '{"district":"Ludhiana","promoter":"JANDU LAND PROMOTERS LLP (Other than Individual)","address":"Village Balloke","pin_code":"141001","registration_date":"17-Feb-2025","valid_upto":"29-Oct-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PC0279: Royal Plaza
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PC0279',
      'Royal Plaza',
      'royal-plaza',
      'active',
      'Promoter: Triworld developers (Other than Individual). Address: Village Pholriwal, Harbast No 252,, Tehsil and Dist Jalandhar. PIN: 144022. Valid upto: 14-May-2029',
      '{"district":"Jalandhar","promoter":"Triworld developers (Other than Individual)","address":"Village Pholriwal, Harbast No 252,, Tehsil and Dist Jalandhar","pin_code":"144022","registration_date":"17-Feb-2025","valid_upto":"14-May-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FDK12-PR1113: Marval Estate
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FDK12-PR1113',
      'Marval Estate',
      'marval-estate',
      'active',
      'Promoter: Marval Estate (Other than Individual). Address: Muktsar Road, Kotkapura. PIN: 151204. Valid upto: 31-Jul-2029',
      '{"district":"Faridkot","promoter":"Marval Estate (Other than Individual)","address":"Muktsar Road, Kotkapura","pin_code":"151204","registration_date":"31-Jan-2025","valid_upto":"31-Jul-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0842: Chandigarh Aerotown
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0842',
      'Chandigarh Aerotown',
      'chandigarh-aerotown',
      'active',
      'Promoter: Vaneet Infrastructure and Developers Private Limited (Other than Individual). Address: Village - Bakarpur, Tehsil- Derabassi. PIN: 140201. Valid upto: 20-Jul-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Vaneet Infrastructure and Developers Private Limited (Other than Individual)","address":"Village - Bakarpur, Tehsil- Derabassi","pin_code":"140201","registration_date":"15-Mar-2023","valid_upto":"20-Jul-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0295: Mandi Complex
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0295',
      'Mandi Complex',
      'mandi-complex',
      'active',
      'Promoter: SK BUILDERS (Other than Individual). Address: Village Lalru, H.B No 218, within M.C Lalru Derabassi. PIN: 140501. Valid upto: 07-Aug-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SK BUILDERS (Other than Individual)","address":"Village Lalru, H.B No 218, within M.C Lalru Derabassi","pin_code":"140501","registration_date":"29-Jan-2025","valid_upto":"07-Aug-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FGS17-PR1108: SAROJ RAVINDER PURI RAVIROJ GARDEN
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FGS17-PR1108',
      'SAROJ RAVINDER PURI RAVIROJ GARDEN',
      'saroj-ravinder-puri-raviroj-garden',
      'active',
      'Promoter: PURI PROMOTERS PRIVATE LIMITED (Other than Individual). Address: Village Sirhind, H.B. No 125,, Tehsil Fatehgarh Sahib. PIN: 140406. Valid upto: 04-Apr-2029',
      '{"district":"Fatehgarh Sahib","promoter":"PURI PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"Village Sirhind, H.B. No 125,, Tehsil Fatehgarh Sahib","pin_code":"140406","registration_date":"21-Jan-2025","valid_upto":"04-Apr-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR1111: Gulnaar Serene
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR1111',
      'Gulnaar Serene',
      'gulnaar-serene',
      'active',
      'Promoter: GULNAAR KREATIVE DEVELOPERS LLP (Other than Individual). Address: Village Singhpura, HB No 43, Ramgarh Budha HB No 42. PIN: 140601. Valid upto: 21-Aug-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GULNAAR KREATIVE DEVELOPERS LLP (Other than Individual)","address":"Village Singhpura, HB No 43, Ramgarh Budha HB No 42","pin_code":"140601","registration_date":"23-Jan-2025","valid_upto":"21-Aug-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR1110: The Magique Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR1110',
      'The Magique Homes',
      'the-magique-homes',
      'active',
      'Promoter: RAJESH KUMAR TANGRI (Individual). Address: Village Karimpur. PIN: 141101. Valid upto: 04-Jul-2029',
      '{"district":"Ludhiana","promoter":"RAJESH KUMAR TANGRI (Individual)","address":"Village Karimpur","pin_code":"141101","registration_date":"17-Jan-2025","valid_upto":"04-Jul-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PC0296: Ivadika Square
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PC0296',
      'Ivadika Square',
      'ivadika-square',
      'active',
      'Promoter: Kohinoor Developers (Other than Individual). Address: village Chak Kharak Singh Wala, Urf Doomwali. PIN: 151401. Valid upto: 13-Nov-2029',
      '{"district":"Bathinda","promoter":"Kohinoor Developers (Other than Individual)","address":"village Chak Kharak Singh Wala, Urf Doomwali","pin_code":"151401","registration_date":"17-Jan-2025","valid_upto":"13-Nov-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR1106: Aerotro homes 1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR1106',
      'Aerotro homes 1',
      'aerotro-homes-1',
      'active',
      'Promoter: 7C REALTY MANAGEMENT PRIVATE LIMITED  (Other than Individual). Address: VILLAGE NAUGIARI, HADBAST NO. 282 TEHSIL BANUR. PIN: 140306. Valid upto: 15-Oct-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"7C REALTY MANAGEMENT PRIVATE LIMITED  (Other than Individual)","address":"VILLAGE NAUGIARI, HADBAST NO. 282 TEHSIL BANUR","pin_code":"140306","registration_date":"03-Jan-2025","valid_upto":"15-Oct-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR1104: SUN VIEW RESIDENCY EXTENSION -I
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR1104',
      'SUN VIEW RESIDENCY EXTENSION -I',
      'sun-view-residency-extension-i',
      'active',
      'Promoter: Home Life  Buildcon Private Limited (Other than Individual). Address: H.B. No 155, Village Ayali Kalan, H.B. No 145, Bains, Ludhiana. PIN: 141012. Valid upto: 02-Sep-2029',
      '{"district":"Ludhiana","promoter":"Home Life  Buildcon Private Limited (Other than Individual)","address":"H.B. No 155, Village Ayali Kalan, H.B. No 145, Bains, Ludhiana","pin_code":"141012","registration_date":"08-Jan-2025","valid_upto":"02-Sep-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR1107: CM Luxury Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR1107',
      'CM Luxury Homes',
      'cm-luxury-homes',
      'active',
      'Promoter: CM LUXURY HOMES (Other than Individual). Address: Village Jainpur, Hadbast No. 148. PIN: 142027. Valid upto: 11-Sep-2029',
      '{"district":"Ludhiana","promoter":"CM LUXURY HOMES (Other than Individual)","address":"Village Jainpur, Hadbast No. 148","pin_code":"142027","registration_date":"07-Jan-2025","valid_upto":"11-Sep-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR1087: GLENMORE CANTT COUNTY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR1087',
      'GLENMORE CANTT COUNTY',
      'glenmore-cantt-county',
      'active',
      'Promoter: SUKHKARAM LAND DEVELOPERS (Other than Individual). Address: VILLAGE BAMBIANWALI, H.B.NO.235. PIN: 144024. Valid upto: 07-Jul-2027',
      '{"district":"Jalandhar","promoter":"SUKHKARAM LAND DEVELOPERS (Other than Individual)","address":"VILLAGE BAMBIANWALI, H.B.NO.235","pin_code":"144024","registration_date":"08-Jan-2025","valid_upto":"07-Jul-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL35-PR1103: Eaton Centre
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL35-PR1103',
      'Eaton Centre',
      'eaton-centre',
      'active',
      'Promoter: EATON CENTRE (Other than Individual). Address: Village Nakodar HB No. 31 Distt. Jalandhar. PIN: 144042. Valid upto: 10-Mar-2029',
      '{"district":"Jalandhar","promoter":"EATON CENTRE (Other than Individual)","address":"Village Nakodar HB No. 31 Distt. Jalandhar","pin_code":"144042","registration_date":"19-Dec-2024","valid_upto":"10-Mar-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0616: Marbella Twin Towers (Formerly known as Curo One, Part II, Residential)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0616',
      'Marbella Twin Towers (Formerly known as Curo One, Part II, Residential)',
      'marbella-twin-towers-formerly-known-as-curo-one-part-ii-residential',
      'active',
      'Promoter: SRG Marbella Developers & Promoters LLP (Other than Individual). Address: Curo One, Village Mullanpur Garibdas, Old Barrier, New Chandigarh. PIN: 140901. Valid upto: 31-Dec-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SRG Marbella Developers & Promoters LLP (Other than Individual)","address":"Curo One, Village Mullanpur Garibdas, Old Barrier, New Chandigarh","pin_code":"140901","registration_date":"07-Jul-2020","valid_upto":"31-Dec-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR1101: Horizon Greensville
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR1101',
      'Horizon Greensville',
      'horizon-greensville',
      'active',
      'Promoter: Mohali Greensville Infra LLP (Other than Individual). Address: Sector-113,, Village Kailon , Landran. PIN: 140307. Valid upto: 15-Oct-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Mohali Greensville Infra LLP (Other than Individual)","address":"Sector-113,, Village Kailon , Landran","pin_code":"140307","registration_date":"29-Nov-2024","valid_upto":"15-Oct-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR1102: CITY POINT
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR1102',
      'CITY POINT',
      'city-point',
      'active',
      'Promoter: PARAMJOT  SINGH (Individual). Address: Village Chohak, H.B.No.218. PIN: 144007. Valid upto: 09-Jul-2029',
      '{"district":"Jalandhar","promoter":"PARAMJOT  SINGH (Individual)","address":"Village Chohak, H.B.No.218","pin_code":"144007","registration_date":"26-Nov-2024","valid_upto":"09-Jul-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0290: ETHEREAL PLAZA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0290',
      'ETHEREAL PLAZA',
      'ethereal-plaza',
      'active',
      'Promoter: EVERMARK DEVELOPERS & PROMOTERS PVT. LTD. (Other than Individual). Address: VILLAGE RAMGARH BHUDDA, ZIRAKPUR , PUNJAB. PIN: 140603. Valid upto: 19-May-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"EVERMARK DEVELOPERS & PROMOTERS PVT. LTD. (Other than Individual)","address":"VILLAGE RAMGARH BHUDDA, ZIRAKPUR , PUNJAB","pin_code":"140603","registration_date":"25-Nov-2024","valid_upto":"19-May-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR1098: Falcon View Tower-T
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR1098',
      'Falcon View Tower-T',
      'falcon-view-tower-t',
      'active',
      'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: Sector-66A, Mohali. PIN: 140306. Valid upto: 31-Aug-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"Sector-66A, Mohali","pin_code":"140306","website":"www.jantahousing.com","registration_date":"22-Nov-2024","valid_upto":"31-Aug-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR1099: Falcon View Tower-U
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR1099',
      'Falcon View Tower-U',
      'falcon-view-tower-u',
      'active',
      'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: SCO-39-42, Sector-82. PIN: 140306. Valid upto: 31-Aug-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"SCO-39-42, Sector-82","pin_code":"140306","website":"www.jantahousing.com","registration_date":"22-Nov-2024","valid_upto":"31-Aug-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR1097: Falcon View Tower-O
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR1097',
      'Falcon View Tower-O',
      'falcon-view-tower-o',
      'active',
      'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: Sector-66. PIN: 140306. Valid upto: 31-Oct-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"Sector-66","pin_code":"140306","website":"www.jantahousing.com","registration_date":"22-Nov-2024","valid_upto":"31-Oct-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR1100: RISING GREENS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR1100',
      'RISING GREENS',
      'rising-greens',
      'active',
      'Promoter: PRIDE INFRA (Other than Individual). Address: VILLAGE KHARAR, HADBAST 184, KHARAR. PIN: 140301. Valid upto: 18-Jun-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PRIDE INFRA (Other than Individual)","address":"VILLAGE KHARAR, HADBAST 184, KHARAR","pin_code":"140301","registration_date":"25-Nov-2024","valid_upto":"18-Jun-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR1091: Chhawani
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR1091',
      'Chhawani',
      'chhawani',
      'active',
      'Promoter: Evermark Infra LLP (Other than Individual). Address: Village kaulimajra , lalru. PIN: 140506. Valid upto: 08-Aug-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Evermark Infra LLP (Other than Individual)","address":"Village kaulimajra , lalru","pin_code":"140506","registration_date":"21-Nov-2024","valid_upto":"08-Aug-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0291: GLOBAL AVENUE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0291',
      'GLOBAL AVENUE',
      'global-avenue',
      'active',
      'Promoter: Sunita  Rani (Individual). Address: Hadbast no 290,, Village nabha, zirakpur. PIN: 140603. Valid upto: 30-May-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sunita  Rani (Individual)","address":"Hadbast no 290,, Village nabha, zirakpur","pin_code":"140603","registration_date":"07-Nov-2024","valid_upto":"30-May-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR1094: SAS NAGAR MOHALI HOUSING SCHEME AT SEC 79 MOHALI PUNJAB
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR1094',
      'SAS NAGAR MOHALI HOUSING SCHEME AT SEC 79 MOHALI PUNJAB',
      'sas-nagar-mohali-housing-scheme-at-sec-79-mohali-punjab',
      'active',
      'Promoter: Central Government Employees Welfare Housing Organisation (Other than Individual). Address: PLOT NO 3 SEC 79 SAS NAGAR MOHALI. PIN: 160071. Valid upto: 04-Jul-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Central Government Employees Welfare Housing Organisation (Other than Individual)","address":"PLOT NO 3 SEC 79 SAS NAGAR MOHALI","pin_code":"160071","website":"www.cgewho.in","registration_date":"25-Oct-2024","valid_upto":"04-Jul-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR1096: Richmond Estate
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR1096',
      'Richmond Estate',
      'richmond-estate',
      'active',
      'Promoter: Balaji Buildtech And Developers (Other than Individual). Address: Dabwali Road, Bathinda. PIN: 151001. Valid upto: 07-Dec-2028',
      '{"district":"Bathinda","promoter":"Balaji Buildtech And Developers (Other than Individual)","address":"Dabwali Road, Bathinda","pin_code":"151001","registration_date":"08-Nov-2024","valid_upto":"07-Dec-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BNL06-PR1089: GANPATI ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BNL06-PR1089',
      'GANPATI ENCLAVE',
      'ganpati-enclave',
      'active',
      'Promoter: GANPATI BUILDERS AND DEVELOPERS  (Other than Individual). Address: HADBAST NO 58, VILLAGE HANDIAYA. PIN: 148107. Valid upto: 24-Apr-2025',
      '{"district":"Barnala","promoter":"GANPATI BUILDERS AND DEVELOPERS  (Other than Individual)","address":"HADBAST NO 58, VILLAGE HANDIAYA","pin_code":"148107","registration_date":"05-Nov-2024","valid_upto":"24-Apr-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-RPR67-PC0119: DEVELOPMENT SCHEME TRANSPORT NAGAR
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-RPR67-PC0119',
      'DEVELOPMENT SCHEME TRANSPORT NAGAR',
      'development-scheme-transport-nagar',
      'active',
      'Promoter: ROPAR IMPROVEMENT TRUST (Other than Individual). Address: ROOPNAGAR. PIN: 140001. Valid upto: 31-Mar-2021',
      '{"district":"Rupnagar (Ropar)","promoter":"ROPAR IMPROVEMENT TRUST (Other than Individual)","address":"ROOPNAGAR","pin_code":"140001","registration_date":"18-Jun-2020","valid_upto":"31-Mar-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL34-PR0872: SWARAJ ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL34-PR0872',
      'SWARAJ ENCLAVE',
      'swaraj-enclave',
      'active',
      'Promoter: Sukhdeep   Singh (Individual). Address: Village Reru H.B. No.207, Near Pathankot Byepass Road, Tehsil and Distt Jalandhar. PIN: 144012. Valid upto: 01-Mar-2028',
      '{"district":"Jalandhar","promoter":"Sukhdeep   Singh (Individual)","address":"Village Reru H.B. No.207, Near Pathankot Byepass Road, Tehsil and Distt Jalandhar","pin_code":"144012","registration_date":"16-Oct-2023","valid_upto":"01-Mar-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0112: 9th Avenue  ( Formerly Known as Earlwood )
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0112',
      '9th Avenue  ( Formerly Known as Earlwood )',
      '9th-avenue-formerly-known-as-earlwood',
      'active',
      'Promoter: Earlwood Private Limited (Other than Individual). Address: Vill Santemajra Teh. Kharar. PIN: 140307. Valid upto: 31-Dec-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Earlwood Private Limited (Other than Individual)","address":"Vill Santemajra Teh. Kharar","pin_code":"140307","registration_date":"04-Feb-2020","valid_upto":"31-Dec-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0137: Albany Square
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0137',
      'Albany Square',
      'albany-square',
      'active',
      'Promoter: Altus Space Builders Pvt. Ltd. (Other than Individual). Address: Village-Palheri, Mullanpur. PIN: 140301. Valid upto: 16-Jun-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Altus Space Builders Pvt. Ltd. (Other than Individual)","address":"Village-Palheri, Mullanpur","pin_code":"140301","website":"http://altusnewchandigarh.in","registration_date":"18-Nov-2020","valid_upto":"16-Jun-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BNL06-PC0288: A.R. Complex
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BNL06-PC0288',
      'A.R. Complex',
      'ar-complex',
      'active',
      'Promoter: Sourav  .. (Individual). Address: Opp. Court Complex, Gate No. 2, Handiaya Road, Tehsil and Distt. Barnala. PIN: 148101. Valid upto: 31-Mar-2027',
      '{"district":"Barnala","promoter":"Sourav  .. (Individual)","address":"Opp. Court Complex, Gate No. 2, Handiaya Road, Tehsil and Distt. Barnala","pin_code":"148101","registration_date":"11-Oct-2024","valid_upto":"31-Mar-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR1090: Jalandhar Heights-III Extension
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR1090',
      'Jalandhar Heights-III Extension',
      'jalandhar-heights-iii-extension',
      'active',
      'Promoter: AGI Infra Limited (Other than Individual). Address: Village Pholriwal, H. B. No. 252. PIN: 144022. Valid upto: 30-Mar-2028',
      '{"district":"Jalandhar","promoter":"AGI Infra Limited (Other than Individual)","address":"Village Pholriwal, H. B. No. 252","pin_code":"144022","website":"www.agiinfra.com","registration_date":"09-Oct-2024","valid_upto":"30-Mar-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR1093: GREEN RESIDENCY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR1093',
      'GREEN RESIDENCY',
      'green-residency',
      'active',
      'Promoter: PARTAP INFRATECH PVT. LTD. (Other than Individual). Address: VILLAGE KHARAR AND BADALA NAYA SHAHAR, KHARAR. PIN: 140301. Valid upto: 08-May-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PARTAP INFRATECH PVT. LTD. (Other than Individual)","address":"VILLAGE KHARAR AND BADALA NAYA SHAHAR, KHARAR","pin_code":"140301","registration_date":"10-Oct-2024","valid_upto":"08-May-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZL19-PC0284: OLD WATER WORK SITE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZL19-PC0284',
      'OLD WATER WORK SITE',
      'old-water-work-site',
      'active',
      'Promoter: MUNICIPAL COMMITTEE (Other than Individual). Address: ABOHAR PUNJAB. PIN: 152116',
      '{"district":"Fazilka","promoter":"MUNICIPAL COMMITTEE (Other than Individual)","address":"ABOHAR PUNJAB","pin_code":"152116","registration_date":"08-Oct-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BNL06-PR1088: Special Area (School) to Residential Plots
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BNL06-PR1088',
      'Special Area (School) to Residential Plots',
      'special-area-school-to-residential-plots',
      'active',
      'Promoter: Barnala Improvement Trust  (Other than Individual). Address: Captain Karam Singh Nagar (16 Acre), Barnala. PIN: 148101. Valid upto: 28-Feb-2026',
      '{"district":"Barnala","promoter":"Barnala Improvement Trust  (Other than Individual)","address":"Captain Karam Singh Nagar (16 Acre), Barnala","pin_code":"148101","registration_date":"08-Oct-2024","valid_upto":"28-Feb-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PR1081: The Woodlands
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PR1081',
      'The Woodlands',
      'the-woodlands',
      'active',
      'Promoter: Holistic Developers and Builders (Other than Individual). Address: Village Mullanpur, Tehsil Mullanpur Dakha. PIN: 141101. Valid upto: 31-Jan-2029',
      '{"district":"Ludhiana","promoter":"Holistic Developers and Builders (Other than Individual)","address":"Village Mullanpur, Tehsil Mullanpur Dakha","pin_code":"141101","registration_date":"26-Sep-2024","valid_upto":"31-Jan-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0282: EASTERN COURT 1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0282',
      'EASTERN COURT 1',
      'eastern-court-1',
      'active',
      'Promoter: MRS DEVELOPERS (Other than Individual). Address: EASTERN COURT 1, VILLAGE DHAKOLI, ZIRAKPUR. PIN: 140603. Valid upto: 29-Dec-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MRS DEVELOPERS (Other than Individual)","address":"EASTERN COURT 1, VILLAGE DHAKOLI, ZIRAKPUR","pin_code":"140603","registration_date":"26-Sep-2024","valid_upto":"29-Dec-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR02-PR1082: Experion Virsa, Phase - 2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR02-PR1082',
      'Experion Virsa, Phase - 2',
      'experion-virsa-phase-2',
      'active',
      'Promoter: PARADOR DEVELOPERS AMRITSAR PRIVATE LIMITED (Other than Individual). Address: Village Mannawala and Bishambarpur., GT Road Amritsar. PIN: 143109. Valid upto: 13-Dec-2026',
      '{"district":"Amritsar","promoter":"PARADOR DEVELOPERS AMRITSAR PRIVATE LIMITED (Other than Individual)","address":"Village Mannawala and Bishambarpur., GT Road Amritsar","pin_code":"143109","website":"www.experion.co/residential-experion-virsa","registration_date":"27-Sep-2024","valid_upto":"13-Dec-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR1080: Vintage Arch 1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR1080',
      'Vintage Arch 1',
      'vintage-arch-1',
      'active',
      'Promoter: Gulmohar Township India Private Limited (Other than Individual). Address: Aero Business Park, village Manakpur Kallar Road, Teshil SAS Nagar mohali. PIN: 140306. Valid upto: 31-Aug-2030',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gulmohar Township India Private Limited (Other than Individual)","address":"Aero Business Park, village Manakpur Kallar Road, Teshil SAS Nagar mohali","pin_code":"140306","registration_date":"27-Sep-2024","valid_upto":"31-Aug-2030"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH43-PC0281: Central Walk
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH43-PC0281',
      'Central Walk',
      'central-walk',
      'active',
      'Promoter: Rudra Infrastructures (Other than Individual). Address: Khanna Kalan , H.B No. 223, Khanna Amloh Road, Opp Sabzi Mandi, Khanna. PIN: 141401. Valid upto: 18-Aug-2029',
      '{"district":"Ludhiana","promoter":"Rudra Infrastructures (Other than Individual)","address":"Khanna Kalan , H.B No. 223, Khanna Amloh Road, Opp Sabzi Mandi, Khanna","pin_code":"141401","registration_date":"26-Sep-2024","valid_upto":"18-Aug-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR1085: ALAKNANDA TOWERS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR1085',
      'ALAKNANDA TOWERS',
      'alaknanda-towers',
      'active',
      'Promoter: Alaknanda Land and Promoters (Other than Individual). Address: HADBAST NO.43, NAGLA ROAD , VILLAGE SINGHPURA, ZIRAKPUR. PIN: 140603. Valid upto: 12-Oct-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Alaknanda Land and Promoters (Other than Individual)","address":"HADBAST NO.43, NAGLA ROAD , VILLAGE SINGHPURA, ZIRAKPUR","pin_code":"140603","registration_date":"30-Sep-2024","valid_upto":"12-Oct-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH42-PC0286: LIBRA ARCADE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH42-PC0286',
      'LIBRA ARCADE',
      'libra-arcade',
      'active',
      'Promoter: NEW FATEHGARH SAHIB SIRHIND BUS TRANSPORT PVT. LTD. (Other than Individual). Address: Village Khanna Kalan, Teshil Khanaa. PIN: 141012. Valid upto: 20-Feb-2029',
      '{"district":"Ludhiana","promoter":"NEW FATEHGARH SAHIB SIRHIND BUS TRANSPORT PVT. LTD. (Other than Individual)","address":"Village Khanna Kalan, Teshil Khanaa","pin_code":"141012","registration_date":"30-Sep-2024","valid_upto":"20-Feb-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PI0027: AHUJA INDUSTRIAL PARK
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PI0027',
      'AHUJA INDUSTRIAL PARK',
      'ahuja-industrial-park',
      'active',
      'Promoter: JASWINDER KAUR AHUJA (Individual). Address: Village Karabara, Hadbast No. 161. PIN: 141008. Valid upto: 28-Jun-2029',
      '{"district":"Ludhiana","promoter":"JASWINDER KAUR AHUJA (Individual)","address":"Village Karabara, Hadbast No. 161","pin_code":"141008","registration_date":"30-Sep-2024","valid_upto":"28-Jun-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;


  RAISE NOTICE 'Chunk 3: % inserted, % skipped', v_inserted, v_skipped;
END $$;
