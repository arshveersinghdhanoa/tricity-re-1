-- Part 9 of 10
-- Projects 1601 to 1800 of 1992
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

  -- PBRERA-SAS79-PR0740: Splande Premium
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0740',
      'Splande Premium',
      'splande-premium',
      'active',
      'Promoter: Nirmaan Builder & Promoters (Other than Individual). Address: Village Dyalpura and Nabha, MC Zirakpur. PIN: 140603. Valid upto: 31-Mar-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Nirmaan Builder & Promoters (Other than Individual)","address":"Village Dyalpura and Nabha, MC Zirakpur","pin_code":"140603","registration_date":"02-Sep-2021","valid_upto":"31-Mar-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0742: Splande Plus
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0742',
      'Splande Plus',
      'splande-plus',
      'active',
      'Promoter: Canyon Buildtech  (Other than Individual). Address: Village Dyalpura and Nabha, MC Zirakpur. PIN: 140603. Valid upto: 31-Mar-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Canyon Buildtech  (Other than Individual)","address":"Village Dyalpura and Nabha, MC Zirakpur","pin_code":"140603","registration_date":"02-Sep-2021","valid_upto":"31-Mar-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0743: Exotic Magnifiq
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0743',
      'Exotic Magnifiq',
      'exotic-magnifiq',
      'active',
      'Promoter: Exotic Builders & Developers (Other than Individual). Address: Hadbast No 54, Village Kishanpura, MC Zirakpur. PIN: 140603. Valid upto: 31-Mar-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Exotic Builders & Developers (Other than Individual)","address":"Hadbast No 54, Village Kishanpura, MC Zirakpur","pin_code":"140603","registration_date":"02-Sep-2021","valid_upto":"31-Mar-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR0689: URBANA BY AGI-II  Residential Colony Plotted Development
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR0689',
      'URBANA BY AGI-II  Residential Colony Plotted Development',
      'urbana-by-agi-ii-residential-colony-plotted-development',
      'active',
      'Promoter: AGI INFRA LIMITED (Other than Individual). Address: VILLAGE PHOLRIWAL, H.B.No.252. PIN: 144022. Valid upto: 14-Jun-2025',
      '{"district":"Jalandhar","promoter":"AGI INFRA LIMITED (Other than Individual)","address":"VILLAGE PHOLRIWAL, H.B.No.252","pin_code":"144022","website":"www.agiinfra.com","registration_date":"29-Jan-2021","valid_upto":"14-Jun-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0735: Maple Home
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0735',
      'Maple Home',
      'maple-home',
      'active',
      'Promoter: Gurmel   Singh (Individual). Address: H. B. No. 42, VillageRamgarh Bhudda, Sub Tehsil Zirakpur, District S.A.S. Nagar. PIN: 140603. Valid upto: 30-Jun-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gurmel   Singh (Individual)","address":"H. B. No. 42, VillageRamgarh Bhudda, Sub Tehsil Zirakpur, District S.A.S. Nagar","pin_code":"140603","registration_date":"27-Aug-2021","valid_upto":"30-Jun-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0730: SILVER CITY DREAMS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0730',
      'SILVER CITY DREAMS',
      'silver-city-dreams',
      'active',
      'Promoter: ARPAN DEVCON PRIVATE LIMITED (Other than Individual). Address: Mubarakpur to Derabassi Road, Ward No. 4, Sector 5, Monja-Bhankharpur and Mirpur, MC Derabassi. PIN: 140201. Valid upto: 31-Mar-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ARPAN DEVCON PRIVATE LIMITED (Other than Individual)","address":"Mubarakpur to Derabassi Road, Ward No. 4, Sector 5, Monja-Bhankharpur and Mirpur, MC Derabassi","pin_code":"140201","registration_date":"19-Aug-2021","valid_upto":"31-Mar-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0157: Unicity Business Park
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0157',
      'Unicity Business Park',
      'unicity-business-park',
      'active',
      'Promoter: Unicity Projects (Other than Individual). Address: Uncity Business Park Dhakauli Zirakpur. PIN: 140603. Valid upto: 18-Aug-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Unicity Projects (Other than Individual)","address":"Uncity Business Park Dhakauli Zirakpur","pin_code":"140603","registration_date":"19-Aug-2021","valid_upto":"18-Aug-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0736: Nature Greens
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0736',
      'Nature Greens',
      'nature-greens',
      'active',
      'Promoter: East Avenue Infracon Pvt. Ltd. (Other than Individual). Address: Rakba Khanpur, Tehsil Kharar, Had bast No 183, MC Kharar. PIN: 140301. Valid upto: 14-Apr-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"East Avenue Infracon Pvt. Ltd. (Other than Individual)","address":"Rakba Khanpur, Tehsil Kharar, Had bast No 183, MC Kharar","pin_code":"140301","registration_date":"19-Aug-2021","valid_upto":"14-Apr-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-MKT58-PR0732: Green City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-MKT58-PR0732',
      'Green City',
      'green-city-dup3',
      'active',
      'Promoter: Bhagwati Cotton Company (Other than Individual). Address: Green CIty, Jalalabad Road Shri Muktsar Sahib. PIN: 152026. Valid upto: 31-Dec-2025',
      '{"district":"Muktsar","promoter":"Bhagwati Cotton Company (Other than Individual)","address":"Green CIty, Jalalabad Road Shri Muktsar Sahib","pin_code":"152026","registration_date":"19-Aug-2021","valid_upto":"31-Dec-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0731: Sukhmani Enclave Previuosly Known As Sky Rock City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0731',
      'Sukhmani Enclave Previuosly Known As Sky Rock City',
      'sukhmani-enclave-previuosly-known-as-sky-rock-city',
      'active',
      'Promoter: Joga   Singh (Individual). Address: Sector 127, Vill. Chajju Majra, Nigger Road, Tehsil Kharar. PIN: 140307. Valid upto: 08-Jan-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Joga   Singh (Individual)","address":"Sector 127, Vill. Chajju Majra, Nigger Road, Tehsil Kharar","pin_code":"140307","registration_date":"19-Aug-2021","valid_upto":"08-Jan-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0156: El Comercia
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0156',
      'El Comercia',
      'el-comercia',
      'active',
      'Promoter: Allwin Infrastructure Ltd. (Other than Individual). Address: Vill. Singhpura, MC Zirakpur, SAS Nagar. PIN: 140603. Valid upto: 22-Jan-2029',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Allwin Infrastructure Ltd. (Other than Individual)","address":"Vill. Singhpura, MC Zirakpur, SAS Nagar","pin_code":"140603","website":"www.allwininfra.com","registration_date":"19-Aug-2021","valid_upto":"22-Jan-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-GSP27-PR0737: Guru Teg Bahadar Nagar
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-GSP27-PR0737',
      'Guru Teg Bahadar Nagar',
      'guru-teg-bahadar-nagar',
      'active',
      'Promoter: SRI NANGALI ASSOCIATES (Other than Individual). Address: Village Nabipur & Babri, Tehsil & District Gurdaspur. PIN: 143521. Valid upto: 30-Mar-2026',
      '{"district":"Gurdaspur","promoter":"SRI NANGALI ASSOCIATES (Other than Individual)","address":"Village Nabipur & Babri, Tehsil & District Gurdaspur","pin_code":"143521","registration_date":"19-Aug-2021","valid_upto":"30-Mar-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI10-PR0733: Royal Green City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI10-PR0733',
      'Royal Green City',
      'royal-green-city',
      'active',
      'Promoter: Royal Green City (Other than Individual). Address: Bathinda Barnala Road, Rampura Phul. PIN: 151103. Valid upto: 31-Dec-2023',
      '{"district":"Bathinda","promoter":"Royal Green City (Other than Individual)","address":"Bathinda Barnala Road, Rampura Phul","pin_code":"151103","registration_date":"19-Aug-2021","valid_upto":"31-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0734: SS COLONY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0734',
      'SS COLONY',
      'ss-colony',
      'active',
      'Promoter: Metro Developers (Other than Individual). Address: Village Nabha, Zirakpur, Tehsil Dera Bassi, Mohali, SAS Nagar. PIN: 140603. Valid upto: 19-Jul-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Metro Developers (Other than Individual)","address":"Village Nabha, Zirakpur, Tehsil Dera Bassi, Mohali, SAS Nagar","pin_code":"140603","registration_date":"19-Aug-2021","valid_upto":"19-Jul-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0540: HAZEL WOOD
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0540',
      'HAZEL WOOD',
      'hazel-wood',
      'active',
      'Promoter: SHIVA DEVELOPERS (Other than Individual). Address: High Ground Road, Village Nabha, M.C. Zirakpur. PIN: 140603. Valid upto: 30-Dec-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SHIVA DEVELOPERS (Other than Individual)","address":"High Ground Road, Village Nabha, M.C. Zirakpur","pin_code":"140603","registration_date":"31-Oct-2019","valid_upto":"30-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0706: Aura Homes 1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0706',
      'Aura Homes 1',
      'aura-homes-1',
      'active',
      'Promoter: Aura Builders and Developers (Other than Individual). Address: Village Nabha, MC Zirakpur. PIN: 147201. Valid upto: 31-Dec-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Aura Builders and Developers (Other than Individual)","address":"Village Nabha, MC Zirakpur","pin_code":"147201","registration_date":"10-May-2021","valid_upto":"31-Dec-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0005: Josan Heights
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0005',
      'Josan Heights',
      'josan-heights',
      'active',
      'Promoter: J S J Builders Pvt Ltd (Other than Individual). Address: SHOP NO 1-3 JOSAN HEIGHTS, SECTOR 126 VILLAGE CHAJJU MAJRA. PIN: 140307. Valid upto: 25-Jul-2032',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"J S J Builders Pvt Ltd (Other than Individual)","address":"SHOP NO 1-3 JOSAN HEIGHTS, SECTOR 126 VILLAGE CHAJJU MAJRA","pin_code":"140307","website":"www.jsjbuilders.in","registration_date":"01-Sep-2017","valid_upto":"25-Jul-2032"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0008: Nature Huts-3
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0008',
      'Nature Huts-3',
      'nature-huts-3',
      'active',
      'Promoter: East Avenue Infracon Pvt. Ltd. (Other than Individual). Address: Village Khanpur,, NH-21, Kharar Ropar Road,. PIN: 140301. Valid upto: 31-Dec-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"East Avenue Infracon Pvt. Ltd. (Other than Individual)","address":"Village Khanpur,, NH-21, Kharar Ropar Road,","pin_code":"140301","website":"www.visionindiagroup.com","registration_date":"01-Sep-2017","valid_upto":"31-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0009: Commercial-6 of Mega Residential project at Mullanpur
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0009',
      'Commercial-6 of Mega Residential project at Mullanpur',
      'commercial-6-of-mega-residential-project-at-mullanpur',
      'active',
      'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 31-Jul-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"20-Sep-2017","valid_upto":"31-Jul-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI04-PR0724: Bhagwati Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI04-PR0724',
      'Bhagwati Enclave',
      'bhagwati-enclave',
      'active',
      'Promoter: Ashok   Kumar (Individual). Address: Multaina Road, Tehsil & District Bathinda. PIN: 151201. Valid upto: 07-Oct-2023',
      '{"district":"Bathinda","promoter":"Ashok   Kumar (Individual)","address":"Multaina Road, Tehsil & District Bathinda","pin_code":"151201","registration_date":"28-Jul-2021","valid_upto":"07-Oct-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0725: Aeroview Smart Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0725',
      'Aeroview Smart Homes',
      'aeroview-smart-homes',
      'active',
      'Promoter: GK AEROVIEW APARTMENTS (Other than Individual). Address: Vill. Dyalpura, H.B. No. 289, Tehsil Zirakpur. PIN: 140603. Valid upto: 05-Jun-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GK AEROVIEW APARTMENTS (Other than Individual)","address":"Vill. Dyalpura, H.B. No. 289, Tehsil Zirakpur","pin_code":"140603","registration_date":"26-Jul-2021","valid_upto":"05-Jun-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PC0152: Sun View Plaza
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PC0152',
      'Sun View Plaza',
      'sun-view-plaza',
      'active',
      'Promoter: Home Life  Buildcon Private Limited (Other than Individual). Address: Village Ayali Kalan, H.B. No. 155, Tehsil and District Ludhiana. PIN: 141012. Valid upto: 31-Mar-2025',
      '{"district":"Ludhiana","promoter":"Home Life  Buildcon Private Limited (Other than Individual)","address":"Village Ayali Kalan, H.B. No. 155, Tehsil and District Ludhiana","pin_code":"141012","registration_date":"26-Jul-2021","valid_upto":"31-Mar-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0726: Balaji Homes 2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0726',
      'Balaji Homes 2',
      'balaji-homes-2',
      'active',
      'Promoter: Balaji Developers (Other than Individual). Address: VILLAGE CHANALON, HADBDAST NO. 110, KURALI, SAS NAGAR. PIN: 140103. Valid upto: 31-Dec-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Balaji Developers (Other than Individual)","address":"VILLAGE CHANALON, HADBDAST NO. 110, KURALI, SAS NAGAR","pin_code":"140103","registration_date":"26-Jul-2021","valid_upto":"31-Dec-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0727: RIVERDALE AEROVISTA EXTENSION - 2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0727',
      'RIVERDALE AEROVISTA EXTENSION - 2',
      'riverdale-aerovista-extension-2',
      'active',
      'Promoter: MANGLAM INFRA (Other than Individual). Address: HB NO. 289, VILLAGE DYALPURA, MC ZIRAKPUR, PUNJAB. PIN: 140603. Valid upto: 30-May-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MANGLAM INFRA (Other than Individual)","address":"HB NO. 289, VILLAGE DYALPURA, MC ZIRAKPUR, PUNJAB","pin_code":"140603","registration_date":"26-Jul-2021","valid_upto":"30-May-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0153: SILVER CITY THEMES (COMMERCIAL)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0153',
      'SILVER CITY THEMES (COMMERCIAL)',
      'silver-city-themes-commercial',
      'active',
      'Promoter: Silver City Housing and Infrastructure Limited (Other than Individual). Address: H.B. NO. 236 VILLAGE BHANKHARPUR, SUB TEHSIL ZIRAKPUR, DISTRICT SAS NAGAR. PIN: 140201. Valid upto: 30-Jun-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Silver City Housing and Infrastructure Limited (Other than Individual)","address":"H.B. NO. 236 VILLAGE BHANKHARPUR, SUB TEHSIL ZIRAKPUR, DISTRICT SAS NAGAR","pin_code":"140201","registration_date":"26-Jul-2021","valid_upto":"30-Jun-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR0723: South Block Jalandhar
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR0723',
      'South Block Jalandhar',
      'south-block-jalandhar',
      'active',
      'Promoter: Harmol   Singh (Individual). Address: Village Usmanpur, Pholriwal Road, Tehsil and District Jallandhar. PIN: 144026. Valid upto: 30-Nov-2024',
      '{"district":"Jalandhar","promoter":"Harmol   Singh (Individual)","address":"Village Usmanpur, Pholriwal Road, Tehsil and District Jallandhar","pin_code":"144026","registration_date":"08-Jul-2021","valid_upto":"30-Nov-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0722: AERO GREENS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0722',
      'AERO GREENS',
      'aero-greens',
      'active',
      'Promoter: MANNAT MAPLE REALTORS AND BUILDERS (Other than Individual). Address: HB No. 289, VILLAGE DYALPURA, SUB TEHSIL, ZIRAKPUR. PIN: 140603. Valid upto: 24-Jan-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MANNAT MAPLE REALTORS AND BUILDERS (Other than Individual)","address":"HB No. 289, VILLAGE DYALPURA, SUB TEHSIL, ZIRAKPUR","pin_code":"140603","registration_date":"08-Jul-2021","valid_upto":"24-Jan-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0721: Myst Aero Town
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0721',
      'Myst Aero Town',
      'myst-aero-town',
      'active',
      'Promoter: INVESTOR STUDIO (Other than Individual). Address: H. B. No. 289 Village Diyalpura,Sub Tehsil Zirakpur, District S.A.S. Nagar. PIN: 140603. Valid upto: 31-Dec-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"INVESTOR STUDIO (Other than Individual)","address":"H. B. No. 289 Village Diyalpura,Sub Tehsil Zirakpur, District S.A.S. Nagar","pin_code":"140603","registration_date":"08-Jul-2021","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PR0449: HAMPTON HOMES
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PR0449',
      'HAMPTON HOMES',
      'hampton-homes',
      'active',
      'Promoter: Finton Homes (Other than Individual). Address: Hampton Court Business  Park, NH-95, Chandigarh Road,. PIN: 141123. Valid upto: 31-Mar-2023',
      '{"district":"Ludhiana","promoter":"Finton Homes (Other than Individual)","address":"Hampton Court Business  Park, NH-95, Chandigarh Road,","pin_code":"141123","website":"www.hhomes.in","registration_date":"18-Apr-2019","valid_upto":"31-Mar-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0720: GOLF LINK
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0720',
      'GOLF LINK',
      'golf-link',
      'active',
      'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: GOLF LINK (RESIDENTIAL PROJECT), SECTOR 118 TDI CITY-I. PIN: 140301. Valid upto: 31-Mar-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"GOLF LINK (RESIDENTIAL PROJECT), SECTOR 118 TDI CITY-I","pin_code":"140301","registration_date":"15-Jun-2021","valid_upto":"31-Mar-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0150: SOUTH EXTENSION-II
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0150',
      'SOUTH EXTENSION-II',
      'south-extension-ii',
      'active',
      'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: SOUTH EXTESNION-II SECTOR 117, SCO 144-145 SECTOR 117 200 FEET  INTERNATIONAL AIRPORT ROAD TDI CITY. PIN: 140301. Valid upto: 31-Mar-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"SOUTH EXTESNION-II SECTOR 117, SCO 144-145 SECTOR 117 200 FEET  INTERNATIONAL AIRPORT ROAD TDI CITY","pin_code":"140301","registration_date":"15-Jun-2021","valid_upto":"31-Mar-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0716: CHITRAKOOT
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0716',
      'CHITRAKOOT',
      'chitrakoot',
      'active',
      'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: CHIRTAKOOT RESIDENTIAL PLOTS, SECTOR 92 TDI CITY I SAS NAGAR. PIN: 140301. Valid upto: 31-Mar-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"CHIRTAKOOT RESIDENTIAL PLOTS, SECTOR 92 TDI CITY I SAS NAGAR","pin_code":"140301","registration_date":"11-Jun-2021","valid_upto":"31-Mar-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0719: Metro Heights
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0719',
      'Metro Heights',
      'metro-heights',
      'active',
      'Promoter: Metro Developers (Other than Individual). Address: V.I.P Road Bishanpura, Near Jai Puria, Zirakpur, S.A.S Nagar, Mohali.. PIN: 140603. Valid upto: 31-Mar-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Metro Developers (Other than Individual)","address":"V.I.P Road Bishanpura, Near Jai Puria, Zirakpur, S.A.S Nagar, Mohali.","pin_code":"140603","registration_date":"11-Jun-2021","valid_upto":"31-Mar-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0717: CONNAUGHT PLOTS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0717',
      'CONNAUGHT PLOTS',
      'connaught-plots',
      'active',
      'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: CONNAUGHT PLOTS, SECTOR 74A  TDI CITY I SAS NAGAR. PIN: 140301. Valid upto: 31-Mar-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"CONNAUGHT PLOTS, SECTOR 74A  TDI CITY I SAS NAGAR","pin_code":"140301","registration_date":"11-Jun-2021","valid_upto":"31-Mar-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0718: GULNAAR MEADOWS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0718',
      'GULNAAR MEADOWS',
      'gulnaar-meadows',
      'active',
      'Promoter: SAV Infosystems L.L.P. (Other than Individual). Address: Village Baltana , Hadbast No-47 under Mc Zirakpur. PIN: 140604. Valid upto: 31-Mar-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SAV Infosystems L.L.P. (Other than Individual)","address":"Village Baltana , Hadbast No-47 under Mc Zirakpur","pin_code":"140604","registration_date":"11-Jun-2021","valid_upto":"31-Mar-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0708: ACME TOWERS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0708',
      'ACME TOWERS',
      'acme-towers',
      'active',
      'Promoter: SU Ventures (Other than Individual). Address: ACME TOWER,, village  Khanpur. PIN: 140301. Valid upto: 25-Jan-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SU Ventures (Other than Individual)","address":"ACME TOWER,, village  Khanpur","pin_code":"140301","registration_date":"25-May-2021","valid_upto":"25-Jan-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0712: High Tech City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0712',
      'High Tech City',
      'high-tech-city',
      'active',
      'Promoter: RAM NATH AGGARWAL BUILDERS PVT LTD (Other than Individual). Address: High Tech City, Village Chhat, Zirakpur. PIN: 140603. Valid upto: 31-Mar-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"RAM NATH AGGARWAL BUILDERS PVT LTD (Other than Individual)","address":"High Tech City, Village Chhat, Zirakpur","pin_code":"140603","registration_date":"03-Jun-2021","valid_upto":"31-Mar-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0709: Shivjot Realty
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0709',
      'Shivjot Realty',
      'shivjot-realty',
      'active',
      'Promoter: Shivjot Realty (Other than Individual). Address: Village Mubarikpur. PIN: 140603. Valid upto: 21-Jan-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Shivjot Realty (Other than Individual)","address":"Village Mubarikpur","pin_code":"140603","registration_date":"03-Jun-2021","valid_upto":"21-Jan-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL65-PI0013: SIEL INDUSTRIAL ESTATE EXTENSION -1 , RAJPURA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL65-PI0013',
      'SIEL INDUSTRIAL ESTATE EXTENSION -1 , RAJPURA',
      'siel-industrial-estate-extension-1-rajpura',
      'active',
      'Promoter: SIEL INDUSTRIAL ESTATE LTD (Other than Individual). Address: Rajpura. PIN: 140401. Valid upto: 12-Sep-2023',
      '{"district":"Patiala","promoter":"SIEL INDUSTRIAL ESTATE LTD (Other than Individual)","address":"Rajpura","pin_code":"140401","registration_date":"02-Jun-2021","valid_upto":"12-Sep-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-KPT40-PR0714: SOUTH AVENUE (15.68)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-KPT40-PR0714',
      'SOUTH AVENUE (15.68)',
      'south-avenue-1568',
      'active',
      'Promoter: Improvement Trust Phagwara  (Other than Individual). Address: Khothran Road, phagwara. PIN: 144401. Valid upto: 24-Oct-2023',
      '{"district":"Kapurthala","promoter":"Improvement Trust Phagwara  (Other than Individual)","address":"Khothran Road, phagwara","pin_code":"144401","registration_date":"02-Jun-2021","valid_upto":"24-Oct-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0710: Ludhiana Heights (Block A1 and A6)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0710',
      'Ludhiana Heights (Block A1 and A6)',
      'ludhiana-heights-block-a1-and-a6',
      'active',
      'Promoter: Nevada Housing LLP (Other than Individual). Address: Village Balloke, Ludhiana. PIN: 141001. Valid upto: 30-Jun-2026',
      '{"district":"Ludhiana","promoter":"Nevada Housing LLP (Other than Individual)","address":"Village Balloke, Ludhiana","pin_code":"141001","registration_date":"02-Jun-2021","valid_upto":"30-Jun-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0147: DownTown Mohali
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0147',
      'DownTown Mohali',
      'downtown-mohali',
      'active',
      'Promoter: ICON GROUP  (Other than Individual). Address: Sector 62, SAS Nagar (Mohali), Sector 34 C, Chandigarh.. PIN: 160062. Valid upto: 31-Dec-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ICON GROUP  (Other than Individual)","address":"Sector 62, SAS Nagar (Mohali), Sector 34 C, Chandigarh.","pin_code":"160062","registration_date":"19-May-2021","valid_upto":"31-Dec-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0707: PARK AVENUE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0707',
      'PARK AVENUE',
      'park-avenue-dup5',
      'active',
      'Promoter: DAMINI RESORTS & BUILDERS PVT. LTD. (Other than Individual). Address: VILLAGE THAKKARWAL. PIN: 141013. Valid upto: 31-Mar-2023',
      '{"district":"Ludhiana","promoter":"DAMINI RESORTS & BUILDERS PVT. LTD. (Other than Individual)","address":"VILLAGE THAKKARWAL","pin_code":"141013","registration_date":"13-May-2021","valid_upto":"31-Mar-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-KPT39-PR0705: Karan Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-KPT39-PR0705',
      'Karan Enclave',
      'karan-enclave',
      'active',
      'Promoter: Grover Builders (Other than Individual). Address: Village Noorpur Dona (H.B.No.144). PIN: 144601. Valid upto: 20-Oct-2021',
      '{"district":"Kapurthala","promoter":"Grover Builders (Other than Individual)","address":"Village Noorpur Dona (H.B.No.144)","pin_code":"144601","registration_date":"10-May-2021","valid_upto":"20-Oct-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-KPT40-PC0146: Green Valley Plaza
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-KPT40-PC0146',
      'Green Valley Plaza',
      'green-valley-plaza',
      'active',
      'Promoter: Guru Nanak Builders (Other than Individual). Address: Village Maheru, H.B. No. 84, Tehsil Phagwara , Kapurthala, Punjab, Village Maheru, H.B. No. 84, Tehsil Phagwara , Kapurthala, Punjab. PIN: 144401. Valid upto: 31-Mar-2026',
      '{"district":"Kapurthala","promoter":"Guru Nanak Builders (Other than Individual)","address":"Village Maheru, H.B. No. 84, Tehsil Phagwara , Kapurthala, Punjab, Village Maheru, H.B. No. 84, Tehsil Phagwara , Kapurthala, Punjab","pin_code":"144401","registration_date":"10-May-2021","valid_upto":"31-Mar-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0704: Aeren Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0704',
      'Aeren Homes',
      'aeren-homes',
      'active',
      'Promoter: Pinnacle builders & engineers private limited (Other than Individual). Address: Hadbast No.53, Village Peer Muchalla. PIN: 134117. Valid upto: 15-Feb-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Pinnacle builders & engineers private limited (Other than Individual)","address":"Hadbast No.53, Village Peer Muchalla","pin_code":"134117","registration_date":"10-May-2021","valid_upto":"15-Feb-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PM0161: Shri Guru Arjan Dev Nagar
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PM0161',
      'Shri Guru Arjan Dev Nagar',
      'shri-guru-arjan-dev-nagar',
      'active',
      'Promoter: Improvement Trust Kartarpur (Other than Individual). Address: Kartarpur, Kishangarh Road, Kartarpur, Kartarpur. PIN: 144301. Valid upto: 31-Mar-2023',
      '{"district":"Jalandhar","promoter":"Improvement Trust Kartarpur (Other than Individual)","address":"Kartarpur, Kishangarh Road, Kartarpur, Kartarpur","pin_code":"144301","registration_date":"10-May-2021","valid_upto":"31-Mar-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0451: Beverly Golf Avenue  Phase-2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0451',
      'Beverly Golf Avenue  Phase-2',
      'beverly-golf-avenue-phase-2',
      'active',
      'Promoter: MB Infrabuild Private Limited (Other than Individual). Address: Beverly Golf Avenue, Golf Range, SAS Nagar, Sector-65. PIN: 160062. Valid upto: 31-Jul-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MB Infrabuild Private Limited (Other than Individual)","address":"Beverly Golf Avenue, Golf Range, SAS Nagar, Sector-65","pin_code":"160062","website":"www.beverlygolfavenue.com","registration_date":"23-Apr-2019","valid_upto":"31-Jul-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PM0140: ROYALE ESTATE AFFORDABLE HOUSIING
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PM0140',
      'ROYALE ESTATE AFFORDABLE HOUSIING',
      'royale-estate-affordable-housiing',
      'active',
      'Promoter: ROYALE ESTATE AFFORDABLE HOUSING (Other than Individual). Address: ZIRAKPUR-PATIALA HIGHWAY,ADJOINING CHANDIGARH ROYALE CITY, VILLAGE KARALA. PIN: 140603. Valid upto: 21-Mar-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ROYALE ESTATE AFFORDABLE HOUSING (Other than Individual)","address":"ZIRAKPUR-PATIALA HIGHWAY,ADJOINING CHANDIGARH ROYALE CITY, VILLAGE KARALA","pin_code":"140603","registration_date":"18-Mar-2019","valid_upto":"21-Mar-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL34-PR0702: JALANDHAR KUNJ GROUP HOUSING
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL34-PR0702',
      'JALANDHAR KUNJ GROUP HOUSING',
      'jalandhar-kunj-group-housing',
      'active',
      'Promoter: PPR INFRASTRUCTURE LIMITED (Other than Individual). Address: VILLAGE WARIANA. PIN: 144021. Valid upto: 31-Oct-2023',
      '{"district":"Jalandhar","promoter":"PPR INFRASTRUCTURE LIMITED (Other than Individual)","address":"VILLAGE WARIANA","pin_code":"144021","registration_date":"16-Apr-2021","valid_upto":"31-Oct-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH48-PR0699: Garden City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH48-PR0699',
      'Garden City',
      'garden-city-dup1',
      'active',
      'Promoter: DYNAMIC INFRADEVELOPERS PRIVATE LIMITED (Other than Individual). Address: VILLAGE DEHROR, DEHLON ROAD. PIN: 141418. Valid upto: 23-Mar-2022',
      '{"district":"Ludhiana","promoter":"DYNAMIC INFRADEVELOPERS PRIVATE LIMITED (Other than Individual)","address":"VILLAGE DEHROR, DEHLON ROAD","pin_code":"141418","registration_date":"24-Mar-2021","valid_upto":"23-Mar-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PM0160: Erealto Tech City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PM0160',
      'Erealto Tech City',
      'erealto-tech-city',
      'active',
      'Promoter: JMR city (Other than Individual). Address: Erealto Tech City, Haibatpur Road, Mubarkpur Derabassi(H.B no 357), SAS Nagar Mohali, Punjab. PIN: 140507. Valid upto: 31-Dec-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"JMR city (Other than Individual)","address":"Erealto Tech City, Haibatpur Road, Mubarkpur Derabassi(H.B no 357), SAS Nagar Mohali, Punjab","pin_code":"140507","registration_date":"23-Mar-2021","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0698: The Paradise Phase -2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0698',
      'The Paradise Phase -2',
      'the-paradise-phase-2',
      'active',
      'Promoter: AVENUE BUILDERS AND PROMOTORS (Other than Individual). Address: Block -F2, wave Estate, Sector -85. PIN: 140308. Valid upto: 31-Oct-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AVENUE BUILDERS AND PROMOTORS (Other than Individual)","address":"Block -F2, wave Estate, Sector -85","pin_code":"140308","website":"www.theparadiseindia.com/","registration_date":"23-Mar-2021","valid_upto":"31-Oct-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZR22-PR0700: PRIYA ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZR22-PR0700',
      'PRIYA ENCLAVE',
      'priya-enclave',
      'active',
      'Promoter: Shree Gordhan Overseas Pvt Ltd (Other than Individual). Address: Abohar. PIN: 140001. Valid upto: 31-Dec-2023',
      '{"district":"Firozpur","promoter":"Shree Gordhan Overseas Pvt Ltd (Other than Individual)","address":"Abohar","pin_code":"140001","registration_date":"23-Mar-2021","valid_upto":"31-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0144: Hare Krishna Buildtech
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0144',
      'Hare Krishna Buildtech',
      'hare-krishna-buildtech',
      'active',
      'Promoter: Hare Krishna Buildtech (Other than Individual). Address: Village Ramgarh Bhudda. PIN: 141603. Valid upto: 31-Mar-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Hare Krishna Buildtech (Other than Individual)","address":"Village Ramgarh Bhudda","pin_code":"141603","registration_date":"10-Mar-2021","valid_upto":"31-Mar-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0583: HARMONY GREENS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0583',
      'HARMONY GREENS',
      'harmony-greens-dup1',
      'active',
      'Promoter: MOTIA PROPERTY CREATORS (Other than Individual). Address: VILL. SANOULI, MC ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MOTIA PROPERTY CREATORS (Other than Individual)","address":"VILL. SANOULI, MC ZIRAKPUR","pin_code":"140603","registration_date":"07-Feb-2020","valid_upto":"31-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0649: MAXXUS ELANZA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0649',
      'MAXXUS ELANZA',
      'maxxus-elanza',
      'active',
      'Promoter: Maxxus Developers (Other than Individual). Address: Village- Singhpura and Nagla, Tehsil- Zirakpur. PIN: 140603. Valid upto: 31-Dec-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Maxxus Developers (Other than Individual)","address":"Village- Singhpura and Nagla, Tehsil- Zirakpur","pin_code":"140603","registration_date":"06-Oct-2020","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PM0159: South City Jalandhar
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PM0159',
      'South City Jalandhar',
      'south-city-jalandhar',
      'active',
      'Promoter: Harmol   Singh (Individual). Address: South City Jalandhar Village Usmanpur  P.O: Lambra S.O. PIN: 144026. Valid upto: 31-Dec-2022',
      '{"district":"Jalandhar","promoter":"Harmol   Singh (Individual)","address":"South City Jalandhar Village Usmanpur  P.O: Lambra S.O","pin_code":"144026","registration_date":"03-Mar-2021","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0143: Maxxus Plaza
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0143',
      'Maxxus Plaza',
      'maxxus-plaza',
      'active',
      'Promoter: Space Builders & Promoters (Other than Individual). Address: Village Singhpura, Zirakpur, SAS N  agar, Mohali, Punjab. PIN: 140603. Valid upto: 20-Nov-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Space Builders & Promoters (Other than Individual)","address":"Village Singhpura, Zirakpur, SAS N  agar, Mohali, Punjab","pin_code":"140603","registration_date":"03-Mar-2021","valid_upto":"20-Nov-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0696: Jubilee Golfvista
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0696',
      'Jubilee Golfvista',
      'jubilee-golfvista',
      'active',
      'Promoter: Jubilee Infra Planner LLP (Other than Individual). Address: Jubilee Golfvista, GH-10, Sector 91(JLPL),. PIN: 160071. Valid upto: 31-Dec-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jubilee Infra Planner LLP (Other than Individual)","address":"Jubilee Golfvista, GH-10, Sector 91(JLPL),","pin_code":"160071","website":"www.jubileegroup.in","registration_date":"03-Mar-2021","valid_upto":"31-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0572: Arcadia- Park East
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0572',
      'Arcadia- Park East',
      'arcadia-park-east',
      'active',
      'Promoter: Primary Estates and Developers  (Other than Individual). Address: Ludhiana Kharar Road Kharar. PIN: 140301. Valid upto: 20-Dec-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Primary Estates and Developers  (Other than Individual)","address":"Ludhiana Kharar Road Kharar","pin_code":"140301","registration_date":"16-Jan-2020","valid_upto":"20-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0695: SAI ENCLAVE -2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0695',
      'SAI ENCLAVE -2',
      'sai-enclave-2',
      'active',
      'Promoter: CHANDIGARH INFRASTRUCTURE AND DEVELOPERS (Other than Individual). Address: SAI ENCLAVE-2, VILLAGE BHANKARPUR. PIN: 140507. Valid upto: 31-Mar-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CHANDIGARH INFRASTRUCTURE AND DEVELOPERS (Other than Individual)","address":"SAI ENCLAVE-2, VILLAGE BHANKARPUR","pin_code":"140507","registration_date":"15-Feb-2021","valid_upto":"31-Mar-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BNL06-PR0694: Maharaja Aggersain Enclave Scheme
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BNL06-PR0694',
      'Maharaja Aggersain Enclave Scheme',
      'maharaja-aggersain-enclave-scheme',
      'active',
      'Promoter: Barnala Improvement Trust  (Other than Individual). Address: Near ITI Chowk, Barnala. PIN: 148101. Valid upto: 31-Mar-2023',
      '{"district":"Barnala","promoter":"Barnala Improvement Trust  (Other than Individual)","address":"Near ITI Chowk, Barnala","pin_code":"148101","registration_date":"15-Feb-2021","valid_upto":"31-Mar-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0142: ASTER PLAZA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0142',
      'ASTER PLAZA',
      'aster-plaza',
      'active',
      'Promoter: SANCHIT   SINGLA  (Individual). Address: Vill- RAMGARH BHUDA, HB No-42,, TEHSIL ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SANCHIT   SINGLA  (Individual)","address":"Vill- RAMGARH BHUDA, HB No-42,, TEHSIL ZIRAKPUR","pin_code":"140603","registration_date":"15-Feb-2021","valid_upto":"31-Dec-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0693: Smart City Banur
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0693',
      'Smart City Banur',
      'smart-city-banur',
      'active',
      'Promoter: GBP Real Assets  (Other than Individual). Address: Smart City Banur, Ward No. 1, H.B No. 280, MC - Banur  Banure to Landran Road. PIN: 140601. Valid upto: 31-Mar-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GBP Real Assets  (Other than Individual)","address":"Smart City Banur, Ward No. 1, H.B No. 280, MC - Banur  Banure to Landran Road","pin_code":"140601","registration_date":"09-Feb-2021","valid_upto":"31-Mar-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0105: Sushma Pristine
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0105',
      'Sushma Pristine',
      'sushma-pristine',
      'active',
      'Promoter: Dreamcity Realtors Private Limited (Other than Individual). Address: Village Chhat, PR - 7 Road, Zirakpur, Near Aerocity Light Point,Sahibzada Ajit Singh Nagar (Mohali). PIN: 140607. Valid upto: 07-Jun-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Dreamcity Realtors Private Limited (Other than Individual)","address":"Village Chhat, PR - 7 Road, Zirakpur, Near Aerocity Light Point,Sahibzada Ajit Singh Nagar (Mohali)","pin_code":"140607","website":"www.sushma.co.in","registration_date":"27-Nov-2019","valid_upto":"07-Jun-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR77-PR0691: EKTA VIHAR II
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR77-PR0691',
      'EKTA VIHAR II',
      'ekta-vihar-ii',
      'active',
      'Promoter: EKTA CONSTRUCTIONS Co. (Other than Individual). Address: DHURI. PIN: 148024. Valid upto: 31-Dec-2025',
      '{"district":"Sangrur","promoter":"EKTA CONSTRUCTIONS Co. (Other than Individual)","address":"DHURI","pin_code":"148024","registration_date":"29-Jan-2021","valid_upto":"31-Dec-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0692: DAISY TOWERS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0692',
      'DAISY TOWERS',
      'daisy-towers',
      'active',
      'Promoter: Hanumant Builders and Developers (Other than Individual). Address: SECTOR 113, LANDRAN. PIN: 140307. Valid upto: 31-Mar-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Hanumant Builders and Developers (Other than Individual)","address":"SECTOR 113, LANDRAN","pin_code":"140307","registration_date":"29-Jan-2021","valid_upto":"31-Mar-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0690: Joy Smart Homes Phase II
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0690',
      'Joy Smart Homes Phase II',
      'joy-smart-homes-phase-ii',
      'active',
      'Promoter: JOY HOMES (Other than Individual). Address: Plots in Block A Wave Estate Sector 85 Mohali. PIN: 140308. Valid upto: 31-Mar-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"JOY HOMES (Other than Individual)","address":"Plots in Block A Wave Estate Sector 85 Mohali","pin_code":"140308","registration_date":"29-Jan-2021","valid_upto":"31-Mar-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR77-PM0158: Urban Estate
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR77-PM0158',
      'Urban Estate',
      'urban-estate',
      'active',
      'Promoter: Patiala Urban Planning and Development Authority (Other than Individual). Address: urban estate, village mangwal and khurana, sangrur, sangrur. PIN: 148100. Valid upto: 30-Dec-2024',
      '{"district":"Sangrur","promoter":"Patiala Urban Planning and Development Authority (Other than Individual)","address":"urban estate, village mangwal and khurana, sangrur, sangrur","pin_code":"148100","website":"www.pdapatiala.in","registration_date":"22-Jan-2021","valid_upto":"30-Dec-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0141: SS ESTATES
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0141',
      'SS ESTATES',
      'ss-estates',
      'active',
      'Promoter: Sehaj Bir Singh Sidhu (Individual). Address: Village Singhpura ambala chandigarh national highway, adjoining gbp central mall zirakpur. PIN: 140103. Valid upto: 30-Dec-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sehaj Bir Singh Sidhu (Individual)","address":"Village Singhpura ambala chandigarh national highway, adjoining gbp central mall zirakpur","pin_code":"140103","registration_date":"22-Jan-2021","valid_upto":"30-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FGS17-PI0012: Integrated Pharmaceutical Park
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FGS17-PI0012',
      'Integrated Pharmaceutical Park',
      'integrated-pharmaceutical-park',
      'active',
      'Promoter: PUNJAB SMALL INDUSTRIES & EXPORT CORPORATION LTD. (Other than Individual). Address: Wazirabad. PIN: 140602. Valid upto: 31-Dec-2025',
      '{"district":"Fatehgarh Sahib","promoter":"PUNJAB SMALL INDUSTRIES & EXPORT CORPORATION LTD. (Other than Individual)","address":"Wazirabad","pin_code":"140602","registration_date":"11-Jan-2021","valid_upto":"31-Dec-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-MNS50-PR0686: JANNAT ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-MNS50-PR0686',
      'JANNAT ENCLAVE',
      'jannat-enclave',
      'active',
      'Promoter: Smart Move housing Pvt Ltd (Other than Individual). Address: Near Sirsa Barnala road. PIN: 140306. Valid upto: 31-Dec-2025',
      '{"district":"Mansa","promoter":"Smart Move housing Pvt Ltd (Other than Individual)","address":"Near Sirsa Barnala road","pin_code":"140306","registration_date":"11-Jan-2021","valid_upto":"31-Dec-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR0688: SAHARA CITY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR0688',
      'SAHARA CITY',
      'sahara-city',
      'active',
      'Promoter: LV DEVELOPERS (Other than Individual). Address: SAHARA CITY, RAMPURA PHUL. PIN: 151103. Valid upto: 31-Mar-2023',
      '{"district":"Bathinda","promoter":"LV DEVELOPERS (Other than Individual)","address":"SAHARA CITY, RAMPURA PHUL","pin_code":"151103","registration_date":"11-Jan-2021","valid_upto":"31-Mar-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0684: Omega Empire
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0684',
      'Omega Empire',
      'omega-empire',
      'active',
      'Promoter: Omega Infra Estates Private Limited (Other than Individual). Address: Village Kanpur, MC Kharar, Mohali. PIN: 140301. Valid upto: 31-Mar-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omega Infra Estates Private Limited (Other than Individual)","address":"Village Kanpur, MC Kharar, Mohali","pin_code":"140301","registration_date":"11-Jan-2021","valid_upto":"31-Mar-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0685: The Medallion (Group Housing Site No. 4 & 5  IT City)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0685',
      'The Medallion (Group Housing Site No. 4 & 5  IT City)',
      'the-medallion-group-housing-site-no-4-5-it-city',
      'active',
      'Promoter: TURNSTONE REALTY LLP (Other than Individual). Address: SITE NO 4 & 5 IT CITY SECTOR 82, ALPHA SAS NAGAR. PIN: 160055. Valid upto: 30-Oct-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TURNSTONE REALTY LLP (Other than Individual)","address":"SITE NO 4 & 5 IT CITY SECTOR 82, ALPHA SAS NAGAR","pin_code":"160055","registration_date":"11-Jan-2021","valid_upto":"30-Oct-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0656: CANVAS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0656',
      'CANVAS',
      'canvas',
      'active',
      'Promoter: Canvas Promoters & Developers (Other than Individual). Address: Wave Estate, Sector 85 Mohali. PIN: 140308. Valid upto: 31-Mar-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Canvas Promoters & Developers (Other than Individual)","address":"Wave Estate, Sector 85 Mohali","pin_code":"140308","registration_date":"20-Oct-2020","valid_upto":"31-Mar-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PR0682: ANANTA ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PR0682',
      'ANANTA ENCLAVE',
      'ananta-enclave-dup1',
      'active',
      'Promoter: AYALI DEVELOPERS AND COLONISERS PRIVATE LIMITED (Other than Individual). Address: VILLAGE BIRMI, MULLANPUR DAKHA. PIN: 141102. Valid upto: 31-Oct-2024',
      '{"district":"Ludhiana","promoter":"AYALI DEVELOPERS AND COLONISERS PRIVATE LIMITED (Other than Individual)","address":"VILLAGE BIRMI, MULLANPUR DAKHA","pin_code":"141102","registration_date":"04-Jan-2021","valid_upto":"31-Oct-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0680: Sushma Belleza
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0680',
      'Sushma Belleza',
      'sushma-belleza',
      'active',
      'Promoter: Suksha Developers Private Limited (Other than Individual). Address: Village Nagla, Near Manav Mangal School. PIN: 140603. Valid upto: 31-Dec-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Suksha Developers Private Limited (Other than Individual)","address":"Village Nagla, Near Manav Mangal School","pin_code":"140603","website":"www.sushma.co.in","registration_date":"04-Jan-2021","valid_upto":"31-Dec-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0140: Sushma Empiria
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0140',
      'Sushma Empiria',
      'sushma-empiria',
      'active',
      'Promoter: Suksha Developers Private Limited (Other than Individual). Address: Village Nagla, Near Manav Mangal School. PIN: 140603. Valid upto: 31-Dec-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Suksha Developers Private Limited (Other than Individual)","address":"Village Nagla, Near Manav Mangal School","pin_code":"140603","website":"www.sushma.co.in","registration_date":"04-Jan-2021","valid_upto":"31-Dec-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0679: Aero Homes Gazipur
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0679',
      'Aero Homes Gazipur',
      'aero-homes-gazipur',
      'active',
      'Promoter: N.H. Matcon (Other than Individual). Address: Gazipur Road, Zirakpur. PIN: 140103. Valid upto: 31-Mar-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"N.H. Matcon (Other than Individual)","address":"Gazipur Road, Zirakpur","pin_code":"140103","registration_date":"28-Dec-2020","valid_upto":"31-Mar-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0677: SK CITY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0677',
      'SK CITY',
      'sk-city',
      'active',
      'Promoter: SATNAM KAUR CHADHA (Individual). Address: VILLAGE KHANPUR, H.B. No. 183, KHARAR. PIN: 140301. Valid upto: 31-Mar-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SATNAM KAUR CHADHA (Individual)","address":"VILLAGE KHANPUR, H.B. No. 183, KHARAR","pin_code":"140301","registration_date":"28-Dec-2020","valid_upto":"31-Mar-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR77-PC0139: GRAND SHOPPING PLAZA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR77-PC0139',
      'GRAND SHOPPING PLAZA',
      'grand-shopping-plaza',
      'active',
      'Promoter: R.G Developers (Other than Individual). Address: VILLAGE GHABDAN, HADBAST NO. 30, Teh. & District Sangrur. PIN: 148001. Valid upto: 19-Nov-2025',
      '{"district":"Sangrur","promoter":"R.G Developers (Other than Individual)","address":"VILLAGE GHABDAN, HADBAST NO. 30, Teh. & District Sangrur","pin_code":"148001","registration_date":"28-Dec-2020","valid_upto":"19-Nov-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0397: Avesta Villas
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0397',
      'Avesta Villas',
      'avesta-villas',
      'active',
      'Promoter: Avesta Infratech Private Limited (Other than Individual). Address: Avesta Villas, GBP Superia, Mouja- Gulabgarh. PIN: 140507. Valid upto: 30-Sep-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Avesta Infratech Private Limited (Other than Individual)","address":"Avesta Villas, GBP Superia, Mouja- Gulabgarh","pin_code":"140507","registration_date":"01-Nov-2018","valid_upto":"30-Sep-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0114: Mohali Citi Square
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0114',
      'Mohali Citi Square',
      'mohali-citi-square',
      'active',
      'Promoter: STJ Infra (Other than Individual). Address: Village Nabha, Near Hotel Radisson, Zirakpur - Patiala Highway, Zirakpur. PIN: 140603. Valid upto: 31-Oct-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"STJ Infra (Other than Individual)","address":"Village Nabha, Near Hotel Radisson, Zirakpur - Patiala Highway, Zirakpur","pin_code":"140603","registration_date":"07-Feb-2020","valid_upto":"31-Oct-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PR0468: The Eastern Park By Garav Basera
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PR0468',
      'The Eastern Park By Garav Basera',
      'the-eastern-park-by-garav-basera',
      'active',
      'Promoter: Gaurav Land Developers and Colonizers Private Limited (Other than Individual). Address: Village Bholapur, Adjoining Garden City, Chandigarh Road, Ludhiana East. PIN: 141123. Valid upto: 30-Jun-2023',
      '{"district":"Ludhiana","promoter":"Gaurav Land Developers and Colonizers Private Limited (Other than Individual)","address":"Village Bholapur, Adjoining Garden City, Chandigarh Road, Ludhiana East","pin_code":"141123","registration_date":"31-May-2019","valid_upto":"30-Jun-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0672: MAPLE RESIDENCIES
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0672',
      'MAPLE RESIDENCIES',
      'maple-residencies',
      'active',
      'Promoter: Maple Residences (Other than Individual). Address: PEER MUCHALLA, MC ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Maple Residences (Other than Individual)","address":"PEER MUCHALLA, MC ZIRAKPUR","pin_code":"140603","registration_date":"04-Dec-2020","valid_upto":"31-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0669: Shiwalik Tower
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0669',
      'Shiwalik Tower',
      'shiwalik-tower',
      'active',
      'Promoter: Shivalik Infrastructure and Developers Private Limited (Other than Individual). Address: Village Chhajumajra, Kharar. PIN: 140301. Valid upto: 31-Dec-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Shivalik Infrastructure and Developers Private Limited (Other than Individual)","address":"Village Chhajumajra, Kharar","pin_code":"140301","registration_date":"04-Dec-2020","valid_upto":"31-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BNL06-PR0675: Aastha Enclave EXTENSION 1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BNL06-PR0675',
      'Aastha Enclave EXTENSION 1',
      'aastha-enclave-extension-1',
      'active',
      'Promoter: Barnala Builders & Developers Pvt. Ltd. (Other than Individual). Address: Village Branala C. PIN: 148001. Valid upto: 20-Aug-2024',
      '{"district":"Barnala","promoter":"Barnala Builders & Developers Pvt. Ltd. (Other than Individual)","address":"Village Branala C","pin_code":"148001","registration_date":"04-Dec-2020","valid_upto":"20-Aug-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0667: Nine Homz, Plot No. 8327 C, 8355 C, 8382 C
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0667',
      'Nine Homz, Plot No. 8327 C, 8355 C, 8382 C',
      'nine-homz-plot-no-8327-c-8355-c-8382-c',
      'active',
      'Promoter: SKBK DEVELOPERS (Other than Individual). Address: Sector 125, Highway City Sunny Enclave Kharar, Village Jhugian. PIN: 140301. Valid upto: 31-Dec-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SKBK DEVELOPERS (Other than Individual)","address":"Sector 125, Highway City Sunny Enclave Kharar, Village Jhugian","pin_code":"140301","registration_date":"04-Dec-2020","valid_upto":"31-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR0674: South City Jalandhar Sector-II
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR0674',
      'South City Jalandhar Sector-II',
      'south-city-jalandhar-sector-ii',
      'active',
      'Promoter: Harmol   Singh (Individual). Address: Village Usmanpur, Jalandhar. PIN: 144026. Valid upto: 31-Dec-2022',
      '{"district":"Jalandhar","promoter":"Harmol   Singh (Individual)","address":"Village Usmanpur, Jalandhar","pin_code":"144026","registration_date":"04-Dec-2020","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZR22-PR0670: COLONY GURU NAGAR
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZR22-PR0670',
      'COLONY GURU NAGAR',
      'colony-guru-nagar',
      'active',
      'Promoter: MALKIAT SINGH  DHALIWAL (Individual). Address: Old Zira Road, Firozpur City. PIN: 152002. Valid upto: 20-Sep-2022',
      '{"district":"Firozpur","promoter":"MALKIAT SINGH  DHALIWAL (Individual)","address":"Old Zira Road, Firozpur City","pin_code":"152002","registration_date":"04-Dec-2020","valid_upto":"20-Sep-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0671: Bella Green
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0671',
      'Bella Green',
      'bella-green',
      'active',
      'Promoter: Jasbir  Singh (Individual). Address: H.B- 14 mouja Rouni MC derabassi. PIN: 140507. Valid upto: 31-Oct-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jasbir  Singh (Individual)","address":"H.B- 14 mouja Rouni MC derabassi","pin_code":"140507","registration_date":"04-Dec-2020","valid_upto":"31-Oct-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0663: DREAM HOMES
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0663',
      'DREAM HOMES',
      'dream-homes-dup1',
      'active',
      'Promoter: Dream Homes (Other than Individual). Address: CHHAJUMAJRA, TEHSIL KHARAR. PIN: 140301. Valid upto: 21-Dec-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Dream Homes (Other than Individual)","address":"CHHAJUMAJRA, TEHSIL KHARAR","pin_code":"140301","registration_date":"05-Nov-2020","valid_upto":"21-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0135: METRO TRADE CENTRE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0135',
      'METRO TRADE CENTRE',
      'metro-trade-centre',
      'active',
      'Promoter: METRO DEVELOPERS (Other than Individual). Address: VIP ROAD BISHANPURA, NEAR JAIPURIA, ZIRAKPUR. PIN: 140603. Valid upto: 31-Mar-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"METRO DEVELOPERS (Other than Individual)","address":"VIP ROAD BISHANPURA, NEAR JAIPURIA, ZIRAKPUR","pin_code":"140603","registration_date":"05-Nov-2020","valid_upto":"31-Mar-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL61-PR0660: NORTH CITY PHASE 1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL61-PR0660',
      'NORTH CITY PHASE 1',
      'north-city-phase-1',
      'active',
      'Promoter: BH PROMOTERS & DEVELOPERS Pvt. Ltd. (Other than Individual). Address: ITBP ROAD VILLAGE CHOURA. PIN: 147002. Valid upto: 03-Mar-2021',
      '{"district":"Patiala","promoter":"BH PROMOTERS & DEVELOPERS Pvt. Ltd. (Other than Individual)","address":"ITBP ROAD VILLAGE CHOURA","pin_code":"147002","registration_date":"05-Nov-2020","valid_upto":"03-Mar-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL61-PR0662: S.S. CITY PHASE-2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL61-PR0662',
      'S.S. CITY PHASE-2',
      'ss-city-phase-2',
      'active',
      'Promoter: B H PROMOTERS AND DEVELOPERS PVT LTD (Other than Individual). Address: ITBP SANOUR ROAD, Village CHOURA. PIN: 147002. Valid upto: 31-Mar-2021',
      '{"district":"Patiala","promoter":"B H PROMOTERS AND DEVELOPERS PVT LTD (Other than Individual)","address":"ITBP SANOUR ROAD, Village CHOURA","pin_code":"147002","registration_date":"05-Nov-2020","valid_upto":"31-Mar-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL61-PR0661: NORTH CITY PHASE- II
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL61-PR0661',
      'NORTH CITY PHASE- II',
      'north-city-phase-ii',
      'active',
      'Promoter: B H PROPERTIES PVT LTD (Other than Individual). Address: ITBP ROAD, VILLAGE CHOURA. PIN: 147001. Valid upto: 31-Mar-2021',
      '{"district":"Patiala","promoter":"B H PROPERTIES PVT LTD (Other than Individual)","address":"ITBP ROAD, VILLAGE CHOURA","pin_code":"147001","registration_date":"05-Nov-2020","valid_upto":"31-Mar-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0659: SAPPHIRE RESIDENTIAL PLOTS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0659',
      'SAPPHIRE RESIDENTIAL PLOTS',
      'sapphire-residential-plots',
      'active',
      'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: SECTOR 110 & 111. PIN: 140301. Valid upto: 30-Jul-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"SECTOR 110 & 111","pin_code":"140301","registration_date":"05-Nov-2020","valid_upto":"30-Jul-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL36-PR0658: GOPAL ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL36-PR0658',
      'GOPAL ENCLAVE',
      'gopal-enclave',
      'active',
      'Promoter: GOPAL & COMPANY (Other than Individual). Address: VILLAGE PHILLAUR, TEH PHILLAUR. PIN: 144410. Valid upto: 31-Dec-2022',
      '{"district":"Jalandhar","promoter":"GOPAL & COMPANY (Other than Individual)","address":"VILLAGE PHILLAUR, TEH PHILLAUR","pin_code":"144410","registration_date":"20-Oct-2020","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0134: CP SQUARE EXTENSION
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0134',
      'CP SQUARE EXTENSION',
      'cp-square-extension',
      'active',
      'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: CP SQUARE EXTENSION, 200 FT INTERNATIONAL AIRPORT ROAD SECTOR 117 TDI CITY I. PIN: 140301. Valid upto: 30-Jul-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"CP SQUARE EXTENSION, 200 FT INTERNATIONAL AIRPORT ROAD SECTOR 117 TDI CITY I","pin_code":"140301","registration_date":"20-Oct-2020","valid_upto":"30-Jul-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BNL06-PR0654: Inderlok Avenue Extension 1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BNL06-PR0654',
      'Inderlok Avenue Extension 1',
      'inderlok-avenue-extension-1',
      'active',
      'Promoter: Barnala Builders & Developers Pvt. Ltd. (Other than Individual). Address: Vill. Handiaya-Band Rasulpur. PIN: 148101. Valid upto: 25-Jun-2024',
      '{"district":"Barnala","promoter":"Barnala Builders & Developers Pvt. Ltd. (Other than Individual)","address":"Vill. Handiaya-Band Rasulpur","pin_code":"148101","registration_date":"21-Oct-2020","valid_upto":"25-Jun-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0657: RESIDENTIAL PLOTS 28.377 out of 50 Acres PCC (5000 SERIES & OTHERS)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0657',
      'RESIDENTIAL PLOTS 28.377 out of 50 Acres PCC (5000 SERIES & OTHERS)',
      'residential-plots-28377-out-of-50-acres-pcc-5000-series-others',
      'active',
      'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: SECTOR 74A, 92, 116-119. PIN: 140301. Valid upto: 31-Dec-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"SECTOR 74A, 92, 116-119","pin_code":"140301","registration_date":"20-Oct-2020","valid_upto":"31-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL36-PM0156: PRAKASH AVENUE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL36-PM0156',
      'PRAKASH AVENUE',
      'prakash-avenue',
      'active',
      'Promoter: GOPAL & COMPANY (Other than Individual). Address: VILLAGE PADDI JAGIR, TEHSIL PHILLAUR. PIN: 144410. Valid upto: 31-Dec-2022',
      '{"district":"Jalandhar","promoter":"GOPAL & COMPANY (Other than Individual)","address":"VILLAGE PADDI JAGIR, TEHSIL PHILLAUR","pin_code":"144410","registration_date":"20-Oct-2020","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL36-PR0651: BIMLA ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL36-PR0651',
      'BIMLA ENCLAVE',
      'bimla-enclave',
      'active',
      'Promoter: RANJIT ESTATES (Other than Individual). Address: VILLAGE DOSANJH KALAN, H.B. No. 198, Teh. Phillaur. PIN: 144410. Valid upto: 31-Dec-2022',
      '{"district":"Jalandhar","promoter":"RANJIT ESTATES (Other than Individual)","address":"VILLAGE DOSANJH KALAN, H.B. No. 198, Teh. Phillaur","pin_code":"144410","registration_date":"21-Oct-2020","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PC0133: Singla Commercial Complex
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PC0133',
      'Singla Commercial Complex',
      'singla-commercial-complex',
      'active',
      'Promoter: Balaji Fun Resort Private Limited (Other than Individual). Address: Vill. Bhucho Kalan, Teh. & District Bathinda. PIN: 151001. Valid upto: 31-Dec-2020',
      '{"district":"Bathinda","promoter":"Balaji Fun Resort Private Limited (Other than Individual)","address":"Vill. Bhucho Kalan, Teh. & District Bathinda","pin_code":"151001","registration_date":"21-Oct-2020","valid_upto":"31-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0650: Golden Castle
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0650',
      'Golden Castle',
      'golden-castle',
      'active',
      'Promoter: CRD INFRA (Other than Individual). Address: Dayalpura, Zirakpur, SAS Nagar. PIN: 140603. Valid upto: 31-Mar-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CRD INFRA (Other than Individual)","address":"Dayalpura, Zirakpur, SAS Nagar","pin_code":"140603","registration_date":"15-Oct-2020","valid_upto":"31-Mar-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0653: Joy Smart Homes Phase 1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0653',
      'Joy Smart Homes Phase 1',
      'joy-smart-homes-phase-1',
      'active',
      'Promoter: JOY HOMES (Other than Individual). Address: Plots in Block A Wave Estate Sector 85 Mohali. PIN: 140308. Valid upto: 21-Aug-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"JOY HOMES (Other than Individual)","address":"Plots in Block A Wave Estate Sector 85 Mohali","pin_code":"140308","registration_date":"20-Oct-2020","valid_upto":"21-Aug-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0655: White Tower
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0655',
      'White Tower',
      'white-tower',
      'active',
      'Promoter: White Tower (Other than Individual). Address: Vill. Khanpur Tehsil. Kharar Distt SAS Nagar Mohali. PIN: 140307. Valid upto: 31-Jan-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"White Tower (Other than Individual)","address":"Vill. Khanpur Tehsil. Kharar Distt SAS Nagar Mohali","pin_code":"140307","registration_date":"20-Oct-2020","valid_upto":"31-Jan-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0652: OAK DALE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0652',
      'OAK DALE',
      'oak-dale',
      'active',
      'Promoter: Inder Raj Dhiman (Individual). Address: Ramgarh Bhuda, Zirakpur. PIN: 140603. Valid upto: 31-Oct-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Inder Raj Dhiman (Individual)","address":"Ramgarh Bhuda, Zirakpur","pin_code":"140603","registration_date":"20-Oct-2020","valid_upto":"31-Oct-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0641: SUNVIEW
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0641',
      'SUNVIEW',
      'sunview',
      'active',
      'Promoter: Satish Estate Pvt Ltd (Other than Individual). Address: H.B.9 VILLAGE GULABGARH MC DERABSSI. PIN: 140507. Valid upto: 31-Dec-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Satish Estate Pvt Ltd (Other than Individual)","address":"H.B.9 VILLAGE GULABGARH MC DERABSSI","pin_code":"140507","registration_date":"18-Sep-2020","valid_upto":"31-Dec-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-KPT39-PR0645: SAFFRON RESIDENCY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-KPT39-PR0645',
      'SAFFRON RESIDENCY',
      'saffron-residency',
      'active',
      'Promoter: EXCELLENCE BUILDERS (Other than Individual). Address: VILLAGE WADALA KALAN, KAPURTHALA. PIN: 144601. Valid upto: 28-Feb-2025',
      '{"district":"Kapurthala","promoter":"EXCELLENCE BUILDERS (Other than Individual)","address":"VILLAGE WADALA KALAN, KAPURTHALA","pin_code":"144601","registration_date":"18-Sep-2020","valid_upto":"28-Feb-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0640: KINGS VALLEY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0640',
      'KINGS VALLEY',
      'kings-valley-dup1',
      'active',
      'Promoter: DARSHAN  SINGH (Individual). Address: HB NO 213, KAULIMAJRA, MC LALRU, Teh. Dera Bassi. PIN: 140501. Valid upto: 31-Mar-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"DARSHAN  SINGH (Individual)","address":"HB NO 213, KAULIMAJRA, MC LALRU, Teh. Dera Bassi","pin_code":"140501","registration_date":"08-Sep-2020","valid_upto":"31-Mar-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PM0155: Anant Vihar
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PM0155',
      'Anant Vihar',
      'anant-vihar',
      'active',
      'Promoter: Anant Development and Constructions Pvt. Ltd (Other than Individual). Address: Village Sahnewal, Sahnewal Ramgarh Road. PIN: 141120. Valid upto: 31-Dec-2020',
      '{"district":"Ludhiana","promoter":"Anant Development and Constructions Pvt. Ltd (Other than Individual)","address":"Village Sahnewal, Sahnewal Ramgarh Road","pin_code":"141120","registration_date":"25-Sep-2020","valid_upto":"31-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0648: Sivanta Greens Ext 2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0648',
      'Sivanta Greens Ext 2',
      'sivanta-greens-ext-2',
      'active',
      'Promoter: AN BUILDERS (Other than Individual). Address: B Block Wave Estate Sector 85. PIN: 140308. Valid upto: 30-Aug-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AN BUILDERS (Other than Individual)","address":"B Block Wave Estate Sector 85","pin_code":"140308","registration_date":"25-Sep-2020","valid_upto":"30-Aug-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PR0647: Chinar Bagh
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PR0647',
      'Chinar Bagh',
      'chinar-bagh',
      'active',
      'Promoter: Punj Land Estate Pvt Ltd (Other than Individual). Address: Village PHILLOULI, Tehsil Patiala, Distt. Patiala. PIN: 140147. Valid upto: 30-Dec-2020',
      '{"district":"Patiala","promoter":"Punj Land Estate Pvt Ltd (Other than Individual)","address":"Village PHILLOULI, Tehsil Patiala, Distt. Patiala","pin_code":"140147","registration_date":"25-Sep-2020","valid_upto":"30-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PC0132: PPR MALL
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PC0132',
      'PPR MALL',
      'ppr-mall',
      'active',
      'Promoter: PPR HOUSING AND CONSTRUCTION LIMITED (Other than Individual). Address: VILLAGE KINGRA. PIN: 144001. Valid upto: 31-Dec-2021',
      '{"district":"Jalandhar","promoter":"PPR HOUSING AND CONSTRUCTION LIMITED (Other than Individual)","address":"VILLAGE KINGRA","pin_code":"144001","registration_date":"25-Sep-2020","valid_upto":"31-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-KPT38-PR0635: Kapil Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-KPT38-PR0635',
      'Kapil Enclave',
      'kapil-enclave',
      'active',
      'Promoter: Grover Builders (Other than Individual). Address: Village Begowal, H.B.No.10. PIN: 144621. Valid upto: 20-Jul-2021',
      '{"district":"Kapurthala","promoter":"Grover Builders (Other than Individual)","address":"Village Begowal, H.B.No.10","pin_code":"144621","registration_date":"08-Sep-2020","valid_upto":"20-Jul-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-HSP29-PR0643: Guru Teg Bahadur Nagar
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-HSP29-PR0643',
      'Guru Teg Bahadur Nagar',
      'guru-teg-bahadur-nagar',
      'active',
      'Promoter: Karan Associates (Other than Individual). Address: H.B. No. 47, VILLAGE URMUR ON MOONKA RAILWAY LINE ROAD, Teh. Dasua. PIN: 144205. Valid upto: 31-Mar-2023',
      '{"district":"Hoshiarpur","promoter":"Karan Associates (Other than Individual)","address":"H.B. No. 47, VILLAGE URMUR ON MOONKA RAILWAY LINE ROAD, Teh. Dasua","pin_code":"144205","registration_date":"18-Sep-2020","valid_upto":"31-Mar-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZL20-PC0131: SHAHEED BHAGAT SINGH MARKET SCHEME
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZL20-PC0131',
      'SHAHEED BHAGAT SINGH MARKET SCHEME',
      'shaheed-bhagat-singh-market-scheme',
      'active',
      'Promoter: IMPROVEMENT TRUST FAZILKA (Other than Individual). Address: Abohar Road. PIN: 152118. Valid upto: 31-Mar-2023',
      '{"district":"Fazilka","promoter":"IMPROVEMENT TRUST FAZILKA (Other than Individual)","address":"Abohar Road","pin_code":"152118","registration_date":"18-Sep-2020","valid_upto":"31-Mar-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZL21-PR0642: MAYA ENCLAVE (FORMERLY KNOWN AS PRITAM ENCLAVE)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZL21-PR0642',
      'MAYA ENCLAVE (FORMERLY KNOWN AS PRITAM ENCLAVE)',
      'maya-enclave-formerly-known-as-pritam-enclave',
      'active',
      'Promoter: Upendra Singh Kamra (Individual). Address: MAYA ENCLAVE(FORMERLY KNOWN AS PRITAM ENCLAVE), VILL AMIR KHAS JALALABAD. PIN: 152024. Valid upto: 31-Dec-2024',
      '{"district":"Fazilka","promoter":"Upendra Singh Kamra (Individual)","address":"MAYA ENCLAVE(FORMERLY KNOWN AS PRITAM ENCLAVE), VILL AMIR KHAS JALALABAD","pin_code":"152024","registration_date":"22-Sep-2020","valid_upto":"31-Dec-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR0637: South City Jalandhar Sector - 1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR0637',
      'South City Jalandhar Sector - 1',
      'south-city-jalandhar-sector-1',
      'active',
      'Promoter: Dharminder  Arora (Individual). Address: South City Jalandhar Sector - 1 Village Usmanpur Near 66 ft road Jalandhar. PIN: 144026. Valid upto: 31-Dec-2022',
      '{"district":"Jalandhar","promoter":"Dharminder  Arora (Individual)","address":"South City Jalandhar Sector - 1 Village Usmanpur Near 66 ft road Jalandhar","pin_code":"144026","registration_date":"25-Sep-2020","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-KPT39-PR0644: SAFFRON RESIDENCY EXTENSION I
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-KPT39-PR0644',
      'SAFFRON RESIDENCY EXTENSION I',
      'saffron-residency-extension-i',
      'active',
      'Promoter: EXCELLENCE BUILDERS (Other than Individual). Address: VILL WADALA KALAN. PIN: 144601. Valid upto: 28-Feb-2025',
      '{"district":"Kapurthala","promoter":"EXCELLENCE BUILDERS (Other than Individual)","address":"VILL WADALA KALAN","pin_code":"144601","registration_date":"18-Sep-2020","valid_upto":"28-Feb-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL64-PC0130: PATRAN CITY CENTRE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL64-PC0130',
      'PATRAN CITY CENTRE',
      'patran-city-centre',
      'active',
      'Promoter: MANAT REAL ESTATE (Other than Individual). Address: VILLAGE NIAL HB NO 177, TEHSIL PATRAN. PIN: 140103. Valid upto: 31-Mar-2024',
      '{"district":"Patiala","promoter":"MANAT REAL ESTATE (Other than Individual)","address":"VILLAGE NIAL HB NO 177, TEHSIL PATRAN","pin_code":"140103","registration_date":"18-Sep-2020","valid_upto":"31-Mar-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0639: RUTVIJ AND POPLI ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0639',
      'RUTVIJ AND POPLI ENCLAVE',
      'rutvij-and-popli-enclave',
      'active',
      'Promoter: DARSHAN  SINGH (Individual). Address: HB NO 213, KAULIMAJRA, MC LALRU, Teh. Dera Bassi. PIN: 140501. Valid upto: 31-Mar-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"DARSHAN  SINGH (Individual)","address":"HB NO 213, KAULIMAJRA, MC LALRU, Teh. Dera Bassi","pin_code":"140501","registration_date":"08-Sep-2020","valid_upto":"31-Mar-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0638: Aerovista Phase 3
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0638',
      'Aerovista Phase 3',
      'aerovista-phase-3',
      'active',
      'Promoter: Manglam Infra (Other than Individual). Address: Village Dyalpura, MC Zirakpur. PIN: 140603. Valid upto: 30-Aug-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Manglam Infra (Other than Individual)","address":"Village Dyalpura, MC Zirakpur","pin_code":"140603","registration_date":"08-Sep-2020","valid_upto":"30-Aug-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0636: ACME HEIGHTS 92 EXTN 3
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0636',
      'ACME HEIGHTS 92 EXTN 3',
      'acme-heights-92-extn-3',
      'active',
      'Promoter: ACME HEIGHTS INFRASTRUCTURE PRIVATE LIMITED (Other than Individual). Address: SECTOR 91-92 CHAPAR CHIRI KALAN. PIN: 140307. Valid upto: 31-Dec-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ACME HEIGHTS INFRASTRUCTURE PRIVATE LIMITED (Other than Individual)","address":"SECTOR 91-92 CHAPAR CHIRI KALAN","pin_code":"140307","registration_date":"08-Sep-2020","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0129: LA PARISIAN PHASE  III (COMMERCIAL)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0129',
      'LA PARISIAN PHASE  III (COMMERCIAL)',
      'la-parisian-phase-iii-commercial',
      'active',
      'Promoter: AMBIKA REALCON DEVELOPERS  PRIVATE LIMITED (Other than Individual). Address: GROUP HOUSING 2, LA PARISIAN,, SECTOR 66 BETA, IT CITY,. PIN: 140307. Valid upto: 31-Mar-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AMBIKA REALCON DEVELOPERS  PRIVATE LIMITED (Other than Individual)","address":"GROUP HOUSING 2, LA PARISIAN,, SECTOR 66 BETA, IT CITY,","pin_code":"140307","website":"www.ambikarealcon.com","registration_date":"17-Sep-2020","valid_upto":"31-Mar-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PC0127: Factory Outlets Phase II
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PC0127',
      'Factory Outlets Phase II',
      'factory-outlets-phase-ii',
      'active',
      'Promoter: Surinder Jit  Kaur (Individual). Address: NH-7 Bathinda Bhucho Main Road, Opposite Best Price Wallmart, Vill. Bhucho Kalan. PIN: 151001. Valid upto: 31-Aug-2025',
      '{"district":"Bathinda","promoter":"Surinder Jit  Kaur (Individual)","address":"NH-7 Bathinda Bhucho Main Road, Opposite Best Price Wallmart, Vill. Bhucho Kalan","pin_code":"151001","registration_date":"09-Sep-2020","valid_upto":"31-Aug-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PC0128: NH 7 - Factory Outlets
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PC0128',
      'NH 7 - Factory Outlets',
      'nh-7-factory-outlets',
      'active',
      'Promoter: Surinder Jit  Kaur (Individual). Address: NH-7, Factory Outlet, , Bathinda Bhucho, Mandi main road, opp. Best price Wallmart, Vill. Bhucho Kalan. PIN: 151101. Valid upto: 31-Aug-2025',
      '{"district":"Bathinda","promoter":"Surinder Jit  Kaur (Individual)","address":"NH-7, Factory Outlet, , Bathinda Bhucho, Mandi main road, opp. Best price Wallmart, Vill. Bhucho Kalan","pin_code":"151101","registration_date":"09-Sep-2020","valid_upto":"31-Aug-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PI0011: Akal Tech Infralogis Private Limited
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PI0011',
      'Akal Tech Infralogis Private Limited',
      'akal-tech-infralogis-private-limited',
      'active',
      'Promoter: Akal Tech Infralogis Private Limited (Other than Individual). Address: Sector 103, Village Saneta, SAS Nagar, Mohali. PIN: 140306. Valid upto: 30-Jun-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Akal Tech Infralogis Private Limited (Other than Individual)","address":"Sector 103, Village Saneta, SAS Nagar, Mohali","pin_code":"140306","website":"www.akaltechinfralogis.com","registration_date":"04-Sep-2020","valid_upto":"30-Jun-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0633: Sai Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0633',
      'Sai Enclave',
      'sai-enclave-dup1',
      'active',
      'Promoter: Gursewak   Singh (Individual). Address: Vill-Gholumajra, NAC Lalru, SAS Nagar, Mohali, Punjab. PIN: 140501. Valid upto: 30-Dec-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gursewak   Singh (Individual)","address":"Vill-Gholumajra, NAC Lalru, SAS Nagar, Mohali, Punjab","pin_code":"140501","registration_date":"04-Sep-2020","valid_upto":"30-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZL20-PR0630: Seth Munshi Ram Aggarwal Scheme (16.38 acre)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZL20-PR0630',
      'Seth Munshi Ram Aggarwal Scheme (16.38 acre)',
      'seth-munshi-ram-aggarwal-scheme-1638-acre',
      'active',
      'Promoter: IMPROVEMENT TRUST FAZILKA (Other than Individual). Address: Freedom Fighter Road, Fazilka. PIN: 152123. Valid upto: 31-Mar-2023',
      '{"district":"Fazilka","promoter":"IMPROVEMENT TRUST FAZILKA (Other than Individual)","address":"Freedom Fighter Road, Fazilka","pin_code":"152123","registration_date":"03-Sep-2020","valid_upto":"31-Mar-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZL20-PR0631: ROSE AVENUE SCHEME (5.57 ACRE)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZL20-PR0631',
      'ROSE AVENUE SCHEME (5.57 ACRE)',
      'rose-avenue-scheme-557-acre',
      'active',
      'Promoter: IMPROVEMENT TRUST, FAZILKA (Other than Individual). Address: NEAR SACRED HEART SCHOOL, FAZILKA. PIN: 152124. Valid upto: 31-Mar-2023',
      '{"district":"Fazilka","promoter":"IMPROVEMENT TRUST, FAZILKA (Other than Individual)","address":"NEAR SACRED HEART SCHOOL, FAZILKA","pin_code":"152124","registration_date":"03-Sep-2020","valid_upto":"31-Mar-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-GSP25-PR0632: USMANPUR ESTATE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-GSP25-PR0632',
      'USMANPUR ESTATE',
      'usmanpur-estate',
      'active',
      'Promoter: RASILA PROJECTS & SERVICES PVT LTD (Other than Individual). Address: Kahnuwan Road, Vill. Dhupsari, BATALA. PIN: 143507. Valid upto: 31-Dec-2025',
      '{"district":"Gurdaspur","promoter":"RASILA PROJECTS & SERVICES PVT LTD (Other than Individual)","address":"Kahnuwan Road, Vill. Dhupsari, BATALA","pin_code":"143507","registration_date":"03-Sep-2020","valid_upto":"31-Dec-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0126: KING SQUARE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0126',
      'KING SQUARE',
      'king-square',
      'active',
      'Promoter: Darshan   Singh (Individual). Address: NH Near Toll Plaza, Dappar, Tehsil Deabassi. PIN: 140506. Valid upto: 30-Jun-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Darshan   Singh (Individual)","address":"NH Near Toll Plaza, Dappar, Tehsil Deabassi","pin_code":"140506","registration_date":"03-Sep-2020","valid_upto":"30-Jun-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0629: Dream House Colony
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0629',
      'Dream House Colony',
      'dream-house-colony',
      'active',
      'Promoter: Naveen  Sood (Individual). Address: Alamgir, Under M.C Lalru, Tehsil- Derabassi, SAS Nagar, Punjab. PIN: 140504. Valid upto: 30-Dec-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Naveen  Sood (Individual)","address":"Alamgir, Under M.C Lalru, Tehsil- Derabassi, SAS Nagar, Punjab","pin_code":"140504","registration_date":"28-Aug-2020","valid_upto":"30-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FDK12-PR0628: BABA JIWAN SINGH SCHEME
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FDK12-PR0628',
      'BABA JIWAN SINGH SCHEME',
      'baba-jiwan-singh-scheme',
      'active',
      'Promoter: IMPROVEMENT TRUST FARIDKOT (Other than Individual). Address: FIROZPUR ROAD, FARIDKOT. PIN: 151203. Valid upto: 31-Mar-2027',
      '{"district":"Faridkot","promoter":"IMPROVEMENT TRUST FARIDKOT (Other than Individual)","address":"FIROZPUR ROAD, FARIDKOT","pin_code":"151203","registration_date":"26-Aug-2020","valid_upto":"31-Mar-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0125: Sushma Metropol
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0125',
      'Sushma Metropol',
      'sushma-metropol',
      'active',
      'Promoter: Suksha Developers Private Limited (Other than Individual). Address: Village Nagla, Near Manav Mangal School, Zirakpur. PIN: 140603. Valid upto: 31-Jul-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Suksha Developers Private Limited (Other than Individual)","address":"Village Nagla, Near Manav Mangal School, Zirakpur","pin_code":"140603","website":"www.sushma.co.in","registration_date":"21-Aug-2020","valid_upto":"31-Jul-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PM0154: RAJA GARDEN
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PM0154',
      'RAJA GARDEN',
      'raja-garden',
      'active',
      'Promoter: GILLSON ESTATES (Other than Individual). Address: Village Uppal Jagir, Nurmahal-Nakodar Road, Tehsil Nurmahal, Distt. Jalandhar. PIN: 144039. Valid upto: 02-Dec-2022',
      '{"district":"Jalandhar","promoter":"GILLSON ESTATES (Other than Individual)","address":"Village Uppal Jagir, Nurmahal-Nakodar Road, Tehsil Nurmahal, Distt. Jalandhar","pin_code":"144039","registration_date":"21-Aug-2020","valid_upto":"02-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR0627: PRIME ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR0627',
      'PRIME ENCLAVE',
      'prime-enclave',
      'active',
      'Promoter: DALJEET SINGH SAHNI (Individual). Address: VILLAGE LAROI, H. B. No. 17. PIN: 144201. Valid upto: 31-Dec-2022',
      '{"district":"Jalandhar","promoter":"DALJEET SINGH SAHNI (Individual)","address":"VILLAGE LAROI, H. B. No. 17","pin_code":"144201","registration_date":"21-Aug-2020","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR76-PC0124: TAJ COMPLEX (Phase II)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR76-PC0124',
      'TAJ COMPLEX (Phase II)',
      'taj-complex-phase-ii',
      'active',
      'Promoter: Mandeep  Singh Turna (Individual). Address: Village Khanouri Kalan, HB 129, Tehsil Moonak, Distt- Sangrur. PIN: 148021. Valid upto: 31-Mar-2024',
      '{"district":"Sangrur","promoter":"Mandeep  Singh Turna (Individual)","address":"Village Khanouri Kalan, HB 129, Tehsil Moonak, Distt- Sangrur","pin_code":"148021","registration_date":"21-Aug-2020","valid_upto":"31-Mar-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0626: Shivam Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0626',
      'Shivam Homes',
      'shivam-homes',
      'active',
      'Promoter: Wacs infrastructure (Other than Individual). Address: Village Sante Majra, Kharar. PIN: 140301. Valid upto: 20-Feb-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Wacs infrastructure (Other than Individual)","address":"Village Sante Majra, Kharar","pin_code":"140301","registration_date":"21-Aug-2020","valid_upto":"20-Feb-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI09-PR0624: Dr. Didar Singh Nagar at Maur Mandi
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI09-PR0624',
      'Dr. Didar Singh Nagar at Maur Mandi',
      'dr-didar-singh-nagar-at-maur-mandi',
      'active',
      'Promoter: Punjab Builders & Developers (Other than Individual). Address: Maur Mandi, District Bathinda. PIN: 151509. Valid upto: 31-Dec-2020',
      '{"district":"Bathinda","promoter":"Punjab Builders & Developers (Other than Individual)","address":"Maur Mandi, District Bathinda","pin_code":"151509","registration_date":"05-Aug-2020","valid_upto":"31-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0623: PALAK ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0623',
      'PALAK ENCLAVE',
      'palak-enclave',
      'active',
      'Promoter: Raghbir   Sarup (Individual). Address: Dharamgarh Road, Lalru, H.b no. 218. PIN: 140501. Valid upto: 31-Mar-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Raghbir   Sarup (Individual)","address":"Dharamgarh Road, Lalru, H.b no. 218","pin_code":"140501","registration_date":"05-Aug-2020","valid_upto":"31-Mar-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0625: BOLLYWOOD ESSENCIA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0625',
      'BOLLYWOOD ESSENCIA',
      'bollywood-essencia',
      'active',
      'Promoter: GBM INFRATECH (Other than Individual). Address: VILLAGE GAZIPUR, HADBAST NO. 50, MC ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GBM INFRATECH (Other than Individual)","address":"VILLAGE GAZIPUR, HADBAST NO. 50, MC ZIRAKPUR","pin_code":"140603","registration_date":"05-Aug-2020","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0123: MAYA GARDEN MONOPOLIS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0123',
      'MAYA GARDEN MONOPOLIS',
      'maya-garden-monopolis',
      'active',
      'Promoter: M.G Builders (Other than Individual). Address: Vill. Singhpura, H.B. No. 43, MC Zirakpur. PIN: 140603. Valid upto: 30-Sep-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"M.G Builders (Other than Individual)","address":"Vill. Singhpura, H.B. No. 43, MC Zirakpur","pin_code":"140603","registration_date":"05-Aug-2020","valid_upto":"30-Sep-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0495: CANVAS AT 85
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0495',
      'CANVAS AT 85',
      'canvas-at-85',
      'active',
      'Promoter: Canvas Promoters & Developers (Other than Individual). Address: Wave Estate, Sector 85 Mohali. PIN: 140308. Valid upto: 31-Mar-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Canvas Promoters & Developers (Other than Individual)","address":"Wave Estate, Sector 85 Mohali","pin_code":"140308","registration_date":"13-Aug-2019","valid_upto":"31-Mar-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0116: VIP CENTRAL
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0116',
      'VIP CENTRAL',
      'vip-central',
      'active',
      'Promoter: R G INFRA (Other than Individual). Address: VIP ROAD ADJOINING VIP GALLERIA, VILLAGE BISHANPURA, ZIKAKPUR. PIN: 140603. Valid upto: 31-Mar-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"R G INFRA (Other than Individual)","address":"VIP ROAD ADJOINING VIP GALLERIA, VILLAGE BISHANPURA, ZIKAKPUR","pin_code":"140603","website":"www.vipcentral.in","registration_date":"17-Feb-2020","valid_upto":"31-Mar-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0121: METRO TOWN PROMENADE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0121',
      'METRO TOWN PROMENADE',
      'metro-town-promenade',
      'active',
      'Promoter: SKYRISE BUILDERS (Other than Individual). Address: VILLAGE PEERMUCHALLA, NAC ZIRAKPUR. PIN: 134109. Valid upto: 31-Mar-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SKYRISE BUILDERS (Other than Individual)","address":"VILLAGE PEERMUCHALLA, NAC ZIRAKPUR","pin_code":"134109","registration_date":"21-Jul-2020","valid_upto":"31-Mar-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0122: GREEN LOTUS SAKSHAM COMMERCIAL
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0122',
      'GREEN LOTUS SAKSHAM COMMERCIAL',
      'green-lotus-saksham-commercial',
      'active',
      'Promoter: MAYA BUILDERS (Other than Individual). Address: Near Nabha Sahib Gurudwara, Zirakpur-Patiala Highway, MC Zirakpur. PIN: 140603. Valid upto: 30-Jun-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MAYA BUILDERS (Other than Individual)","address":"Near Nabha Sahib Gurudwara, Zirakpur-Patiala Highway, MC Zirakpur","pin_code":"140603","website":"www.greenlotussaksham.com","registration_date":"21-Jul-2020","valid_upto":"30-Jun-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI10-PR0622: New Janta Colony
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI10-PR0622',
      'New Janta Colony',
      'new-janta-colony',
      'active',
      'Promoter: New Janta Colony (Other than Individual). Address: Bye Pass Road, Rampura Phul. PIN: 151103. Valid upto: 28-Feb-2023',
      '{"district":"Bathinda","promoter":"New Janta Colony (Other than Individual)","address":"Bye Pass Road, Rampura Phul","pin_code":"151103","registration_date":"21-Jul-2020","valid_upto":"28-Feb-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR0555: SHEESH MAHAL HEIGHTS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR0555',
      'SHEESH MAHAL HEIGHTS',
      'sheesh-mahal-heights',
      'active',
      'Promoter: SHEESH MAHAL DEVELOPERS LIMITED (Other than Individual). Address: Dabwali road,  Bathinda. PIN: 151005. Valid upto: 30-Sep-2024',
      '{"district":"Bathinda","promoter":"SHEESH MAHAL DEVELOPERS LIMITED (Other than Individual)","address":"Dabwali road,  Bathinda","pin_code":"151005","registration_date":"10-Dec-2019","valid_upto":"30-Sep-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0620: Nature City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0620',
      'Nature City',
      'nature-city',
      'active',
      'Promoter: MVD Buildwell private limited (Other than Individual). Address: Had bast No.184, Teh. Kharar. PIN: 140301. Valid upto: 19-Dec-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MVD Buildwell private limited (Other than Individual)","address":"Had bast No.184, Teh. Kharar","pin_code":"140301","registration_date":"14-Jul-2020","valid_upto":"19-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR0621: PRIME AVENUE EXTENSION
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR0621',
      'PRIME AVENUE EXTENSION',
      'prime-avenue-extension',
      'active',
      'Promoter: PRIME PROPERTIES BUILDERS & COLONIZERS (Other than Individual). Address: VILLAGE LAROI, H. B. No. 17. PIN: 144201. Valid upto: 31-Dec-2022',
      '{"district":"Jalandhar","promoter":"PRIME PROPERTIES BUILDERS & COLONIZERS (Other than Individual)","address":"VILLAGE LAROI, H. B. No. 17","pin_code":"144201","registration_date":"14-Jul-2020","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL36-PR0618: Pt.Roop Lal Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL36-PR0618',
      'Pt.Roop Lal Enclave',
      'ptroop-lal-enclave',
      'active',
      'Promoter: Krishan  Jit Sanger (Individual). Address: Village- Apra, H.B No.-181, Tehsil Phillaur. PIN: 144416. Valid upto: 15-Dec-2024',
      '{"district":"Jalandhar","promoter":"Krishan  Jit Sanger (Individual)","address":"Village- Apra, H.B No.-181, Tehsil Phillaur","pin_code":"144416","registration_date":"09-Jul-2020","valid_upto":"15-Dec-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-HSP31-PR0617: Green Avenue
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-HSP31-PR0617',
      'Green Avenue',
      'green-avenue-dup3',
      'active',
      'Promoter: Prabhu Niwas Builders & Real Estate Pvt. Ltd. (Other than Individual). Address: Village Bahowal, Tehsil Mahilpur. PIN: 146015. Valid upto: 31-Dec-2022',
      '{"district":"Hoshiarpur","promoter":"Prabhu Niwas Builders & Real Estate Pvt. Ltd. (Other than Individual)","address":"Village Bahowal, Tehsil Mahilpur","pin_code":"146015","registration_date":"09-Jul-2020","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL62-PR0619: Irrigation Dept. Land (Lehal Mandal) at 12 Quan
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL62-PR0619',
      'Irrigation Dept. Land (Lehal Mandal) at 12 Quan',
      'irrigation-dept-land-lehal-mandal-at-12-quan',
      'active',
      'Promoter: Patiala Urban Planning and Development Authority (Other than Individual). Address: Irrigation Dept. Land (Lehal Mandal) at 12 Quan, Nabha. PIN: 147001. Valid upto: 26-Jan-2023',
      '{"district":"Patiala","promoter":"Patiala Urban Planning and Development Authority (Other than Individual)","address":"Irrigation Dept. Land (Lehal Mandal) at 12 Quan, Nabha","pin_code":"147001","registration_date":"09-Jul-2020","valid_upto":"26-Jan-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0120: Orbit Signature Walk
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0120',
      'Orbit Signature Walk',
      'orbit-signature-walk',
      'active',
      'Promoter: Orbit Apartment Construction Pvt. Ltd.  (Other than Individual). Address: Orbit Signature Walk, Village Bishanpura, H.B. No. 44, VIP Road, Zirakpur. PIN: 140603. Valid upto: 31-Dec-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Orbit Apartment Construction Pvt. Ltd.  (Other than Individual)","address":"Orbit Signature Walk, Village Bishanpura, H.B. No. 44, VIP Road, Zirakpur","pin_code":"140603","registration_date":"09-Jul-2020","valid_upto":"31-Dec-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZL19-PR0615: JAI SHREE ESTATE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZL19-PR0615',
      'JAI SHREE ESTATE',
      'jai-shree-estate',
      'active',
      'Promoter: ARIZE INFRASTRUCTURE & DEVELOPERS (Other than Individual). Address: BASSIAN, Teh. Abohar. PIN: 152116. Valid upto: 31-Mar-2022',
      '{"district":"Fazilka","promoter":"ARIZE INFRASTRUCTURE & DEVELOPERS (Other than Individual)","address":"BASSIAN, Teh. Abohar","pin_code":"152116","registration_date":"03-Jul-2020","valid_upto":"31-Mar-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0614: SIVANTA GREENS EXT-1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0614',
      'SIVANTA GREENS EXT-1',
      'sivanta-greens-ext-1',
      'active',
      'Promoter: AN BUILDERS (Other than Individual). Address: B Block Wave Estate, Sector 85,. PIN: 140308. Valid upto: 04-Mar-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AN BUILDERS (Other than Individual)","address":"B Block Wave Estate, Sector 85,","pin_code":"140308","registration_date":"17-Jun-2020","valid_upto":"04-Mar-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0613: Savitry Green-2 PANORAMA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0613',
      'Savitry Green-2 PANORAMA',
      'savitry-green-2-panorama',
      'active',
      'Promoter: Rajinder   Vashisht (Individual). Address: Village Ghazipur, Teh. Dera Bassi. PIN: 140603. Valid upto: 30-Jun-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Rajinder   Vashisht (Individual)","address":"Village Ghazipur, Teh. Dera Bassi","pin_code":"140603","registration_date":"17-Jun-2020","valid_upto":"30-Jun-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI10-PR0606: S R Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI10-PR0606',
      'S R Enclave',
      's-r-enclave',
      'active',
      'Promoter: Shashi   Singla (Individual). Address: SR Enclave, Bye pass Road, Rampura Phul. PIN: 151103. Valid upto: 31-Dec-2022',
      '{"district":"Bathinda","promoter":"Shashi   Singla (Individual)","address":"SR Enclave, Bye pass Road, Rampura Phul","pin_code":"151103","registration_date":"13-May-2020","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0605: Imperial Apartments
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0605',
      'Imperial Apartments',
      'imperial-apartments',
      'active',
      'Promoter: HARMONY COLONISERS PRIVATE LIMITED (Other than Individual). Address: Village Kishanpura, PO Dhakoli, Zirakpur. PIN: 160104. Valid upto: 15-Aug-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"HARMONY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"Village Kishanpura, PO Dhakoli, Zirakpur","pin_code":"160104","registration_date":"13-May-2020","valid_upto":"15-Aug-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL66-PM0153: TAJ ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL66-PM0153',
      'TAJ ENCLAVE',
      'taj-enclave-dup1',
      'active',
      'Promoter: MANDEEP SINGH TURNA (Individual). Address: BAWANIGARH ROAD, SAMANA. PIN: 147105. Valid upto: 30-Jun-2020',
      '{"district":"Patiala","promoter":"MANDEEP SINGH TURNA (Individual)","address":"BAWANIGARH ROAD, SAMANA","pin_code":"147105","registration_date":"13-May-2020","valid_upto":"30-Jun-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-HSP31-PR0608: BASERA ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-HSP31-PR0608',
      'BASERA ENCLAVE',
      'basera-enclave',
      'active',
      'Promoter: Kultar  Singh (Individual). Address: Villagr Shergarh, H.B No.250, Tehsil & Distt. Hoshiarpur. PIN: 146001. Valid upto: 31-Mar-2024',
      '{"district":"Hoshiarpur","promoter":"Kultar  Singh (Individual)","address":"Villagr Shergarh, H.B No.250, Tehsil & Distt. Hoshiarpur","pin_code":"146001","registration_date":"13-May-2020","valid_upto":"31-Mar-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0607: Green Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0607',
      'Green Homes',
      'green-homes',
      'active',
      'Promoter: Gursimran  Singh  Sidhu (Individual). Address: Village Gazipur, Tehsil. Derabassi, Distt. SAS Nagar, Mohali,. PIN: 140603. Valid upto: 31-Jan-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gursimran  Singh  Sidhu (Individual)","address":"Village Gazipur, Tehsil. Derabassi, Distt. SAS Nagar, Mohali,","pin_code":"140603","registration_date":"13-May-2020","valid_upto":"31-Jan-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0611: NEW SKY CITY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0611',
      'NEW SKY CITY',
      'new-sky-city',
      'active',
      'Promoter: New Sky City (Other than Individual). Address: HB NO 20, DAPPAR, MC LALRU. PIN: 140603. Valid upto: 30-Jun-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"New Sky City (Other than Individual)","address":"HB NO 20, DAPPAR, MC LALRU","pin_code":"140603","registration_date":"13-May-2020","valid_upto":"30-Jun-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0610: Orchid Greens
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0610',
      'Orchid Greens',
      'orchid-greens',
      'active',
      'Promoter: Best Zone Builders And Developers Private Limited (Other than Individual). Address: Orchid Greens, Village Khuni Majra, Teh. Kharar. PIN: 140307. Valid upto: 01-Oct-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Best Zone Builders And Developers Private Limited (Other than Individual)","address":"Orchid Greens, Village Khuni Majra, Teh. Kharar","pin_code":"140307","registration_date":"13-May-2020","valid_upto":"01-Oct-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0604: LEELA ORCHID GREENS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0604',
      'LEELA ORCHID GREENS',
      'leela-orchid-greens',
      'active',
      'Promoter: LEELA RESIDENCIES PRIVATE LIMITED (Other than Individual). Address: VILLAGE KHUNI MAJRA,, KHARAR. PIN: 140301. Valid upto: 14-May-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"LEELA RESIDENCIES PRIVATE LIMITED (Other than Individual)","address":"VILLAGE KHUNI MAJRA,, KHARAR","pin_code":"140301","registration_date":"13-May-2020","valid_upto":"14-May-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0118: Medicity
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0118',
      'Medicity',
      'medicity',
      'active',
      'Promoter: Greater Mohali Area Development Authority (GMADA) (Other than Individual). Address: Medicity, New Chandigarh. PIN: 140901. Valid upto: 31-Mar-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Greater Mohali Area Development Authority (GMADA) (Other than Individual)","address":"Medicity, New Chandigarh","pin_code":"140901","registration_date":"07-May-2020","valid_upto":"31-Mar-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PM0152: Eco city -2 (New Chandigarh)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PM0152',
      'Eco city -2 (New Chandigarh)',
      'eco-city-2-new-chandigarh',
      'active',
      'Promoter: Greater Mohali Area Development Authority (GMADA) (Other than Individual). Address: Eco city-2 , New Chandigarh. PIN: 160055. Valid upto: 31-Mar-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Greater Mohali Area Development Authority (GMADA) (Other than Individual)","address":"Eco city-2 , New Chandigarh","pin_code":"160055","registration_date":"07-May-2020","valid_upto":"31-Mar-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0600: Paradise Appartments by SIDPL
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0600',
      'Paradise Appartments by SIDPL',
      'paradise-appartments-by-sidpl',
      'active',
      'Promoter: Shivalik Infrastructure & Developers private Limited (Other than Individual). Address: Village Chhajumajra, Tehsil Kharar, Mohali. PIN: 140603. Valid upto: 30-Sep-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Shivalik Infrastructure & Developers private Limited (Other than Individual)","address":"Village Chhajumajra, Tehsil Kharar, Mohali","pin_code":"140603","registration_date":"20-Mar-2020","valid_upto":"30-Sep-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR71-PR0602: AMARPURA ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR71-PR0602',
      'AMARPURA ENCLAVE',
      'amarpura-enclave',
      'active',
      'Promoter: Balwinder  Singh Dhaliwal (Individual). Address: Village Ahmedgarh, Sangrur. PIN: 148021. Valid upto: 31-Mar-2021',
      '{"district":"Sangrur","promoter":"Balwinder  Singh Dhaliwal (Individual)","address":"Village Ahmedgarh, Sangrur","pin_code":"148021","registration_date":"20-Mar-2020","valid_upto":"31-Mar-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR0603: EAST ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR0603',
      'EAST ENCLAVE',
      'east-enclave',
      'active',
      'Promoter: SIMAR BUILDERS (Other than Individual). Address: #443, VILLAGE KOT SADIQ. PIN: 144703. Valid upto: 31-Mar-2021',
      '{"district":"Jalandhar","promoter":"SIMAR BUILDERS (Other than Individual)","address":"#443, VILLAGE KOT SADIQ","pin_code":"144703","registration_date":"20-Mar-2020","valid_upto":"31-Mar-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-HSP29-PR0601: SCHEME NO 2 (RAJIV GANDHI ENCLAVE)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-HSP29-PR0601',
      'SCHEME NO 2 (RAJIV GANDHI ENCLAVE)',
      'scheme-no-2-rajiv-gandhi-enclave',
      'active',
      'Promoter: IMPROVEMENT TRUST HOSHIARPUR (Other than Individual). Address: RAJIV GANDHI AVENUE, RAHIMPUR ROAD. PIN: 144801. Valid upto: 31-Dec-2024',
      '{"district":"Hoshiarpur","promoter":"IMPROVEMENT TRUST HOSHIARPUR (Other than Individual)","address":"RAJIV GANDHI AVENUE, RAHIMPUR ROAD","pin_code":"144801","registration_date":"20-Mar-2020","valid_upto":"31-Dec-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0117: Hi-Fi Street
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0117',
      'Hi-Fi Street',
      'hi-fi-street',
      'active',
      'Promoter: Gulshan Kumar Goel (Individual). Address: Hi-Fi Street, Village Bhabat, MC Zirakpur, Distt. SAS Nagar (Mohali). PIN: 140603. Valid upto: 31-Dec-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gulshan Kumar Goel (Individual)","address":"Hi-Fi Street, Village Bhabat, MC Zirakpur, Distt. SAS Nagar (Mohali)","pin_code":"140603","registration_date":"06-Mar-2020","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PM0151: PRIME AVENUE LAROI 5.33 ACRE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PM0151',
      'PRIME AVENUE LAROI 5.33 ACRE',
      'prime-avenue-laroi-533-acre',
      'active',
      'Promoter: PRIME PROPERTIES BUILDERS & COLONIZERS (Other than Individual). Address: VILLAGE LAROI. PIN: 144201. Valid upto: 31-Dec-2022',
      '{"district":"Jalandhar","promoter":"PRIME PROPERTIES BUILDERS & COLONIZERS (Other than Individual)","address":"VILLAGE LAROI","pin_code":"144201","registration_date":"05-Mar-2020","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PM0150: PRIME AVENUE (ADAMPUR)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PM0150',
      'PRIME AVENUE (ADAMPUR)',
      'prime-avenue-adampur',
      'active',
      'Promoter: PRIME PROPERTIES BUILDERS & COLONIZERS (Other than Individual). Address: VILLAGE ADAMPUR. PIN: 144102. Valid upto: 31-Dec-2022',
      '{"district":"Jalandhar","promoter":"PRIME PROPERTIES BUILDERS & COLONIZERS (Other than Individual)","address":"VILLAGE ADAMPUR","pin_code":"144102","registration_date":"05-Mar-2020","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0599: HILL VIEW ESTATE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0599',
      'HILL VIEW ESTATE',
      'hill-view-estate',
      'active',
      'Promoter: WWICS ESTATES PRIVATE LIMITED (Other than Individual). Address: Village Karoran, Near PEC Chandigarh. PIN: 160103. Valid upto: 31-Dec-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"WWICS ESTATES PRIVATE LIMITED (Other than Individual)","address":"Village Karoran, Near PEC Chandigarh","pin_code":"160103","registration_date":"04-Mar-2020","valid_upto":"31-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PR0597: GARDEN HOMES
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PR0597',
      'GARDEN HOMES',
      'garden-homes',
      'active',
      'Promoter: Harpreet  Singh  Khatra (Individual). Address: MACHIWARA ROAD,, SAMRALA, LUDHIANA. PIN: 141114. Valid upto: 10-Nov-2024',
      '{"district":"Ludhiana","promoter":"Harpreet  Singh  Khatra (Individual)","address":"MACHIWARA ROAD,, SAMRALA, LUDHIANA","pin_code":"141114","registration_date":"02-Mar-2020","valid_upto":"10-Nov-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR0596: KANHIYAS GREEN CITY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR0596',
      'KANHIYAS GREEN CITY',
      'kanhiyas-green-city',
      'active',
      'Promoter: Kanhiya Real Estate & Infrastructure (Other than Individual). Address: Green Palace Road, Bathinda. PIN: 151001. Valid upto: 30-Oct-2021',
      '{"district":"Bathinda","promoter":"Kanhiya Real Estate & Infrastructure (Other than Individual)","address":"Green Palace Road, Bathinda","pin_code":"151001","registration_date":"24-Feb-2020","valid_upto":"30-Oct-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR0593: PARK PANORAMA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR0593',
      'PARK PANORAMA',
      'park-panorama',
      'active',
      'Promoter: PEE JAY PROMOTERS (Other than Individual). Address: Near Urban Estate, Phase 4 & 5, Bathinda. PIN: 151001. Valid upto: 31-Mar-2024',
      '{"district":"Bathinda","promoter":"PEE JAY PROMOTERS (Other than Individual)","address":"Near Urban Estate, Phase 4 & 5, Bathinda","pin_code":"151001","registration_date":"17-Feb-2020","valid_upto":"31-Mar-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0115: UPTOWN INSIGNIA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0115',
      'UPTOWN INSIGNIA',
      'uptown-insignia',
      'active',
      'Promoter: Artique Infratech (Other than Individual). Address: Hadbast No. 42, Village Ramgarh Budha, M.C. Zirakpur. PIN: 140603. Valid upto: 31-Dec-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Artique Infratech (Other than Individual)","address":"Hadbast No. 42, Village Ramgarh Budha, M.C. Zirakpur","pin_code":"140603","registration_date":"17-Feb-2020","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SBS83-PR0595: Gurdit Singh Nagar
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SBS83-PR0595',
      'Gurdit Singh Nagar',
      'gurdit-singh-nagar',
      'active',
      'Promoter: Rainbow Developers & Promoters (Other than Individual). Address: Gurdit Singh Nagar, Banga - Garshankar road, Banga. PIN: 144505. Valid upto: 30-Jun-2020',
      '{"district":"Shahid Bhagat Singh Nagar (Nawanshahr)","promoter":"Rainbow Developers & Promoters (Other than Individual)","address":"Gurdit Singh Nagar, Banga - Garshankar road, Banga","pin_code":"144505","registration_date":"17-Feb-2020","valid_upto":"30-Jun-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-KPT39-PR0588: POCKET C & D (RAJIV GANDHI ENCLAVE)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-KPT39-PR0588',
      'POCKET C & D (RAJIV GANDHI ENCLAVE)',
      'pocket-c-d-rajiv-gandhi-enclave',
      'active',
      'Promoter: KAPURTHALA IMPROVEMENT TRUST (Other than Individual). Address: CIRCULAR ROAD, KAPURTHALA. PIN: 144601. Valid upto: 31-Dec-2024',
      '{"district":"Kapurthala","promoter":"KAPURTHALA IMPROVEMENT TRUST (Other than Individual)","address":"CIRCULAR ROAD, KAPURTHALA","pin_code":"144601","registration_date":"12-Feb-2020","valid_upto":"31-Dec-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PR0591: S.S. CITY PHASE1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PR0591',
      'S.S. CITY PHASE1',
      'ss-city-phase1',
      'active',
      'Promoter: B H PROPERTIES PVT LTD (Other than Individual). Address: ITBP - Sanour Road, Village Chaura, Patiala. PIN: 147001. Valid upto: 31-Dec-2020',
      '{"district":"Patiala","promoter":"B H PROPERTIES PVT LTD (Other than Individual)","address":"ITBP - Sanour Road, Village Chaura, Patiala","pin_code":"147001","registration_date":"12-Feb-2020","valid_upto":"31-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZL19-PR0590: RIDHI SIDHI ESTATE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZL19-PR0590',
      'RIDHI SIDHI ESTATE',
      'ridhi-sidhi-estate',
      'active',
      'Promoter: RIDHI SIDHI ESTATE (Other than Individual). Address: Shri Ganga Nagar Road, Village Alamgarh, Tehsil Abohar, Distt. Fazilka. PIN: 152116. Valid upto: 31-Dec-2020',
      '{"district":"Fazilka","promoter":"RIDHI SIDHI ESTATE (Other than Individual)","address":"Shri Ganga Nagar Road, Village Alamgarh, Tehsil Abohar, Distt. Fazilka","pin_code":"152116","registration_date":"12-Feb-2020","valid_upto":"31-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0592: Rehmat Homez
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0592',
      'Rehmat Homez',
      'rehmat-homez',
      'active',
      'Promoter: Dream Homes  (Other than Individual). Address: REHMAT HOMES, VILLAGE KISHANPURA, MC ZIRAKPUR. PIN: 140603. Valid upto: 31-Mar-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Dream Homes  (Other than Individual)","address":"REHMAT HOMES, VILLAGE KISHANPURA, MC ZIRAKPUR","pin_code":"140603","registration_date":"12-Feb-2020","valid_upto":"31-Mar-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL34-PR0589: Nandan Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL34-PR0589',
      'Nandan Enclave',
      'nandan-enclave',
      'active',
      'Promoter: J.K. Builders & Promoters (Other than Individual). Address: Village Nandanpur, Waryana-Nandanpur Road, Near Panchyat Colony, Nandanpur. PIN: 144021. Valid upto: 31-Dec-2021',
      '{"district":"Jalandhar","promoter":"J.K. Builders & Promoters (Other than Individual)","address":"Village Nandanpur, Waryana-Nandanpur Road, Near Panchyat Colony, Nandanpur","pin_code":"144021","registration_date":"12-Feb-2020","valid_upto":"31-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0587: Paradise Appartments
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0587',
      'Paradise Appartments',
      'paradise-appartments',
      'active',
      'Promoter: Mittal Township Private Limited (Other than Individual). Address: Village Chajumajra, kharar mohali. PIN: 140602. Valid upto: 30-Apr-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Mittal Township Private Limited (Other than Individual)","address":"Village Chajumajra, kharar mohali","pin_code":"140602","registration_date":"10-Feb-2020","valid_upto":"30-Apr-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL61-PM0149: SHAKUNTLA VIHAR
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL61-PM0149',
      'SHAKUNTLA VIHAR',
      'shakuntla-vihar',
      'active',
      'Promoter: WILLIAM RESORTS AND DEVELOPERS LTD (Other than Individual). Address: VILLAGE TRIPURI SEONA ROAD PATIALA. PIN: 147001. Valid upto: 30-Jun-2020',
      '{"district":"Patiala","promoter":"WILLIAM RESORTS AND DEVELOPERS LTD (Other than Individual)","address":"VILLAGE TRIPURI SEONA ROAD PATIALA","pin_code":"147001","registration_date":"10-Feb-2020","valid_upto":"30-Jun-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PR0585: Green City-2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PR0585',
      'Green City-2',
      'green-city-2',
      'active',
      'Promoter: Dhandra Colonizers & Builders Private Limited (Other than Individual). Address: Village Dhandra, Tehsil and District Ludhiana. PIN: 141116. Valid upto: 31-Dec-2022',
      '{"district":"Ludhiana","promoter":"Dhandra Colonizers & Builders Private Limited (Other than Individual)","address":"Village Dhandra, Tehsil and District Ludhiana","pin_code":"141116","registration_date":"10-Feb-2020","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR02-PR0586: BLUE ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR02-PR0586',
      'BLUE ENCLAVE',
      'blue-enclave',
      'active',
      'Promoter: BLUE CITY TOWNSHIP & COLONISERS PRIVATE LIMITED (Other than Individual). Address: Village Meerankot Khurd, Amritsar. PIN: 143001. Valid upto: 31-Aug-2020',
      '{"district":"Amritsar","promoter":"BLUE CITY TOWNSHIP & COLONISERS PRIVATE LIMITED (Other than Individual)","address":"Village Meerankot Khurd, Amritsar","pin_code":"143001","registration_date":"07-Feb-2020","valid_upto":"31-Aug-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PR0584: SEHAJ ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PR0584',
      'SEHAJ ENCLAVE',
      'sehaj-enclave',
      'active',
      'Promoter: BH PROPERTIES PRIVATE LIMITED (Other than Individual). Address: Village Sular, Dakala Road, Patiala. PIN: 147001. Valid upto: 30-Jun-2022',
      '{"district":"Patiala","promoter":"BH PROPERTIES PRIVATE LIMITED (Other than Individual)","address":"Village Sular, Dakala Road, Patiala","pin_code":"147001","registration_date":"07-Feb-2020","valid_upto":"30-Jun-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0113: Maxxon Celebrations
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0113',
      'Maxxon Celebrations',
      'maxxon-celebrations',
      'active',
      'Promoter: Maxxon Space Builders (Other than Individual). Address: Chandigarh - Ambala National Highway, Village  Singhpura, Zirakpur. PIN: 140307. Valid upto: 31-Dec-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Maxxon Space Builders (Other than Individual)","address":"Chandigarh - Ambala National Highway, Village  Singhpura, Zirakpur","pin_code":"140307","registration_date":"04-Feb-2020","valid_upto":"31-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-GSP25-PR0574: Usmanpur City Ext
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-GSP25-PR0574',
      'Usmanpur City Ext',
      'usmanpur-city-ext',
      'active',
      'Promoter: Usmanpur Finance Pvt. Ltd (Other than Individual). Address: Gurdaspur Road, Batala, Gurdaspur. PIN: 143505. Valid upto: 31-Dec-2022',
      '{"district":"Gurdaspur","promoter":"Usmanpur Finance Pvt. Ltd (Other than Individual)","address":"Gurdaspur Road, Batala, Gurdaspur","pin_code":"143505","registration_date":"05-Feb-2020","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0579: SPLANDE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0579',
      'SPLANDE',
      'splande',
      'active',
      'Promoter: GREEN HOME BUILDERS (Other than Individual). Address: Village Dayalpura, MC Zirakpur. PIN: 140603. Valid upto: 31-Mar-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GREEN HOME BUILDERS (Other than Individual)","address":"Village Dayalpura, MC Zirakpur","pin_code":"140603","registration_date":"04-Feb-2020","valid_upto":"31-Mar-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0580: SUNNY ENCLAVE (139 ACRE)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0580',
      'SUNNY ENCLAVE (139 ACRE)',
      'sunny-enclave-139-acre',
      'active',
      'Promoter: Bajwa Developers Ltd (Other than Individual). Address: Village Jandpur, Hasanpur & Manana, Sector 123, Sahibzada Ajit Singh Nagar (Mohali). PIN: 140103. Valid upto: 30-Sep-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Ltd (Other than Individual)","address":"Village Jandpur, Hasanpur & Manana, Sector 123, Sahibzada Ajit Singh Nagar (Mohali)","pin_code":"140103","registration_date":"06-Feb-2020","valid_upto":"30-Sep-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0582: SUNNY ENCLAVE (142.8 ACRES)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0582',
      'SUNNY ENCLAVE (142.8 ACRES)',
      'sunny-enclave-1428-acres',
      'active',
      'Promoter: Bajwa Developers Ltd (Other than Individual). Address: Near Desu Majra, Near sunny enclave. PIN: 140301. Valid upto: 31-Mar-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Ltd (Other than Individual)","address":"Near Desu Majra, Near sunny enclave","pin_code":"140301","registration_date":"06-Feb-2020","valid_upto":"31-Mar-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;


  RAISE NOTICE 'Chunk 9: % inserted, % skipped', v_inserted, v_skipped;
END $$;
