-- Part 8 of 10
-- Projects 1401 to 1600 of 1992
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

  -- PBRERA-SAS80-PR0195: GBP Crest - I
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0195',
      'GBP Crest - I',
      'gbp-crest-i',
      'active',
      'Promoter: GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: GBP Crest - I, Kharar Ludhiana Road, Village, Bhagomajra,. PIN: 140301. Valid upto: 31-Dec-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"GBP Crest - I, Kharar Ludhiana Road, Village, Bhagomajra,","pin_code":"140301","website":"www.gbpgroup.in","registration_date":"08-Nov-2017","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0216: Riverside Estate
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0216',
      'Riverside Estate',
      'riverside-estate',
      'active',
      'Promoter: GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: Riverside Estate, Saidhpura Road, Derabassi. PIN: 140507. Valid upto: 31-Dec-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"Riverside Estate, Saidhpura Road, Derabassi","pin_code":"140507","website":"www.gbpgroup.in","registration_date":"22-Nov-2017","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0229: GBP Eco Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0229',
      'GBP Eco Homes',
      'gbp-eco-homes',
      'active',
      'Promoter: GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: GBP Eco Homes, Saidhpura Road. PIN: 140507. Valid upto: 31-Dec-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"GBP Eco Homes, Saidhpura Road","pin_code":"140507","website":"www.gbpgroup.in","registration_date":"08-Dec-2017","valid_upto":"31-Dec-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0328: GBP Camellia Extn
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0328',
      'GBP Camellia Extn',
      'gbp-camellia-extn',
      'active',
      'Promoter: GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: Village Khanpur, Kharar Kurali Road. PIN: 140301. Valid upto: 31-Dec-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"Village Khanpur, Kharar Kurali Road","pin_code":"140301","website":"www.gbpgroup.in","registration_date":"10-Apr-2018","valid_upto":"31-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0289: Rose Valley Estate
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0289',
      'Rose Valley Estate',
      'rose-valley-estate',
      'active',
      'Promoter: GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: GBP Rose Valley Estate, Saidhpura, Gulabgarh Road, Derabassi. PIN: 140507. Valid upto: 31-Mar-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"GBP Rose Valley Estate, Saidhpura, Gulabgarh Road, Derabassi","pin_code":"140507","website":"www.gbpgroup.in","registration_date":"20-Feb-2018","valid_upto":"31-Mar-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0086: Casa Espana
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0086',
      'Casa Espana',
      'casa-espana',
      'active',
      'Promoter: ATS Infrabuild Private Limited (Other than Individual). Address: Village Budmajra, Sector 121. PIN: 160055. Valid upto: 25-Jul-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ATS Infrabuild Private Limited (Other than Individual)","address":"Village Budmajra, Sector 121","pin_code":"160055","registration_date":"11-Oct-2017","valid_upto":"25-Jul-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0148: Wave Estate, Block-B
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0148',
      'Wave Estate, Block-B',
      'wave-estate-block-b',
      'active',
      'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: WAVE ESTATE, SECTOR -85. PIN: 143308. Valid upto: 30-Nov-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"WAVE ESTATE, SECTOR -85","pin_code":"143308","registration_date":"11-Oct-2017","valid_upto":"30-Nov-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0150: Wave Estate, Block-D
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0150',
      'Wave Estate, Block-D',
      'wave-estate-block-d',
      'active',
      'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: WAVE ESTATE, SECTOR -85. PIN: 143308. Valid upto: 30-Nov-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"WAVE ESTATE, SECTOR -85","pin_code":"143308","registration_date":"11-Oct-2017","valid_upto":"30-Nov-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0173: GOLDEN SAND
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0173',
      'GOLDEN SAND',
      'golden-sand',
      'active',
      'Promoter: SRK APARTMENTS (Other than Individual). Address: OLD AMBALA ROAD, GAZIPUR, ZIRAKPUR. PIN: 160104. Valid upto: 29-Jul-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SRK APARTMENTS (Other than Individual)","address":"OLD AMBALA ROAD, GAZIPUR, ZIRAKPUR","pin_code":"160104","website":"www.goldensandappartments.com","registration_date":"27-Oct-2017","valid_upto":"29-Jul-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0400: Integrated Residential Township Phase-5A
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0400',
      'Integrated Residential Township Phase-5A',
      'integrated-residential-township-phase-5a',
      'active',
      'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 31-Aug-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"01-Nov-2018","valid_upto":"31-Aug-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL34-PR0023: ELDECO Estate NRI & Extn. I
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL34-PR0023',
      'ELDECO Estate NRI & Extn. I',
      'eldeco-estate-nri-extn-i',
      'active',
      'Promoter: Eldeco Jalandhar Propeties Pvt. Ltd. (Other than Individual). Address: Village Malko, Badshapur, Jaggan, Nakodar Road. PIN: 144026. Valid upto: 28-Jul-2023',
      '{"district":"Jalandhar","promoter":"Eldeco Jalandhar Propeties Pvt. Ltd. (Other than Individual)","address":"Village Malko, Badshapur, Jaggan, Nakodar Road","pin_code":"144026","website":"www.eldecogroup.com","registration_date":"04-Sep-2017","valid_upto":"28-Jul-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0214: Sapphire Court
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0214',
      'Sapphire Court',
      'sapphire-court',
      'active',
      'Promoter: Bansal Sales (Other than Individual). Address: Swastik vihar, Patiala road, Zirakpur. PIN: 140603. Valid upto: 30-Oct-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bansal Sales (Other than Individual)","address":"Swastik vihar, Patiala road, Zirakpur","pin_code":"140603","website":"www.pbgsapphirecourt.com","registration_date":"28-Nov-2017","valid_upto":"30-Oct-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL66-PR0815: PARK AVENUE, SAMANA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL66-PR0815',
      'PARK AVENUE, SAMANA',
      'park-avenue-samana',
      'active',
      'Promoter: K K COLONISERS AND PROMOTERS (Other than Individual). Address: bhawanigarh road, Samana. PIN: 147101. Valid upto: 14-Jan-2025',
      '{"district":"Patiala","promoter":"K K COLONISERS AND PROMOTERS (Other than Individual)","address":"bhawanigarh road, Samana","pin_code":"147101","registration_date":"15-Jul-2022","valid_upto":"14-Jan-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0177: Business Park
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0177',
      'Business Park',
      'business-park',
      'active',
      'Promoter: Kumar Developers (Other than Individual). Address: Business Park, Ambala Chandigarh Highway, Singhpura, Zirakpur. PIN: 140603. Valid upto: 18-Apr-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Kumar Developers (Other than Individual)","address":"Business Park, Ambala Chandigarh Highway, Singhpura, Zirakpur","pin_code":"140603","registration_date":"15-Jul-2022","valid_upto":"18-Apr-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PR0814: ATAL APARTMENTS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PR0814',
      'ATAL APARTMENTS',
      'atal-apartments',
      'active',
      'Promoter: LUDHIANA IMPROVEMENT TRUST (Other than Individual). Address: Karnail Singh nagar, Improvement Trust Ludhiana. PIN: 141006. Valid upto: 11-Jun-2027',
      '{"district":"Ludhiana","promoter":"LUDHIANA IMPROVEMENT TRUST (Other than Individual)","address":"Karnail Singh nagar, Improvement Trust Ludhiana","pin_code":"141006","registration_date":"15-Jul-2022","valid_upto":"11-Jun-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PC0176: Factory Outlets Phase 3
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PC0176',
      'Factory Outlets Phase 3',
      'factory-outlets-phase-3',
      'active',
      'Promoter: Surinder Jit  Kaur (Individual). Address: NH-7 Bathinda Bhucho Main Road, Opposite Mcdonalds, KFC, Best Price. PIN: 151001. Valid upto: 30-Jun-2027',
      '{"district":"Bathinda","promoter":"Surinder Jit  Kaur (Individual)","address":"NH-7 Bathinda Bhucho Main Road, Opposite Mcdonalds, KFC, Best Price","pin_code":"151001","registration_date":"15-Jul-2022","valid_upto":"30-Jun-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BNL06-PR0760: Green Avenue Phase 2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BNL06-PR0760',
      'Green Avenue Phase 2',
      'green-avenue-phase-2',
      'active',
      'Promoter: L P Rai Developers Pvt Ltd (Other than Individual). Address: Village - Handiaya -B, H.B No.-58, Barnala. PIN: 148101. Valid upto: 30-Dec-2024',
      '{"district":"Barnala","promoter":"L P Rai Developers Pvt Ltd (Other than Individual)","address":"Village - Handiaya -B, H.B No.-58, Barnala","pin_code":"148101","registration_date":"23-Dec-2021","valid_upto":"30-Dec-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0171: GILLCO BUSINESS CENTER
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0171',
      'GILLCO BUSINESS CENTER',
      'gillco-business-center-dup1',
      'active',
      'Promoter: GILLCO DEVELOPERS AND BUILDERS PVT LTD (Other than Individual). Address: SECTOR 126, AIRPORT ROAD. PIN: 140308. Valid upto: 04-Jan-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GILLCO DEVELOPERS AND BUILDERS PVT LTD (Other than Individual)","address":"SECTOR 126, AIRPORT ROAD","pin_code":"140308","registration_date":"30-Jun-2022","valid_upto":"04-Jan-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PC0175: HAMPTON PLAZA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PC0175',
      'HAMPTON PLAZA',
      'hampton-plaza',
      'active',
      'Promoter: RITESH PROPERTIES AND INDUSTRIES LIMITED (Other than Individual). Address: Commercial Site-1, Hampton Court Business Park, NH 05 Ludhiana Chandigarh Road. PIN: 141123. Valid upto: 31-Mar-2025',
      '{"district":"Ludhiana","promoter":"RITESH PROPERTIES AND INDUSTRIES LIMITED (Other than Individual)","address":"Commercial Site-1, Hampton Court Business Park, NH 05 Ludhiana Chandigarh Road","pin_code":"141123","website":"http://www.riteshindustries.us","registration_date":"30-Jun-2022","valid_upto":"31-Mar-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0813: Horizon Belmond
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0813',
      'Horizon Belmond',
      'horizon-belmond',
      'active',
      'Promoter: Horizon Infrastructure and Developers LLP (Other than Individual). Address: Group Housing Site No-2, Sector 88. PIN: 140501. Valid upto: 31-Mar-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Horizon Infrastructure and Developers LLP (Other than Individual)","address":"Group Housing Site No-2, Sector 88","pin_code":"140501","registration_date":"30-Jun-2022","valid_upto":"31-Mar-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-MNS50-PR0810: Royal Citi
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-MNS50-PR0810',
      'Royal Citi',
      'royal-citi',
      'active',
      'Promoter: Four Land Developers (Other than Individual). Address: Bareta, Bareta. PIN: 151501. Valid upto: 31-Jan-2027',
      '{"district":"Mansa","promoter":"Four Land Developers (Other than Individual)","address":"Bareta, Bareta","pin_code":"151501","registration_date":"30-Jun-2022","valid_upto":"31-Jan-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-MNS49-PR0811: Aastha Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-MNS49-PR0811',
      'Aastha Enclave',
      'aastha-enclave',
      'active',
      'Promoter: Aastha Enclave (Other than Individual). Address: Budhlada, Budhlada. PIN: 151502. Valid upto: 31-Jan-2027',
      '{"district":"Mansa","promoter":"Aastha Enclave (Other than Individual)","address":"Budhlada, Budhlada","pin_code":"151502","registration_date":"30-Jun-2022","valid_upto":"31-Jan-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR0812: Royale Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR0812',
      'Royale Homes',
      'royale-homes',
      'active',
      'Promoter: Royale Homes (Other than Individual). Address: Village Sansarpur H.B 247 Tehsil and District Jalandhar, Punjab. PIN: 144024. Valid upto: 30-Jun-2025',
      '{"district":"Jalandhar","promoter":"Royale Homes (Other than Individual)","address":"Village Sansarpur H.B 247 Tehsil and District Jalandhar, Punjab","pin_code":"144024","registration_date":"30-Jun-2022","valid_upto":"30-Jun-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0808: MAXXUS EDEN ESTATE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0808',
      'MAXXUS EDEN ESTATE',
      'maxxus-eden-estate',
      'active',
      'Promoter: Alaknanda Land and Promoters (Other than Individual). Address: VILLAGE SINGHPURA, HADBAST NO. 43,, ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Alaknanda Land and Promoters (Other than Individual)","address":"VILLAGE SINGHPURA, HADBAST NO. 43,, ZIRAKPUR","pin_code":"140603","registration_date":"27-Jun-2022","valid_upto":"31-Dec-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0174: MOHALI TIMES SQUARE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0174',
      'MOHALI TIMES SQUARE',
      'mohali-times-square',
      'active',
      'Promoter: KSSP REAL ESTATE PRIVATE LIMITED (Other than Individual). Address: VILAGE- DAUN AND BALLOMAJRA, MOHALI. PIN: 140301. Valid upto: 31-Mar-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KSSP REAL ESTATE PRIVATE LIMITED (Other than Individual)","address":"VILAGE- DAUN AND BALLOMAJRA, MOHALI","pin_code":"140301","registration_date":"27-Jun-2022","valid_upto":"31-Mar-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0807: Aerohood Residency
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0807',
      'Aerohood Residency',
      'aerohood-residency',
      'active',
      'Promoter: Global Infrastructure (Other than Individual). Address: Village Dyalpur (H.B No. 289) Zirakpur, Dist. SAS Nagar. PIN: 140601. Valid upto: 19-Apr-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Global Infrastructure (Other than Individual)","address":"Village Dyalpur (H.B No. 289) Zirakpur, Dist. SAS Nagar","pin_code":"140601","registration_date":"27-Jun-2022","valid_upto":"19-Apr-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PM0022: AKME POLIS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PM0022',
      'AKME POLIS',
      'akme-polis',
      'active',
      'Promoter: AKME PROJECTS LTD (Other than Individual). Address: VILLAGE JANDIALI, LUDHIANA. PIN: 141112',
      '{"district":"Ludhiana","promoter":"AKME PROJECTS LTD (Other than Individual)","address":"VILLAGE JANDIALI, LUDHIANA","pin_code":"141112","registration_date":"04-Jan-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0044: Ansal Woodbury Apartment
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0044',
      'Ansal Woodbury Apartment',
      'ansal-woodbury-apartment',
      'active',
      'Promoter: ANSAL HOUSING LIMITED (Other than Individual). Address: ANSALS WOODBURY APARTMENTS, BHABAT COLONY, ZIRAKPUR. PIN: 140603. Valid upto: 09-Mar-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ANSAL HOUSING LIMITED (Other than Individual)","address":"ANSALS WOODBURY APARTMENTS, BHABAT COLONY, ZIRAKPUR","pin_code":"140603","website":"www.ansals.com","registration_date":"07-Sep-2017","valid_upto":"09-Mar-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0179: Rajgadh Estates, Phase 2, Extension 1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0179',
      'Rajgadh Estates, Phase 2, Extension 1',
      'rajgadh-estates-phase-2-extension-1',
      'active',
      'Promoter: BHASIN INFRASTRUCTURE DEVELOPERS PVT LTD (Other than Individual). Address: RAJGADH ESTATES,, PH 2EXTENSION -1, ZONE 1. PIN: 142027. Valid upto: 31-Jul-2022',
      '{"district":"Ludhiana","promoter":"BHASIN INFRASTRUCTURE DEVELOPERS PVT LTD (Other than Individual)","address":"RAJGADH ESTATES,, PH 2EXTENSION -1, ZONE 1","pin_code":"142027","website":"www.rajgadhestates.com","registration_date":"31-Oct-2017","valid_upto":"31-Jul-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0348: Tulip Heights
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0348',
      'Tulip Heights',
      'tulip-heights',
      'active',
      'Promoter: Bir Developers and Promoters (Other than Individual). Address: VILLAGE LOHAGARH, VIP ROAD, ZIRAKPUR. PIN: 140603. Valid upto: 31-Jul-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bir Developers and Promoters (Other than Individual)","address":"VILLAGE LOHAGARH, VIP ROAD, ZIRAKPUR","pin_code":"140603","registration_date":"25-Apr-2018","valid_upto":"31-Jul-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0098: ISBT cum Commercial Complex
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0098',
      'ISBT cum Commercial Complex',
      'isbt-cum-commercial-complex',
      'active',
      'Promoter: C and C Towers Limited (Other than Individual). Address: Phase VI District SAS Nagar, Punjab. PIN: 160055. Valid upto: 30-Nov-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"C and C Towers Limited (Other than Individual)","address":"Phase VI District SAS Nagar, Punjab","pin_code":"160055","registration_date":"29-Jul-2019","valid_upto":"30-Nov-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0283: Yuvraj  Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0283',
      'Yuvraj  Homes',
      'yuvraj-homes',
      'active',
      'Promoter: Earth Son Infrastructures Pvt. Ltd. (Other than Individual). Address: VILLAGE JHUNGIA, SHIVALIK AVENUE III, SECTOR 125, TEHSIL KHARAR, DISTRICT SAS NAGAR. PIN: 140301',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Earth Son Infrastructures Pvt. Ltd. (Other than Individual)","address":"VILLAGE JHUNGIA, SHIVALIK AVENUE III, SECTOR 125, TEHSIL KHARAR, DISTRICT SAS NAGAR","pin_code":"140301","registration_date":"12-Feb-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0047: Emerging Heights-III
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0047',
      'Emerging Heights-III',
      'emerging-heights-iii',
      'active',
      'Promoter: Emerging India housing Corporation Ltd (Other than Individual). Address: Sector 115, Village Santemajra, Kharar- Banur Road, SAS Nagar Punjab. PIN: 140307. Valid upto: 07-Jun-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Emerging India housing Corporation Ltd (Other than Individual)","address":"Sector 115, Village Santemajra, Kharar- Banur Road, SAS Nagar Punjab","pin_code":"140307","registration_date":"07-Sep-2017","valid_upto":"07-Jun-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0303: Trumark Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0303',
      'Trumark Homes',
      'trumark-homes',
      'active',
      'Promoter: FRENDEN HOUSING PRIVATE LIMITED (Other than Individual). Address: GLOBAL HI-TECH CITY, VILLAGE HARLALPUR SECTOR 124. PIN: 140301. Valid upto: 31-Mar-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"FRENDEN HOUSING PRIVATE LIMITED (Other than Individual)","address":"GLOBAL HI-TECH CITY, VILLAGE HARLALPUR SECTOR 124","pin_code":"140301","registration_date":"01-Mar-2018","valid_upto":"31-Mar-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0278: Friends Home-Extension-II
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0278',
      'Friends Home-Extension-II',
      'friends-home-extension-ii',
      'active',
      'Promoter: FRENDEN HOUSING PRIVATE LIMITED (Other than Individual). Address: MODERN VALLEY, LUDHIANA CHANDIGARH ROAD, VILLAGE KHANPUR, TEHSIL KHARAR, SAS NAGAR MOHALI. PIN: 140301. Valid upto: 31-Dec-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"FRENDEN HOUSING PRIVATE LIMITED (Other than Individual)","address":"MODERN VALLEY, LUDHIANA CHANDIGARH ROAD, VILLAGE KHANPUR, TEHSIL KHARAR, SAS NAGAR MOHALI","pin_code":"140301","registration_date":"07-Feb-2018","valid_upto":"31-Dec-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0233: Shiva Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0233',
      'Shiva Enclave',
      'shiva-enclave',
      'active',
      'Promoter: G.B.M. Colonizers Private Limited (Other than Individual). Address: Village Khanpur. PIN: 140301',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"G.B.M. Colonizers Private Limited (Other than Individual)","address":"Village Khanpur","pin_code":"140301","registration_date":"14-Dec-2017"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0225: High Land Tower-I Block-04
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0225',
      'High Land Tower-I Block-04',
      'high-land-tower-i-block-04',
      'active',
      'Promoter: Gahlot and Sons (Other than Individual). Address: Village Fatehullapur, Sector 125, SAS Nagar. PIN: 160062. Valid upto: 05-Sep-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gahlot and Sons (Other than Individual)","address":"Village Fatehullapur, Sector 125, SAS Nagar","pin_code":"160062","registration_date":"11-Dec-2017","valid_upto":"05-Sep-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PM0075: Gulmohar Greens
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PM0075',
      'Gulmohar Greens',
      'gulmohar-greens-dup1',
      'active',
      'Promoter: Ganesh Land Crafts (Other than Individual). Address: Village Jodhan and Rattan. PIN: 141001. Valid upto: 30-Apr-2021',
      '{"district":"Ludhiana","promoter":"Ganesh Land Crafts (Other than Individual)","address":"Village Jodhan and Rattan","pin_code":"141001","registration_date":"27-Apr-2018","valid_upto":"30-Apr-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0207: GBM Apartments
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0207',
      'GBM Apartments',
      'gbm-apartments',
      'active',
      'Promoter: GBM Developers and Promoters Pvt Ltd (Other than Individual). Address: Khanpur, Kharar. PIN: 160055. Valid upto: 31-Dec-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GBM Developers and Promoters Pvt Ltd (Other than Individual)","address":"Khanpur, Kharar","pin_code":"160055","registration_date":"17-Nov-2017","valid_upto":"31-Dec-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0219: Noor Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0219',
      'Noor Homes',
      'noor-homes',
      'active',
      'Promoter: GGP Buildtech Private Limited (Other than Individual). Address: VILLAGE SANTEMAJRA, KHARAR. PIN: 140301. Valid upto: 31-Mar-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GGP Buildtech Private Limited (Other than Individual)","address":"VILLAGE SANTEMAJRA, KHARAR","pin_code":"140301","registration_date":"04-Dec-2017","valid_upto":"31-Mar-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0121: Sony Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0121',
      'Sony Enclave',
      'sony-enclave',
      'active',
      'Promoter: Karamjit  Singh (Individual). Address: Bhagomajra, Kharar. PIN: 140301. Valid upto: 29-Jul-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Karamjit  Singh (Individual)","address":"Bhagomajra, Kharar","pin_code":"140301","registration_date":"26-Sep-2017","valid_upto":"29-Jul-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-KPT40-PR0410: Highway Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-KPT40-PR0410',
      'Highway Enclave',
      'highway-enclave',
      'active',
      'Promoter: Landmark Builders and Developers (Other than Individual). Address: Village Khurampur, Tehsil Phagwara. PIN: 144403. Valid upto: 30-Apr-2021',
      '{"district":"Kapurthala","promoter":"Landmark Builders and Developers (Other than Individual)","address":"Village Khurampur, Tehsil Phagwara","pin_code":"144403","registration_date":"10-Jan-2019","valid_upto":"30-Apr-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0277: Land Twister Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0277',
      'Land Twister Homes',
      'land-twister-homes',
      'active',
      'Promoter: Land Twisters (Other than Individual). Address: Village Chapper Chiri Khurd, Sector 116, Kharar. PIN: 140301. Valid upto: 30-Jul-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Land Twisters (Other than Individual)","address":"Village Chapper Chiri Khurd, Sector 116, Kharar","pin_code":"140301","registration_date":"06-Feb-2018","valid_upto":"30-Jul-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PM0101: Melange City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PM0101',
      'Melange City',
      'melange-city',
      'active',
      'Promoter: Majestic Properties Pvt. Ltd. (Other than Individual). Address: Village Jansua, Banur-Rajpura Road, Patiala. PIN: 147001. Valid upto: 29-Sep-2020',
      '{"district":"Patiala","promoter":"Majestic Properties Pvt. Ltd. (Other than Individual)","address":"Village Jansua, Banur-Rajpura Road, Patiala","pin_code":"147001","registration_date":"14-Jun-2018","valid_upto":"29-Sep-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0248: Divine World
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0248',
      'Divine World',
      'divine-world',
      'active',
      'Promoter: OM Divine Developers and Infrastructures Pvt Ltd (Other than Individual). Address: Khunimajra and Santemajra Sector 115. PIN: 140301',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"OM Divine Developers and Infrastructures Pvt Ltd (Other than Individual)","address":"Khunimajra and Santemajra Sector 115","pin_code":"140301","registration_date":"05-Jan-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PM0126: Mukt Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PM0126',
      'Mukt Enclave',
      'mukt-enclave',
      'active',
      'Promoter: MUKT COLONISERS PVT LTD (Other than Individual). Address: PASIANA. PIN: 148001. Valid upto: 30-Dec-2019',
      '{"district":"Sangrur","promoter":"MUKT COLONISERS PVT LTD (Other than Individual)","address":"PASIANA","pin_code":"148001","registration_date":"09-Jan-2019","valid_upto":"30-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PM0127: Punjabi Bagh
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PM0127',
      'Punjabi Bagh',
      'punjabi-bagh',
      'active',
      'Promoter: PPR Infrastructure Ltd. (Other than Individual). Address: VILLAGE BOOT AND KINGRA. PIN: 144001. Valid upto: 30-Apr-2021',
      '{"district":"Jalandhar","promoter":"PPR Infrastructure Ltd. (Other than Individual)","address":"VILLAGE BOOT AND KINGRA","pin_code":"144001","registration_date":"11-Jan-2019","valid_upto":"30-Apr-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PM0128: Jalandhar Kunj Extn.1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PM0128',
      'Jalandhar Kunj Extn.1',
      'jalandhar-kunj-extn1',
      'active',
      'Promoter: PPR Infrastructure Ltd. (Other than Individual). Address: VILLAGE KINGRA. PIN: 144001. Valid upto: 30-Apr-2021',
      '{"district":"Jalandhar","promoter":"PPR Infrastructure Ltd. (Other than Individual)","address":"VILLAGE KINGRA","pin_code":"144001","registration_date":"11-Jan-2019","valid_upto":"30-Apr-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0066: Arcadia Dream Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0066',
      'Arcadia Dream Homes',
      'arcadia-dream-homes',
      'active',
      'Promoter: Primary Estates and Developers Private Limited (Other than Individual). Address: Sector 116. PIN: 160055. Valid upto: 31-Dec-2017',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Primary Estates and Developers Private Limited (Other than Individual)","address":"Sector 116","pin_code":"160055","registration_date":"11-Sep-2017","valid_upto":"31-Dec-2017"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0064: Arcadia Green Homes-II
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0064',
      'Arcadia Green Homes-II',
      'arcadia-green-homes-ii',
      'active',
      'Promoter: Primary Estates and Developers Private Limited (Other than Individual). Address: Sector 124 Sunny Enclave. PIN: 160055. Valid upto: 31-Mar-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Primary Estates and Developers Private Limited (Other than Individual)","address":"Sector 124 Sunny Enclave","pin_code":"160055","registration_date":"11-Sep-2017","valid_upto":"31-Mar-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0063: Arcadia Green Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0063',
      'Arcadia Green Homes',
      'arcadia-green-homes',
      'active',
      'Promoter: Primary Estates and Developers Private Limited (Other than Individual). Address: Sector 125, Sunny Enclave. PIN: 160062. Valid upto: 31-Oct-2017',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Primary Estates and Developers Private Limited (Other than Individual)","address":"Sector 125, Sunny Enclave","pin_code":"160062","registration_date":"11-Sep-2017","valid_upto":"31-Oct-2017"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0327: One Rise (P2)(Formerly known as IREO RISE(Tower 2 & 3))
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0327',
      'One Rise (P2)(Formerly known as IREO RISE(Tower 2 & 3))',
      'one-rise-p2formerly-known-as-ireo-risetower-2-3',
      'active',
      'Promoter: PUMA REALTORS PRIVATE LIMITED (Other than Individual). Address: Village Sukhparh and Sambalkhi, Sector 98. PIN: 140307. Valid upto: 31-Dec-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PUMA REALTORS PRIVATE LIMITED (Other than Individual)","address":"Village Sukhparh and Sambalkhi, Sector 98","pin_code":"140307","registration_date":"02-Apr-2018","valid_upto":"31-Dec-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0345: Gulmohar Valley and Gulmohar Valley 2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0345',
      'Gulmohar Valley and Gulmohar Valley 2',
      'gulmohar-valley-and-gulmohar-valley-2',
      'active',
      'Promoter: PUNJAB EMPIRES PVT LTD (Other than Individual). Address: KAULI MAJRA. PIN: 147201. Valid upto: 18-Apr-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PUNJAB EMPIRES PVT LTD (Other than Individual)","address":"KAULI MAJRA","pin_code":"147201","registration_date":"20-Apr-2018","valid_upto":"18-Apr-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0022: Gateway City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0022',
      'Gateway City',
      'gateway-city',
      'active',
      'Promoter: The Chief Administrator, Punjab Urban Planning and Development Authority (Other than Individual). Address: PUDA Bhawan, Sector 62, SAS Nagar. PIN: 140055. Valid upto: 30-Nov-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"The Chief Administrator, Punjab Urban Planning and Development Authority (Other than Individual)","address":"PUDA Bhawan, Sector 62, SAS Nagar","pin_code":"140055","registration_date":"04-Sep-2017","valid_upto":"30-Nov-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-KPT39-PM0141: Site Near Army Contonment Kapurthala
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-KPT39-PM0141',
      'Site Near Army Contonment Kapurthala',
      'site-near-army-contonment-kapurthala',
      'active',
      'Promoter: The Chief Administrator, Punjab Urban Planning and Development Authority (Other than Individual). Address: Kapurthala. PIN: 144601. Valid upto: 31-Mar-2021',
      '{"district":"Kapurthala","promoter":"The Chief Administrator, Punjab Urban Planning and Development Authority (Other than Individual)","address":"Kapurthala","pin_code":"144601","registration_date":"04-Apr-2019","valid_upto":"31-Mar-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0351: Sanskriti Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0351',
      'Sanskriti Homes',
      'sanskriti-homes',
      'active',
      'Promoter: SANSKRITI GOLDEN OAK REAL ESTATE PVT LTD (Other than Individual). Address: VILLAGE MULLANPUR, MAJRI TEHSIL KHARAR. PIN: 140901. Valid upto: 30-Dec-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SANSKRITI GOLDEN OAK REAL ESTATE PVT LTD (Other than Individual)","address":"VILLAGE MULLANPUR, MAJRI TEHSIL KHARAR","pin_code":"140901","registration_date":"02-May-2018","valid_upto":"30-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR77-PR0426: Palm City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR77-PR0426',
      'Palm City',
      'palm-city-dup1',
      'active',
      'Promoter: Ivraj  Singh Sibia (Individual). Address: Village Sibia Sangrur Sunam Road. PIN: 148001. Valid upto: 14-Jul-2020',
      '{"district":"Sangrur","promoter":"Ivraj  Singh Sibia (Individual)","address":"Village Sibia Sangrur Sunam Road","pin_code":"148001","registration_date":"18-Feb-2019","valid_upto":"14-Jul-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PM0057: Maharaja Aggarsen Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PM0057',
      'Maharaja Aggarsen Enclave',
      'maharaja-aggarsen-enclave',
      'active',
      'Promoter: SHARAV INFRASTRUCTURES PVT LTD (Other than Individual). Address: VILLAGE KHANPUR. PIN: 141001. Valid upto: 27-Mar-2023',
      '{"district":"Ludhiana","promoter":"SHARAV INFRASTRUCTURES PVT LTD (Other than Individual)","address":"VILLAGE KHANPUR","pin_code":"141001","registration_date":"28-Mar-2018","valid_upto":"27-Mar-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0012: Shivjot Business Square
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0012',
      'Shivjot Business Square',
      'shivjot-business-square',
      'active',
      'Promoter: SHRI SHIVJOT DEVELOPERS AND BUILDERS LTD (Other than Individual). Address: VILLAGE AUJLA. PIN: 140301',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SHRI SHIVJOT DEVELOPERS AND BUILDERS LTD (Other than Individual)","address":"VILLAGE AUJLA","pin_code":"140301","registration_date":"13-Sep-2017"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0078: Shivjot Apartments
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0078',
      'Shivjot Apartments',
      'shivjot-apartments',
      'active',
      'Promoter: SHRI SHIVJOT DEVELOPERS AND BUILDERS LTD (Other than Individual). Address: KHARAR. PIN: 160055',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SHRI SHIVJOT DEVELOPERS AND BUILDERS LTD (Other than Individual)","address":"KHARAR","pin_code":"160055","registration_date":"14-Sep-2017"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0338: LRC Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0338',
      'LRC Homes',
      'lrc-homes',
      'active',
      'Promoter: SKY INFRASTRUCTURES PVT LTD (Other than Individual). Address: VILLAGE KISHANPURA. PIN: 140603. Valid upto: 31-Jul-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SKY INFRASTRUCTURES PVT LTD (Other than Individual)","address":"VILLAGE KISHANPURA","pin_code":"140603","registration_date":"18-Apr-2018","valid_upto":"31-Jul-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PC0025: Civil Station Near Power House Road
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PC0025',
      'Civil Station Near Power House Road',
      'civil-station-near-power-house-road',
      'active',
      'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: Near Power House Road, Bathinda. PIN: 151001',
      '{"district":"Bathinda","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"Near Power House Road, Bathinda","pin_code":"151001","registration_date":"30-Oct-2017"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PC0036: PWD B&R REST HOUSE, RAMPURA PHUL
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PC0036',
      'PWD B&R REST HOUSE, RAMPURA PHUL',
      'pwd-br-rest-house-rampura-phul',
      'active',
      'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: Village Rampura Phul, Bathinda. PIN: 151001. Valid upto: 31-Dec-2019',
      '{"district":"Bathinda","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"Village Rampura Phul, Bathinda","pin_code":"151001","registration_date":"22-Feb-2018","valid_upto":"31-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PC0039: Old Tehsil Complex
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PC0039',
      'Old Tehsil Complex',
      'old-tehsil-complex',
      'active',
      'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: Bathinda. PIN: 151001. Valid upto: 31-Dec-2019',
      '{"district":"Bathinda","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"Bathinda","pin_code":"151001","registration_date":"22-Feb-2018","valid_upto":"31-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PM0028: 4 & 5 Phase Urban Estate
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PM0028',
      '4 & 5 Phase Urban Estate',
      '4-5-phase-urban-estate',
      'active',
      'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: BATHINDA. PIN: 151001. Valid upto: 31-Dec-2019',
      '{"district":"Bathinda","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"BATHINDA","pin_code":"151001","registration_date":"22-Feb-2018","valid_upto":"31-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PM0030: Milk Plant
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PM0030',
      'Milk Plant',
      'milk-plant',
      'active',
      'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: Bathinda Dabwali Road. PIN: 151001. Valid upto: 31-Dec-2019',
      '{"district":"Bathinda","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"Bathinda Dabwali Road","pin_code":"151001","registration_date":"22-Feb-2018","valid_upto":"31-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FDK12-PM0029: Baba Farid University
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FDK12-PM0029',
      'Baba Farid University',
      'baba-farid-university',
      'active',
      'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: Faridkot. PIN: 151203. Valid upto: 31-Dec-2019',
      '{"district":"Faridkot","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"Faridkot","pin_code":"151203","registration_date":"22-Feb-2018","valid_upto":"31-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-MKT58-PM0047: PUDA Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-MKT58-PM0047',
      'PUDA Enclave',
      'puda-enclave',
      'active',
      'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: Udekaran. PIN: 152026. Valid upto: 31-Dec-2018',
      '{"district":"Muktsar","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"Udekaran","pin_code":"152026","registration_date":"12-Mar-2018","valid_upto":"31-Dec-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-MNS50-PM0031: PUDA Enclave Mansa
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-MNS50-PM0031',
      'PUDA Enclave Mansa',
      'puda-enclave-mansa',
      'active',
      'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: MANSA, BATHINDA. PIN: 151001. Valid upto: 31-Dec-2019',
      '{"district":"Bathinda","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"MANSA, BATHINDA","pin_code":"151001","registration_date":"22-Feb-2018","valid_upto":"31-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZL20-PM0048: PUDA Enclave, Near SDM Residence
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZL20-PM0048',
      'PUDA Enclave, Near SDM Residence',
      'puda-enclave-near-sdm-residence',
      'active',
      'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: PUDA Enclave  Near SDM Residence. PIN: 152123. Valid upto: 31-Dec-2018',
      '{"district":"Fazilka","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"PUDA Enclave  Near SDM Residence","pin_code":"152123","registration_date":"12-Mar-2018","valid_upto":"31-Dec-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZL20-PM0049: PUDA ENCLAVE-Spinfed Site
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZL20-PM0049',
      'PUDA ENCLAVE-Spinfed Site',
      'puda-enclave-spinfed-site',
      'active',
      'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: Abohar. PIN: 152116. Valid upto: 31-Dec-2018',
      '{"district":"Fazilka","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"Abohar","pin_code":"152116","registration_date":"12-Mar-2018","valid_upto":"31-Dec-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FDK12-PC0041: Old B.Ed Hostel
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FDK12-PC0041',
      'Old B.Ed Hostel',
      'old-bed-hostel',
      'active',
      'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: Faridkot. PIN: 142049. Valid upto: 31-Dec-2019',
      '{"district":"Faridkot","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"Faridkot","pin_code":"142049","registration_date":"26-Feb-2018","valid_upto":"31-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-MNS50-PC0037: OLD FOOD SUPPLY OFFICE & WOMEN POLICE STATION SITE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-MNS50-PC0037',
      'OLD FOOD SUPPLY OFFICE & WOMEN POLICE STATION SITE',
      'old-food-supply-office-women-police-station-site',
      'active',
      'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: Mansa. PIN: 151505. Valid upto: 31-Dec-2019',
      '{"district":"Mansa","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"Mansa","pin_code":"151505","registration_date":"22-Feb-2018","valid_upto":"31-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PC0040: Canal Colony
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PC0040',
      'Canal Colony',
      'canal-colony',
      'active',
      'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: Bathinda. PIN: 151001. Valid upto: 31-Dec-2019',
      '{"district":"Bathinda","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"Bathinda","pin_code":"151001","registration_date":"22-Feb-2018","valid_upto":"31-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-MNS50-PM0035: PUDA ENCLAVE SUGAR MILL SITE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-MNS50-PM0035',
      'PUDA ENCLAVE SUGAR MILL SITE',
      'puda-enclave-sugar-mill-site',
      'active',
      'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: PUDA Enclave Sugar Mill Site Budhlada. PIN: 151502. Valid upto: 31-Dec-2019',
      '{"district":"Mansa","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"PUDA Enclave Sugar Mill Site Budhlada","pin_code":"151502","registration_date":"26-Feb-2018","valid_upto":"31-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-MNS50-PR0297: Area 3 Kanal 2 Marla - Near D.C. Residence
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-MNS50-PR0297',
      'Area 3 Kanal 2 Marla - Near D.C. Residence',
      'area-3-kanal-2-marla-near-dc-residence',
      'active',
      'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: Mansa. PIN: 151505. Valid upto: 31-Dec-2019',
      '{"district":"Mansa","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"Mansa","pin_code":"151505","registration_date":"26-Feb-2018","valid_upto":"31-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FDK12-PM0036: S.D.E. Residence
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FDK12-PM0036',
      'S.D.E. Residence',
      'sde-residence',
      'active',
      'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: Faridkot. PIN: 142049. Valid upto: 31-Dec-2019',
      '{"district":"Faridkot","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"Faridkot","pin_code":"142049","registration_date":"26-Feb-2018","valid_upto":"31-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR0298: Nirwana Estate
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR0298',
      'Nirwana Estate',
      'nirwana-estate',
      'active',
      'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: BATHINDA. PIN: 151001. Valid upto: 31-Dec-2019',
      '{"district":"Bathinda","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"BATHINDA","pin_code":"151001","registration_date":"26-Feb-2018","valid_upto":"31-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PC0059: MEHMAN KHANA (PATIALA HOTEL SITE)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PC0059',
      'MEHMAN KHANA (PATIALA HOTEL SITE)',
      'mehman-khana-patiala-hotel-site',
      'active',
      'Promoter: The Chief Administrator,  Office of Patiala Development Authority (Other than Individual). Address: NEAR RAILWAY STATION, PATIALA. PIN: 147001. Valid upto: 30-Apr-2018',
      '{"district":"Patiala","promoter":"The Chief Administrator,  Office of Patiala Development Authority (Other than Individual)","address":"NEAR RAILWAY STATION, PATIALA","pin_code":"147001","registration_date":"16-Apr-2018","valid_upto":"30-Apr-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PM0065: Urban Estate, Phase-4
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PM0065',
      'Urban Estate, Phase-4',
      'urban-estate-phase-4',
      'active',
      'Promoter: The Chief Administrator,  Office of Patiala Development Authority (Other than Individual). Address: Village Falauli, Patiala. PIN: 147001. Valid upto: 30-Sep-2020',
      '{"district":"Patiala","promoter":"The Chief Administrator,  Office of Patiala Development Authority (Other than Individual)","address":"Village Falauli, Patiala","pin_code":"147001","registration_date":"16-Apr-2018","valid_upto":"30-Sep-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PM0068: PUDA Enclave-2, (Rajpura Colony)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PM0068',
      'PUDA Enclave-2, (Rajpura Colony)',
      'puda-enclave-2-rajpura-colony',
      'active',
      'Promoter: The Chief Administrator,  Office of Patiala Development Authority (Other than Individual). Address: Near Bus Stand. PIN: 147001. Valid upto: 30-Jun-2018',
      '{"district":"Patiala","promoter":"The Chief Administrator,  Office of Patiala Development Authority (Other than Individual)","address":"Near Bus Stand","pin_code":"147001","registration_date":"16-Apr-2018","valid_upto":"30-Jun-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR73-PM0050: PUDA ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR73-PM0050',
      'PUDA ENCLAVE',
      'puda-enclave-dup1',
      'active',
      'Promoter: The Chief Administrator,  Office of Patiala Development Authority (Other than Individual). Address: Sangrur Road, Dhuri. PIN: 148024. Valid upto: 30-Jun-2020',
      '{"district":"Sangrur","promoter":"The Chief Administrator,  Office of Patiala Development Authority (Other than Individual)","address":"Sangrur Road, Dhuri","pin_code":"148024","registration_date":"26-Dec-2018","valid_upto":"30-Jun-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PM0077: Old Jail Site
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PM0077',
      'Old Jail Site',
      'old-jail-site',
      'active',
      'Promoter: The Chief Administrator, Punjab Urban Planning and Development Authority (Other than Individual). Address: Jalandhar. PIN: 144001. Valid upto: 30-Aug-2018',
      '{"district":"Jalandhar","promoter":"The Chief Administrator, Punjab Urban Planning and Development Authority (Other than Individual)","address":"Jalandhar","pin_code":"144001","registration_date":"30-Apr-2018","valid_upto":"30-Aug-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PM0082: Gandhi Vanita Ashram
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PM0082',
      'Gandhi Vanita Ashram',
      'gandhi-vanita-ashram',
      'active',
      'Promoter: The Chief Administrator, Punjab Urban Planning and Development Authority (Other than Individual). Address: Kapurthala Road, Jalandhar. PIN: 144001. Valid upto: 30-Jun-2018',
      '{"district":"Jalandhar","promoter":"The Chief Administrator, Punjab Urban Planning and Development Authority (Other than Individual)","address":"Kapurthala Road, Jalandhar","pin_code":"144001","registration_date":"08-May-2018","valid_upto":"30-Jun-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0389: Sector 76, 77, 78, 79 and 80
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0389',
      'Sector 76, 77, 78, 79 and 80',
      'sector-76-77-78-79-and-80',
      'active',
      'Promoter: Greater Mohali Area Development Authority (GMADA) (Other than Individual). Address: Sector 76, 77, 78, 79 and 80. PIN: 160071. Valid upto: 31-Dec-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Greater Mohali Area Development Authority (GMADA) (Other than Individual)","address":"Sector 76, 77, 78, 79 and 80","pin_code":"160071","registration_date":"27-Sep-2018","valid_upto":"31-Dec-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0215: INSIGNIA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0215',
      'INSIGNIA',
      'insignia',
      'active',
      'Promoter: Virtue Land Developers Pvt Ltd (Other than Individual). Address: Village DaunMajra. PIN: 140301. Valid upto: 22-Nov-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Virtue Land Developers Pvt Ltd (Other than Individual)","address":"Village DaunMajra","pin_code":"140301","registration_date":"22-Nov-2017","valid_upto":"22-Nov-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PC0049: Grand City Plaza
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PC0049',
      'Grand City Plaza',
      'grand-city-plaza',
      'active',
      'Promoter: YEE BEE GEE INFRASTRUCTURES PVT LTD (Other than Individual). Address: VILLAGE PHULLANWAL, DIST. LUDHIANA. PIN: 147001. Valid upto: 30-Apr-2020',
      '{"district":"Ludhiana","promoter":"YEE BEE GEE INFRASTRUCTURES PVT LTD (Other than Individual)","address":"VILLAGE PHULLANWAL, DIST. LUDHIANA","pin_code":"147001","registration_date":"12-Apr-2018","valid_upto":"30-Apr-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0061: Palm 25
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0061',
      'Palm 25',
      'palm-25',
      'active',
      'Promoter: Galaxy Developers (Other than Individual). Address: Sector 123, Sunny Enclave, Kharar. PIN: 140301. Valid upto: 30-Jun-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Galaxy Developers (Other than Individual)","address":"Sector 123, Sunny Enclave, Kharar","pin_code":"140301","registration_date":"11-Sep-2017","valid_upto":"30-Jun-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0051: Avenue-125
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0051',
      'Avenue-125',
      'avenue-125',
      'active',
      'Promoter: Ever Rich Buildcon Pvt. Ltd. (Other than Individual). Address: New Sunny Enclave Sector 125 Mohali. PIN: 160062. Valid upto: 01-Jan-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Ever Rich Buildcon Pvt. Ltd. (Other than Individual)","address":"New Sunny Enclave Sector 125 Mohali","pin_code":"160062","registration_date":"07-Sep-2017","valid_upto":"01-Jan-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0172: Northview Encore
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0172',
      'Northview Encore',
      'northview-encore',
      'active',
      'Promoter: BB Developers (Other than Individual). Address: Village Singhpura, H.B. No. 43, Zirakpur. PIN: 140603. Valid upto: 30-Aug-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"BB Developers (Other than Individual)","address":"Village Singhpura, H.B. No. 43, Zirakpur","pin_code":"140603","registration_date":"13-Jun-2022","valid_upto":"30-Aug-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0748: Noble Callista
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0748',
      'Noble Callista',
      'noble-callista',
      'active',
      'Promoter: Noble Dream Projects Private Limited (Other than Individual). Address: Group Housing Site no. 1, Sector 66, Beta, IT City. PIN: 160062. Valid upto: 31-Mar-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Noble Dream Projects Private Limited (Other than Individual)","address":"Group Housing Site no. 1, Sector 66, Beta, IT City","pin_code":"160062","registration_date":"01-Oct-2021","valid_upto":"31-Mar-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0805: Hridayam
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0805',
      'Hridayam',
      'hridayam',
      'active',
      'Promoter: Aerotown Developers LLP (Other than Individual). Address: Village Dyalpura, Zirakpur, Punjab. PIN: 140603. Valid upto: 31-Oct-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Aerotown Developers LLP (Other than Individual)","address":"Village Dyalpura, Zirakpur, Punjab","pin_code":"140603","registration_date":"10-Jun-2022","valid_upto":"31-Oct-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZL20-PR0804: SAMPURAN ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZL20-PR0804',
      'SAMPURAN ENCLAVE',
      'sampuran-enclave',
      'active',
      'Promoter: Nagpal cotton Industries Pvt. Ltd. (Other than Individual). Address: Vill. Painchan Wali, H.B. No. 234, Tehsil And District Fazilka, Fazilka. PIN: 152123. Valid upto: 22-Nov-2024',
      '{"district":"Fazilka","promoter":"Nagpal cotton Industries Pvt. Ltd. (Other than Individual)","address":"Vill. Painchan Wali, H.B. No. 234, Tehsil And District Fazilka, Fazilka","pin_code":"152123","registration_date":"10-Jun-2022","valid_upto":"22-Nov-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0803: PREET CITY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0803',
      'PREET CITY',
      'preet-city',
      'active',
      'Promoter: PREET LAND PROMOTERS & DEVELOPERS PVT LTD  (Other than Individual). Address: SECTOR 86, SAS NAGAR. PIN: 140308. Valid upto: 20-Sep-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PREET LAND PROMOTERS & DEVELOPERS PVT LTD  (Other than Individual)","address":"SECTOR 86, SAS NAGAR","pin_code":"140308","registration_date":"10-Jun-2022","valid_upto":"20-Sep-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0173: MOTIAZ GILL ESTATE (COMMERCIAL)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0173',
      'MOTIAZ GILL ESTATE (COMMERCIAL)',
      'motiaz-gill-estate-commercial',
      'active',
      'Promoter: Chandigarh Real Estate Developers (Other than Individual). Address: Village - Padiala, Kurali, SAS Nagar. PIN: 140103. Valid upto: 18-Jul-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Chandigarh Real Estate Developers (Other than Individual)","address":"Village - Padiala, Kurali, SAS Nagar","pin_code":"140103","registration_date":"10-Jun-2022","valid_upto":"18-Jul-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SBS84-PR0806: New City Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SBS84-PR0806',
      'New City Enclave',
      'new-city-enclave',
      'active',
      'Promoter: BAJAJ SAFE HOME PRIVATE LIMITED (Other than Individual). Address: Vill. BARNALA KALANA, Tehsil and District NAWANSHAHR, PUNJAB. PIN: 140308. Valid upto: 31-Mar-2024',
      '{"district":"Barnala","promoter":"BAJAJ SAFE HOME PRIVATE LIMITED (Other than Individual)","address":"Vill. BARNALA KALANA, Tehsil and District NAWANSHAHR, PUNJAB","pin_code":"140308","registration_date":"10-Jun-2022","valid_upto":"31-Mar-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0802: Signature City Phase-1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0802',
      'Signature City Phase-1',
      'signature-city-phase-1',
      'active',
      'Promoter: KLV Divya Builders & Developers (Other than Individual). Address: Village Nogiari, H.B. No. 282. PIN: 140306. Valid upto: 31-Mar-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KLV Divya Builders & Developers (Other than Individual)","address":"Village Nogiari, H.B. No. 282","pin_code":"140306","website":"www.signaturecitymohali.com","registration_date":"08-Jun-2022","valid_upto":"31-Mar-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0801: MODEL TOWN
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0801',
      'MODEL TOWN',
      'model-town-dup4',
      'active',
      'Promoter: LOG HUT BUILDERS  AND DEVELOPERS PRIVATE LIMITED  (Other than Individual). Address: Village Banur, Tehsil- Banur , Distt. SAS Nagar, Punjab. PIN: 140601. Valid upto: 31-Jul-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"LOG HUT BUILDERS  AND DEVELOPERS PRIVATE LIMITED  (Other than Individual)","address":"Village Banur, Tehsil- Banur , Distt. SAS Nagar, Punjab","pin_code":"140601","registration_date":"01-Jun-2022","valid_upto":"31-Jul-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0800: Raj Estate
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0800',
      'Raj Estate',
      'raj-estate',
      'active',
      'Promoter: Manpreet Singh Sandhu (Individual). Address: Vill.Gulabhgarh (Hadbast No.9), Derabassi. PIN: 144507. Valid upto: 01-Mar-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Manpreet Singh Sandhu (Individual)","address":"Vill.Gulabhgarh (Hadbast No.9), Derabassi","pin_code":"144507","registration_date":"01-Jun-2022","valid_upto":"01-Mar-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PC0151: GREEN CITY SQUARE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PC0151',
      'GREEN CITY SQUARE',
      'green-city-square',
      'active',
      'Promoter: PADMA DEVELOPERS (Other than Individual). Address: DABWALI ROAD, NEAR AIIMS HOSPITAL. PIN: 151001. Valid upto: 31-Jan-2026',
      '{"district":"Bathinda","promoter":"PADMA DEVELOPERS (Other than Individual)","address":"DABWALI ROAD, NEAR AIIMS HOSPITAL","pin_code":"151001","registration_date":"26-Jul-2021","valid_upto":"31-Jan-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PM0162: CENTRAL
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PM0162',
      'CENTRAL',
      'central',
      'active',
      'Promoter: DLF Home Developers Limited (Other than Individual). Address: Hyde Park Estate, New Chandigarh, Mullanpur. PIN: 140901. Valid upto: 31-Dec-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"DLF Home Developers Limited (Other than Individual)","address":"Hyde Park Estate, New Chandigarh, Mullanpur","pin_code":"140901","registration_date":"28-Dec-2020","valid_upto":"31-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0792: Sivanta Residency
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0792',
      'Sivanta Residency',
      'sivanta-residency',
      'active',
      'Promoter: AN BUILDERS (Other than Individual). Address: Sante Majra HB No 186, Kharar. PIN: 140307. Valid upto: 31-Mar-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AN BUILDERS (Other than Individual)","address":"Sante Majra HB No 186, Kharar","pin_code":"140307","registration_date":"25-May-2022","valid_upto":"31-Mar-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR03-PR0794: Heritage City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR03-PR0794',
      'Heritage City',
      'heritage-city',
      'active',
      'Promoter: Heritage City Developers and Builders Pvt. Ltd. (Other than Individual). Address: Airport Road. PIN: 143101. Valid upto: 26-Apr-2027',
      '{"district":"Amritsar","promoter":"Heritage City Developers and Builders Pvt. Ltd. (Other than Individual)","address":"Airport Road","pin_code":"143101","registration_date":"19-May-2022","valid_upto":"26-Apr-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-HSP31-PR0798: GNC 4
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-HSP31-PR0798',
      'GNC 4',
      'gnc-4',
      'active',
      'Promoter: Rehal Infra  Private  Limited (Other than Individual). Address: Village Bajwara(HB.No. 355),, Tehsil Hoshiapur. PIN: 146023. Valid upto: 31-Mar-2027',
      '{"district":"Hoshiarpur","promoter":"Rehal Infra  Private  Limited (Other than Individual)","address":"Village Bajwara(HB.No. 355),, Tehsil Hoshiapur","pin_code":"146023","registration_date":"19-May-2022","valid_upto":"31-Mar-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR03-PR0788: EMPIRE ESTATE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR03-PR0788',
      'EMPIRE ESTATE',
      'empire-estate',
      'active',
      'Promoter: SIMRAT KAUR GREWAL (Individual). Address: Village Kala Ghanupur, Sub-urban H.B. No.368, RAM TIRATH ROAD. PIN: 143001. Valid upto: 31-Jan-2024',
      '{"district":"Amritsar","promoter":"SIMRAT KAUR GREWAL (Individual)","address":"Village Kala Ghanupur, Sub-urban H.B. No.368, RAM TIRATH ROAD","pin_code":"143001","registration_date":"19-May-2022","valid_upto":"31-Jan-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR0789: GANPATI ENCLAVE Phase 1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR0789',
      'GANPATI ENCLAVE Phase 1',
      'ganpati-enclave-phase-1',
      'active',
      'Promoter: BCL Industries Limited (Other than Individual). Address: Vill. Patti Hazi Rattan, H.B. No. 69, Dabwali Road, Bathinda. PIN: 151005. Valid upto: 30-Jun-2026',
      '{"district":"Bathinda","promoter":"BCL Industries Limited (Other than Individual)","address":"Vill. Patti Hazi Rattan, H.B. No. 69, Dabwali Road, Bathinda","pin_code":"151005","registration_date":"18-May-2022","valid_upto":"30-Jun-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR03-PR0793: Heritage Vihar
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR03-PR0793',
      'Heritage Vihar',
      'heritage-vihar',
      'active',
      'Promoter: Heritage City Developers and Builders Pvt. Ltd. (Other than Individual). Address: Vill Heir, Airport Road Amritsar. PIN: 143001. Valid upto: 26-Apr-2027',
      '{"district":"Amritsar","promoter":"Heritage City Developers and Builders Pvt. Ltd. (Other than Individual)","address":"Vill Heir, Airport Road Amritsar","pin_code":"143001","registration_date":"19-May-2022","valid_upto":"26-Apr-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR03-PR0796: Heritage Kunj
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR03-PR0796',
      'Heritage Kunj',
      'heritage-kunj',
      'active',
      'Promoter: Heritage City Developers and Builders Pvt. Ltd. (Other than Individual). Address: Vill Heir, Airport Road Amritsar. PIN: 143001. Valid upto: 26-Apr-2027',
      '{"district":"Amritsar","promoter":"Heritage City Developers and Builders Pvt. Ltd. (Other than Individual)","address":"Vill Heir, Airport Road Amritsar","pin_code":"143001","registration_date":"19-May-2022","valid_upto":"26-Apr-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0170: NIRWANA SQUARE ONE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0170',
      'NIRWANA SQUARE ONE',
      'nirwana-square-one',
      'active',
      'Promoter: Vision India Colonizers Pvt. Ltd. (Other than Individual). Address: Village Khanpur, H.B. No. 183, Tehsil Kharar. PIN: 140301. Valid upto: 10-Feb-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Vision India Colonizers Pvt. Ltd. (Other than Individual)","address":"Village Khanpur, H.B. No. 183, Tehsil Kharar","pin_code":"140301","website":"www.visionindiagroup.com","registration_date":"19-May-2022","valid_upto":"10-Feb-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0790: The Foothills Co-operative House Building Society
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0790',
      'The Foothills Co-operative House Building Society',
      'the-foothills-co-operative-house-building-society',
      'active',
      'Promoter: The Foothills Cooperative House Building Society Ltd (Other than Individual). Address: GH Site No. 11, Sector-90-91, JLPL, Mohali, SAS Nagar. PIN: 160071. Valid upto: 15-Mar-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"The Foothills Cooperative House Building Society Ltd (Other than Individual)","address":"GH Site No. 11, Sector-90-91, JLPL, Mohali, SAS Nagar","pin_code":"160071","registration_date":"20-May-2022","valid_upto":"15-Mar-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PR0785: JMD GARDEN ESTATE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PR0785',
      'JMD GARDEN ESTATE',
      'jmd-garden-estate',
      'active',
      'Promoter: JMD Super Infratech Pvt. Ltd. (Other than Individual). Address: ICL Road, Rajpura, Punjab. PIN: 140401. Valid upto: 31-Dec-2026',
      '{"district":"Patiala","promoter":"JMD Super Infratech Pvt. Ltd. (Other than Individual)","address":"ICL Road, Rajpura, Punjab","pin_code":"140401","registration_date":"28-Apr-2022","valid_upto":"31-Dec-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0786: GOLF RESIDENCY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0786',
      'GOLF RESIDENCY',
      'golf-residency',
      'active',
      'Promoter: Nanak Sai Promoters and Builders (Other than Individual). Address: Sector-118, TDI City-I, SAS Nagar, Mohali. PIN: 140301. Valid upto: 31-Oct-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Nanak Sai Promoters and Builders (Other than Individual)","address":"Sector-118, TDI City-I, SAS Nagar, Mohali","pin_code":"140301","registration_date":"28-Apr-2022","valid_upto":"31-Oct-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0787: SAPPHIRE RESIDENTIAL PLOTS EXTENSION
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0787',
      'SAPPHIRE RESIDENTIAL PLOTS EXTENSION',
      'sapphire-residential-plots-extension',
      'active',
      'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: SAPPHIRE RESIDENTIAL PLOTS EXTENSION, TDI CITY II SECTOR 110-111. PIN: 140301. Valid upto: 12-Nov-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"SAPPHIRE RESIDENTIAL PLOTS EXTENSION, TDI CITY II SECTOR 110-111","pin_code":"140301","registration_date":"28-Apr-2022","valid_upto":"12-Nov-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0784: SHIVJOT BOLLYWOOD ESENCIA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0784',
      'SHIVJOT BOLLYWOOD ESENCIA',
      'shivjot-bollywood-esencia',
      'active',
      'Promoter: Shivjot Realty (Other than Individual). Address: BOLLYWOOD ESENCIA, VILLAGE GAZIPUR, HADBAST NO. 50, MC ZIRAKPUR, SAS NAGAR. PIN: 140603. Valid upto: 31-Dec-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Shivjot Realty (Other than Individual)","address":"BOLLYWOOD ESENCIA, VILLAGE GAZIPUR, HADBAST NO. 50, MC ZIRAKPUR, SAS NAGAR","pin_code":"140603","registration_date":"27-Apr-2022","valid_upto":"31-Dec-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI10-PR0782: LV developers
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI10-PR0782',
      'LV developers',
      'lv-developers',
      'active',
      'Promoter: LV DEVELOPERS (Other than Individual). Address: Vill. Phul-I, Phul- II, Gill Kalan, District Bathinda. PIN: 151103. Valid upto: 31-Jan-2025',
      '{"district":"Bathinda","promoter":"LV DEVELOPERS (Other than Individual)","address":"Vill. Phul-I, Phul- II, Gill Kalan, District Bathinda","pin_code":"151103","registration_date":"28-Apr-2022","valid_upto":"31-Jan-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PI0010: GILLCO INDUSTRIAL PARK - 2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PI0010',
      'GILLCO INDUSTRIAL PARK - 2',
      'gillco-industrial-park-2',
      'active',
      'Promoter: GILLCO DEVELOPERS AND BUILDERS PVT LTD (Other than Individual). Address: VILL- MANAKPUR KALLAR. PIN: 140306. Valid upto: 30-May-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GILLCO DEVELOPERS AND BUILDERS PVT LTD (Other than Individual)","address":"VILL- MANAKPUR KALLAR","pin_code":"140306","website":"www.gillcovalley.com","registration_date":"17-Aug-2020","valid_upto":"30-May-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR77-PR0780: Park Avenue
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR77-PR0780',
      'Park Avenue',
      'park-avenue-dup3',
      'active',
      'Promoter: Park Avenue (Other than Individual). Address: Park avenue uppli road, sangrur. PIN: 148105. Valid upto: 31-Aug-2025',
      '{"district":"Sangrur","promoter":"Park Avenue (Other than Individual)","address":"Park avenue uppli road, sangrur","pin_code":"148105","registration_date":"25-Apr-2022","valid_upto":"31-Aug-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0106: CENTRAL STREET
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0106',
      'CENTRAL STREET',
      'central-street',
      'active',
      'Promoter: ALAKNANDA ENTERPRISES (Other than Individual). Address: CENTRAL STREET, SECTOR-67. PIN: 160062. Valid upto: 31-Jan-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ALAKNANDA ENTERPRISES (Other than Individual)","address":"CENTRAL STREET, SECTOR-67","pin_code":"160062","registration_date":"16-Dec-2019","valid_upto":"31-Jan-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PI0014: The CCI Industrial Park
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PI0014',
      'The CCI Industrial Park',
      'the-cci-industrial-park',
      'active',
      'Promoter: The CCI INDUSTRIAL ESTATE AND CLUSTERS COOPERATIVE INDUSTRIAL SOCIETY LTD (Other than Individual). Address: CCI Industrial Park, village Behra,, Tehsil Dera Bassi, Distt SAS NAgar. PIN: 140507. Valid upto: 24-Jan-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"The CCI INDUSTRIAL ESTATE AND CLUSTERS COOPERATIVE INDUSTRIAL SOCIETY LTD (Other than Individual)","address":"CCI Industrial Park, village Behra,, Tehsil Dera Bassi, Distt SAS NAgar","pin_code":"140507","registration_date":"11-Nov-2021","valid_upto":"24-Jan-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0136: Altus Prime - 1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0136',
      'Altus Prime - 1',
      'altus-prime-1',
      'active',
      'Promoter: Altus Space Builders Pvt. Ltd. (Other than Individual). Address: Pocket-C, Village-Dhodemajra, Mullanpur. PIN: 140301. Valid upto: 09-Feb-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Altus Space Builders Pvt. Ltd. (Other than Individual)","address":"Pocket-C, Village-Dhodemajra, Mullanpur","pin_code":"140301","registration_date":"18-Nov-2020","valid_upto":"09-Feb-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0522: HERO HOMES, MOHALI-PHASE-2A
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0522',
      'HERO HOMES, MOHALI-PHASE-2A',
      'hero-homes-mohali-phase-2a',
      'active',
      'Promoter: HERO REALTY PRIVATE LIMITED (Other than Individual). Address: Group Housing Site No.1, Sector 88, SAS Nagar, Mohali. PIN: 140308. Valid upto: 31-Dec-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"HERO REALTY PRIVATE LIMITED (Other than Individual)","address":"Group Housing Site No.1, Sector 88, SAS Nagar, Mohali","pin_code":"140308","website":"www.herohomes.in","registration_date":"24-Sep-2019","valid_upto":"31-Dec-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR03-PM0142: DreamCity Nxt ,  Phase 2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR03-PM0142',
      'DreamCity Nxt ,  Phase 2',
      'dreamcity-nxt-phase-2',
      'active',
      'Promoter: Vishnurupa Developers Private Limited (Other than Individual). Address: Village Manawala, NH1, GT Road. PIN: 143115. Valid upto: 30-Nov-2023',
      '{"district":"Amritsar","promoter":"Vishnurupa Developers Private Limited (Other than Individual)","address":"Village Manawala, NH1, GT Road","pin_code":"143115","registration_date":"28-May-2019","valid_upto":"30-Nov-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR02-PR0390: DreamCity Nxt , Phase 1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR02-PR0390',
      'DreamCity Nxt , Phase 1',
      'dreamcity-nxt-phase-1',
      'active',
      'Promoter: Vishnurupa Developers Private Limited (Other than Individual). Address: Village Manawal, NH1, GT Road. PIN: 143115. Valid upto: 31-Jul-2023',
      '{"district":"Amritsar","promoter":"Vishnurupa Developers Private Limited (Other than Individual)","address":"Village Manawal, NH1, GT Road","pin_code":"143115","registration_date":"28-Sep-2018","valid_upto":"31-Jul-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0082: Jubilee Walk
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0082',
      'Jubilee Walk',
      'jubilee-walk',
      'active',
      'Promoter: Jubilee Joy Homes LLP (Other than Individual). Address: Jubilee Walk, Sector 70. PIN: 160071. Valid upto: 31-Dec-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jubilee Joy Homes LLP (Other than Individual)","address":"Jubilee Walk, Sector 70","pin_code":"160071","website":"www.jubileewalk.com","registration_date":"18-Dec-2018","valid_upto":"31-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PM0165: LIFESTYLE HOMES
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PM0165',
      'LIFESTYLE HOMES',
      'lifestyle-homes',
      'active',
      'Promoter: SRB Colonisers Private Limited (Other than Individual). Address: Village Nabha, Tehsil- Derabassi, ZIRAKPUR, SAS Nagar. PIN: 140507. Valid upto: 14-Jan-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SRB Colonisers Private Limited (Other than Individual)","address":"Village Nabha, Tehsil- Derabassi, ZIRAKPUR, SAS Nagar","pin_code":"140507","registration_date":"30-Mar-2022","valid_upto":"14-Jan-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR0778: Virat Greens-2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR0778',
      'Virat Greens-2',
      'virat-greens-2',
      'active',
      'Promoter: Indira Infratech Private Limited (Other than Individual). Address: Multania Road. PIN: 151001. Valid upto: 19-Jan-2027',
      '{"district":"Bathinda","promoter":"Indira Infratech Private Limited (Other than Individual)","address":"Multania Road","pin_code":"151001","registration_date":"30-Mar-2022","valid_upto":"19-Jan-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0169: Amayra Emporio
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0169',
      'Amayra Emporio',
      'amayra-emporio',
      'active',
      'Promoter: Omni Pacific Colonizers Pvt Ltd (Other than Individual). Address: Hadbast No 76,  village Dau majra, Kharar  Mohali. PIN: 140301. Valid upto: 17-Jan-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omni Pacific Colonizers Pvt Ltd (Other than Individual)","address":"Hadbast No 76,  village Dau majra, Kharar  Mohali","pin_code":"140301","registration_date":"30-Mar-2022","valid_upto":"17-Jan-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0775: Aastha Homez
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0775',
      'Aastha Homez',
      'aastha-homez',
      'active',
      'Promoter: Aastha Homez (Other than Individual). Address: H B No 20 Village Dappar MC Lalru, Tehsil Dera Bassi. PIN: 140506. Valid upto: 31-Mar-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Aastha Homez (Other than Individual)","address":"H B No 20 Village Dappar MC Lalru, Tehsil Dera Bassi","pin_code":"140506","registration_date":"30-Mar-2022","valid_upto":"31-Mar-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0158: CHANDIGARH SQUARE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0158',
      'CHANDIGARH SQUARE',
      'chandigarh-square',
      'active',
      'Promoter: KRISHANG BUILDTECH PRIVATE LIMITED (Other than Individual). Address: GODOWN AREA, CHANDIGARH-AMBALA-ZIRAKPUR ROAD, ZIRAKPUR. PIN: 140603. Valid upto: 05-Oct-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KRISHANG BUILDTECH PRIVATE LIMITED (Other than Individual)","address":"GODOWN AREA, CHANDIGARH-AMBALA-ZIRAKPUR ROAD, ZIRAKPUR","pin_code":"140603","registration_date":"02-Sep-2021","valid_upto":"05-Oct-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0396: Sushma Valencia
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0396',
      'Sushma Valencia',
      'sushma-valencia',
      'active',
      'Promoter: Suksha Developers Private Limited (Other than Individual). Address: Village Nagla, MC Zirakpur. PIN: 140603. Valid upto: 03-Oct-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Suksha Developers Private Limited (Other than Individual)","address":"Village Nagla, MC Zirakpur","pin_code":"140603","website":"www.sushma.co.in","registration_date":"06-Nov-2018","valid_upto":"03-Oct-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0729: Ludhiana Heights (Block A2 to A5 and A7 to A10)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0729',
      'Ludhiana Heights (Block A2 to A5 and A7 to A10)',
      'ludhiana-heights-block-a2-to-a5-and-a7-to-a10',
      'active',
      'Promoter: Nevada Housing LLP (Other than Individual). Address: Village Balloke, Ludhiana. PIN: 141001. Valid upto: 30-Jun-2031',
      '{"district":"Ludhiana","promoter":"Nevada Housing LLP (Other than Individual)","address":"Village Balloke, Ludhiana","pin_code":"141001","registration_date":"16-Aug-2021","valid_upto":"30-Jun-2031"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0776: HOME TOWN
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0776',
      'HOME TOWN',
      'home-town',
      'active',
      'Promoter: SATVIR  SINGH (Individual). Address: H.B. NO. 290, VILLAGE NABHA, SUB TEHSIL ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SATVIR  SINGH (Individual)","address":"H.B. NO. 290, VILLAGE NABHA, SUB TEHSIL ZIRAKPUR","pin_code":"140603","registration_date":"17-Mar-2022","valid_upto":"31-Dec-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0377: AFFINITY GREENS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0377',
      'AFFINITY GREENS',
      'affinity-greens',
      'active',
      'Promoter: Affinity Builders & Promoters  (Other than Individual). Address: PR-7, 200 ft. Wide International Airport Road, Near McDonald''s Zirakpur. PIN: 140603. Valid upto: 30-Jun-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Affinity Builders & Promoters  (Other than Individual)","address":"PR-7, 200 ft. Wide International Airport Road, Near McDonald''''s Zirakpur","pin_code":"140603","website":"http://affinitygreenzirakpur.in/","registration_date":"02-Aug-2018","valid_upto":"30-Jun-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR0676: VAJRA VIHAR
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR0676',
      'VAJRA VIHAR',
      'vajra-vihar',
      'active',
      'Promoter: Dream Home Colonisers & Developers (Other than Individual). Address: Village Sofi Pind, (H.B.No.231). PIN: 144024. Valid upto: 12-Jul-2025',
      '{"district":"Jalandhar","promoter":"Dream Home Colonisers & Developers (Other than Individual)","address":"Village Sofi Pind, (H.B.No.231)","pin_code":"144024","registration_date":"28-Dec-2020","valid_upto":"12-Jul-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR0773: PALM ROYALE ESTATE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR0773',
      'PALM ROYALE ESTATE',
      'palm-royale-estate',
      'active',
      'Promoter: AHR PROMOTERS AND DEVELOPERS PRIVATE LIMITED (Other than Individual). Address: Near GTB Nagar, Vill. Kingra, Jalandhar. PIN: 144201. Valid upto: 04-Dec-2023',
      '{"district":"Jalandhar","promoter":"AHR PROMOTERS AND DEVELOPERS PRIVATE LIMITED (Other than Individual)","address":"Near GTB Nagar, Vill. Kingra, Jalandhar","pin_code":"144201","registration_date":"24-Feb-2022","valid_upto":"04-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0168: LA -MER
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0168',
      'LA -MER',
      'la-mer',
      'active',
      'Promoter: K S INFRACON PVT. LTD. (Other than Individual). Address: Village Singhpura,Zirakpur,Distt SAS Nagar,Mohali,H.B No 43. PIN: 140103. Valid upto: 31-Dec-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"K S INFRACON PVT. LTD. (Other than Individual)","address":"Village Singhpura,Zirakpur,Distt SAS Nagar,Mohali,H.B No 43","pin_code":"140103","registration_date":"24-Feb-2022","valid_upto":"31-Dec-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR02-PR0774: Aadhaar Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR02-PR0774',
      'Aadhaar Enclave',
      'aadhaar-enclave',
      'active',
      'Promoter: Aadhaar Developers (Other than Individual). Address: Vill. Wadala Bhittewad, H.B. No. 354, Tehsil and District Amritsar. PIN: 143107. Valid upto: 31-Dec-2023',
      '{"district":"Amritsar","promoter":"Aadhaar Developers (Other than Individual)","address":"Vill. Wadala Bhittewad, H.B. No. 354, Tehsil and District Amritsar","pin_code":"143107","registration_date":"24-Feb-2022","valid_upto":"31-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0771: UNITED BOLLWOOD ESENCIA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0771',
      'UNITED BOLLWOOD ESENCIA',
      'united-bollwood-esencia',
      'active',
      'Promoter: United Builders & Infratech (Other than Individual). Address: Bollywood Esencia, Village -  Gazipur, Hadbast no.-50, MC Zirakpur, SAS Nagar, Punjab. PIN: 140603. Valid upto: 31-Dec-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"United Builders & Infratech (Other than Individual)","address":"Bollywood Esencia, Village -  Gazipur, Hadbast no.-50, MC Zirakpur, SAS Nagar, Punjab","pin_code":"140603","registration_date":"23-Feb-2022","valid_upto":"31-Dec-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR71-PR0770: PARK AVENUE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR71-PR0770',
      'PARK AVENUE',
      'park-avenue-dup4',
      'active',
      'Promoter: SOLTY INFRA (Other than Individual). Address: Vill. RAMPURA AND BHAWANIGARH, HB No. 51 & 40. PIN: 148026. Valid upto: 23-Dec-2025',
      '{"district":"Sangrur","promoter":"SOLTY INFRA (Other than Individual)","address":"Vill. RAMPURA AND BHAWANIGARH, HB No. 51 & 40","pin_code":"148026","registration_date":"23-Feb-2022","valid_upto":"23-Dec-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0425: Green Lotus Utsav
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0425',
      'Green Lotus Utsav',
      'green-lotus-utsav',
      'active',
      'Promoter: MAYA ESTATE (Other than Individual). Address: GREEN LOTUS UTSAV, ON PR-7 DISTT. S. A. S. NAGAR (MOHALI) PUNJAB, REEN LOTUS UTSAV, ON PR-7 DISTT. S. A. S. NAGAR (MOHALI) PUNJAB. PIN: 140603. Valid upto: 31-Dec-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MAYA ESTATE (Other than Individual)","address":"GREEN LOTUS UTSAV, ON PR-7 DISTT. S. A. S. NAGAR (MOHALI) PUNJAB, REEN LOTUS UTSAV, ON PR-7 DISTT. S. A. S. NAGAR (MOHALI) PUNJAB","pin_code":"140603","registration_date":"26-Feb-2019","valid_upto":"31-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0766: Mona  Greens II
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0766',
      'Mona  Greens II',
      'mona-greens-ii',
      'active',
      'Promoter: Mona Townships Private Limited (Other than Individual). Address: Village Gazipur Mc Zirakpur. PIN: 140603. Valid upto: 09-Feb-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Mona Townships Private Limited (Other than Individual)","address":"Village Gazipur Mc Zirakpur","pin_code":"140603","registration_date":"15-Feb-2022","valid_upto":"09-Feb-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0769: GILLCO BUDGET HOMES
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0769',
      'GILLCO BUDGET HOMES',
      'gillco-budget-homes',
      'active',
      'Promoter: GILLCO DEVELOPERS AND BUILDERS PVT. LTD. (Other than Individual). Address: Kharar. PIN: 140301. Valid upto: 08-Mar-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GILLCO DEVELOPERS AND BUILDERS PVT. LTD. (Other than Individual)","address":"Kharar","pin_code":"140301","website":"https://www.gillcogroup.com","registration_date":"08-Feb-2022","valid_upto":"08-Mar-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-KPT40-PR0767: AGI SKY GARDEN-II
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-KPT40-PR0767',
      'AGI SKY GARDEN-II',
      'agi-sky-garden-ii',
      'active',
      'Promoter: AGI INFRA LIMITED (Other than Individual). Address: Village Khazurla H.B.No.82, Tehsil Phagwara. PIN: 144411. Valid upto: 21-Nov-2026',
      '{"district":"Kapurthala","promoter":"AGI INFRA LIMITED (Other than Individual)","address":"Village Khazurla H.B.No.82, Tehsil Phagwara","pin_code":"144411","website":"www.agiinfra.com","registration_date":"08-Feb-2022","valid_upto":"21-Nov-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-HSP31-PI0016: Industrial Park
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-HSP31-PI0016',
      'Industrial Park',
      'industrial-park-dup2',
      'active',
      'Promoter: Hoshiarpur Wood Park Pvt Ltd (Other than Individual). Address: Village Bassi Kasson and Village Bassi Mehroof, Hussainpur. PIN: 146001. Valid upto: 31-Aug-2026',
      '{"district":"Hoshiarpur","promoter":"Hoshiarpur Wood Park Pvt Ltd (Other than Individual)","address":"Village Bassi Kasson and Village Bassi Mehroof, Hussainpur","pin_code":"146001","registration_date":"12-Jan-2022","valid_upto":"31-Aug-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0765: Galaxy Heights 2, Phase-I, Tower-D & E
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0765',
      'Galaxy Heights 2, Phase-I, Tower-D & E',
      'galaxy-heights-2-phase-i-tower-d-e',
      'active',
      'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: Sector-66A. PIN: 140306. Valid upto: 16-Nov-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"Sector-66A","pin_code":"140306","website":"www.jantahousing.com","registration_date":"12-Jan-2022","valid_upto":"16-Nov-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0763: Galaxy Heights 2, Phase-II, Tower-A&B
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0763',
      'Galaxy Heights 2, Phase-II, Tower-A&B',
      'galaxy-heights-2-phase-ii-tower-ab',
      'active',
      'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: Sector-66A. PIN: 140306. Valid upto: 16-Jan-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"Sector-66A","pin_code":"140306","website":"www.jantahousing.com","registration_date":"12-Jan-2022","valid_upto":"16-Jan-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL61-PC0167: MATA CHINTPURNI SHOPPING COMPLEX NABHA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL61-PC0167',
      'MATA CHINTPURNI SHOPPING COMPLEX NABHA',
      'mata-chintpurni-shopping-complex-nabha',
      'active',
      'Promoter: Improvement Trust Nabha (Other than Individual). Address: NEAR PATIALA GATE, NABHA. PIN: 147201. Valid upto: 30-Dec-2024',
      '{"district":"Patiala","promoter":"Improvement Trust Nabha (Other than Individual)","address":"NEAR PATIALA GATE, NABHA","pin_code":"147201","registration_date":"12-Jan-2022","valid_upto":"30-Dec-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0762: The Hindustan Times Employees And Others Coop House Building Society Ltd
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0762',
      'The Hindustan Times Employees And Others Coop House Building Society Ltd',
      'the-hindustan-times-employees-and-others-coop-house-building-society-ltd',
      'active',
      'Promoter: The Hindustan Times Employees and Other Coop H B Society Ltd (Other than Individual). Address: Plot 185, Sector 79. PIN: 160062. Valid upto: 23-Feb-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"The Hindustan Times Employees and Other Coop H B Society Ltd (Other than Individual)","address":"Plot 185, Sector 79","pin_code":"160062","registration_date":"27-Dec-2021","valid_upto":"23-Feb-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0757: HOMELAND REGALIA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0757',
      'HOMELAND REGALIA',
      'homeland-regalia',
      'active',
      'Promoter: HOMELAND REALTY PRIVATE LIMITED (Other than Individual). Address: GROUP HOUSING SITE, SECTOR-77. PIN: 160055. Valid upto: 24-Dec-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"HOMELAND REALTY PRIVATE LIMITED (Other than Individual)","address":"GROUP HOUSING SITE, SECTOR-77","pin_code":"160055","registration_date":"12-Dec-2021","valid_upto":"24-Dec-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0759: City of Dreams-5 Kharar
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0759',
      'City of Dreams-5 Kharar',
      'city-of-dreams-5-kharar',
      'active',
      'Promoter: Credo Assets Pvt. Ltd. (Other than Individual). Address: Village Santemajra, HB No. 186, Tehsil Kharar. PIN: 140307. Valid upto: 30-Sep-2028',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Credo Assets Pvt. Ltd. (Other than Individual)","address":"Village Santemajra, HB No. 186, Tehsil Kharar","pin_code":"140307","registration_date":"23-Dec-2021","valid_upto":"30-Sep-2028"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-MNS50-PR0758: Garden Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-MNS50-PR0758',
      'Garden Enclave',
      'garden-enclave-dup2',
      'active',
      'Promoter: Smart Move housing Pvt Ltd (Other than Individual). Address: Mansa Barnala Road, Near to Jannat Enclave. PIN: 151505. Valid upto: 30-Jul-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Smart Move housing Pvt Ltd (Other than Individual)","address":"Mansa Barnala Road, Near to Jannat Enclave","pin_code":"151505","registration_date":"23-Dec-2021","valid_upto":"30-Jul-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0703: Aura Gazania
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0703',
      'Aura Gazania',
      'aura-gazania',
      'active',
      'Promoter: Aura Buildtech Pvt. Ltd. (Other than Individual). Address: village Nabha,, High Ground road Zirakpur,. PIN: 140603. Valid upto: 31-Mar-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Aura Buildtech Pvt. Ltd. (Other than Individual)","address":"village Nabha,, High Ground road Zirakpur,","pin_code":"140603","registration_date":"16-Apr-2021","valid_upto":"31-Mar-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0634: SKYLAR HOMES
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0634',
      'SKYLAR HOMES',
      'skylar-homes',
      'active',
      'Promoter: Zilver Masions LLP (Other than Individual). Address: H.B. No. 290, Village- Nabha, MC Zirakpur, SAS NAGAR. PIN: 140603. Valid upto: 30-Sep-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Zilver Masions LLP (Other than Individual)","address":"H.B. No. 290, Village- Nabha, MC Zirakpur, SAS NAGAR","pin_code":"140603","registration_date":"08-Sep-2020","valid_upto":"30-Sep-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0754: Ananda Floors -2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0754',
      'Ananda Floors -2',
      'ananda-floors-2',
      'active',
      'Promoter: Singla Builders and promoters Ltd. (Other than Individual). Address: Village Rauni, HB No. 14, Tehsil Derabassi. PIN: 140507. Valid upto: 30-Sep-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Singla Builders and promoters Ltd. (Other than Individual)","address":"Village Rauni, HB No. 14, Tehsil Derabassi","pin_code":"140507","registration_date":"17-Dec-2021","valid_upto":"30-Sep-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0163: City Square
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0163',
      'City Square',
      'city-square',
      'active',
      'Promoter: Credo Assets Pvt. Ltd. (Other than Individual). Address: Village Santemajra, HB No. 186, Kharar. PIN: 140307. Valid upto: 30-Jul-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Credo Assets Pvt. Ltd. (Other than Individual)","address":"Village Santemajra, HB No. 186, Kharar","pin_code":"140307","registration_date":"17-Dec-2021","valid_upto":"30-Jul-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0756: CITY OF DREAM 2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0756',
      'CITY OF DREAM 2',
      'city-of-dream-2',
      'active',
      'Promoter: SBP TOWNSHIP PRIVATE LIMITED (Other than Individual). Address: Village Nabha, Sub Tehsil Zirakpur, HB.NO.290, Tehsil Derabassi. PIN: 140507. Valid upto: 30-May-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SBP TOWNSHIP PRIVATE LIMITED (Other than Individual)","address":"Village Nabha, Sub Tehsil Zirakpur, HB.NO.290, Tehsil Derabassi","pin_code":"140507","website":"sbpgroup.in","registration_date":"17-Dec-2021","valid_upto":"30-May-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL65-PI0015: SIEL INDUSTRIAL ESTATE LIMITED
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL65-PI0015',
      'SIEL INDUSTRIAL ESTATE LIMITED',
      'siel-industrial-estate-limited',
      'active',
      'Promoter: SIEL INDUSTRIAL ESTATE LTD (Other than Individual). Address: SIEL INDUSTRIAL ESTATE LIMITED, CHARATRAMPUR, TEH. RAJPURA, DIST.. PATIALA. PIN: 140401. Valid upto: 19-Sep-2029',
      '{"district":"Patiala","promoter":"SIEL INDUSTRIAL ESTATE LTD (Other than Individual)","address":"SIEL INDUSTRIAL ESTATE LIMITED, CHARATRAMPUR, TEH. RAJPURA, DIST.. PATIALA","pin_code":"140401","website":"mawanasugars.com","registration_date":"16-Dec-2021","valid_upto":"19-Sep-2029"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0755: ROSEATE HOMES
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0755',
      'ROSEATE HOMES',
      'roseate-homes',
      'active',
      'Promoter: PLANMEN BUILDTECH LLP (Other than Individual). Address: VILLAGE GAZIPUR HADBADAST NO. 50, MC ZIRAKPUR. PIN: 140603. Valid upto: 30-Jun-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PLANMEN BUILDTECH LLP (Other than Individual)","address":"VILLAGE GAZIPUR HADBADAST NO. 50, MC ZIRAKPUR","pin_code":"140603","registration_date":"16-Dec-2021","valid_upto":"30-Jun-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0165: Mohali Citi Centre- 2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0165',
      'Mohali Citi Centre- 2',
      'mohali-citi-centre-2',
      'active',
      'Promoter: KLG Jewellers (Other than Individual). Address: Block- F, Aero City, SAS Nagar. PIN: 160055. Valid upto: 31-Aug-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KLG Jewellers (Other than Individual)","address":"Block- F, Aero City, SAS Nagar","pin_code":"160055","registration_date":"17-Dec-2021","valid_upto":"31-Aug-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0164: CITY OF DREAM -1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0164',
      'CITY OF DREAM -1',
      'city-of-dream-1',
      'active',
      'Promoter: SBP TOWNSHIP PRIVATE LIMITED (Other than Individual). Address: HADBAST NO 290 VILLAGE NABHA, SUB TEHSIL ZIRAKPUR. PIN: 140507. Valid upto: 30-Jul-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SBP TOWNSHIP PRIVATE LIMITED (Other than Individual)","address":"HADBAST NO 290 VILLAGE NABHA, SUB TEHSIL ZIRAKPUR","pin_code":"140507","website":"sbpgroup.in","registration_date":"17-Dec-2021","valid_upto":"30-Jul-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0457: Tulip Floors
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0457',
      'Tulip Floors',
      'tulip-floors',
      'active',
      'Promoter: Hanumant Builders (Other than Individual). Address: Bollywood Green City, Sector 113, Near Landran Chowk, Landran-Chunni Sirhind Road. PIN: 140307. Valid upto: 31-Mar-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Hanumant Builders (Other than Individual)","address":"Bollywood Green City, Sector 113, Near Landran Chowk, Landran-Chunni Sirhind Road","pin_code":"140307","registration_date":"13-May-2019","valid_upto":"31-Mar-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH43-PC0159: CENTRAL HUB
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH43-PC0159',
      'CENTRAL HUB',
      'central-hub',
      'active',
      'Promoter: Rudra Infrastructures (Other than Individual). Address: Central Hub, NH 44 (Old Nh1) Vill Bullepur Tehsil Khanna. PIN: 141401. Valid upto: 10-Jun-2025',
      '{"district":"Ludhiana","promoter":"Rudra Infrastructures (Other than Individual)","address":"Central Hub, NH 44 (Old Nh1) Vill Bullepur Tehsil Khanna","pin_code":"141401","registration_date":"13-Sep-2021","valid_upto":"10-Jun-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH42-PR0749: UMBERA MAJESTIC
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH42-PR0749',
      'UMBERA MAJESTIC',
      'umbera-majestic',
      'active',
      'Promoter: Umbera Group (Other than Individual). Address: Village Gill - I and Gill - II, Bulara Road, Back side GNE College. PIN: 141006. Valid upto: 11-Jan-2026',
      '{"district":"Ludhiana","promoter":"Umbera Group (Other than Individual)","address":"Village Gill - I and Gill - II, Bulara Road, Back side GNE College","pin_code":"141006","website":"www.umberagroup.com","registration_date":"19-Oct-2021","valid_upto":"11-Jan-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0161: The Junction
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0161',
      'The Junction',
      'the-junction',
      'active',
      'Promoter: Altus Space Builders Pvt Ltd (Other than Individual). Address: Commercial site-5 in Muirwoods Ecocity (Mega) at village-Sainimajra,Mullanpur. PIN: 140901. Valid upto: 11-Jul-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Altus Space Builders Pvt Ltd (Other than Individual)","address":"Commercial site-5 in Muirwoods Ecocity (Mega) at village-Sainimajra,Mullanpur","pin_code":"140901","website":"http://altusnewchandigarh.in","registration_date":"01-Oct-2021","valid_upto":"11-Jul-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR0751: STAR CITY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR0751',
      'STAR CITY',
      'star-city-dup1',
      'active',
      'Promoter: HI TECH INFRASTRUCTURE (Other than Individual). Address: VILLAGE UPPAL JAGIR, TEHSIL PHILLOUR, JALANDHAR. PIN: 144039. Valid upto: 13-Nov-2023',
      '{"district":"Jalandhar","promoter":"HI TECH INFRASTRUCTURE (Other than Individual)","address":"VILLAGE UPPAL JAGIR, TEHSIL PHILLOUR, JALANDHAR","pin_code":"144039","registration_date":"21-Oct-2021","valid_upto":"13-Nov-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PM0163: WAVE ESTATE BLOCK G2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PM0163',
      'WAVE ESTATE BLOCK G2',
      'wave-estate-block-g2',
      'active',
      'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: WAVE ESTATE, Sector 85 and Sector 99. PIN: 140308. Valid upto: 01-Sep-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"WAVE ESTATE, Sector 85 and Sector 99","pin_code":"140308","registration_date":"19-Oct-2021","valid_upto":"01-Sep-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0752: WAVE ESTATE BLOCK A2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0752',
      'WAVE ESTATE BLOCK A2',
      'wave-estate-block-a2',
      'active',
      'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: WAVE ESTATE, Sector 85 and Sector 99. PIN: 140308. Valid upto: 01-Sep-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"WAVE ESTATE, Sector 85 and Sector 99","pin_code":"140308","registration_date":"19-Oct-2021","valid_upto":"01-Sep-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0750: CHANDIGARH HILLS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0750',
      'CHANDIGARH HILLS',
      'chandigarh-hills',
      'active',
      'Promoter: MOTIA BUILDERS (Other than Individual). Address: Vill. Gulabgarh, HB No. 9, Tehsil Dera Bassi. PIN: 140507. Valid upto: 30-Apr-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MOTIA BUILDERS (Other than Individual)","address":"Vill. Gulabgarh, HB No. 9, Tehsil Dera Bassi","pin_code":"140507","website":"www.motiagroup@com","registration_date":"19-Oct-2021","valid_upto":"30-Apr-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PR0490: Maple Horizon
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PR0490',
      'Maple Horizon',
      'maple-horizon',
      'active',
      'Promoter: Maple GK Infrastructure LLP (Other than Individual). Address: Vill. Majari Akalian and Vill Hardaspur , Sirhind road. PIN: 147003. Valid upto: 06-May-2024',
      '{"district":"Patiala","promoter":"Maple GK Infrastructure LLP (Other than Individual)","address":"Vill. Majari Akalian and Vill Hardaspur , Sirhind road","pin_code":"147003","registration_date":"29-Jul-2019","valid_upto":"06-May-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0004: Ireo Waterfront Pocket 2 (Phase-1)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0004',
      'Ireo Waterfront Pocket 2 (Phase-1)',
      'ireo-waterfront-pocket-2-phase-1',
      'active',
      'Promoter: Ireo Waterfront Pvt Ltd (Other than Individual). Address: Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.. PIN: 141001. Valid upto: 29-Nov-2017',
      '{"district":"Ludhiana","promoter":"Ireo Waterfront Pvt Ltd (Other than Individual)","address":"Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.","pin_code":"141001","website":"www.ireowaterfront.com","registration_date":"01-Sep-2017","valid_upto":"29-Nov-2017"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0006: International Trade Tower
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0006',
      'International Trade Tower',
      'international-trade-tower',
      'active',
      'Promoter: BHANU INFRABUILD PRIVATE LIMITED (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 31-Jul-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"BHANU INFRABUILD PRIVATE LIMITED (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"06-Sep-2017","valid_upto":"31-Jul-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PM0003: Falcon View Apartments- Phase-1, Tower X,Y,A,B
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PM0003',
      'Falcon View Apartments- Phase-1, Tower X,Y,A,B',
      'falcon-view-apartments-phase-1-tower-xyab',
      'active',
      'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: Falcon View Apartments Phase-1, Towre A,B,X,Y, Sector-66A. PIN: 140306. Valid upto: 26-Apr-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"Falcon View Apartments Phase-1, Towre A,B,X,Y, Sector-66A","pin_code":"140306","website":"www.jantahousing.com","registration_date":"19-Sep-2017","valid_upto":"26-Apr-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0001: Centra Greens
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0001',
      'Centra Greens',
      'centra-greens',
      'active',
      'Promoter: Arr Ess Industries Pvt Ltd (Other than Individual). Address: CENTRA GREENS, Village Daad, Pakhowal Road. PIN: 141013. Valid upto: 31-Dec-2018',
      '{"district":"Ludhiana","promoter":"Arr Ess Industries Pvt Ltd (Other than Individual)","address":"CENTRA GREENS, Village Daad, Pakhowal Road","pin_code":"141013","website":"www.centragreens.com","registration_date":"01-Sep-2017","valid_upto":"31-Dec-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PM0001: Tower-Royal Retreat-5, Omaxe Royal Residency SCO (Plots) (Commercial-2)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PM0001',
      'Tower-Royal Retreat-5, Omaxe Royal Residency SCO (Plots) (Commercial-2)',
      'tower-royal-retreat-5-omaxe-royal-residency-sco-plots-commercial-2',
      'active',
      'Promoter: OMAXE LIMITED (Other than Individual). Address: Group Housing , Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana. PIN: 142022. Valid upto: 31-Dec-2018',
      '{"district":"Ludhiana","promoter":"OMAXE LIMITED (Other than Individual)","address":"Group Housing , Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana","pin_code":"142022","website":"www.omaxe.com","registration_date":"06-Sep-2017","valid_upto":"31-Dec-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0007: India Trade Tower
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0007',
      'India Trade Tower',
      'india-trade-tower',
      'active',
      'Promoter: BHANU INFRABUILD PRIVATE LIMITED (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 31-Jul-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"BHANU INFRABUILD PRIVATE LIMITED (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"06-Sep-2017","valid_upto":"31-Jul-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PC0003: Omaxe Sector Satara
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PC0003',
      'Omaxe Sector Satara',
      'omaxe-sector-satara',
      'active',
      'Promoter: OMAXE LIMITED (Other than Individual). Address: Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana. PIN: 142022. Valid upto: 30-Sep-2019',
      '{"district":"Ludhiana","promoter":"OMAXE LIMITED (Other than Individual)","address":"Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana","pin_code":"142022","website":"www.omaxe.com","registration_date":"06-Sep-2017","valid_upto":"30-Sep-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0001: Royal Business Park
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0001',
      'Royal Business Park',
      'royal-business-park',
      'active',
      'Promoter: Motia Developers Pvt.Ltd (Other than Individual). Address: Ambala-Chandigarh Highway, Zirakpur, SAS Nagar,Punjab. PIN: 140603. Valid upto: 24-Jul-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Motia Developers Pvt.Ltd (Other than Individual)","address":"Ambala-Chandigarh Highway, Zirakpur, SAS Nagar,Punjab","pin_code":"140603","registration_date":"04-Sep-2017","valid_upto":"24-Jul-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0002: Canal View Enclave Extension V
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0002',
      'Canal View Enclave Extension V',
      'canal-view-enclave-extension-v',
      'active',
      'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: Canal View Enclave Ext. V, Village Bulara Tehsil Ludhiana. PIN: 141116. Valid upto: 23-Nov-2019',
      '{"district":"Ludhiana","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"Canal View Enclave Ext. V, Village Bulara Tehsil Ludhiana","pin_code":"141116","website":"www.jantahousing.com","registration_date":"01-Sep-2017","valid_upto":"23-Nov-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PM0010: Fashion Technology Park
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PM0010',
      'Fashion Technology Park',
      'fashion-technology-park',
      'active',
      'Promoter: Chandigarh Overseas private limited (Other than Individual). Address: sector 90,SAS Nagar (Mohali) chandigarh. PIN: 140308. Valid upto: 30-Jun-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Chandigarh Overseas private limited (Other than Individual)","address":"sector 90,SAS Nagar (Mohali) chandigarh","pin_code":"140308","registration_date":"17-Oct-2017","valid_upto":"30-Jun-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PM0006: Gillco Park Hills
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PM0006',
      'Gillco Park Hills',
      'gillco-park-hills',
      'active',
      'Promoter: GILLCO DEVELOPERS AND BUILDERS PVT LTD (Other than Individual). Address: VILL-BALLOMAJRA, SECTOR 126. PIN: 160055. Valid upto: 30-Sep-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GILLCO DEVELOPERS AND BUILDERS PVT LTD (Other than Individual)","address":"VILL-BALLOMAJRA, SECTOR 126","pin_code":"160055","registration_date":"09-Oct-2017","valid_upto":"30-Sep-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0008: FIVE STAR HOTEL
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0008',
      'FIVE STAR HOTEL',
      'five-star-hotel',
      'active',
      'Promoter: BHANU INFRABUILD PRIVATE LIMITED (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 31-Jul-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"BHANU INFRABUILD PRIVATE LIMITED (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"06-Feb-2019","valid_upto":"31-Jul-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0003: ELDECO Estate One
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0003',
      'ELDECO Estate One',
      'eldeco-estate-one',
      'active',
      'Promoter: Eldeco Infrastructure & Properties Limited (Other than Individual). Address: G.T.Road, Village Hussainpura / Rajpura, LDH to Jal. Road. PIN: 141008. Valid upto: 29-Jul-2021',
      '{"district":"Ludhiana","promoter":"Eldeco Infrastructure & Properties Limited (Other than Individual)","address":"G.T.Road, Village Hussainpura / Rajpura, LDH to Jal. Road","pin_code":"141008","website":"www.eldecogroup.com","registration_date":"01-Sep-2017","valid_upto":"29-Jul-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0007: ATS Golf Meadows Lifestyle
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0007',
      'ATS Golf Meadows Lifestyle',
      'ats-golf-meadows-lifestyle',
      'active',
      'Promoter: ATS Estates Private Limited (Other than Individual). Address: ATS Golf Meadows, Dera Bassi. PIN: 140507. Valid upto: 26-Jul-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ATS Estates Private Limited (Other than Individual)","address":"ATS Golf Meadows, Dera Bassi","pin_code":"140507","registration_date":"01-Sep-2017","valid_upto":"26-Jul-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0006: Amari Greens-Extn
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0006',
      'Amari Greens-Extn',
      'amari-greens-extn',
      'active',
      'Promoter: Vision India Realtors Pvt. Ltd. (Other than Individual). Address: Village Khanpur, Kharar-Ropar Road, Kharar. PIN: 140301. Valid upto: 31-Dec-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Vision India Realtors Pvt. Ltd. (Other than Individual)","address":"Village Khanpur, Kharar-Ropar Road, Kharar","pin_code":"140301","website":"www.visionindiagroup.com","registration_date":"01-Sep-2017","valid_upto":"31-Dec-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-GSP25-PM0007: NEW URBAN ESTATE BATALA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-GSP25-PM0007',
      'NEW URBAN ESTATE BATALA',
      'new-urban-estate-batala',
      'active',
      'Promoter: PUDA (Other than Individual). Address: JALANDHAR BATALA, BYEPASS. PIN: 143505. Valid upto: 31-Jul-2018',
      '{"district":"Gurdaspur","promoter":"PUDA (Other than Individual)","address":"JALANDHAR BATALA, BYEPASS","pin_code":"143505","registration_date":"18-Oct-2017","valid_upto":"31-Jul-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0005: Commercial-1 of Mega Residential project at Mullanpur (New Chandigarh Master Plan)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0005',
      'Commercial-1 of Mega Residential project at Mullanpur (New Chandigarh Master Plan)',
      'commercial-1-of-mega-residential-project-at-mullanpur-new-chandigarh-master-plan',
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

  -- PBRERA-SAS81-PM0004: Falcon View Apartments- Phase-2, Tower C to H
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PM0004',
      'Falcon View Apartments- Phase-2, Tower C to H',
      'falcon-view-apartments-phase-2-tower-c-to-h',
      'active',
      'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: Falcon View Apartments Phase-2, Sector-66A,. PIN: 140306. Valid upto: 30-Jun-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"Falcon View Apartments Phase-2, Sector-66A,","pin_code":"140306","website":"www.janta@jantahousing.com","registration_date":"19-Sep-2017","valid_upto":"30-Jun-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PM0002: Falcon View Apartments- Phase-3, Tower I & J
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PM0002',
      'Falcon View Apartments- Phase-3, Tower I & J',
      'falcon-view-apartments-phase-3-tower-i-j',
      'active',
      'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: Falcon View Phase-3, Tower-I & J, Sector-66A. PIN: 140306. Valid upto: 31-Mar-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"Falcon View Phase-3, Tower-I & J, Sector-66A","pin_code":"140306","website":"www.janta@jantahousing.com","registration_date":"19-Sep-2017","valid_upto":"31-Mar-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0004: Commercial-2 of Mega Residential project at Mullanpur (New Chandigarh Master Plan)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0004',
      'Commercial-2 of Mega Residential project at Mullanpur (New Chandigarh Master Plan)',
      'commercial-2-of-mega-residential-project-at-mullanpur-new-chandigarh-master-plan',
      'active',
      'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 31-Jan-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"06-Sep-2017","valid_upto":"31-Jan-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0526: EL Spazia
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0526',
      'EL Spazia',
      'el-spazia',
      'active',
      'Promoter: Allwin Infrastructure Limited (Other than Individual). Address: Village Singhpura, International Airport Road, PR-07, Zirakpur. PIN: 140603. Valid upto: 04-Aug-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Allwin Infrastructure Limited (Other than Individual)","address":"Village Singhpura, International Airport Road, PR-07, Zirakpur","pin_code":"140603","registration_date":"01-Oct-2019","valid_upto":"04-Aug-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0162: AURA GAZANIA (COMMERCIAL)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0162',
      'AURA GAZANIA (COMMERCIAL)',
      'aura-gazania-commercial',
      'active',
      'Promoter: Aura Buildtech Pvt. Ltd. (Other than Individual). Address: VILLAGE NABHA, HIGH LAND MARG, ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Aura Buildtech Pvt. Ltd. (Other than Individual)","address":"VILLAGE NABHA, HIGH LAND MARG, ZIRAKPUR","pin_code":"140603","registration_date":"01-Oct-2021","valid_upto":"31-Dec-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0747: Luxury Nest
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0747',
      'Luxury Nest',
      'luxury-nest',
      'active',
      'Promoter: Nanak Sai Promoters and Builders Prop. Vikas Malhotra (Other than Individual). Address: Village Chhaju Majra, H.B. No. 33, Kharar, District SAS Nagar. PIN: 140301. Valid upto: 30-Jun-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Nanak Sai Promoters and Builders Prop. Vikas Malhotra (Other than Individual)","address":"Village Chhaju Majra, H.B. No. 33, Kharar, District SAS Nagar","pin_code":"140301","registration_date":"01-Oct-2021","valid_upto":"30-Jun-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0160: Park View Complex
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0160',
      'Park View Complex',
      'park-view-complex',
      'active',
      'Promoter: R S Promoters (Other than Individual). Address: Peer Muchalla, MC Zirakpur. PIN: 140603. Valid upto: 30-May-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"R S Promoters (Other than Individual)","address":"Peer Muchalla, MC Zirakpur","pin_code":"140603","registration_date":"01-Oct-2021","valid_upto":"30-May-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0668: Nirwana Heights
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0668',
      'Nirwana Heights',
      'nirwana-heights',
      'active',
      'Promoter: East Avenue Infracon Pvt. Ltd. (Other than Individual). Address: Khanpur, Kharar, Kharar-Kurali Highway (NH205). PIN: 140301. Valid upto: 15-Oct-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"East Avenue Infracon Pvt. Ltd. (Other than Individual)","address":"Khanpur, Kharar, Kharar-Kurali Highway (NH205)","pin_code":"140301","website":"www.visionindiagroup.com","registration_date":"04-Dec-2020","valid_upto":"15-Oct-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0746: The Gateway A&A Greens
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0746',
      'The Gateway A&A Greens',
      'the-gateway-aa-greens',
      'active',
      'Promoter: DB FARMS Private Limited (Other than Individual). Address: Village Bhagomajra, HB No. 75, Kharar. PIN: 140307. Valid upto: 31-Mar-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"DB FARMS Private Limited (Other than Individual)","address":"Village Bhagomajra, HB No. 75, Kharar","pin_code":"140307","registration_date":"13-Sep-2021","valid_upto":"31-Mar-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0745: Jarnail Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0745',
      'Jarnail Enclave',
      'jarnail-enclave',
      'active',
      'Promoter: Jarnail Real Estate Private Limited (Other than Individual). Address: Village Bhabat, H.B. No. 234, Zirakpur. PIN: 140603. Valid upto: 31-Dec-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jarnail Real Estate Private Limited (Other than Individual)","address":"Village Bhabat, H.B. No. 234, Zirakpur","pin_code":"140603","registration_date":"13-Sep-2021","valid_upto":"31-Dec-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR0405: URBANA BY AGI
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR0405',
      'URBANA BY AGI',
      'urbana-by-agi',
      'active',
      'Promoter: AGI INFRA LIMITED (Other than Individual). Address: VILLAGE PHOLRIWAL. PIN: 144022. Valid upto: 31-Mar-2021',
      '{"district":"Jalandhar","promoter":"AGI INFRA LIMITED (Other than Individual)","address":"VILLAGE PHOLRIWAL","pin_code":"144022","website":"www.agiinfra.com","registration_date":"09-Jan-2019","valid_upto":"31-Mar-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0678: GREEN VALLEY RESIDENCIA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0678',
      'GREEN VALLEY RESIDENCIA',
      'green-valley-residencia',
      'active',
      'Promoter: Green Valley Builders (Other than Individual). Address: VILLAGE SINGHPURA, H.B. No. 43, Zirakpur. PIN: 140103. Valid upto: 30-Jun-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Green Valley Builders (Other than Individual)","address":"VILLAGE SINGHPURA, H.B. No. 43, Zirakpur","pin_code":"140103","registration_date":"28-Dec-2020","valid_upto":"30-Jun-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0741: SPLANDE ELITE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0741',
      'SPLANDE ELITE',
      'splande-elite',
      'active',
      'Promoter: GHB Abodes (Other than Individual). Address: Village Dyalpura and Nabha, MC Zirakpur. PIN: 140603. Valid upto: 30-Jun-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GHB Abodes (Other than Individual)","address":"Village Dyalpura and Nabha, MC Zirakpur","pin_code":"140603","registration_date":"02-Sep-2021","valid_upto":"30-Jun-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0739: Splande Grand
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0739',
      'Splande Grand',
      'splande-grand',
      'active',
      'Promoter: KCB INFRA (Other than Individual). Address: Village Dayalpura & Nabha, MC Zirakpur, SAS Nagar, Punjab. PIN: 140603. Valid upto: 31-May-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KCB INFRA (Other than Individual)","address":"Village Dayalpura & Nabha, MC Zirakpur, SAS Nagar, Punjab","pin_code":"140603","registration_date":"02-Sep-2021","valid_upto":"31-May-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;


  RAISE NOTICE 'Chunk 8: % inserted, % skipped', v_inserted, v_skipped;
END $$;
