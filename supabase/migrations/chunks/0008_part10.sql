-- Part 10 of 10
-- Projects 1801 to 1992 of 1992
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

  -- PBRERA-SAS80-PR0581: MEGA II Sunny Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0581',
      'MEGA II Sunny Enclave',
      'mega-ii-sunny-enclave',
      'active',
      'Promoter: Bajwa Developers Ltd (Other than Individual). Address: Village Jandpur, Sihanpur and Hasanpur, Sector - 123, Sahibzada Ajit Singh Nagar (Mohali). PIN: 140603. Valid upto: 31-Oct-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Ltd (Other than Individual)","address":"Village Jandpur, Sihanpur and Hasanpur, Sector - 123, Sahibzada Ajit Singh Nagar (Mohali)","pin_code":"140603","registration_date":"06-Feb-2020","valid_upto":"31-Oct-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-MKT57-PR0576: GREEN VALLEY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-MKT57-PR0576',
      'GREEN VALLEY',
      'green-valley-dup5',
      'active',
      'Promoter: SUN PARK INFRASTRUCTURE PVT LTD (Other than Individual). Address: Malout Seikhu Road (Revenue Estate Village Seikhu), Malout, Muktsar. PIN: 152107. Valid upto: 21-Feb-2020',
      '{"district":"Muktsar","promoter":"SUN PARK INFRASTRUCTURE PVT LTD (Other than Individual)","address":"Malout Seikhu Road (Revenue Estate Village Seikhu), Malout, Muktsar","pin_code":"152107","registration_date":"31-Jan-2020","valid_upto":"21-Feb-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0577: Royale Mansions
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0577',
      'Royale Mansions',
      'royale-mansions',
      'active',
      'Promoter: Royale Mansions (Other than Individual). Address: Village Peermuchalla, Zirakpur. PIN: 140603. Valid upto: 31-Dec-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Royale Mansions (Other than Individual)","address":"Village Peermuchalla, Zirakpur","pin_code":"140603","registration_date":"31-Jan-2020","valid_upto":"31-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0578: GOBIND ENCLAVE GREENS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0578',
      'GOBIND ENCLAVE GREENS',
      'gobind-enclave-greens',
      'active',
      'Promoter: AV DEVELOPERS (Other than Individual). Address: Villgae Chhajjumajra, Kharar. PIN: 160082. Valid upto: 30-Apr-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AV DEVELOPERS (Other than Individual)","address":"Villgae Chhajjumajra, Kharar","pin_code":"160082","registration_date":"31-Jan-2020","valid_upto":"30-Apr-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PR0573: Punj Land Estate
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PR0573',
      'Punj Land Estate',
      'punj-land-estate',
      'active',
      'Promoter: Punj Land Estate Pvt.Ltd (Other than Individual). Address: Bhupindra Road, Phatak No. 22, Patiala. PIN: 147001. Valid upto: 30-Dec-2021',
      '{"district":"Patiala","promoter":"Punj Land Estate Pvt.Ltd (Other than Individual)","address":"Bhupindra Road, Phatak No. 22, Patiala","pin_code":"147001","registration_date":"21-Jan-2020","valid_upto":"30-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0110: PRIME SQUARE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0110',
      'PRIME SQUARE',
      'prime-square',
      'active',
      'Promoter: ESS GEE REALTORS (Other than Individual). Address: OUTSIDE FRIENDS COLONY, AMB-CHD HIGHWAY, ZIRAKPUR. PIN: 140603. Valid upto: 30-Jun-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ESS GEE REALTORS (Other than Individual)","address":"OUTSIDE FRIENDS COLONY, AMB-CHD HIGHWAY, ZIRAKPUR","pin_code":"140603","registration_date":"21-Jan-2020","valid_upto":"30-Jun-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PR0575: Palm Enclave II
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PR0575',
      'Palm Enclave II',
      'palm-enclave-ii',
      'active',
      'Promoter: Malhotra Land Developers and Colonisers Private Limited (Other than Individual). Address: Village Bulara, Hadbast No. 265, Tehsil Ludhiana. PIN: 141001. Valid upto: 31-Dec-2020',
      '{"district":"Ludhiana","promoter":"Malhotra Land Developers and Colonisers Private Limited (Other than Individual)","address":"Village Bulara, Hadbast No. 265, Tehsil Ludhiana","pin_code":"141001","registration_date":"21-Jan-2020","valid_upto":"31-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0111: THE HAMLET
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0111',
      'THE HAMLET',
      'the-hamlet',
      'active',
      'Promoter: SAI ASSOCIATES (Other than Individual). Address: Village Nagla, Zirakpur. PIN: 140603. Valid upto: 31-Dec-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SAI ASSOCIATES (Other than Individual)","address":"Village Nagla, Zirakpur","pin_code":"140603","registration_date":"22-Jan-2020","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PI0009: Industrial Park
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PI0009',
      'Industrial Park',
      'industrial-park-dup3',
      'active',
      'Promoter: Sunny Lovely Developers (Other than Individual). Address: Village Dhurali and Dehri Sector-102-A, S.A.S Nagar, Mohali.. PIN: 160071. Valid upto: 01-Dec-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sunny Lovely Developers (Other than Individual)","address":"Village Dhurali and Dehri Sector-102-A, S.A.S Nagar, Mohali.","pin_code":"160071","registration_date":"16-Jan-2020","valid_upto":"01-Dec-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0569: GILLCO HEIGHTS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0569',
      'GILLCO HEIGHTS',
      'gillco-heights',
      'active',
      'Promoter: Gillco Developers and Builders Pvt. Ltd. (Other than Individual). Address: Sector 127, Kharar, Sahibzada Ajit Singh Nagar (Mohali). PIN: 140301. Valid upto: 19-May-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gillco Developers and Builders Pvt. Ltd. (Other than Individual)","address":"Sector 127, Kharar, Sahibzada Ajit Singh Nagar (Mohali)","pin_code":"140301","website":"https://www.gillcogroup.com","registration_date":"15-Jan-2020","valid_upto":"19-May-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0570: Shiwalik Avenue III
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0570',
      'Shiwalik Avenue III',
      'shiwalik-avenue-iii',
      'active',
      'Promoter: Shiwalik Site Planners Private Limited (Other than Individual). Address: Sector-125 Vill Jhungian Kharar, Greater Mohali  Punjab. PIN: 140301. Valid upto: 30-Dec-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Shiwalik Site Planners Private Limited (Other than Individual)","address":"Sector-125 Vill Jhungian Kharar, Greater Mohali  Punjab","pin_code":"140301","registration_date":"15-Jan-2020","valid_upto":"30-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0571: Shiwalik Avenue II
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0571',
      'Shiwalik Avenue II',
      'shiwalik-avenue-ii',
      'active',
      'Promoter: Shiwalik Site Planners Private Limited (Other than Individual). Address: Sector-125,GreaterMohali. PIN: 140301. Valid upto: 30-Dec-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Shiwalik Site Planners Private Limited (Other than Individual)","address":"Sector-125,GreaterMohali","pin_code":"140301","registration_date":"15-Jan-2020","valid_upto":"30-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PR0551: Sunny Enclave Premium
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PR0551',
      'Sunny Enclave Premium',
      'sunny-enclave-premium',
      'active',
      'Promoter: Bajwa Developers Limited (Other than Individual). Address: Near DMW Colony, H.B. No. 32, Village Rasulpur Siadan, Patiala. PIN: 147001. Valid upto: 31-Dec-2021',
      '{"district":"Patiala","promoter":"Bajwa Developers Limited (Other than Individual)","address":"Near DMW Colony, H.B. No. 32, Village Rasulpur Siadan, Patiala","pin_code":"147001","registration_date":"09-Dec-2019","valid_upto":"31-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PR0548: Ireo Waterfront Pocket 13
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PR0548',
      'Ireo Waterfront Pocket 13',
      'ireo-waterfront-pocket-13',
      'active',
      'Promoter: Ireo Waterfront Pvt Ltd (Other than Individual). Address: Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.. PIN: 141001. Valid upto: 31-Dec-2023',
      '{"district":"Ludhiana","promoter":"Ireo Waterfront Pvt Ltd (Other than Individual)","address":"Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.","pin_code":"141001","website":"www.ireowaterfont.com","registration_date":"29-Nov-2019","valid_upto":"31-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0568: Joy Smart Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0568',
      'Joy Smart Homes',
      'joy-smart-homes',
      'active',
      'Promoter: JOY HOMES (Other than Individual). Address: Plots in Block A Wave Estate Sector 85 Mohali. PIN: 140308. Valid upto: 31-Dec-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"JOY HOMES (Other than Individual)","address":"Plots in Block A Wave Estate Sector 85 Mohali","pin_code":"140308","registration_date":"10-Jan-2020","valid_upto":"31-Dec-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0108: PRIME CROSS RETAIL
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0108',
      'PRIME CROSS RETAIL',
      'prime-cross-retail',
      'active',
      'Promoter: PRIMEGATE DEVELOPERS (INDIA) (Other than Individual). Address: PR-7, Aerocity Road, Village Singhpura, Zirakpur. PIN: 140603. Valid upto: 30-Sep-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PRIMEGATE DEVELOPERS (INDIA) (Other than Individual)","address":"PR-7, Aerocity Road, Village Singhpura, Zirakpur","pin_code":"140603","registration_date":"03-Jan-2020","valid_upto":"30-Sep-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0561: Universal Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0561',
      'Universal Homes',
      'universal-homes',
      'active',
      'Promoter: Universal Infrastructure Company Private Limited (Other than Individual). Address: C/o JTPL City, Landran Road, Kharar, Sector - 115, Sahibzada Ajit Singh Nagar (Mohali). PIN: 140301. Valid upto: 30-Jul-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Universal Infrastructure Company Private Limited (Other than Individual)","address":"C/o JTPL City, Landran Road, Kharar, Sector - 115, Sahibzada Ajit Singh Nagar (Mohali)","pin_code":"140301","registration_date":"03-Jan-2020","valid_upto":"30-Jul-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR0566: Sahib Estate
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR0566',
      'Sahib Estate',
      'sahib-estate',
      'active',
      'Promoter: A.S.K builders pvt ltd (Other than Individual). Address: sahib estate ,village usmanpur & village dhanal. PIN: 144026. Valid upto: 07-Nov-2021',
      '{"district":"Jalandhar","promoter":"A.S.K builders pvt ltd (Other than Individual)","address":"sahib estate ,village usmanpur & village dhanal","pin_code":"144026","registration_date":"07-Jan-2020","valid_upto":"07-Nov-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL61-PC0109: SHAGUN SHOPPING MALL
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL61-PC0109',
      'SHAGUN SHOPPING MALL',
      'shagun-shopping-mall',
      'active',
      'Promoter: William Resorts and Developers Limited (Other than Individual). Address: Bhadson Road, Sidhuwal, Dudhan Kalan, Patiala. PIN: 147001. Valid upto: 30-Jun-2020',
      '{"district":"Patiala","promoter":"William Resorts and Developers Limited (Other than Individual)","address":"Bhadson Road, Sidhuwal, Dudhan Kalan, Patiala","pin_code":"147001","registration_date":"07-Jan-2020","valid_upto":"30-Jun-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR73-PR0565: BHALLA COLONY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR73-PR0565',
      'BHALLA COLONY',
      'bhalla-colony',
      'active',
      'Promoter: SATISH KUMAR BHALLA (Individual). Address: DHURI BYPASS ROAD SANGRUR. PIN: 148024. Valid upto: 30-Dec-2020',
      '{"district":"Sangrur","promoter":"SATISH KUMAR BHALLA (Individual)","address":"DHURI BYPASS ROAD SANGRUR","pin_code":"148024","registration_date":"07-Jan-2020","valid_upto":"30-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PR0567: Green Avenue
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PR0567',
      'Green Avenue',
      'green-avenue-dup4',
      'active',
      'Promoter: MGH Colonizers And Builders Private Limited (Other than Individual). Address: Village Baloke, Tehsil and District, Ludhiana.. PIN: 141001. Valid upto: 31-Dec-2020',
      '{"district":"Ludhiana","promoter":"MGH Colonizers And Builders Private Limited (Other than Individual)","address":"Village Baloke, Tehsil and District, Ludhiana.","pin_code":"141001","registration_date":"07-Jan-2020","valid_upto":"31-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0564: Green City-1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0564',
      'Green City-1',
      'green-city-1',
      'active',
      'Promoter: MGH Colonizers And Builders Private Limited (Other than Individual). Address: Green City-1, Dhandra Road,, Ludhiana. PIN: 141013. Valid upto: 31-Dec-2022',
      '{"district":"Ludhiana","promoter":"MGH Colonizers And Builders Private Limited (Other than Individual)","address":"Green City-1, Dhandra Road,, Ludhiana","pin_code":"141013","registration_date":"07-Jan-2020","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0563: The Empire
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0563',
      'The Empire',
      'the-empire-dup1',
      'active',
      'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe City, Mullanpur, Phase - 3D, Sahibzada Ajit Singh Nagar (Mohali). PIN: 140901. Valid upto: 28-Feb-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe City, Mullanpur, Phase - 3D, Sahibzada Ajit Singh Nagar (Mohali)","pin_code":"140901","website":"www.omaxe.com","registration_date":"24-Dec-2019","valid_upto":"28-Feb-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-GSP25-PR0562: USMANPUR CITY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-GSP25-PR0562',
      'USMANPUR CITY',
      'usmanpur-city',
      'active',
      'Promoter: USMANPUR FINANCE PRIVATE LIMITED (Other than Individual). Address: Batala-Gurdaspur Road, Village Qilla Tek Singh and Kandial, Batala, Gurdaspur. PIN: 143507. Valid upto: 22-Nov-2021',
      '{"district":"Gurdaspur","promoter":"USMANPUR FINANCE PRIVATE LIMITED (Other than Individual)","address":"Batala-Gurdaspur Road, Village Qilla Tek Singh and Kandial, Batala, Gurdaspur","pin_code":"143507","registration_date":"24-Dec-2019","valid_upto":"22-Nov-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI10-PC0107: Commercial Shopping Complex
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI10-PC0107',
      'Commercial Shopping Complex',
      'commercial-shopping-complex',
      'active',
      'Promoter: HOME DEVELOPERS (Other than Individual). Address: Village rampura barnala Road, Bathinda. PIN: 151103. Valid upto: 02-Aug-2023',
      '{"district":"Bathinda","promoter":"HOME DEVELOPERS (Other than Individual)","address":"Village rampura barnala Road, Bathinda","pin_code":"151103","registration_date":"24-Dec-2019","valid_upto":"02-Aug-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PR0559: Royal City Sector V
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PR0559',
      'Royal City Sector V',
      'royal-city-sector-v',
      'active',
      'Promoter: William Resorts And Developers Limited (Other than Individual). Address: Village-Noorkherian. PIN: 147002. Valid upto: 31-Dec-2019',
      '{"district":"Patiala","promoter":"William Resorts And Developers Limited (Other than Individual)","address":"Village-Noorkherian","pin_code":"147002","registration_date":"16-Dec-2019","valid_upto":"31-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI10-PM0147: Balaji Enclave, Rampura
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI10-PM0147',
      'Balaji Enclave, Rampura',
      'balaji-enclave-rampura',
      'active',
      'Promoter: Bhagwati Colonisers Pvt Ltd (Other than Individual). Address: Rampura, Tehsil Phul, Bathinda. PIN: 151001. Valid upto: 30-Dec-2020',
      '{"district":"Bathinda","promoter":"Bhagwati Colonisers Pvt Ltd (Other than Individual)","address":"Rampura, Tehsil Phul, Bathinda","pin_code":"151001","registration_date":"10-Dec-2019","valid_upto":"30-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR0553: Cooperative Housing Complex Dabwali Road Bathinda
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR0553',
      'Cooperative Housing Complex Dabwali Road Bathinda',
      'cooperative-housing-complex-dabwali-road-bathinda',
      'active',
      'Promoter: Housefed Punjab Chandigarh (Other than Individual). Address: Cooperative Housing Complex Bhatinda. PIN: 151004. Valid upto: 31-Dec-2020',
      '{"district":"Bathinda","promoter":"Housefed Punjab Chandigarh (Other than Individual)","address":"Cooperative Housing Complex Bhatinda","pin_code":"151004","registration_date":"10-Dec-2019","valid_upto":"31-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PM0148: Lake View Complex
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PM0148',
      'Lake View Complex',
      'lake-view-complex',
      'active',
      'Promoter: Jagtar Singh Bhatti (Individual). Address: Lake View, Village Kishanpura, MC Zirakpur. PIN: 160104. Valid upto: 30-Sep-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jagtar Singh Bhatti (Individual)","address":"Lake View, Village Kishanpura, MC Zirakpur","pin_code":"160104","registration_date":"12-Dec-2019","valid_upto":"30-Sep-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0556: GILLCO TOWERS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0556',
      'GILLCO TOWERS',
      'gillco-towers',
      'active',
      'Promoter: GILLCO DEVELOPERS AND BUILDERS PVT LTD (Other than Individual). Address: Gillco Valley, Village Santemajra, Tehsil Kharar. PIN: 140301. Valid upto: 30-Dec-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GILLCO DEVELOPERS AND BUILDERS PVT LTD (Other than Individual)","address":"Gillco Valley, Village Santemajra, Tehsil Kharar","pin_code":"140301","website":"https://www.gillcogroup.com","registration_date":"12-Dec-2019","valid_upto":"30-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTH08-PR0549: Sukhmani Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTH08-PR0549',
      'Sukhmani Enclave',
      'sukhmani-enclave',
      'active',
      'Promoter: Walia Projects Pvt.Ltd (Other than Individual). Address: LAL Singh Nagar. PIN: 151001. Valid upto: 30-Dec-2020',
      '{"district":"Bathinda","promoter":"Walia Projects Pvt.Ltd (Other than Individual)","address":"LAL Singh Nagar","pin_code":"151001","registration_date":"27-Nov-2019","valid_upto":"30-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR02-PR0550: Kashmir Gardens
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR02-PR0550',
      'Kashmir Gardens',
      'kashmir-gardens',
      'active',
      'Promoter: PARMINDER  SINGH (Individual). Address: Village Gumtala, Near Bye Pass Road. PIN: 143008. Valid upto: 31-Dec-2021',
      '{"district":"Amritsar","promoter":"PARMINDER  SINGH (Individual)","address":"Village Gumtala, Near Bye Pass Road","pin_code":"143008","registration_date":"27-Nov-2019","valid_upto":"31-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0546: UPTOWN SKYLLA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0546',
      'UPTOWN SKYLLA',
      'uptown-skylla',
      'active',
      'Promoter: Artique INfratech (Other than Individual). Address: Village Ramgarh Bhudha under MC zirakpur. PIN: 140603. Valid upto: 30-Aug-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Artique INfratech (Other than Individual)","address":"Village Ramgarh Bhudha under MC zirakpur","pin_code":"140603","registration_date":"21-Nov-2019","valid_upto":"30-Aug-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0545: SBP HOMES GARDENIA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0545',
      'SBP HOMES GARDENIA',
      'sbp-homes-gardenia',
      'active',
      'Promoter: Sbp shinestar private limited (Other than Individual). Address: Village Chajjumajra, Sector-126, Kharar, Sahibzada Ajit Singh Nagar (Mohali). PIN: 140301. Valid upto: 31-Mar-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sbp shinestar private limited (Other than Individual)","address":"Village Chajjumajra, Sector-126, Kharar, Sahibzada Ajit Singh Nagar (Mohali)","pin_code":"140301","website":"www.sbpgroup.in","registration_date":"21-Nov-2019","valid_upto":"31-Mar-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0542: FIO HOMES
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0542',
      'FIO HOMES',
      'fio-homes',
      'active',
      'Promoter: K S INFRACON PVT. LTD. (Other than Individual). Address: ROSEWOOD ZRK Village- Nabha, M.C.Zirakpur. PIN: 140301. Valid upto: 31-Mar-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"K S INFRACON PVT. LTD. (Other than Individual)","address":"ROSEWOOD ZRK Village- Nabha, M.C.Zirakpur","pin_code":"140301","registration_date":"18-Nov-2019","valid_upto":"31-Mar-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PR0544: GOLDEN LEAF
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PR0544',
      'GOLDEN LEAF',
      'golden-leaf',
      'active',
      'Promoter: MALHOTRA LAND DEVELOPERS & COLONISERS PVT LTD (Other than Individual). Address: Village Bilga, Hadbast No. 229, Tehsil Sahnewal, Ludhiana. PIN: 141001. Valid upto: 30-Sep-2022',
      '{"district":"Ludhiana","promoter":"MALHOTRA LAND DEVELOPERS & COLONISERS PVT LTD (Other than Individual)","address":"Village Bilga, Hadbast No. 229, Tehsil Sahnewal, Ludhiana","pin_code":"141001","registration_date":"20-Nov-2019","valid_upto":"30-Sep-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0541: Gold Mark Phase 2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0541',
      'Gold Mark Phase 2',
      'gold-mark-phase-2',
      'active',
      'Promoter: Vera Developers Private Limited (Other than Individual). Address: old Kalka Road, Park Street, Near Patiala Chowk, ZIrakpur. PIN: 140603. Valid upto: 31-Dec-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Vera Developers Private Limited (Other than Individual)","address":"old Kalka Road, Park Street, Near Patiala Chowk, ZIrakpur","pin_code":"140603","website":"www.goldmark.com","registration_date":"18-Nov-2019","valid_upto":"31-Dec-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0543: ATS Golf Meadows-V
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0543',
      'ATS Golf Meadows-V',
      'ats-golf-meadows-v',
      'active',
      'Promoter: ATS Estates Private Limited (Other than Individual). Address: Village Madhopur, Dera Bassi, Sahibzada Ajit Singh Nagar (Mohali). PIN: 140507. Valid upto: 24-Oct-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ATS Estates Private Limited (Other than Individual)","address":"Village Madhopur, Dera Bassi, Sahibzada Ajit Singh Nagar (Mohali)","pin_code":"140507","registration_date":"18-Nov-2019","valid_upto":"24-Oct-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0103: CENTRAL PLAZA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0103',
      'CENTRAL PLAZA',
      'central-plaza',
      'active',
      'Promoter: CENTRAL INFRADEVELOPERS (Other than Individual). Address: Villlage Shingpura, SUB TEH. ZIRAKPUR. PIN: 140603. Valid upto: 30-Jul-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CENTRAL INFRADEVELOPERS (Other than Individual)","address":"Villlage Shingpura, SUB TEH. ZIRAKPUR","pin_code":"140603","registration_date":"18-Nov-2019","valid_upto":"30-Jul-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0104: TDI PARK STREET
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0104',
      'TDI PARK STREET',
      'tdi-park-street',
      'active',
      'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: TDI PARK STREET, 200 FEET INTERNATIONAL AIRPORT ROAD SECTOR 118 TDI CITY 1. PIN: 140301. Valid upto: 25-Feb-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"TDI PARK STREET, 200 FEET INTERNATIONAL AIRPORT ROAD SECTOR 118 TDI CITY 1","pin_code":"140301","registration_date":"18-Nov-2019","valid_upto":"25-Feb-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR77-PR0538: Sun City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR77-PR0538',
      'Sun City',
      'sun-city-dup2',
      'active',
      'Promoter: Harinder  Singh Grewal (Individual). Address: Rampura Road, Sangrur. PIN: 148001. Valid upto: 30-Dec-2023',
      '{"district":"Sangrur","promoter":"Harinder  Singh Grewal (Individual)","address":"Rampura Road, Sangrur","pin_code":"148001","registration_date":"31-Oct-2019","valid_upto":"30-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0102: GUILD FORD SQUARE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0102',
      'GUILD FORD SQUARE',
      'guild-ford-square',
      'active',
      'Promoter: Chandigarh Builders & Promoters (Other than Individual). Address: VILLAGE RAMGARH, BHUDDA, ZIRAKPUR. PIN: 140603. Valid upto: 30-Jun-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Chandigarh Builders & Promoters (Other than Individual)","address":"VILLAGE RAMGARH, BHUDDA, ZIRAKPUR","pin_code":"140603","registration_date":"06-Nov-2019","valid_upto":"30-Jun-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0101: FOOD COURT SITE NO.04
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0101',
      'FOOD COURT SITE NO.04',
      'food-court-site-no04',
      'active',
      'Promoter: Remigate Buildestates (India) Private Limited (Other than Individual). Address: FOOD COURT SITE NO.04, SECTOR-62, S.A.S NAGAR. PIN: 160062. Valid upto: 31-Dec-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Remigate Buildestates (India) Private Limited (Other than Individual)","address":"FOOD COURT SITE NO.04, SECTOR-62, S.A.S NAGAR","pin_code":"160062","registration_date":"01-Nov-2019","valid_upto":"31-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR03-PR0539: HOLY CITY PARADISE PHASE-I
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR03-PR0539',
      'HOLY CITY PARADISE PHASE-I',
      'holy-city-paradise-phase-i',
      'active',
      'Promoter: HARINDER   SINGH (Individual). Address: Village Mahal and Khairabad, Amritsar. PIN: 143001. Valid upto: 19-Mar-2023',
      '{"district":"Amritsar","promoter":"HARINDER   SINGH (Individual)","address":"Village Mahal and Khairabad, Amritsar","pin_code":"143001","registration_date":"31-Oct-2019","valid_upto":"19-Mar-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0535: CENTRAL TOWN
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0535',
      'CENTRAL TOWN',
      'central-town',
      'active',
      'Promoter: CENTRAL INFRADEVELOPERS (Other than Individual). Address: CENTRAL TOWN, NAGLA ROAD, NEAR MANAV MANGAL SMART SCHOOL ZIRAKPUR, VILL. NAGLA, SUB TEH, ZIRAKPUR. PIN: 140603. Valid upto: 30-Jul-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CENTRAL INFRADEVELOPERS (Other than Individual)","address":"CENTRAL TOWN, NAGLA ROAD, NEAR MANAV MANGAL SMART SCHOOL ZIRAKPUR, VILL. NAGLA, SUB TEH, ZIRAKPUR","pin_code":"140603","registration_date":"25-Oct-2019","valid_upto":"30-Jul-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0536: The Paradise
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0536',
      'The Paradise',
      'the-paradise',
      'active',
      'Promoter: AVENUE BUILDERS AND PROMOTORS (Other than Individual). Address: Block -F2, wave Estate, Sector -85. PIN: 140308. Valid upto: 01-Oct-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AVENUE BUILDERS AND PROMOTORS (Other than Individual)","address":"Block -F2, wave Estate, Sector -85","pin_code":"140308","website":"www.theparadiseindia.com","registration_date":"25-Oct-2019","valid_upto":"01-Oct-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0100: HLP GALLERIA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0100',
      'HLP GALLERIA',
      'hlp-galleria',
      'active',
      'Promoter: KCB INFRA (Other than Individual). Address: Sector 62, SAS Nagar, Mohali. PIN: 160062. Valid upto: 30-Sep-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KCB INFRA (Other than Individual)","address":"Sector 62, SAS Nagar, Mohali","pin_code":"160062","registration_date":"04-Oct-2019","valid_upto":"30-Sep-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR03-PR0527: Veer Gardens (Extension 5.75 Acres)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR03-PR0527',
      'Veer Gardens (Extension 5.75 Acres)',
      'veer-gardens-extension-575-acres',
      'active',
      'Promoter: VEER COLONISERS AND BUILDERS PVT. LTD. (Other than Individual). Address: Village Naushehra, Majitha Road, Amritsar-2. PIN: 143001. Valid upto: 31-Aug-2024',
      '{"district":"Amritsar","promoter":"VEER COLONISERS AND BUILDERS PVT. LTD. (Other than Individual)","address":"Village Naushehra, Majitha Road, Amritsar-2","pin_code":"143001","registration_date":"04-Oct-2019","valid_upto":"31-Aug-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0528: MODERN VALLEY 1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0528',
      'MODERN VALLEY 1',
      'modern-valley-1',
      'active',
      'Promoter: Gurpreet Developers and Promoters Pvt. ltd. (Other than Individual). Address: modern valley, near village khanpur. PIN: 140301. Valid upto: 09-Aug-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gurpreet Developers and Promoters Pvt. ltd. (Other than Individual)","address":"modern valley, near village khanpur","pin_code":"140301","website":"www.gdphomes.in","registration_date":"04-Oct-2019","valid_upto":"09-Aug-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0099: CP SQUARE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0099',
      'CP SQUARE',
      'cp-square',
      'active',
      'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: CP SQUARE, TDI CITY-I SECTOR 117 INTERNATIONAL AIRPORT ROAD. PIN: 140301. Valid upto: 30-Dec-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"CP SQUARE, TDI CITY-I SECTOR 117 INTERNATIONAL AIRPORT ROAD","pin_code":"140301","registration_date":"24-Sep-2019","valid_upto":"30-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-GSP27-PR0525: SCHEME NO 7
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-GSP27-PR0525',
      'SCHEME NO 7',
      'scheme-no-7',
      'active',
      'Promoter: GURDASPUR IMPROVEMENT TRUST (Other than Individual). Address: Scheme no 7, Amritsar pathankot bypass road. PIN: 143521. Valid upto: 31-Dec-2024',
      '{"district":"Gurdaspur","promoter":"GURDASPUR IMPROVEMENT TRUST (Other than Individual)","address":"Scheme no 7, Amritsar pathankot bypass road","pin_code":"143521","registration_date":"27-Sep-2019","valid_upto":"31-Dec-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PR0523: PALM PARK ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PR0523',
      'PALM PARK ENCLAVE',
      'palm-park-enclave',
      'active',
      'Promoter: Punnu Land Developers Pvt.Ltd (Other than Individual). Address: Village- Brahman Majra, Ludhiana. PIN: 141003. Valid upto: 30-Jun-2022',
      '{"district":"Ludhiana","promoter":"Punnu Land Developers Pvt.Ltd (Other than Individual)","address":"Village- Brahman Majra, Ludhiana","pin_code":"141003","registration_date":"27-Sep-2019","valid_upto":"30-Jun-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0524: FIO HOMES 2 ZRK VILLAGE- KISHANPURA, M.C. ZIRAKPUR
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0524',
      'FIO HOMES 2 ZRK VILLAGE- KISHANPURA, M.C. ZIRAKPUR',
      'fio-homes-2-zrk-village-kishanpura-mc-zirakpur',
      'active',
      'Promoter: K S INFRACON PVT. LTD. (Other than Individual). Address: Fio Homes 2 ZRK Village Kishanpura,MC Zirakpur. PIN: 160104. Valid upto: 31-Mar-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"K S INFRACON PVT. LTD. (Other than Individual)","address":"Fio Homes 2 ZRK Village Kishanpura,MC Zirakpur","pin_code":"160104","registration_date":"27-Sep-2019","valid_upto":"31-Mar-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0517: Ganesh Nagar
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0517',
      'Ganesh Nagar',
      'ganesh-nagar',
      'active',
      'Promoter: Kulvinder  Singh (Individual). Address: Village-Gholumajra. PIN: 140507. Valid upto: 30-Dec-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Kulvinder  Singh (Individual)","address":"Village-Gholumajra","pin_code":"140507","registration_date":"24-Sep-2019","valid_upto":"30-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PR0487: Glada Estates
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PR0487',
      'Glada Estates',
      'glada-estates',
      'active',
      'Promoter: Greater Ludhiana Area Development Authority (Other than Individual). Address: Village Daad, Hadbast No.279. PIN: 142022. Valid upto: 29-Apr-2024',
      '{"district":"Ludhiana","promoter":"Greater Ludhiana Area Development Authority (Other than Individual)","address":"Village Daad, Hadbast No.279","pin_code":"142022","website":"https://glada.gov.in/","registration_date":"24-Jul-2019","valid_upto":"29-Apr-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0521: SIVANTA GREENS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0521',
      'SIVANTA GREENS',
      'sivanta-greens',
      'active',
      'Promoter: AN BUILDERS (Other than Individual). Address: B Block Wave Estate, Sector 85,. PIN: 140308. Valid upto: 31-Aug-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AN BUILDERS (Other than Individual)","address":"B Block Wave Estate, Sector 85,","pin_code":"140308","registration_date":"23-Sep-2019","valid_upto":"31-Aug-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0520: Joy Homes Phase IV
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0520',
      'Joy Homes Phase IV',
      'joy-homes-phase-iv',
      'active',
      'Promoter: JOY HOMES (Other than Individual). Address: Plots in Block 2 Wave Estate Sector 85 Mohali. PIN: 140308. Valid upto: 31-Mar-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"JOY HOMES (Other than Individual)","address":"Plots in Block 2 Wave Estate Sector 85 Mohali","pin_code":"140308","registration_date":"23-Sep-2019","valid_upto":"31-Mar-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR03-PR0511: Raja Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR03-PR0511',
      'Raja Enclave',
      'raja-enclave',
      'active',
      'Promoter: Motherhood Builders and Land Developers Ltd (Other than Individual). Address: Bhagtawala, Near Grain Market, Bhagtanwala near grain market amritsar. PIN: 143001. Valid upto: 30-Jul-2022',
      '{"district":"Amritsar","promoter":"Motherhood Builders and Land Developers Ltd (Other than Individual)","address":"Bhagtawala, Near Grain Market, Bhagtanwala near grain market amritsar","pin_code":"143001","registration_date":"23-Sep-2019","valid_upto":"30-Jul-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-GSP27-PR0519: Usmanpur Villas
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-GSP27-PR0519',
      'Usmanpur Villas',
      'usmanpur-villas',
      'active',
      'Promoter: Usmanpur Finance Pvt. Ltd (Other than Individual). Address: Village Dhupsari, Teh. Batala. PIN: 143505. Valid upto: 31-Dec-2024',
      '{"district":"Gurdaspur","promoter":"Usmanpur Finance Pvt. Ltd (Other than Individual)","address":"Village Dhupsari, Teh. Batala","pin_code":"143505","registration_date":"23-Sep-2019","valid_upto":"31-Dec-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0510: AJITGARH
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0510',
      'AJITGARH',
      'ajitgarh',
      'active',
      'Promoter: THE PANCHSHEEL CO-OP. HOUSE BUILDING SOCIETY  (Other than Individual). Address: Village Rampur Kalan, Tehsil Banur, Distt. Sahibzada Ajit Singh Nagar (Mohali). PIN: 140603. Valid upto: 31-Mar-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"THE PANCHSHEEL CO-OP. HOUSE BUILDING SOCIETY  (Other than Individual)","address":"Village Rampur Kalan, Tehsil Banur, Distt. Sahibzada Ajit Singh Nagar (Mohali)","pin_code":"140603","registration_date":"16-Sep-2019","valid_upto":"31-Mar-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PI0007: HI - TECH  CYCLE VALLEY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PI0007',
      'HI - TECH  CYCLE VALLEY',
      'hi-tech-cycle-valley',
      'active',
      'Promoter: PUNJAB SMALL INDUSTRIES & EXPORT CORPORATION LTD. (Other than Individual). Address: VILLAGE DHANANSU. PIN: 141112. Valid upto: 05-Jun-2022',
      '{"district":"Ludhiana","promoter":"PUNJAB SMALL INDUSTRIES & EXPORT CORPORATION LTD. (Other than Individual)","address":"VILLAGE DHANANSU","pin_code":"141112","registration_date":"16-Sep-2019","valid_upto":"05-Jun-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0518: Rajindra Colony
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0518',
      'Rajindra Colony',
      'rajindra-colony',
      'active',
      'Promoter: Rajinder  Singh HUF (Individual). Address: Siswan Kurali Road, Kharar. PIN: 141301. Valid upto: 25-Mar-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Rajinder  Singh HUF (Individual)","address":"Siswan Kurali Road, Kharar","pin_code":"141301","registration_date":"10-Sep-2019","valid_upto":"25-Mar-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PR0507: Ludhiana Greens
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PR0507',
      'Ludhiana Greens',
      'ludhiana-greens',
      'active',
      'Promoter: Greens Developers & Colonizers (Other than Individual). Address: Village- JAINPUR, Hambra Road, Ludhiana. PIN: 141001. Valid upto: 31-Aug-2020',
      '{"district":"Ludhiana","promoter":"Greens Developers & Colonizers (Other than Individual)","address":"Village- JAINPUR, Hambra Road, Ludhiana","pin_code":"141001","registration_date":"10-Sep-2019","valid_upto":"31-Aug-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0516: Dream Medows II (Imperial County)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0516',
      'Dream Medows II (Imperial County)',
      'dream-medows-ii-imperial-county',
      'active',
      'Promoter: WWICS ESTATES PRIVATE LIMITED (Other than Individual). Address: Kurali H B No.121. PIN: 140103. Valid upto: 31-Dec-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"WWICS ESTATES PRIVATE LIMITED (Other than Individual)","address":"Kurali H B No.121","pin_code":"140103","registration_date":"06-Sep-2019","valid_upto":"31-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0515: PARAS ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0515',
      'PARAS ENCLAVE',
      'paras-enclave',
      'active',
      'Promoter: Vijay  Kumar Bindal (Individual). Address: SHEKPURA KHURAD. PIN: 140603. Valid upto: 30-Apr-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Vijay  Kumar Bindal (Individual)","address":"SHEKPURA KHURAD","pin_code":"140603","registration_date":"06-Sep-2019","valid_upto":"30-Apr-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0512: J.S BACHHAL ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0512',
      'J.S BACHHAL ENCLAVE',
      'js-bachhal-enclave',
      'active',
      'Promoter: Jaswinder   Singh (Individual). Address: Village Gholumajra, H.B 209, N.A.C Lalru, Tehsil. Derabassi,. PIN: 140501. Valid upto: 30-Jun-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jaswinder   Singh (Individual)","address":"Village Gholumajra, H.B 209, N.A.C Lalru, Tehsil. Derabassi,","pin_code":"140501","registration_date":"06-Sep-2019","valid_upto":"30-Jun-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0513: City Heights
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0513',
      'City Heights',
      'city-heights-dup1',
      'active',
      'Promoter: Sanjeev Kumar and Others (Other than Individual). Address: Village Peermuchalla, Zirakpur. PIN: 140603. Valid upto: 31-Dec-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sanjeev Kumar and Others (Other than Individual)","address":"Village Peermuchalla, Zirakpur","pin_code":"140603","registration_date":"06-Sep-2019","valid_upto":"31-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTH08-PR0514: Shree Balaji Colony
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTH08-PR0514',
      'Shree Balaji Colony',
      'shree-balaji-colony',
      'active',
      'Promoter: S S AND ASSOCIATES (Other than Individual). Address: Raman Mandi. PIN: 151301. Valid upto: 31-Dec-2023',
      '{"district":"Bathinda","promoter":"S S AND ASSOCIATES (Other than Individual)","address":"Raman Mandi","pin_code":"151301","registration_date":"06-Sep-2019","valid_upto":"31-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0509: ERINA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0509',
      'ERINA',
      'erina',
      'active',
      'Promoter: Gurpreet Developers and Promoters Pvt. ltd. (Other than Individual). Address: kharar-kurali highway NH-205, village daun majra, kharar. PIN: 140301. Valid upto: 12-Jun-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gurpreet Developers and Promoters Pvt. ltd. (Other than Individual)","address":"kharar-kurali highway NH-205, village daun majra, kharar","pin_code":"140301","website":"www.gdphomes.in","registration_date":"03-Sep-2019","valid_upto":"12-Jun-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PR0506: ROYAL CITY SECTOR 4
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PR0506',
      'ROYAL CITY SECTOR 4',
      'royal-city-sector-4',
      'active',
      'Promoter: RSG PROPERTIES PVT. LTD. (Other than Individual). Address: ROYAL CITY SECTOR 4, VILLAGE NOOR KHERIAN. PIN: 147002. Valid upto: 31-Dec-2019',
      '{"district":"Patiala","promoter":"RSG PROPERTIES PVT. LTD. (Other than Individual)","address":"ROYAL CITY SECTOR 4, VILLAGE NOOR KHERIAN","pin_code":"147002","registration_date":"03-Sep-2019","valid_upto":"31-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PR0508: HAVEN LIVINGS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PR0508',
      'HAVEN LIVINGS',
      'haven-livings',
      'active',
      'Promoter: Shyam  Sunder Kothari (Individual). Address: Village Ayali Lhurd H.B No153. PIN: 141001. Valid upto: 30-Jun-2022',
      '{"district":"Ludhiana","promoter":"Shyam  Sunder Kothari (Individual)","address":"Village Ayali Lhurd H.B No153","pin_code":"141001","registration_date":"29-Aug-2019","valid_upto":"30-Jun-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-TTN87-PR0505: Temple City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-TTN87-PR0505',
      'Temple City',
      'temple-city',
      'active',
      'Promoter: Satyam Land Developers (Other than Individual). Address: Vill-Balachak, HB No.-52,tehsil & Distt-Tarn Taran. PIN: 143001. Valid upto: 30-Dec-2020',
      '{"district":"Tarn Taran","promoter":"Satyam Land Developers (Other than Individual)","address":"Vill-Balachak, HB No.-52,tehsil & Distt-Tarn Taran","pin_code":"143001","registration_date":"27-Aug-2019","valid_upto":"30-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0504: Guru Nanak Dev Nagar
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0504',
      'Guru Nanak Dev Nagar',
      'guru-nanak-dev-nagar',
      'active',
      'Promoter: Bharat  Bhushan bansal (Individual). Address: Village Hassanpur, Dappar, Lalru. PIN: 140501. Valid upto: 31-Jul-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bharat  Bhushan bansal (Individual)","address":"Village Hassanpur, Dappar, Lalru","pin_code":"140501","registration_date":"16-Aug-2019","valid_upto":"31-Jul-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PI0006: Mega Food Park
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PI0006',
      'Mega Food Park',
      'mega-food-park',
      'active',
      'Promoter: PUNJAB AGRO INDUSTRIES CORPORATION LIMITED (Other than Individual). Address: Mega Food Park, Village Ladhowal. PIN: 140008. Valid upto: 31-Dec-2020',
      '{"district":"Ludhiana","promoter":"PUNJAB AGRO INDUSTRIES CORPORATION LIMITED (Other than Individual)","address":"Mega Food Park, Village Ladhowal","pin_code":"140008","website":"www.punjabagro.gov.in","registration_date":"16-Aug-2019","valid_upto":"31-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR78-PR0499: Maya Garden - Sunam
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR78-PR0499',
      'Maya Garden - Sunam',
      'maya-garden-sunam',
      'active',
      'Promoter: Luxmi Builders (Other than Individual). Address: Jakhal Road, Sunam. PIN: 148028. Valid upto: 30-Jun-2022',
      '{"district":"Sangrur","promoter":"Luxmi Builders (Other than Individual)","address":"Jakhal Road, Sunam","pin_code":"148028","registration_date":"16-Aug-2019","valid_upto":"30-Jun-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI10-PR0501: Balaji Enclave Ext 1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI10-PR0501',
      'Balaji Enclave Ext 1',
      'balaji-enclave-ext-1',
      'active',
      'Promoter: Guru Nanak Builders (Other than Individual). Address: At Rampura, Tehsil- Phul, Distt- Bathinda. PIN: 151001. Valid upto: 30-May-2021',
      '{"district":"Bathinda","promoter":"Guru Nanak Builders (Other than Individual)","address":"At Rampura, Tehsil- Phul, Distt- Bathinda","pin_code":"151001","registration_date":"16-Aug-2019","valid_upto":"30-May-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR03-PR0498: Dream City, Amritsar - Phase 1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR03-PR0498',
      'Dream City, Amritsar - Phase 1',
      'dream-city-amritsar-phase-1',
      'active',
      'Promoter: AIPL Housing and Urban Infrastructure Limited (Other than Individual). Address: Village Manawala, NH1, GT Road. PIN: 143109. Valid upto: 28-Feb-2020',
      '{"district":"Amritsar","promoter":"AIPL Housing and Urban Infrastructure Limited (Other than Individual)","address":"Village Manawala, NH1, GT Road","pin_code":"143109","registration_date":"16-Aug-2019","valid_upto":"28-Feb-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-MNS51-PR0503: SAKET DHAM GARG COLONY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-MNS51-PR0503',
      'SAKET DHAM GARG COLONY',
      'saket-dham-garg-colony',
      'active',
      'Promoter: AGGARWAL BUILDCON PVT LTD (Other than Individual). Address: WARD NO.4 SIRSA ROAD, SARDULGARH. PIN: 151507. Valid upto: 31-Dec-2021',
      '{"district":"Mansa","promoter":"AGGARWAL BUILDCON PVT LTD (Other than Individual)","address":"WARD NO.4 SIRSA ROAD, SARDULGARH","pin_code":"151507","registration_date":"16-Aug-2019","valid_upto":"31-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0502: Vasant Vihar
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0502',
      'Vasant Vihar',
      'vasant-vihar',
      'active',
      'Promoter: Daljit   Singh (Individual). Address: Village-Lalru. PIN: 140501. Valid upto: 30-Dec-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Daljit   Singh (Individual)","address":"Village-Lalru","pin_code":"140501","registration_date":"16-Aug-2019","valid_upto":"30-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR02-PR0500: HARSUKH ESTATE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR02-PR0500',
      'HARSUKH ESTATE',
      'harsukh-estate',
      'active',
      'Promoter: HARSUKH BUILDERS & LAND DEVELOPERS PVT. LTD. (Other than Individual). Address: jandiala amritsar, jandiala guru bye pass amritsar. PIN: 143115. Valid upto: 25-Jun-2022',
      '{"district":"Amritsar","promoter":"HARSUKH BUILDERS & LAND DEVELOPERS PVT. LTD. (Other than Individual)","address":"jandiala amritsar, jandiala guru bye pass amritsar","pin_code":"143115","website":"http://harsukhbuilders.com","registration_date":"16-Aug-2019","valid_upto":"25-Jun-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZL20-PR0497: Royal City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZL20-PR0497',
      'Royal City',
      'royal-city-dup2',
      'active',
      'Promoter: Vera Developers Private Limited (Other than Individual). Address: Abohar Road, Near M.C. Colony. PIN: 152116. Valid upto: 31-Mar-2020',
      '{"district":"Fazilka","promoter":"Vera Developers Private Limited (Other than Individual)","address":"Abohar Road, Near M.C. Colony","pin_code":"152116","website":"www.royalcityfazilka.com","registration_date":"13-Aug-2019","valid_upto":"31-Mar-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0496: LOK AWAS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0496',
      'LOK AWAS',
      'lok-awas',
      'active',
      'Promoter: Vera Developers Private Limited (Other than Individual). Address: Near TDI Club House, Sec 74-A, Mohali. PIN: 160055. Valid upto: 31-Mar-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Vera Developers Private Limited (Other than Individual)","address":"Near TDI Club House, Sec 74-A, Mohali","pin_code":"160055","website":"www.lokawas.com","registration_date":"09-Aug-2019","valid_upto":"31-Mar-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-KPT40-PR0493: Gilco Greens
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-KPT40-PR0493',
      'Gilco Greens',
      'gilco-greens',
      'active',
      'Promoter: GILLSONS CONSTRUCTIONS LIMITED (Other than Individual). Address: Gilco Greens Hoshiarpur road, Tehsil Phagwara, District Kapurthala. PIN: 144401. Valid upto: 01-May-2022',
      '{"district":"Kapurthala","promoter":"GILLSONS CONSTRUCTIONS LIMITED (Other than Individual)","address":"Gilco Greens Hoshiarpur road, Tehsil Phagwara, District Kapurthala","pin_code":"144401","registration_date":"06-Aug-2019","valid_upto":"01-May-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0492: Joy Homes Phase III Plot No. F170 & F171
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0492',
      'Joy Homes Phase III Plot No. F170 & F171',
      'joy-homes-phase-iii-plot-no-f170-f171',
      'active',
      'Promoter: JOY HOMES (Other than Individual). Address: Plots in Block 2 Wave Estate Sector 85 Mohali. PIN: 140308. Valid upto: 31-Dec-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"JOY HOMES (Other than Individual)","address":"Plots in Block 2 Wave Estate Sector 85 Mohali","pin_code":"140308","registration_date":"06-Aug-2019","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0494: Balaji Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0494',
      'Balaji Homes',
      'balaji-homes',
      'active',
      'Promoter: Balaji Infra buildtech (Other than Individual). Address: Village Jhugian, kharar. PIN: 140301. Valid upto: 31-Dec-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Balaji Infra buildtech (Other than Individual)","address":"Village Jhugian, kharar","pin_code":"140301","website":"balajiinfrabuildtech.com","registration_date":"08-Aug-2019","valid_upto":"31-Dec-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0491: DREAM HOMES
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0491',
      'DREAM HOMES',
      'dream-homes-dup2',
      'active',
      'Promoter: DREAM HOMES KISHANPURA, ZIRAKPUR, PUNJAB (Other than Individual). Address: DREAM HOMES, SCO 5, VILLAGE KISHANPURA, ZIRAKPUR. PIN: 140603. Valid upto: 31-Mar-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"DREAM HOMES KISHANPURA, ZIRAKPUR, PUNJAB (Other than Individual)","address":"DREAM HOMES, SCO 5, VILLAGE KISHANPURA, ZIRAKPUR","pin_code":"140603","registration_date":"29-Jul-2019","valid_upto":"31-Mar-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-HSP32-PR0488: SANT ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-HSP32-PR0488',
      'SANT ENCLAVE',
      'sant-enclave-dup2',
      'active',
      'Promoter: Jaswinder   Singh (Individual). Address: Village-Khichhian, Mukerian, Distt-Mukerian. PIN: 144211. Valid upto: 30-Jun-2024',
      '{"district":"Hoshiarpur","promoter":"Jaswinder   Singh (Individual)","address":"Village-Khichhian, Mukerian, Distt-Mukerian","pin_code":"144211","registration_date":"29-Jul-2019","valid_upto":"30-Jun-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0489: BELLA VISTA -2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0489',
      'BELLA VISTA -2',
      'bella-vista-2',
      'active',
      'Promoter: PHENOMENAL CONSTRUCTION PRIVATE LIMITED (Other than Individual). Address: VILLAGE GHOLUMAJRA, NAC LARLRU, DERAABASSI. PIN: 140507. Valid upto: 30-Jun-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PHENOMENAL CONSTRUCTION PRIVATE LIMITED (Other than Individual)","address":"VILLAGE GHOLUMAJRA, NAC LARLRU, DERAABASSI","pin_code":"140507","registration_date":"26-Jul-2019","valid_upto":"30-Jun-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PC0097: NAULAKHA TRADE CENTER
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PC0097',
      'NAULAKHA TRADE CENTER',
      'naulakha-trade-center',
      'active',
      'Promoter: Hanumant Commercial Site Planners and Developers (Other than Individual). Address: Kesar Ganj Road, Ludhiana. PIN: 141203. Valid upto: 30-Jun-2023',
      '{"district":"Ludhiana","promoter":"Hanumant Commercial Site Planners and Developers (Other than Individual)","address":"Kesar Ganj Road, Ludhiana","pin_code":"141203","registration_date":"24-Jul-2019","valid_upto":"30-Jun-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PR0486: STAR ENCLAVE-III
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PR0486',
      'STAR ENCLAVE-III',
      'star-enclave-iii',
      'active',
      'Promoter: EMPIRE COLONIZERS PRIVATE LIMITED (Other than Individual). Address: STAR ENCLAVE III, VILLAGE GILL-II, MALERKOTLA ROAD. PIN: 141116. Valid upto: 30-Oct-2022',
      '{"district":"Ludhiana","promoter":"EMPIRE COLONIZERS PRIVATE LIMITED (Other than Individual)","address":"STAR ENCLAVE III, VILLAGE GILL-II, MALERKOTLA ROAD","pin_code":"141116","registration_date":"18-Jul-2019","valid_upto":"30-Oct-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0484: VICTORIA ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0484',
      'VICTORIA ENCLAVE',
      'victoria-enclave-dup1',
      'active',
      'Promoter: Ashok  Kumar (Individual). Address: VILLAGE Bhabat, Punjab. PIN: 140603. Valid upto: 31-Dec-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Ashok  Kumar (Individual)","address":"VILLAGE Bhabat, Punjab","pin_code":"140603","registration_date":"17-Jul-2019","valid_upto":"31-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR77-PR0483: Panchvati Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR77-PR0483',
      'Panchvati Enclave',
      'panchvati-enclave-dup2',
      'active',
      'Promoter: Sangrur Builders Private Limited (Other than Individual). Address: Vill-Patti Bir Singh Bhadaur, Tehsil  Barnala. PIN: 148001. Valid upto: 31-Dec-2022',
      '{"district":"Barnala","promoter":"Sangrur Builders Private Limited (Other than Individual)","address":"Vill-Patti Bir Singh Bhadaur, Tehsil  Barnala","pin_code":"148001","registration_date":"15-Jul-2019","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0482: Kings Lane Phase 1, Plot No. 2251, 2252, 2265 to 2270 in TDI Mega Project
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0482',
      'Kings Lane Phase 1, Plot No. 2251, 2252, 2265 to 2270 in TDI Mega Project',
      'kings-lane-phase-1-plot-no-2251-2252-2265-to-2270-in-tdi-mega-project',
      'active',
      'Promoter: Kishkindha Builders and Creators (Other than Individual). Address: Kings Lane, sector 110,, TDI, Landran Kharar Road. PIN: 140307. Valid upto: 31-Dec-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Kishkindha Builders and Creators (Other than Individual)","address":"Kings Lane, sector 110,, TDI, Landran Kharar Road","pin_code":"140307","website":"www.kishkindhagroup.com","registration_date":"15-Jul-2019","valid_upto":"31-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL62-PR0485: NABHA ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL62-PR0485',
      'NABHA ENCLAVE',
      'nabha-enclave',
      'active',
      'Promoter: Puru Colonisers Private Limited (Other than Individual). Address: VILLAGE Duladi, Tehsil Nabha. PIN: 147201. Valid upto: 30-Jun-2022',
      '{"district":"Patiala","promoter":"Puru Colonisers Private Limited (Other than Individual)","address":"VILLAGE Duladi, Tehsil Nabha","pin_code":"147201","registration_date":"15-Jul-2019","valid_upto":"30-Jun-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0481: Defence City Phase 1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0481',
      'Defence City Phase 1',
      'defence-city-phase-1',
      'active',
      'Promoter: Kwality Buildtech Pvt. Ltd (Other than Individual). Address: Ponta Sahib Road Ambala, Distt.-Derabassi. PIN: 141001. Valid upto: 01-Aug-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Kwality Buildtech Pvt. Ltd (Other than Individual)","address":"Ponta Sahib Road Ambala, Distt.-Derabassi","pin_code":"141001","registration_date":"11-Jul-2019","valid_upto":"01-Aug-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR02-PR0479: GLOBAL CITY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR02-PR0479',
      'GLOBAL CITY',
      'global-city',
      'active',
      'Promoter: TEWARI & GANGAHAR INFRASTRUCTURES P. LTD, (Other than Individual). Address: VILLAGE VALLAH. PIN: 143001. Valid upto: 31-Mar-2020',
      '{"district":"Amritsar","promoter":"TEWARI & GANGAHAR INFRASTRUCTURES P. LTD, (Other than Individual)","address":"VILLAGE VALLAH","pin_code":"143001","registration_date":"01-Jul-2019","valid_upto":"31-Mar-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PR0480: GOLF LINK APARTMENTS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PR0480',
      'GOLF LINK APARTMENTS',
      'golf-link-apartments',
      'active',
      'Promoter: P.P.R ASSOCIATES- II (Other than Individual). Address: VILLAGE TALWARA, TEHSIL & DIST. LUDHIANA. PIN: 141001. Valid upto: 31-Aug-2020',
      '{"district":"Ludhiana","promoter":"P.P.R ASSOCIATES- II (Other than Individual)","address":"VILLAGE TALWARA, TEHSIL & DIST. LUDHIANA","pin_code":"141001","registration_date":"01-Jul-2019","valid_upto":"31-Aug-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR02-PR0478: GLOBAL SOUTH END
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR02-PR0478',
      'GLOBAL SOUTH END',
      'global-south-end',
      'active',
      'Promoter: UMANG  TEWARI (Individual). Address: VILLAGE VALLAH. PIN: 143001. Valid upto: 31-Mar-2020',
      '{"district":"Amritsar","promoter":"UMANG  TEWARI (Individual)","address":"VILLAGE VALLAH","pin_code":"143001","registration_date":"01-Jul-2019","valid_upto":"31-Mar-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0477: OCEAN RESIDENCY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0477',
      'OCEAN RESIDENCY',
      'ocean-residency',
      'active',
      'Promoter: Omkareshwar Builders Pvt Ltd (Other than Individual). Address: Barwala Road, Village, Mouja, Madhopur,. PIN: 140507. Valid upto: 30-Jun-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omkareshwar Builders Pvt Ltd (Other than Individual)","address":"Barwala Road, Village, Mouja, Madhopur,","pin_code":"140507","registration_date":"25-Jun-2019","valid_upto":"30-Jun-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH46-PR0476: ROYALTON HEIGHTS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH46-PR0476',
      'ROYALTON HEIGHTS',
      'royalton-heights',
      'active',
      'Promoter: H.G.K.DEVELOPERS PVT.LTD. (Other than Individual). Address: BLOCK 22 ROYALTON CITY, G.T.ROAD DORAHA. PIN: 141421. Valid upto: 17-May-2024',
      '{"district":"Ludhiana","promoter":"H.G.K.DEVELOPERS PVT.LTD. (Other than Individual)","address":"BLOCK 22 ROYALTON CITY, G.T.ROAD DORAHA","pin_code":"141421","website":"www.royaltonheights.com","registration_date":"25-Jun-2019","valid_upto":"17-May-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0464: Signature City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0464',
      'Signature City',
      'signature-city',
      'active',
      'Promoter: KLV Divya Builders & Developers (Other than Individual). Address: Signature City, Landran Banur Road , Near by Palazzo Resorts. PIN: 140306. Valid upto: 30-Oct-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KLV Divya Builders & Developers (Other than Individual)","address":"Signature City, Landran Banur Road , Near by Palazzo Resorts","pin_code":"140306","website":"www.signaturecitymohali.com","registration_date":"28-May-2019","valid_upto":"30-Oct-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PR0465: Bassera Heights
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PR0465',
      'Bassera Heights',
      'bassera-heights',
      'active',
      'Promoter: Basera Realtors Pvt.Ltd (Other than Individual). Address: Vill-Ayali Khurd and Barewal. PIN: 142027. Valid upto: 30-Jun-2021',
      '{"district":"Ludhiana","promoter":"Basera Realtors Pvt.Ltd (Other than Individual)","address":"Vill-Ayali Khurd and Barewal","pin_code":"142027","registration_date":"28-May-2019","valid_upto":"30-Jun-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PM0144: Green Park
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PM0144',
      'Green Park',
      'green-park',
      'active',
      'Promoter: Hanumant Town Planners and Developers Pvt Ltd (Other than Individual). Address: Village-Kohara, Sahnewal, Ludhiana. PIN: 141001. Valid upto: 30-Jun-2022',
      '{"district":"Ludhiana","promoter":"Hanumant Town Planners and Developers Pvt Ltd (Other than Individual)","address":"Village-Kohara, Sahnewal, Ludhiana","pin_code":"141001","registration_date":"19-Jun-2019","valid_upto":"30-Jun-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR03-PR0475: SG GARDENS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR03-PR0475',
      'SG GARDENS',
      'sg-gardens',
      'active',
      'Promoter: SHARMA & GANGAHAR BUILDERS & COLONISERS PVT. LTD (Other than Individual). Address: VILLAGE NAUSHEHRA, MAJITHA ROAD. PIN: 143008. Valid upto: 31-Mar-2020',
      '{"district":"Amritsar","promoter":"SHARMA & GANGAHAR BUILDERS & COLONISERS PVT. LTD (Other than Individual)","address":"VILLAGE NAUSHEHRA, MAJITHA ROAD","pin_code":"143008","website":"www.sharmagangahar.com","registration_date":"19-Jun-2019","valid_upto":"31-Mar-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0474: N.M. ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0474',
      'N.M. ENCLAVE',
      'nm-enclave',
      'active',
      'Promoter: Rakesh Rattan Aggarwal (Individual). Address: Village Saidpura, H.B No.10. PIN: 140603. Valid upto: 30-Jun-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Rakesh Rattan Aggarwal (Individual)","address":"Village Saidpura, H.B No.10","pin_code":"140603","registration_date":"13-Jun-2019","valid_upto":"30-Jun-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0093: OXFORD STREET
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0093',
      'OXFORD STREET',
      'oxford-street',
      'active',
      'Promoter: S M HOTELS (Other than Individual). Address: ZIRAKPUR AMBALA HIGHWAY, NEAR IDBI BANK. PIN: 140603. Valid upto: 01-May-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"S M HOTELS (Other than Individual)","address":"ZIRAKPUR AMBALA HIGHWAY, NEAR IDBI BANK","pin_code":"140603","registration_date":"12-Jun-2019","valid_upto":"01-May-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR02-PR0472: GLOBAL WEST END
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR02-PR0472',
      'GLOBAL WEST END',
      'global-west-end',
      'active',
      'Promoter: NARINDER KUMAR SHARMA (Individual). Address: VILLAGE VALLAH, NH 1. PIN: 143001. Valid upto: 31-Mar-2020',
      '{"district":"Amritsar","promoter":"NARINDER KUMAR SHARMA (Individual)","address":"VILLAGE VALLAH, NH 1","pin_code":"143001","registration_date":"19-Jun-2019","valid_upto":"31-Mar-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0471: Gomti Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0471',
      'Gomti Homes',
      'gomti-homes',
      'active',
      'Promoter: Gomti Homes (Other than Individual). Address: Village- Nabha Kher , Derabassi. PIN: 140501. Valid upto: 30-May-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gomti Homes (Other than Individual)","address":"Village- Nabha Kher , Derabassi","pin_code":"140501","registration_date":"03-Jun-2019","valid_upto":"30-May-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0466: Sun View Enclave Ext-II
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0466',
      'Sun View Enclave Ext-II',
      'sun-view-enclave-ext-ii',
      'active',
      'Promoter: Home Life Buildcon Pvt. Ltd (Other than Individual). Address: Village Ayali Kalan, Tehsil ludhiana. PIN: 142027. Valid upto: 05-Apr-2024',
      '{"district":"Ludhiana","promoter":"Home Life Buildcon Pvt. Ltd (Other than Individual)","address":"Village Ayali Kalan, Tehsil ludhiana","pin_code":"142027","registration_date":"31-May-2019","valid_upto":"05-Apr-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0469: STELLAR HOMES
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0469',
      'STELLAR HOMES',
      'stellar-homes',
      'active',
      'Promoter: STELLAR INFRATECH (Other than Individual). Address: #54, VILAAGE KISHANPURA. PIN: 140603. Valid upto: 30-Jun-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"STELLAR INFRATECH (Other than Individual)","address":"#54, VILAAGE KISHANPURA","pin_code":"140603","registration_date":"31-May-2019","valid_upto":"30-Jun-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0470: Ganesh Nagar
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0470',
      'Ganesh Nagar',
      'ganesh-nagar-dup1',
      'active',
      'Promoter: Harjinder   Singh (Individual). Address: Vill-Lalru ,Tehsil-Derabassi. PIN: 140501. Valid upto: 30-Dec-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Harjinder   Singh (Individual)","address":"Vill-Lalru ,Tehsil-Derabassi","pin_code":"140501","registration_date":"31-May-2019","valid_upto":"30-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SBS82-PR0461: ADARSH NAGAR
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SBS82-PR0461',
      'ADARSH NAGAR',
      'adarsh-nagar',
      'active',
      'Promoter: SEVEN AGES BUILDERS (Other than Individual). Address: ADARSH NAGAR, BHADDI ROAD, BALACHAUR. PIN: 144521. Valid upto: 30-Jun-2022',
      '{"district":"Shahid Bhagat Singh Nagar (Nawanshahr)","promoter":"SEVEN AGES BUILDERS (Other than Individual)","address":"ADARSH NAGAR, BHADDI ROAD, BALACHAUR","pin_code":"144521","registration_date":"16-May-2019","valid_upto":"30-Jun-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0462: RIVERDALE EXTENTION
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0462',
      'RIVERDALE EXTENTION',
      'riverdale-extention',
      'active',
      'Promoter: Manglam Infra (Other than Individual). Address: VILLAGE DIYALPURA, NEAR AMAR NURSING COLLEGE, ZIRAKPUR. PIN: 140603. Valid upto: 30-Jun-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Manglam Infra (Other than Individual)","address":"VILLAGE DIYALPURA, NEAR AMAR NURSING COLLEGE, ZIRAKPUR","pin_code":"140603","registration_date":"14-May-2019","valid_upto":"30-Jun-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0460: PLATINUM HOMES
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0460',
      'PLATINUM HOMES',
      'platinum-homes',
      'active',
      'Promoter: R.S BUILDERS & PROMOTERS (Other than Individual). Address: VILLAGE SANAULI, H.B NO. 50. PIN: 140603. Valid upto: 30-Jun-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"R.S BUILDERS & PROMOTERS (Other than Individual)","address":"VILLAGE SANAULI, H.B NO. 50","pin_code":"140603","registration_date":"14-May-2019","valid_upto":"30-Jun-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0456: LA PARISIAN PHASE II (T1 TO T5)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0456',
      'LA PARISIAN PHASE II (T1 TO T5)',
      'la-parisian-phase-ii-t1-to-t5',
      'active',
      'Promoter: AMBIKA REALCON DEVELOPERS  PRIVATE LIMITED (Other than Individual). Address: GROUP HOUSING SITE NO 2,  IT CITY,, SECTOR 66 B. PIN: 160055. Valid upto: 31-Dec-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AMBIKA REALCON DEVELOPERS  PRIVATE LIMITED (Other than Individual)","address":"GROUP HOUSING SITE NO 2,  IT CITY,, SECTOR 66 B","pin_code":"160055","website":"www.ambikarealcon.com","registration_date":"10-May-2019","valid_upto":"31-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PC0092: Sewak Shopping Plaza
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PC0092',
      'Sewak Shopping Plaza',
      'sewak-shopping-plaza',
      'active',
      'Promoter: Paramjeet  Singh (Individual). Address: Bhupindra Road, Near 22 Number Phatak. PIN: 147001. Valid upto: 05-Dec-2023',
      '{"district":"Patiala","promoter":"Paramjeet  Singh (Individual)","address":"Bhupindra Road, Near 22 Number Phatak","pin_code":"147001","registration_date":"07-May-2019","valid_upto":"05-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PR0455: Dream City , Khanna
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PR0455',
      'Dream City , Khanna',
      'dream-city-khanna',
      'active',
      'Promoter: AIPL Housing and Urban Infrastructure Limited (Other than Individual). Address: G T Road, Village Bulepur, Tehsil Khanna, District Ludhiana. PIN: 141401. Valid upto: 28-Feb-2020',
      '{"district":"Ludhiana","promoter":"AIPL Housing and Urban Infrastructure Limited (Other than Individual)","address":"G T Road, Village Bulepur, Tehsil Khanna, District Ludhiana","pin_code":"141401","registration_date":"07-May-2019","valid_upto":"28-Feb-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL34-PR0454: JALANDHAR HEIGHT-2 EXTENSION
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL34-PR0454',
      'JALANDHAR HEIGHT-2 EXTENSION',
      'jalandhar-height-2-extension',
      'active',
      'Promoter: AGI INFRA LIMITED (Other than Individual). Address: VILLAGE PHOLRIWAL. PIN: 144022. Valid upto: 31-Dec-2021',
      '{"district":"Jalandhar","promoter":"AGI INFRA LIMITED (Other than Individual)","address":"VILLAGE PHOLRIWAL","pin_code":"144022","website":"www.agiinfra.com","registration_date":"07-May-2019","valid_upto":"31-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0433: Shri Ganesh Nagar II
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0433',
      'Shri Ganesh Nagar II',
      'shri-ganesh-nagar-ii',
      'active',
      'Promoter: Jung   Bahadur (Individual). Address: VPO-Gholumajra. PIN: 140501. Valid upto: 30-Dec-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jung   Bahadur (Individual)","address":"VPO-Gholumajra","pin_code":"140501","registration_date":"02-Apr-2019","valid_upto":"30-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0441: ACME HEIGHTS 92 Extn II
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0441',
      'ACME HEIGHTS 92 Extn II',
      'acme-heights-92-extn-ii',
      'active',
      'Promoter: ACME HEIGHTS INFRASTRUCTURE PRIVATE LIMITED (Other than Individual). Address: SECTOR 92 CHHAPAR CHIRI KALAN MOHALI. PIN: 140307. Valid upto: 13-Dec-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ACME HEIGHTS INFRASTRUCTURE PRIVATE LIMITED (Other than Individual)","address":"SECTOR 92 CHHAPAR CHIRI KALAN MOHALI","pin_code":"140307","registration_date":"02-Apr-2019","valid_upto":"13-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0090: DISTRICT ONE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0090',
      'DISTRICT ONE',
      'district-one',
      'active',
      'Promoter: VRS BUILDERS AND PROMOTERS (Other than Individual). Address: DISTRICT ONE, ADJOINING MC OFFICE, SECTOR-68. PIN: 160062. Valid upto: 12-Feb-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"VRS BUILDERS AND PROMOTERS (Other than Individual)","address":"DISTRICT ONE, ADJOINING MC OFFICE, SECTOR-68","pin_code":"160062","registration_date":"02-Apr-2019","valid_upto":"12-Feb-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL34-PR0440: SMART CITY PHASE -1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL34-PR0440',
      'SMART CITY PHASE -1',
      'smart-city-phase-1',
      'active',
      'Promoter: Space developers (Other than Individual). Address: Jamsher -mc Donald road, Village -Jamsher. PIN: 144020. Valid upto: 13-Dec-2021',
      '{"district":"Jalandhar","promoter":"Space developers (Other than Individual)","address":"Jamsher -mc Donald road, Village -Jamsher","pin_code":"144020","registration_date":"02-Apr-2019","valid_upto":"13-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0438: Sai City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0438',
      'Sai City',
      'sai-city',
      'active',
      'Promoter: Gursewak   Singh (Individual). Address: Gholumajra. PIN: 140501. Valid upto: 30-Dec-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gursewak   Singh (Individual)","address":"Gholumajra","pin_code":"140501","registration_date":"02-Apr-2019","valid_upto":"30-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0452: Joy Homes Plot No.F2 0164, F2 0165, F2 0168, F2 0169
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0452',
      'Joy Homes Plot No.F2 0164, F2 0165, F2 0168, F2 0169',
      'joy-homes-plot-nof2-0164-f2-0165-f2-0168-f2-0169',
      'active',
      'Promoter: JOY HOMES (Other than Individual). Address: Plots in Block 2 Wave Estate Sector 85 Mohali. PIN: 140308. Valid upto: 30-Apr-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"JOY HOMES (Other than Individual)","address":"Plots in Block 2 Wave Estate Sector 85 Mohali","pin_code":"140308","registration_date":"02-May-2019","valid_upto":"30-Apr-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0437: Ananta Lifestyle
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0437',
      'Ananta Lifestyle',
      'ananta-lifestyle',
      'active',
      'Promoter: A.V Infratech  (Other than Individual). Address: Villagr- Chhat. PIN: 140507. Valid upto: 31-Dec-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"A.V Infratech  (Other than Individual)","address":"Villagr- Chhat","pin_code":"140507","registration_date":"02-Apr-2019","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0446: Sona Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0446',
      'Sona Enclave',
      'sona-enclave',
      'active',
      'Promoter: Goldwheel Projects Pvt. Ltd. (Other than Individual). Address: Sona Enclave, Vill. Thakarwal, Pakhowal Road,. PIN: 141013. Valid upto: 31-Dec-2023',
      '{"district":"Ludhiana","promoter":"Goldwheel Projects Pvt. Ltd. (Other than Individual)","address":"Sona Enclave, Vill. Thakarwal, Pakhowal Road,","pin_code":"141013","registration_date":"12-Apr-2019","valid_upto":"31-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0445: Sona City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0445',
      'Sona City',
      'sona-city',
      'active',
      'Promoter: Ranjit  Kaur (Individual). Address: Vill. Thakarwal, Pakhowal Road,. PIN: 141013. Valid upto: 31-Dec-2023',
      '{"district":"Ludhiana","promoter":"Ranjit  Kaur (Individual)","address":"Vill. Thakarwal, Pakhowal Road,","pin_code":"141013","registration_date":"12-Apr-2019","valid_upto":"31-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR02-PC0089: SCO ( The Celebration Galleria)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR02-PC0089',
      'SCO ( The Celebration Galleria)',
      'sco-the-celebration-galleria',
      'active',
      'Promoter: AIPL Housing and Urban Infrastructure Limited (Other than Individual). Address: G T Road, Village Manawala. PIN: 143109. Valid upto: 30-Jun-2019',
      '{"district":"Amritsar","promoter":"AIPL Housing and Urban Infrastructure Limited (Other than Individual)","address":"G T Road, Village Manawala","pin_code":"143109","registration_date":"02-Apr-2019","valid_upto":"30-Jun-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH43-PR0439: Dream City -2, Khanna
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH43-PR0439',
      'Dream City -2, Khanna',
      'dream-city-2-khanna',
      'active',
      'Promoter: AIPL Housing and Urban Infrastructure Limited (Other than Individual). Address: G T Road, Village Bulepur, Tehsil Khanna, District Ludhiana. PIN: 141401. Valid upto: 28-Feb-2020',
      '{"district":"Ludhiana","promoter":"AIPL Housing and Urban Infrastructure Limited (Other than Individual)","address":"G T Road, Village Bulepur, Tehsil Khanna, District Ludhiana","pin_code":"141401","registration_date":"02-Apr-2019","valid_upto":"28-Feb-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0435: Victoria Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0435',
      'Victoria Homes',
      'victoria-homes',
      'active',
      'Promoter: Fortune Multitech Private Limited (Other than Individual). Address: Victoria Homes Peer Mushalla,Zirakpur,. PIN: 140603. Valid upto: 31-Dec-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Fortune Multitech Private Limited (Other than Individual)","address":"Victoria Homes Peer Mushalla,Zirakpur,","pin_code":"140603","registration_date":"15-Apr-2019","valid_upto":"31-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0448: Residential Plotted Colony
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0448',
      'Residential Plotted Colony',
      'residential-plotted-colony',
      'active',
      'Promoter: The Punjab IAS AND PCS Officers House Building Society Limited (Other than Individual). Address: The Foothills, Residential Colony, Sector-1, New Chandigarh, Mullanpur. PIN: 140901. Valid upto: 31-May-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"The Punjab IAS AND PCS Officers House Building Society Limited (Other than Individual)","address":"The Foothills, Residential Colony, Sector-1, New Chandigarh, Mullanpur","pin_code":"140901","registration_date":"18-Apr-2019","valid_upto":"31-May-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0091: Sushma Capital
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0091',
      'Sushma Capital',
      'sushma-capital',
      'active',
      'Promoter: Towncity Realtors Private Limited (Other than Individual). Address: Village Kishanpura, Near Dhakoli and Gazipur Junction. PIN: 140603. Valid upto: 14-Feb-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Towncity Realtors Private Limited (Other than Individual)","address":"Village Kishanpura, Near Dhakoli and Gazipur Junction","pin_code":"140603","website":"www.sushma.co.in","registration_date":"22-Apr-2019","valid_upto":"14-Feb-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0450: TECH TOWN
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0450',
      'TECH TOWN',
      'tech-town',
      'active',
      'Promoter: GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: Village Dayalpura, Zirakpur. PIN: 140604. Valid upto: 31-Dec-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"Village Dayalpura, Zirakpur","pin_code":"140604","website":"http://www.gbpgroup.in/","registration_date":"22-Apr-2019","valid_upto":"31-Dec-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0443: Gomti City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0443',
      'Gomti City',
      'gomti-city',
      'active',
      'Promoter: Gomti Enterprises (Other than Individual). Address: Lalru. PIN: 140501. Valid upto: 31-Jul-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gomti Enterprises (Other than Individual)","address":"Lalru","pin_code":"140501","registration_date":"09-Apr-2019","valid_upto":"31-Jul-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-RPR70-PR0442: Dream Meadows-I (Imperial County)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-RPR70-PR0442',
      'Dream Meadows-I (Imperial County)',
      'dream-meadows-i-imperial-county',
      'active',
      'Promoter: WWICS ESTATES PRIVATE LIMITED (Other than Individual). Address: Dream Meadows I(Imperial County), Kurali H.B. No.121. PIN: 140103. Valid upto: 31-Dec-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"WWICS ESTATES PRIVATE LIMITED (Other than Individual)","address":"Dream Meadows I(Imperial County), Kurali H.B. No.121","pin_code":"140103","registration_date":"09-Apr-2019","valid_upto":"31-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR78-PM0139: TAJ CITY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR78-PM0139',
      'TAJ CITY',
      'taj-city',
      'active',
      'Promoter: Jitu Real Estate Private Limited (Other than Individual). Address: TAJ CITY, Opposite Maharaja Palace, Patiala Road. PIN: 148028. Valid upto: 31-Mar-2020',
      '{"district":"Sangrur","promoter":"Jitu Real Estate Private Limited (Other than Individual)","address":"TAJ CITY, Opposite Maharaja Palace, Patiala Road","pin_code":"148028","registration_date":"18-Mar-2019","valid_upto":"31-Mar-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-RPR68-PR0436: GLOBAL ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-RPR68-PR0436',
      'GLOBAL ENCLAVE',
      'global-enclave',
      'active',
      'Promoter: RAMAN  GUPTA (Individual). Address: GLOBAL ENCLAVE, SCO NO. 3, Morinda. PIN: 140101. Valid upto: 31-Mar-2020',
      '{"district":"Rupnagar (Ropar)","promoter":"RAMAN  GUPTA (Individual)","address":"GLOBAL ENCLAVE, SCO NO. 3, Morinda","pin_code":"140101","registration_date":"18-Mar-2019","valid_upto":"31-Mar-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR77-PC0088: TAJ SHOPPING COMPLEX
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR77-PC0088',
      'TAJ SHOPPING COMPLEX',
      'taj-shopping-complex',
      'active',
      'Promoter: Jitu Real Estate Private Limited (Other than Individual). Address: Taj Shopping Complex, Dirba Mandi, Tehsil Dirba. PIN: 148035. Valid upto: 31-Dec-2019',
      '{"district":"Sangrur","promoter":"Jitu Real Estate Private Limited (Other than Individual)","address":"Taj Shopping Complex, Dirba Mandi, Tehsil Dirba","pin_code":"148035","registration_date":"18-Mar-2019","valid_upto":"31-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-RPR70-PR0432: Star City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-RPR70-PR0432',
      'Star City',
      'star-city-dup2',
      'active',
      'Promoter: Ropar Properties & Builders Pvt Ltd (Other than Individual). Address: Star City, Village Gurdaspura, Near Bypass. PIN: 140001. Valid upto: 31-Jan-2022',
      '{"district":"Rupnagar (Ropar)","promoter":"Ropar Properties & Builders Pvt Ltd (Other than Individual)","address":"Star City, Village Gurdaspura, Near Bypass","pin_code":"140001","registration_date":"18-Mar-2019","valid_upto":"31-Jan-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0434: Green City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0434',
      'Green City',
      'green-city-dup4',
      'active',
      'Promoter: Jung  Bahadur (Individual). Address: Lalru. PIN: 141501. Valid upto: 30-Dec-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jung  Bahadur (Individual)","address":"Lalru","pin_code":"141501","registration_date":"18-Mar-2019","valid_upto":"30-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0087: Roselyn Square
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0087',
      'Roselyn Square',
      'roselyn-square',
      'active',
      'Promoter: Rosy   Singla (Individual). Address: PR-7,Airport Road,Zirakpur.. PIN: 140603. Valid upto: 31-Jan-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Rosy   Singla (Individual)","address":"PR-7,Airport Road,Zirakpur.","pin_code":"140603","website":"www.roselynsquare.com","registration_date":"06-Mar-2019","valid_upto":"31-Jan-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0428: Falcon View Tower- V W
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0428',
      'Falcon View Tower- V W',
      'falcon-view-tower-v-w',
      'active',
      'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: SCO-39-42, Sector-82. PIN: 140306. Valid upto: 31-Dec-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"SCO-39-42, Sector-82","pin_code":"140306","website":"www.jantahousing.com","registration_date":"27-Feb-2019","valid_upto":"31-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PM0137: Royal Plaza
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PM0137',
      'Royal Plaza',
      'royal-plaza-dup1',
      'active',
      'Promoter: Kulbir  Singh (Individual). Address: Royal Plaza, Ward No.9 Kurali, SAS Nagar. PIN: 140301. Valid upto: 15-Dec-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Kulbir  Singh (Individual)","address":"Royal Plaza, Ward No.9 Kurali, SAS Nagar","pin_code":"140301","registration_date":"21-Feb-2019","valid_upto":"15-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SBS84-PM0134: Bhupindra Estate 2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SBS84-PM0134',
      'Bhupindra Estate 2',
      'bhupindra-estate-2',
      'active',
      'Promoter: Bhupinder  Pal (Individual). Address: VPO LADHANA JHIKKA, DISSTT. SAHED BHGAT SINGH NAGAR. PIN: 141007. Valid upto: 31-Jul-2020',
      '{"district":"Shahid Bhagat Singh Nagar (Nawanshahr)","promoter":"Bhupinder  Pal (Individual)","address":"VPO LADHANA JHIKKA, DISSTT. SAHED BHGAT SINGH NAGAR","pin_code":"141007","registration_date":"21-Feb-2019","valid_upto":"31-Jul-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR02-PR0431: ALPHA INTERNATIONAL CITY AND ALPHA INTERNATIONAL CITY EXTENSION -AMRITSAR
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR02-PR0431',
      'ALPHA INTERNATIONAL CITY AND ALPHA INTERNATIONAL CITY EXTENSION -AMRITSAR',
      'alpha-international-city-and-alpha-international-city-extension-amritsar',
      'active',
      'Promoter: VENUS COUNTY DEVELOPERS PRIVATE LIMITED (Other than Individual). Address: VILLAGE SULTANWIND SUB-URBAN-II, VILLAGE BHAGTUPURA AND VILLAGE CHEETAN KALAN, G.T.ROAD DABURJI. PIN: 143006. Valid upto: 27-Sep-2020',
      '{"district":"Amritsar","promoter":"VENUS COUNTY DEVELOPERS PRIVATE LIMITED (Other than Individual)","address":"VILLAGE SULTANWIND SUB-URBAN-II, VILLAGE BHAGTUPURA AND VILLAGE CHEETAN KALAN, G.T.ROAD DABURJI","pin_code":"143006","registration_date":"21-Feb-2019","valid_upto":"27-Sep-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-HPR31-PR0430: Ambe Valley Extension
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-HPR31-PR0430',
      'Ambe Valley Extension',
      'ambe-valley-extension',
      'active',
      'Promoter: PARAMOUNT LANDCON PVT. LTD. (Other than Individual). Address: Ambe Valley Ext, Vill & P.O. Ajowal, Dist. Hoshiarpur. PIN: 146001. Valid upto: 11-Apr-2019',
      '{"district":"Hoshiarpur","promoter":"PARAMOUNT LANDCON PVT. LTD. (Other than Individual)","address":"Ambe Valley Ext, Vill & P.O. Ajowal, Dist. Hoshiarpur","pin_code":"146001","registration_date":"21-Feb-2019","valid_upto":"11-Apr-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0429: Falcon View Apartment Tower- O
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0429',
      'Falcon View Apartment Tower- O',
      'falcon-view-apartment-tower-o',
      'active',
      'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: Falcon View Tower- O, Sector-66A. PIN: 140306. Valid upto: 31-Dec-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"Falcon View Tower- O, Sector-66A","pin_code":"140306","website":"www.jantahousing.com","registration_date":"21-Feb-2019","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0086: BOOTHS MOHALI-1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0086',
      'BOOTHS MOHALI-1',
      'booths-mohali-1',
      'active',
      'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: BOOTHS MOHALI- 1B29 TO B49, SECTOR 119 TDI CITY. PIN: 140301. Valid upto: 31-May-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"BOOTHS MOHALI- 1B29 TO B49, SECTOR 119 TDI CITY","pin_code":"140301","website":"www.tdigroupmohali.net","registration_date":"08-Feb-2019","valid_upto":"31-May-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PM0133: Bhupindra Estate 1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PM0133',
      'Bhupindra Estate 1',
      'bhupindra-estate-1',
      'active',
      'Promoter: Bhupinder  Pal (Individual). Address: Villag- Virk,Tehsil-Phillaur,, Jalandhar. PIN: 144410. Valid upto: 31-Dec-2020',
      '{"district":"Jalandhar","promoter":"Bhupinder  Pal (Individual)","address":"Villag- Virk,Tehsil-Phillaur,, Jalandhar","pin_code":"144410","website":"www.bhupindraestate.com","registration_date":"08-Feb-2019","valid_upto":"31-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTK60-PM0135: Sant Estate
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTK60-PM0135',
      'Sant Estate',
      'sant-estate',
      'active',
      'Promoter: CM Developers (Other than Individual). Address: Village Chak Madho Singh & Paddian Lahri. PIN: 145001. Valid upto: 01-Oct-2020',
      '{"district":"Pathankot","promoter":"CM Developers (Other than Individual)","address":"Village Chak Madho Singh & Paddian Lahri","pin_code":"145001","website":"www.santestate.com","registration_date":"08-Feb-2019","valid_upto":"01-Oct-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0422: Victoria City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0422',
      'Victoria City',
      'victoria-city',
      'active',
      'Promoter: Gurmel   SIngh (Individual). Address: Near Panchayat bhawan, Lalru. PIN: 140501. Valid upto: 31-Dec-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gurmel   SIngh (Individual)","address":"Near Panchayat bhawan, Lalru","pin_code":"140501","registration_date":"08-Feb-2019","valid_upto":"31-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0420: BASANT TOWERS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0420',
      'BASANT TOWERS',
      'basant-towers',
      'active',
      'Promoter: Arun   Kumari (Individual). Address: Basant City, Dad-Tharike Road. PIN: 141012. Valid upto: 03-Apr-2023',
      '{"district":"Ludhiana","promoter":"Arun   Kumari (Individual)","address":"Basant City, Dad-Tharike Road","pin_code":"141012","registration_date":"06-Feb-2019","valid_upto":"03-Apr-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-RPR67-PR0417: GOLDEN HOMZ
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-RPR67-PR0417',
      'GOLDEN HOMZ',
      'golden-homz',
      'active',
      'Promoter: GOLDEN INFRASTRUCTURE PRIVATE LIMITED (Other than Individual). Address: VILLAGE KOTLA NIHANG. PIN: 140001. Valid upto: 30-May-2022',
      '{"district":"Rupnagar (Ropar)","promoter":"GOLDEN INFRASTRUCTURE PRIVATE LIMITED (Other than Individual)","address":"VILLAGE KOTLA NIHANG","pin_code":"140001","registration_date":"28-Jan-2019","valid_upto":"30-May-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PC0084: CITY POINT
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PC0084',
      'CITY POINT',
      'city-point-dup1',
      'active',
      'Promoter: G3S INFRA HOMES PRIVATE LIMITED (Other than Individual). Address: MOHALLA SURAJ GANJ, PISHORIAN MOHALLA BASTI SHEIKH. PIN: 144001. Valid upto: 31-Aug-2023',
      '{"district":"Jalandhar","promoter":"G3S INFRA HOMES PRIVATE LIMITED (Other than Individual)","address":"MOHALLA SURAJ GANJ, PISHORIAN MOHALLA BASTI SHEIKH","pin_code":"144001","registration_date":"28-Jan-2019","valid_upto":"31-Aug-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PC0085: Nishant Highway
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PC0085',
      'Nishant Highway',
      'nishant-highway',
      'active',
      'Promoter: Dhillon Properties Pvt. Ltd. (Other than Individual). Address: Nishant Highway, Village Kasba Urf Rurki. PIN: 147021. Valid upto: 31-Dec-2019',
      '{"district":"Patiala","promoter":"Dhillon Properties Pvt. Ltd. (Other than Individual)","address":"Nishant Highway, Village Kasba Urf Rurki","pin_code":"147021","registration_date":"28-Jan-2019","valid_upto":"31-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0421: FLORENCE PARK PHASE 3(T1,T2A,T2B AND 3)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0421',
      'FLORENCE PARK PHASE 3(T1,T2A,T2B AND 3)',
      'florence-park-phase-3t1t2at2b-and-3',
      'active',
      'Promoter: AMBIKA REALCON PRIVATE LIMITED (Other than Individual). Address: FLORENCE PARK PHASE 3, SECTOR 14 NEW CHANDIGARH. PIN: 121001. Valid upto: 31-Dec-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AMBIKA REALCON PRIVATE LIMITED (Other than Individual)","address":"FLORENCE PARK PHASE 3, SECTOR 14 NEW CHANDIGARH","pin_code":"121001","website":"www.ambikarealcon.com","registration_date":"25-Jan-2019","valid_upto":"31-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0419: EKTA VIHAR EXT-1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0419',
      'EKTA VIHAR EXT-1',
      'ekta-vihar-ext-1',
      'active',
      'Promoter: UPKAR  KAUR (Individual). Address: EKTA VIHAR EXT-1, DHANDHRA ROAD, POST OFFICE DHANDRA IA GILL. PIN: 141116. Valid upto: 30-Jun-2022',
      '{"district":"Ludhiana","promoter":"UPKAR  KAUR (Individual)","address":"EKTA VIHAR EXT-1, DHANDHRA ROAD, POST OFFICE DHANDRA IA GILL","pin_code":"141116","registration_date":"28-Jan-2019","valid_upto":"30-Jun-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0418: Natures Canvas 85
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0418',
      'Natures Canvas 85',
      'natures-canvas-85',
      'active',
      'Promoter: Canvas Promoters & Developers (Other than Individual). Address: Wave Estate Sector 85 Mohali. PIN: 140308. Valid upto: 31-Mar-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Canvas Promoters & Developers (Other than Individual)","address":"Wave Estate Sector 85 Mohali","pin_code":"140308","registration_date":"28-Jan-2019","valid_upto":"31-Mar-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0416: Ireo Waterfront Pocket 10
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0416',
      'Ireo Waterfront Pocket 10',
      'ireo-waterfront-pocket-10',
      'active',
      'Promoter: Ireo Waterfront Pvt Ltd (Other than Individual). Address: Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.. PIN: 141001. Valid upto: 31-Dec-2023',
      '{"district":"Ludhiana","promoter":"Ireo Waterfront Pvt Ltd (Other than Individual)","address":"Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.","pin_code":"141001","website":"www.ireowaterfont.com","registration_date":"22-Jan-2019","valid_upto":"31-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0415: Ireo Waterfront Pocket 6
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0415',
      'Ireo Waterfront Pocket 6',
      'ireo-waterfront-pocket-6',
      'active',
      'Promoter: Ireo Waterfront Pvt Ltd (Other than Individual). Address: Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.. PIN: 141001. Valid upto: 31-Dec-2023',
      '{"district":"Ludhiana","promoter":"Ireo Waterfront Pvt Ltd (Other than Individual)","address":"Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.","pin_code":"141001","website":"www.ireowaterfont.com","registration_date":"22-Jan-2019","valid_upto":"31-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0414: Ireo Waterfront Pocket 9
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0414',
      'Ireo Waterfront Pocket 9',
      'ireo-waterfront-pocket-9',
      'active',
      'Promoter: Ireo Waterfront Pvt Ltd (Other than Individual). Address: Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.. PIN: 141001. Valid upto: 31-Dec-2023',
      '{"district":"Ludhiana","promoter":"Ireo Waterfront Pvt Ltd (Other than Individual)","address":"Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.","pin_code":"141001","website":"www.ireowaterfont.com","registration_date":"22-Jan-2019","valid_upto":"31-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0382: Galaxy Heights Tower-A Phase-3
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0382',
      'Galaxy Heights Tower-A Phase-3',
      'galaxy-heights-tower-a-phase-3',
      'active',
      'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: Galaxy Heights Tower-A, Sector-66A. PIN: 140306. Valid upto: 31-Oct-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"Galaxy Heights Tower-A, Sector-66A","pin_code":"140306","website":"www.jantahousing.com","registration_date":"23-Aug-2018","valid_upto":"31-Oct-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PM0131: Nishant Bagh
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PM0131',
      'Nishant Bagh',
      'nishant-bagh',
      'active',
      'Promoter: Dhillon Properties Pvt. Ltd. (Other than Individual). Address: Nishant Bagh, Village Daun Kalan. PIN: 147021. Valid upto: 31-Dec-2019',
      '{"district":"Patiala","promoter":"Dhillon Properties Pvt. Ltd. (Other than Individual)","address":"Nishant Bagh, Village Daun Kalan","pin_code":"147021","registration_date":"21-Jan-2019","valid_upto":"31-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FDK14-PR0411: ARVIND NAGAR
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FDK14-PR0411',
      'ARVIND NAGAR',
      'arvind-nagar',
      'active',
      'Promoter: Pawan Goods Merchants Co. Ltd (Other than Individual). Address: KOTHKAPURA, FARIDKOT PUNJAB. PIN: 151204. Valid upto: 30-Jun-2019',
      '{"district":"Faridkot","promoter":"Pawan Goods Merchants Co. Ltd (Other than Individual)","address":"KOTHKAPURA, FARIDKOT PUNJAB","pin_code":"151204","registration_date":"21-Jan-2019","valid_upto":"30-Jun-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0412: Phase 1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0412',
      'Phase 1',
      'phase-1',
      'active',
      'Promoter: Mukesh   Rana (Individual). Address: Phase 1, Near petrol pump, Ballopur road, Lalru. PIN: 140501. Valid upto: 30-Jun-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Mukesh   Rana (Individual)","address":"Phase 1, Near petrol pump, Ballopur road, Lalru","pin_code":"140501","registration_date":"21-Jan-2019","valid_upto":"30-Jun-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PM0130: NISHANT BAGH
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PM0130',
      'NISHANT BAGH',
      'nishant-bagh-dup1',
      'active',
      'Promoter: Dhillon Empires Pvt. Ltd. (Other than Individual). Address: NISHANT BAGH, Village Daun Kalan & Kasba Urf Rurki,. PIN: 147021. Valid upto: 31-Dec-2019',
      '{"district":"Patiala","promoter":"Dhillon Empires Pvt. Ltd. (Other than Individual)","address":"NISHANT BAGH, Village Daun Kalan & Kasba Urf Rurki,","pin_code":"147021","registration_date":"21-Jan-2019","valid_upto":"31-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR02-PM0132: BLUE CITY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR02-PM0132',
      'BLUE CITY',
      'blue-city',
      'active',
      'Promoter: BLUE CITY TOWNSHIP & COLONISERS PRIVATE LIMITED (Other than Individual). Address: BLUE CITY,  VILLAGE MEERAKOT KHURD / KALLN, MEERANKOT ROAD,, AMRITSAR. PIN: 143001. Valid upto: 30-Nov-2019',
      '{"district":"Amritsar","promoter":"BLUE CITY TOWNSHIP & COLONISERS PRIVATE LIMITED (Other than Individual)","address":"BLUE CITY,  VILLAGE MEERAKOT KHURD / KALLN, MEERANKOT ROAD,, AMRITSAR","pin_code":"143001","registration_date":"21-Jan-2019","valid_upto":"30-Nov-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0413: BELLA VISTA - 1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0413',
      'BELLA VISTA - 1',
      'bella-vista-1',
      'active',
      'Promoter: PHENOMENAL CONSTRUCTION PRIVATE LIMITED (Other than Individual). Address: VILLAGE GHOLUMAJRA, NAC LARLRU, DERAABASSI. PIN: 140507. Valid upto: 30-Jun-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PHENOMENAL CONSTRUCTION PRIVATE LIMITED (Other than Individual)","address":"VILLAGE GHOLUMAJRA, NAC LARLRU, DERAABASSI","pin_code":"140507","registration_date":"21-Jan-2019","valid_upto":"30-Jun-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0409: SSL Highway Towers
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0409',
      'SSL Highway Towers',
      'ssl-highway-towers',
      'active',
      'Promoter: SAB Industries Limited (Other than Individual). Address: On NH 22, Ambala Chandigarh road, Derabassi. PIN: 140603. Valid upto: 30-Sep-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SAB Industries Limited (Other than Individual)","address":"On NH 22, Ambala Chandigarh road, Derabassi","pin_code":"140603","registration_date":"08-Jan-2019","valid_upto":"30-Sep-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PR0407: City Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PR0407',
      'City Homes',
      'city-homes',
      'active',
      'Promoter: Shree Sarup Developers (Prop. Sahil Modi) (Other than Individual). Address: City Homes, Rajpura Road, Patiala, Backside Kohinoor Palace,  Rajpura Road, Patiala. PIN: 147001. Valid upto: 31-Mar-2020',
      '{"district":"Patiala","promoter":"Shree Sarup Developers (Prop. Sahil Modi) (Other than Individual)","address":"City Homes, Rajpura Road, Patiala, Backside Kohinoor Palace,  Rajpura Road, Patiala","pin_code":"147001","registration_date":"18-Dec-2018","valid_upto":"31-Mar-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0083: The Summit
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0083',
      'The Summit',
      'the-summit',
      'active',
      'Promoter: Hale & Niche Developers (Other than Individual). Address: CHD-AMBALA ROAD, VILLAGE SINGHPURA, ZIRAKPUR, DERABASSI. PIN: 140603. Valid upto: 31-Mar-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Hale & Niche Developers (Other than Individual)","address":"CHD-AMBALA ROAD, VILLAGE SINGHPURA, ZIRAKPUR, DERABASSI","pin_code":"140603","website":"www.handpl.com","registration_date":"08-Jan-2019","valid_upto":"31-Mar-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0403: Integrated Residential Township Phase-3C
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0403',
      'Integrated Residential Township Phase-3C',
      'integrated-residential-township-phase-3c',
      'active',
      'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 11-Feb-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"06-Dec-2018","valid_upto":"11-Feb-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0406: INTEGRATED RESIDENTIAL TOWNSHIP PHASE-3B
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0406',
      'INTEGRATED RESIDENTIAL TOWNSHIP PHASE-3B',
      'integrated-residential-township-phase-3b',
      'active',
      'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 11-Feb-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"04-Dec-2018","valid_upto":"11-Feb-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0404: Falcon View  Apartment Tower-K L M N
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0404',
      'Falcon View  Apartment Tower-K L M N',
      'falcon-view-apartment-tower-k-l-m-n',
      'active',
      'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: Falcon View Tower KLMN, Sector-66A. PIN: 140306. Valid upto: 30-Sep-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"Falcon View Tower KLMN, Sector-66A","pin_code":"140306","website":"www.jantahousing.com","registration_date":"04-Dec-2018","valid_upto":"30-Sep-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0401: JOY HOMES PLOT NO F2 0166 and F2 0167
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0401',
      'JOY HOMES PLOT NO F2 0166 and F2 0167',
      'joy-homes-plot-no-f2-0166-and-f2-0167',
      'active',
      'Promoter: JOY HOMES (Other than Individual). Address: PLOT NO. F2/0166 & F2/0167 SECTOR 85 WAVE ESTATE SAS NAGAR MOHALI. PIN: 140308. Valid upto: 31-Dec-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"JOY HOMES (Other than Individual)","address":"PLOT NO. F2/0166 & F2/0167 SECTOR 85 WAVE ESTATE SAS NAGAR MOHALI","pin_code":"140308","registration_date":"26-Nov-2018","valid_upto":"31-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0399: Sunrise Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0399',
      'Sunrise Enclave',
      'sunrise-enclave-dup2',
      'active',
      'Promoter: ESS AAR INFRA (Other than Individual). Address: Vill-Santemajra, kharar Landran Road, Kharar. PIN: 140301. Valid upto: 31-Dec-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ESS AAR INFRA (Other than Individual)","address":"Vill-Santemajra, kharar Landran Road, Kharar","pin_code":"140301","registration_date":"01-Nov-2018","valid_upto":"31-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0398: LA PARISIAN PHASE 1(T6 to T9)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0398',
      'LA PARISIAN PHASE 1(T6 to T9)',
      'la-parisian-phase-1t6-to-t9',
      'active',
      'Promoter: AMBIKA REALCON DEVELOPERS  PRIVATE LIMITED (Other than Individual). Address: GROUP HOUSING SITE NO 2, IT CITY, SECTOR 66 - B,. PIN: 160055. Valid upto: 31-Dec-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AMBIKA REALCON DEVELOPERS  PRIVATE LIMITED (Other than Individual)","address":"GROUP HOUSING SITE NO 2, IT CITY, SECTOR 66 - B,","pin_code":"160055","website":"www.ambikarealcon.com","registration_date":"01-Nov-2018","valid_upto":"31-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0395: Fateh Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0395',
      'Fateh Homes',
      'fateh-homes',
      'active',
      'Promoter: Boparai Developers (Other than Individual). Address: Sector 127, Santemajra, Kharar. PIN: 140307. Valid upto: 26-Aug-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Boparai Developers (Other than Individual)","address":"Sector 127, Santemajra, Kharar","pin_code":"140307","registration_date":"25-Oct-2018","valid_upto":"26-Aug-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PM0118: GILLCO INDUSTRIAL PARK - 1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PM0118',
      'GILLCO INDUSTRIAL PARK - 1',
      'gillco-industrial-park-1',
      'active',
      'Promoter: GILLCO DEVELOPERS & BUILDERS PVT LTD (Other than Individual). Address: VILLAGE MANAKPUR KALLAR. PIN: 140306. Valid upto: 30-Dec-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GILLCO DEVELOPERS & BUILDERS PVT LTD (Other than Individual)","address":"VILLAGE MANAKPUR KALLAR","pin_code":"140306","registration_date":"20-Aug-2018","valid_upto":"30-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BNL06-PR0393: Dynamic Homes Phase 1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BNL06-PR0393',
      'Dynamic Homes Phase 1',
      'dynamic-homes-phase-1',
      'active',
      'Promoter: Curo India Private Limited (Other than Individual). Address: Village Dhanaula Khurd. PIN: 148107. Valid upto: 31-Dec-2023',
      '{"district":"Barnala","promoter":"Curo India Private Limited (Other than Individual)","address":"Village Dhanaula Khurd","pin_code":"148107","registration_date":"11-Oct-2018","valid_upto":"31-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BNL06-PR0392: Dynamic Homes Phase-2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BNL06-PR0392',
      'Dynamic Homes Phase-2',
      'dynamic-homes-phase-2',
      'active',
      'Promoter: Vyoman Investment and Leasing Pvt. Ltd. (Other than Individual). Address: Dynamic Homes Phase-2, Village Dhanaula Khurd. PIN: 148107. Valid upto: 31-Dec-2023',
      '{"district":"Barnala","promoter":"Vyoman Investment and Leasing Pvt. Ltd. (Other than Individual)","address":"Dynamic Homes Phase-2, Village Dhanaula Khurd","pin_code":"148107","registration_date":"11-Oct-2018","valid_upto":"31-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0386: Ireo Waterfront Pocket 7
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0386',
      'Ireo Waterfront Pocket 7',
      'ireo-waterfront-pocket-7',
      'active',
      'Promoter: Ireo Waterfront Pvt Ltd (Other than Individual). Address: Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.. PIN: 141001. Valid upto: 31-Dec-2021',
      '{"district":"Ludhiana","promoter":"Ireo Waterfront Pvt Ltd (Other than Individual)","address":"Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.","pin_code":"141001","website":"www.ireowaterfont.com","registration_date":"29-Aug-2018","valid_upto":"31-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0380: Nature Huts
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0380',
      'Nature Huts',
      'nature-huts',
      'active',
      'Promoter: Vision India Colonizers Pvt. Ltd. (Other than Individual). Address: Village Khanpur, Kharar-Ropar Highway, NH-21. PIN: 140301. Valid upto: 31-Dec-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Vision India Colonizers Pvt. Ltd. (Other than Individual)","address":"Village Khanpur, Kharar-Ropar Highway, NH-21","pin_code":"140301","website":"www.visionindiagroup.com","registration_date":"09-Aug-2018","valid_upto":"31-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0383: ACME HEIGHTS 92
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0383',
      'ACME HEIGHTS 92',
      'acme-heights-92',
      'active',
      'Promoter: ACME HEIGHTS INFRASTRUCTURE PRIVATE LIMITED (Other than Individual). Address: SECTOR 92 GREATER MOHALI. PIN: 140307. Valid upto: 31-Dec-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ACME HEIGHTS INFRASTRUCTURE PRIVATE LIMITED (Other than Individual)","address":"SECTOR 92 GREATER MOHALI","pin_code":"140307","registration_date":"24-Aug-2018","valid_upto":"31-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0387: Ireo Waterfront Pocket 5
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0387',
      'Ireo Waterfront Pocket 5',
      'ireo-waterfront-pocket-5',
      'active',
      'Promoter: Ireo Waterfront Pvt Ltd (Other than Individual). Address: Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.. PIN: 141001. Valid upto: 31-Dec-2021',
      '{"district":"Ludhiana","promoter":"Ireo Waterfront Pvt Ltd (Other than Individual)","address":"Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.","pin_code":"141001","website":"www.ireowaterfont.com","registration_date":"29-Aug-2018","valid_upto":"31-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0376: SKYLINE PARK
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0376',
      'SKYLINE PARK',
      'skyline-park',
      'active',
      'Promoter: skyline infratech (Other than Individual). Address: VILLAGE RAMGARH BHUDDA VIP ROAD ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"skyline infratech (Other than Individual)","address":"VILLAGE RAMGARH BHUDDA VIP ROAD ZIRAKPUR","pin_code":"140603","registration_date":"02-Aug-2018","valid_upto":"31-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-KPT40-PR0384: Green Valley
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-KPT40-PR0384',
      'Green Valley',
      'green-valley-dup6',
      'active',
      'Promoter: G.R.D INFRA (Other than Individual). Address: VILLAGE - MEHERU, H.B NO. 84, TEHSIL PHAGWARA, DISTRICT KAPURTHALA. PIN: 144411. Valid upto: 19-Jun-2023',
      '{"district":"Kapurthala","promoter":"G.R.D INFRA (Other than Individual)","address":"VILLAGE - MEHERU, H.B NO. 84, TEHSIL PHAGWARA, DISTRICT KAPURTHALA","pin_code":"144411","registration_date":"24-Aug-2018","valid_upto":"19-Jun-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0385: Ireo Waterfront Pocket 8
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0385',
      'Ireo Waterfront Pocket 8',
      'ireo-waterfront-pocket-8',
      'active',
      'Promoter: Ireo Waterfront Pvt Ltd (Other than Individual). Address: Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.. PIN: 141001. Valid upto: 31-Dec-2021',
      '{"district":"Ludhiana","promoter":"Ireo Waterfront Pvt Ltd (Other than Individual)","address":"Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.","pin_code":"141001","website":"www.ireowaterfont.com","registration_date":"29-Aug-2018","valid_upto":"31-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0079: Northview Park
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0079',
      'Northview Park',
      'northview-park',
      'active',
      'Promoter: BB Developers (Other than Individual). Address: Ambala-Chandigarh, Highway, Opposite GBP Centrum Zirakpur. PIN: 140603. Valid upto: 31-Jul-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"BB Developers (Other than Individual)","address":"Ambala-Chandigarh, Highway, Opposite GBP Centrum Zirakpur","pin_code":"140603","registration_date":"06-Sep-2018","valid_upto":"31-Jul-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PM0119: Amayra City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PM0119',
      'Amayra City',
      'amayra-city',
      'active',
      'Promoter: Omni Pacific Colonizers Pvt Ltd (Other than Individual). Address: Amayra city, vill aujla. PIN: 140301. Valid upto: 31-Jul-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omni Pacific Colonizers Pvt Ltd (Other than Individual)","address":"Amayra city, vill aujla","pin_code":"140301","registration_date":"20-Aug-2018","valid_upto":"31-Jul-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR03-PM0099: VEER GARDENS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR03-PM0099',
      'VEER GARDENS',
      'veer-gardens',
      'active',
      'Promoter: VEER COLONISERS AND BUILDERS PVT. LTD. (Other than Individual). Address: VILLAGE NAUSHEHRA, MAJITHA ROAD. PIN: 143001. Valid upto: 30-Apr-2023',
      '{"district":"Amritsar","promoter":"VEER COLONISERS AND BUILDERS PVT. LTD. (Other than Individual)","address":"VILLAGE NAUSHEHRA, MAJITHA ROAD","pin_code":"143001","registration_date":"11-Jun-2018","valid_upto":"30-Apr-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0077: Jubilee Square
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0077',
      'Jubilee Square',
      'jubilee-square',
      'active',
      'Promoter: Jubilee Infra Planner LLP (Other than Individual). Address: Block E, Aerocity, SAS Nagar. PIN: 160055. Valid upto: 31-Dec-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jubilee Infra Planner LLP (Other than Individual)","address":"Block E, Aerocity, SAS Nagar","pin_code":"160055","registration_date":"11-Jun-2018","valid_upto":"31-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;


  RAISE NOTICE 'Chunk 10: % inserted, % skipped', v_inserted, v_skipped;
END $$;
