-- Part 6 of 10
-- Projects 1001 to 1200 of 1992
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

  -- PBRERA-BTI08-PM0113: Silver City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PM0113',
      'Silver City',
      'silver-city',
      'active',
      'Promoter: SATINDER   SINGH (Individual). Address: NAR SINGH COLONY ROAD,VILLAGE DOOMWALI,. PIN: 151005. Valid upto: 30-Dec-2019',
      '{"district":"Bathinda","promoter":"SATINDER   SINGH (Individual)","address":"NAR SINGH COLONY ROAD,VILLAGE DOOMWALI,","pin_code":"151005","registration_date":"19-Jul-2018","valid_upto":"30-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PC0031: G.K. Mall
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PC0031',
      'G.K. Mall',
      'gk-mall',
      'active',
      'Promoter: gkp infrastrcture limited (Other than Individual). Address: village Jawaddi, Ludhiana. PIN: 141001',
      '{"district":"Ludhiana","promoter":"gkp infrastrcture limited (Other than Individual)","address":"village Jawaddi, Ludhiana","pin_code":"141001","registration_date":"03-Nov-2017"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0105: Urban Vatika
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0105',
      'Urban Vatika',
      'urban-vatika',
      'active',
      'Promoter: Home and Land Planners (Other than Individual). Address: Urban Vatika, Located at Opposite Bus Stand, Adjoining Paras Downtown Mall, Zirakpur. PIN: 140603. Valid upto: 31-Dec-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Home and Land Planners (Other than Individual)","address":"Urban Vatika, Located at Opposite Bus Stand, Adjoining Paras Downtown Mall, Zirakpur","pin_code":"140603","registration_date":"19-Sep-2017","valid_upto":"31-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0153: Wave Estate, Block-G
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0153',
      'Wave Estate, Block-G',
      'wave-estate-block-g',
      'active',
      'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: WAVE ESTATE, SECTOR -85 & 99. PIN: 143308. Valid upto: 31-Jan-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"WAVE ESTATE, SECTOR -85 & 99","pin_code":"143308","registration_date":"11-Oct-2017","valid_upto":"31-Jan-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PM0089: Aeropolis City (formerly known as Yellowstone Landmark Infocity)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PM0089',
      'Aeropolis City (formerly known as Yellowstone Landmark Infocity)',
      'aeropolis-city-formerly-known-as-yellowstone-landmark-infocity',
      'active',
      'Promoter: Aeropolis Infrastructure Pvt Ltd (Other than Individual). Address: SAS Nagar, Mohali. PIN: 160062. Valid upto: 31-Dec-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Aeropolis Infrastructure Pvt Ltd (Other than Individual)","address":"SAS Nagar, Mohali","pin_code":"160062","registration_date":"28-May-2018","valid_upto":"31-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0152: Wave Estate, Block-F
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0152',
      'Wave Estate, Block-F',
      'wave-estate-block-f',
      'active',
      'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: WAVE ESTATE, SECTOR -85. PIN: 143308. Valid upto: 31-May-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"WAVE ESTATE, SECTOR -85","pin_code":"143308","registration_date":"11-Oct-2017","valid_upto":"31-May-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0149: Wave Estate, Block-C
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0149',
      'Wave Estate, Block-C',
      'wave-estate-block-c',
      'active',
      'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: WAVE ESTATE, SECTOR -85. PIN: 143308. Valid upto: 31-Oct-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"WAVE ESTATE, SECTOR -85","pin_code":"143308","registration_date":"11-Oct-2017","valid_upto":"31-Oct-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0147: Wave Estate, Block-A
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0147',
      'Wave Estate, Block-A',
      'wave-estate-block-a',
      'active',
      'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: WAVE ESTATE, SECTOR -85. PIN: 143308. Valid upto: 31-Mar-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"WAVE ESTATE, SECTOR -85","pin_code":"143308","registration_date":"11-Oct-2017","valid_upto":"31-Mar-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR0042: Development of Integrated Township Omaxe City Bathinda
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR0042',
      'Development of Integrated Township Omaxe City Bathinda',
      'development-of-integrated-township-omaxe-city-bathinda',
      'active',
      'Promoter: OMAXE BUILDHOME LIMITED (Other than Individual). Address: Village Bhokra, Goniana Road, Tehsil & Distt. Bathinda Punjab. PIN: 151001. Valid upto: 31-Mar-2019',
      '{"district":"Bathinda","promoter":"OMAXE BUILDHOME LIMITED (Other than Individual)","address":"Village Bhokra, Goniana Road, Tehsil & Distt. Bathinda Punjab","pin_code":"151001","website":"www.omaxe.com","registration_date":"07-Sep-2017","valid_upto":"31-Mar-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0041: Ireo Waterfront Pocket 4
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0041',
      'Ireo Waterfront Pocket 4',
      'ireo-waterfront-pocket-4',
      'active',
      'Promoter: Ireo Waterfront Pvt Ltd (Other than Individual). Address: Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.. PIN: 141001. Valid upto: 31-Dec-2021',
      '{"district":"Ludhiana","promoter":"Ireo Waterfront Pvt Ltd (Other than Individual)","address":"Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.","pin_code":"141001","website":"www.ireowaterfont.com","registration_date":"06-Sep-2017","valid_upto":"31-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0157: Harbhajan Vihar (AWHO)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0157',
      'Harbhajan Vihar (AWHO)',
      'harbhajan-vihar-awho',
      'active',
      'Promoter: ARMY WELFARE HOUSING ORGANISATION (Other than Individual). Address: BB1 & CC1, Ansal API, Golf Link, Mega City,, Sector-114, Tehsil-Kharar,. PIN: 140307. Valid upto: 01-Jan-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ARMY WELFARE HOUSING ORGANISATION (Other than Individual)","address":"BB1 & CC1, Ansal API, Golf Link, Mega City,, Sector-114, Tehsil-Kharar,","pin_code":"140307","website":"https://awhosena.in","registration_date":"12-Oct-2017","valid_upto":"01-Jan-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0016: Aura Avenue
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0016',
      'Aura Avenue',
      'aura-avenue',
      'active',
      'Promoter: Aura Builders & Developers (Other than Individual). Address: KHARAR- MORINDA ROAD KHARAR. PIN: 140301. Valid upto: 31-Mar-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Aura Builders & Developers (Other than Individual)","address":"KHARAR- MORINDA ROAD KHARAR","pin_code":"140301","registration_date":"01-Sep-2017","valid_upto":"31-Mar-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0068: MOHALI CITI CENTER
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0068',
      'MOHALI CITI CENTER',
      'mohali-citi-center',
      'active',
      'Promoter: Saraf The Jeweller (Other than Individual). Address: CHINK SITE NO. 91,Block F ,, AEROCITY, SAS NAGAR. PIN: 160055. Valid upto: 31-May-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Saraf The Jeweller (Other than Individual)","address":"CHINK SITE NO. 91,Block F ,, AEROCITY, SAS NAGAR","pin_code":"160055","registration_date":"29-May-2018","valid_upto":"31-May-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0017: Midtown Business Park
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0017',
      'Midtown Business Park',
      'midtown-business-park',
      'active',
      'Promoter: Gulmohar Empires (Other than Individual). Address: Village Peermuchalla, Zirakpur. PIN: 140603. Valid upto: 31-Dec-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gulmohar Empires (Other than Individual)","address":"Village Peermuchalla, Zirakpur","pin_code":"140603","registration_date":"26-Sep-2017","valid_upto":"31-Dec-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0021: GBP Centrum
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0021',
      'GBP Centrum',
      'gbp-centrum',
      'active',
      'Promoter: GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: Vill - SinghPiura, Ambala-Chandigarh Highway, Zirakpur, SAS Nagar Mohali-140603. PIN: 140603. Valid upto: 31-Dec-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"Vill - SinghPiura, Ambala-Chandigarh Highway, Zirakpur, SAS Nagar Mohali-140603","pin_code":"140603","website":"www.gbpgroup.in","registration_date":"07-Nov-2017","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0028: ROYAL RETREAT-2, ROYAL VIEW HOMESBLOCKS-4 & 5, CELESTIA GRAND LUDHIANA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0028',
      'ROYAL RETREAT-2, ROYAL VIEW HOMESBLOCKS-4 & 5, CELESTIA GRAND LUDHIANA',
      'royal-retreat-2-royal-view-homesblocks-4-5-celestia-grand-ludhiana',
      'active',
      'Promoter: OMAXE LIMITED (Other than Individual). Address: Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana. PIN: 142022. Valid upto: 31-Jul-2018',
      '{"district":"Ludhiana","promoter":"OMAXE LIMITED (Other than Individual)","address":"Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana","pin_code":"142022","website":"www.omaxe.com","registration_date":"05-Sep-2017","valid_upto":"31-Jul-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0009: ORBIT Apartments
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0009',
      'ORBIT Apartments',
      'orbit-apartments',
      'active',
      'Promoter: Orbit Apartment Construction Pvt. Ltd.  (Other than Individual). Address: Orbit Apartments, VIP Road, Village Bishanpura, Zirakpur. PIN: 140603. Valid upto: 31-Dec-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Orbit Apartment Construction Pvt. Ltd.  (Other than Individual)","address":"Orbit Apartments, VIP Road, Village Bishanpura, Zirakpur","pin_code":"140603","website":"www.orbitapartments.com","registration_date":"01-Sep-2017","valid_upto":"31-Dec-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PM0019: SUN VIEW ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PM0019',
      'SUN VIEW ENCLAVE',
      'sun-view-enclave',
      'active',
      'Promoter: home life buildcon pvt. ltd. (Other than Individual). Address: PLOT NO. 11 SUN VIEW ENCLAVE AYALI KALAN LUDHIANA. PIN: 142027. Valid upto: 29-Jul-2022',
      '{"district":"Ludhiana","promoter":"home life buildcon pvt. ltd. (Other than Individual)","address":"PLOT NO. 11 SUN VIEW ENCLAVE AYALI KALAN LUDHIANA","pin_code":"142027","registration_date":"11-Dec-2017","valid_upto":"29-Jul-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PC0011: Palm Heights
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PC0011',
      'Palm Heights',
      'palm-heights',
      'active',
      'Promoter: Malhotra Land Developers & Colonisers Pvt Ltd (Other than Individual). Address: Vill-Jaspal Bangar,. PIN: 141122. Valid upto: 12-Sep-2022',
      '{"district":"Ludhiana","promoter":"Malhotra Land Developers & Colonisers Pvt Ltd (Other than Individual)","address":"Vill-Jaspal Bangar,","pin_code":"141122","registration_date":"13-Sep-2017","valid_upto":"12-Sep-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0048: Taj Plaza
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0048',
      'Taj Plaza',
      'taj-plaza',
      'active',
      'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: SCO No 501 to 528 TAJ PLAZA, SECTOR 118 TDI CITY. PIN: 140301. Valid upto: 31-Mar-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"SCO No 501 to 528 TAJ PLAZA, SECTOR 118 TDI CITY","pin_code":"140301","registration_date":"10-Apr-2018","valid_upto":"31-Mar-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0142: Wellington Heights Extension (Block M and N)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0142',
      'Wellington Heights Extension (Block M and N)',
      'wellington-heights-extension-block-m-and-n',
      'active',
      'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: WELINGTION HEIGHT EXTENSION, BLOCK M AND N SECTOR 117 TDI CITY. PIN: 140301. Valid upto: 24-Jul-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"WELINGTION HEIGHT EXTENSION, BLOCK M AND N SECTOR 117 TDI CITY","pin_code":"140301","registration_date":"11-Oct-2017","valid_upto":"24-Jul-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0010: Canal View Enclave, Ext. IV
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0010',
      'Canal View Enclave, Ext. IV',
      'canal-view-enclave-ext-iv',
      'active',
      'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: Canal View Enclave Ext. IV, Village Bulara. PIN: 141116. Valid upto: 01-Sep-2020',
      '{"district":"Ludhiana","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"Canal View Enclave Ext. IV, Village Bulara","pin_code":"141116","website":"www.jantahousing.com","registration_date":"01-Sep-2017","valid_upto":"01-Sep-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0087: Escon Arena
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0087',
      'Escon Arena',
      'escon-arena',
      'active',
      'Promoter: Malwa Projects Private Limited (Other than Individual). Address: Nagla Road, Chandigarh Ambala Highway, Zirakpur. PIN: 140603. Valid upto: 30-Jun-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Malwa Projects Private Limited (Other than Individual)","address":"Nagla Road, Chandigarh Ambala Highway, Zirakpur","pin_code":"140603","registration_date":"14-Sep-2017","valid_upto":"30-Jun-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0019: OMEGA CITY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0019',
      'OMEGA CITY',
      'omega-city',
      'active',
      'Promoter: Omega Infra estates Pvt Ltd (Other than Individual). Address: Omega City, NH-95, Khanpur, Kharar. PIN: 140301. Valid upto: 27-Jul-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omega Infra estates Pvt Ltd (Other than Individual)","address":"Omega City, NH-95, Khanpur, Kharar","pin_code":"140301","website":"www.omegacitychandigarh.com","registration_date":"04-Sep-2017","valid_upto":"27-Jul-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0035: JEWEL OF DARA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0035',
      'JEWEL OF DARA',
      'jewel-of-dara',
      'active',
      'Promoter: RR Buildtech (Other than Individual). Address: SCO-3,4,Surya Residency,Near Yes Bank, Sector-115,Kharar,SAS Nagar,Mohali. PIN: 160059. Valid upto: 30-Jan-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"RR Buildtech (Other than Individual)","address":"SCO-3,4,Surya Residency,Near Yes Bank, Sector-115,Kharar,SAS Nagar,Mohali","pin_code":"160059","registration_date":"21-Feb-2018","valid_upto":"30-Jan-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0013: ATS Golf Meadows 1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0013',
      'ATS Golf Meadows 1',
      'ats-golf-meadows-1',
      'active',
      'Promoter: ATS Estates Private Limited (Other than Individual). Address: ATS Golf Meadows, Dera Bassi. PIN: 140507. Valid upto: 25-Jul-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ATS Estates Private Limited (Other than Individual)","address":"ATS Golf Meadows, Dera Bassi","pin_code":"140507","registration_date":"22-Sep-2017","valid_upto":"25-Jul-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0017: Shivalik Heights
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0017',
      'Shivalik Heights',
      'shivalik-heights',
      'active',
      'Promoter: Exotica Square. (Other than Individual). Address: Vill-Chhajumajra,Teh-Kharar. PIN: 140301. Valid upto: 27-Jul-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Exotica Square. (Other than Individual)","address":"Vill-Chhajumajra,Teh-Kharar","pin_code":"140301","registration_date":"01-Sep-2017","valid_upto":"27-Jul-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0071: Aero Arcade
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0071',
      'Aero Arcade',
      'aero-arcade',
      'active',
      'Promoter: Quantum Homes (Other than Individual). Address: Aero Arcade, Commercial Block, Aero City, SAS Nagar. PIN: 140306. Valid upto: 31-Jul-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Quantum Homes (Other than Individual)","address":"Aero Arcade, Commercial Block, Aero City, SAS Nagar","pin_code":"140306","registration_date":"25-May-2018","valid_upto":"31-Jul-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0145: ROYALE FAME-1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0145',
      'ROYALE FAME-1',
      'royale-fame-1',
      'active',
      'Promoter: MOTIA REAL ESTATE (Other than Individual). Address: ROYAL FAME-1, VILLAGE CHAJJU MAJRA, KHARAR. PIN: 160055. Valid upto: 21-May-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MOTIA REAL ESTATE (Other than Individual)","address":"ROYAL FAME-1, VILLAGE CHAJJU MAJRA, KHARAR","pin_code":"160055","website":"www.royalfame.com","registration_date":"16-Oct-2017","valid_upto":"21-May-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0042: Raksha Business Centre
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0042',
      'Raksha Business Centre',
      'raksha-business-centre',
      'active',
      'Promoter: ABC SITES PRIVATE LIMITED (Other than Individual). Address: VILLAGE BISHANPURA, AMBALA CHANDIGARH HIGHWAY, ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ABC SITES PRIVATE LIMITED (Other than Individual)","address":"VILLAGE BISHANPURA, AMBALA CHANDIGARH HIGHWAY, ZIRAKPUR","pin_code":"140603","registration_date":"07-Mar-2018","valid_upto":"31-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0032: THE EMINENCE PLAZA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0032',
      'THE EMINENCE PLAZA',
      'the-eminence-plaza',
      'active',
      'Promoter: ALLIANCE BUILDTECH (Other than Individual). Address: SINGHPURA, ZIRAKPUR. PIN: 140603. Valid upto: 31-Mar-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ALLIANCE BUILDTECH (Other than Individual)","address":"SINGHPURA, ZIRAKPUR","pin_code":"140603","registration_date":"11-Dec-2017","valid_upto":"31-Mar-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0343: G.K.Vihar
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0343',
      'G.K.Vihar',
      'gkvihar',
      'active',
      'Promoter: gkp infrastrcture limited (Other than Individual). Address: Dugri, Dhandra Road. PIN: 141006. Valid upto: 18-Apr-2019',
      '{"district":"Ludhiana","promoter":"gkp infrastrcture limited (Other than Individual)","address":"Dugri, Dhandra Road","pin_code":"141006","registration_date":"20-Apr-2018","valid_upto":"18-Apr-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PC0072: 487, Gaushala Road
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PC0072',
      '487, Gaushala Road',
      '487-gaushala-road',
      'active',
      'Promoter: SM Builders and Developers (Other than Individual). Address: 487, Gaushala Road. PIN: 147001. Valid upto: 31-Dec-2018',
      '{"district":"Patiala","promoter":"SM Builders and Developers (Other than Individual)","address":"487, Gaushala Road","pin_code":"147001","registration_date":"29-May-2018","valid_upto":"31-Dec-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR02-PC0023: Milk Union Site, Verka, Amritsar
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR02-PC0023',
      'Milk Union Site, Verka, Amritsar',
      'milk-union-site-verka-amritsar',
      'active',
      'Promoter: PUDA (Other than Individual). Address: OPP VERKA MILK PLANT. PIN: 143001. Valid upto: 14-Nov-2018',
      '{"district":"Amritsar","promoter":"PUDA (Other than Individual)","address":"OPP VERKA MILK PLANT","pin_code":"143001","registration_date":"30-Oct-2017","valid_upto":"14-Nov-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0275: G.K. Valley
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0275',
      'G.K. Valley',
      'gk-valley',
      'active',
      'Promoter: gkp infrastrcture limited (Other than Individual). Address: Village Sangowal, Ludhiana. PIN: 141002. Valid upto: 18-Apr-2019',
      '{"district":"Ludhiana","promoter":"gkp infrastrcture limited (Other than Individual)","address":"Village Sangowal, Ludhiana","pin_code":"141002","registration_date":"16-Feb-2018","valid_upto":"18-Apr-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0020: Hero Homes, Ludhiana,    Phase-I
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0020',
      'Hero Homes, Ludhiana,    Phase-I',
      'hero-homes-ludhiana-phase-i',
      'active',
      'Promoter: HERO REALTY PRIVATE LIMITED (Other than Individual). Address: Hero Homes, Village Birmi, Sub. Tehsil Mulanpur, Sidwan Canal Road, District Ludhiana. PIN: 141027. Valid upto: 12-Jun-2020',
      '{"district":"Ludhiana","promoter":"HERO REALTY PRIVATE LIMITED (Other than Individual)","address":"Hero Homes, Village Birmi, Sub. Tehsil Mulanpur, Sidwan Canal Road, District Ludhiana","pin_code":"141027","website":"www.herohomes.in","registration_date":"04-Sep-2017","valid_upto":"12-Jun-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0037: GILLCO PALMS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0037',
      'GILLCO PALMS',
      'gillco-palms',
      'active',
      'Promoter: GILLCO DEVELOPERS AND BUILDERS PVT LTD (Other than Individual). Address: VILLAGE KHARAR, KHARAR. PIN: 140301. Valid upto: 30-Aug-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GILLCO DEVELOPERS AND BUILDERS PVT LTD (Other than Individual)","address":"VILLAGE KHARAR, KHARAR","pin_code":"140301","registration_date":"06-Sep-2017","valid_upto":"30-Aug-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR0021: Hamilton Mayfair Residency
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR0021',
      'Hamilton Mayfair Residency',
      'hamilton-mayfair-residency',
      'active',
      'Promoter: HAMILTON LAND DEVELOPERS PRIVATE LIMITED (Other than Individual). Address: 66 FT. Road, Vill. Qadianwali. PIN: 144020. Valid upto: 30-Sep-2022',
      '{"district":"Jalandhar","promoter":"HAMILTON LAND DEVELOPERS PRIVATE LIMITED (Other than Individual)","address":"66 FT. Road, Vill. Qadianwali","pin_code":"144020","website":"http://www.hamiltondevelopers.com/urban-homes.php","registration_date":"04-Sep-2017","valid_upto":"30-Sep-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0040: GROUP HOUSING (THE LAKE)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0040',
      'GROUP HOUSING (THE LAKE)',
      'group-housing-the-lake',
      'active',
      'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 31-Jul-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"06-Sep-2017","valid_upto":"31-Jul-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR0139: AGI Smart Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR0139',
      'AGI Smart Homes',
      'agi-smart-homes',
      'active',
      'Promoter: AGI INFRA LIMITED (Other than Individual). Address: VILLAGE PHOLRIWAL. PIN: 144022. Valid upto: 31-Dec-2021',
      '{"district":"Jalandhar","promoter":"AGI INFRA LIMITED (Other than Individual)","address":"VILLAGE PHOLRIWAL","pin_code":"144022","website":"www.agiinfra.com","registration_date":"13-Nov-2017","valid_upto":"31-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0026: TWIN TOWER LUDHIANA (PANACHE-II & TOWER-B)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0026',
      'TWIN TOWER LUDHIANA (PANACHE-II & TOWER-B)',
      'twin-tower-ludhiana-panache-ii-tower-b',
      'active',
      'Promoter: OMAXE LIMITED (Other than Individual). Address: Twin Tower Ludhiana (Panache-II & Tower-B), within Omaxe Royal Residency,, Group Housing , Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana. PIN: 142022. Valid upto: 31-Jul-2020',
      '{"district":"Ludhiana","promoter":"OMAXE LIMITED (Other than Individual)","address":"Twin Tower Ludhiana (Panache-II & Tower-B), within Omaxe Royal Residency,, Group Housing , Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana","pin_code":"142022","website":"www.omaxe.com","registration_date":"05-Sep-2017","valid_upto":"31-Jul-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0014: ATS Golf Meadows-III
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0014',
      'ATS Golf Meadows-III',
      'ats-golf-meadows-iii',
      'active',
      'Promoter: ATS Estates Private Limited (Other than Individual). Address: ATS Golf Meadows, Dera Bassi. PIN: 140507. Valid upto: 25-Jul-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ATS Estates Private Limited (Other than Individual)","address":"ATS Golf Meadows, Dera Bassi","pin_code":"140507","registration_date":"29-Sep-2017","valid_upto":"25-Jul-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR0246: SILVER OAK HOMES
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR0246',
      'SILVER OAK HOMES',
      'silver-oak-homes',
      'active',
      'Promoter: SILVER OAK TOWNSHIP LIMITED (Other than Individual). Address: VILLAGE BIBIWALA, BATHINDA. PIN: 151001. Valid upto: 31-Jul-2018',
      '{"district":"Bathinda","promoter":"SILVER OAK TOWNSHIP LIMITED (Other than Individual)","address":"VILLAGE BIBIWALA, BATHINDA","pin_code":"151001","registration_date":"27-Dec-2017","valid_upto":"31-Jul-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PM0018: Clarion County
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PM0018',
      'Clarion County',
      'clarion-county',
      'active',
      'Promoter: gkp infrastrcture limited (Other than Individual). Address: Village Ramgarh, Tehsil Sahnewal. PIN: 141001. Valid upto: 24-Jan-2019',
      '{"district":"Ludhiana","promoter":"gkp infrastrcture limited (Other than Individual)","address":"Village Ramgarh, Tehsil Sahnewal","pin_code":"141001","registration_date":"07-Dec-2017","valid_upto":"24-Jan-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0192: Maya Garden City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0192',
      'Maya Garden City',
      'maya-garden-city',
      'active',
      'Promoter: BARNALA BUILDERS & PROPERTY CONSULTANTS (Other than Individual). Address: MAYA GARDEN CITY, NAGLA ROAD. PIN: 140603. Valid upto: 31-Mar-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"BARNALA BUILDERS & PROPERTY CONSULTANTS (Other than Individual)","address":"MAYA GARDEN CITY, NAGLA ROAD","pin_code":"140603","registration_date":"08-Nov-2017","valid_upto":"31-Mar-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0022: Maya Garden Magnesia
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0022',
      'Maya Garden Magnesia',
      'maya-garden-magnesia',
      'active',
      'Promoter: Barnala Builders (Other than Individual). Address: Chandigarh-Delhi Highway, NH-22, Opp. McDonald. PIN: 140603. Valid upto: 03-Sep-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Barnala Builders (Other than Individual)","address":"Chandigarh-Delhi Highway, NH-22, Opp. McDonald","pin_code":"140603","website":"http://www.mayagardenmagnesia.com/","registration_date":"26-Oct-2017","valid_upto":"03-Sep-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0198: Kapco Floors
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0198',
      'Kapco Floors',
      'kapco-floors',
      'active',
      'Promoter: Kapco Builders & Developers (Other than Individual). Address: Kapco Floors, JTPL City, Kharar Landran Road, sector 115, Kharar, Mohali. PIN: 140301. Valid upto: 31-Mar-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Kapco Builders & Developers (Other than Individual)","address":"Kapco Floors, JTPL City, Kharar Landran Road, sector 115, Kharar, Mohali","pin_code":"140301","registration_date":"09-Nov-2017","valid_upto":"31-Mar-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PM0015: Phase 1 of MK Technology Park
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PM0015',
      'Phase 1 of MK Technology Park',
      'phase-1-of-mk-technology-park',
      'active',
      'Promoter: Mahakali Developers & Resorts Private Limited (Other than Individual). Address: MK Technology Park, Banur-Landran Road, Village Tangori.. PIN: 140306. Valid upto: 29-Jul-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Mahakali Developers & Resorts Private Limited (Other than Individual)","address":"MK Technology Park, Banur-Landran Road, Village Tangori.","pin_code":"140306","website":"http://www.mahakali-developers.com/","registration_date":"10-Nov-2017","valid_upto":"29-Jul-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PR0825: Sheesh Mahal Skyline
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PR0825',
      'Sheesh Mahal Skyline',
      'sheesh-mahal-skyline',
      'active',
      'Promoter: Sheesh Mahal Developers Ltd (Other than Individual). Address: Dabwali Road, Bathinda, Punjab. PIN: 151001. Valid upto: 30-May-2027',
      '{"district":"Bathinda","promoter":"Sheesh Mahal Developers Ltd (Other than Individual)","address":"Dabwali Road, Bathinda, Punjab","pin_code":"151001","registration_date":"17-Aug-2022","valid_upto":"30-May-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0768: The Punjab Officers Co-operative House Building Society
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0768',
      'The Punjab Officers Co-operative House Building Society',
      'the-punjab-officers-co-operative-house-building-society',
      'active',
      'Promoter: The Punjab Officer''s Co-operative House Building Society Ltd Mohali (Other than Individual). Address: Village - Banur, MC Banur, SAS Nagar, Punjab. PIN: 140601. Valid upto: 31-Dec-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"The Punjab Officer''''s Co-operative House Building Society Ltd Mohali (Other than Individual)","address":"Village - Banur, MC Banur, SAS Nagar, Punjab","pin_code":"140601","registration_date":"08-Feb-2022","valid_upto":"31-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0609: HI GREENS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0609',
      'HI GREENS',
      'hi-greens',
      'active',
      'Promoter: MRS DEVELOPERS (Other than Individual). Address: 101,FF, METRO TOWER PEER MUCHHALLA, DHAKOLI, ZIRAKPUR. PIN: 140603. Valid upto: 31-Mar-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MRS DEVELOPERS (Other than Individual)","address":"101,FF, METRO TOWER PEER MUCHHALLA, DHAKOLI, ZIRAKPUR","pin_code":"140603","registration_date":"13-May-2020","valid_upto":"31-Mar-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-RPR70-PM0100: Sun Enclave Apartments
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-RPR70-PM0100',
      'Sun Enclave Apartments',
      'sun-enclave-apartments',
      'active',
      'Promoter: Ropar Properties & Builders Pvt Ltd (Other than Individual). Address: Sun Enclave Towers, Village Shampura. PIN: 140001. Valid upto: 30-Jun-2020',
      '{"district":"Rupnagar (Ropar)","promoter":"Ropar Properties & Builders Pvt Ltd (Other than Individual)","address":"Sun Enclave Towers, Village Shampura","pin_code":"140001","website":"http://sunenclavetowers.com","registration_date":"13-Jun-2018","valid_upto":"30-Jun-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0175: GBP Rose Wood Estate
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0175',
      'GBP Rose Wood Estate',
      'gbp-rose-wood-estate',
      'active',
      'Promoter: GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: GBP Rose Wood Estate, Gulabgarh Road. PIN: 140507. Valid upto: 31-Dec-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"GBP Rose Wood Estate, Gulabgarh Road","pin_code":"140507","website":"www.gbpgroup.in","registration_date":"21-Nov-2017","valid_upto":"31-Dec-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PM0027: City of Dreams-1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PM0027',
      'City of Dreams-1',
      'city-of-dreams-1',
      'active',
      'Promoter: CREDO ASSETS PRIVATE LIMITED (Other than Individual). Address: Village Santemajra, sector-116,tehsil-kharar,mohali. PIN: 140301. Valid upto: 25-Sep-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CREDO ASSETS PRIVATE LIMITED (Other than Individual)","address":"Village Santemajra, sector-116,tehsil-kharar,mohali","pin_code":"140301","website":"http://www.sbpgroup.in/residential/sbp-city-of-dreams-116/","registration_date":"20-Feb-2018","valid_upto":"25-Sep-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0291: ATHENS-II
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0291',
      'ATHENS-II',
      'athens-ii',
      'active',
      'Promoter: GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: Village - Rampur Bhuda, New Aerocity Road, Zirakpur. PIN: 140603. Valid upto: 31-Dec-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"Village - Rampur Bhuda, New Aerocity Road, Zirakpur","pin_code":"140603","website":"www.gbpgroup.in","registration_date":"12-Feb-2018","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PM0038: GBP Rose Wood Estate Phase-2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PM0038',
      'GBP Rose Wood Estate Phase-2',
      'gbp-rose-wood-estate-phase-2',
      'active',
      'Promoter: GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: GBP Rose Wood Estate Phase-II, Saidhpura, Gulabgarh Road, Derabassi. PIN: 140507. Valid upto: 31-Dec-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"GBP Rose Wood Estate Phase-II, Saidhpura, Gulabgarh Road, Derabassi","pin_code":"140507","website":"www.gbpgroup.in","registration_date":"15-Nov-2017","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0031: Tower-4 & Tower-5 (The Royal Meridian)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0031',
      'Tower-4 & Tower-5 (The Royal Meridian)',
      'tower-4-tower-5-the-royal-meridian',
      'active',
      'Promoter: OMAXE LIMITED (Other than Individual). Address: Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana. PIN: 142022. Valid upto: 30-Apr-2022',
      '{"district":"Ludhiana","promoter":"OMAXE LIMITED (Other than Individual)","address":"Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana","pin_code":"142022","website":"www.omaxe.com","registration_date":"06-Sep-2017","valid_upto":"30-Apr-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0030: Tower-6 & Tower-7 (The Royal Meridian)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0030',
      'Tower-6 & Tower-7 (The Royal Meridian)',
      'tower-6-tower-7-the-royal-meridian',
      'active',
      'Promoter: OMAXE LIMITED (Other than Individual). Address: Village Thakarwal & Dad, Pakhowal Road. PIN: 142022. Valid upto: 30-Apr-2022',
      '{"district":"Ludhiana","promoter":"OMAXE LIMITED (Other than Individual)","address":"Village Thakarwal & Dad, Pakhowal Road","pin_code":"142022","website":"www.omaxe.com","registration_date":"06-Sep-2017","valid_upto":"30-Apr-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0025: The Royal Meridian, Tower-2 and Tower-3
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0025',
      'The Royal Meridian, Tower-2 and Tower-3',
      'the-royal-meridian-tower-2-and-tower-3',
      'active',
      'Promoter: OMAXE LIMITED (Other than Individual). Address: Group Housing , Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana. PIN: 142022. Valid upto: 30-Apr-2022',
      '{"district":"Ludhiana","promoter":"OMAXE LIMITED (Other than Individual)","address":"Group Housing , Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana","pin_code":"142022","website":"www.omaxe.com","registration_date":"06-Sep-2017","valid_upto":"30-Apr-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0029: Tower-1 -The Royal Meridian
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0029',
      'Tower-1 -The Royal Meridian',
      'tower-1-the-royal-meridian',
      'active',
      'Promoter: OMAXE LIMITED (Other than Individual). Address: Group Housing , Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana. PIN: 142022. Valid upto: 30-Apr-2022',
      '{"district":"Ludhiana","promoter":"OMAXE LIMITED (Other than Individual)","address":"Group Housing , Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana","pin_code":"142022","website":"www.omaxe.com","registration_date":"06-Sep-2017","valid_upto":"30-Apr-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0534: Rajgadh Estates, Phase-2, Extension 1, Zone 5
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0534',
      'Rajgadh Estates, Phase-2, Extension 1, Zone 5',
      'rajgadh-estates-phase-2-extension-1-zone-5',
      'active',
      'Promoter: BHASIN INFRASTRUCTURE DEVELOPERS PVT LTD (Other than Individual). Address: RAJGADH ESTATES, PH 2 EXTENSION , ZONE 5, VILL BIRMI. PIN: 142027. Valid upto: 31-Jul-2022',
      '{"district":"Ludhiana","promoter":"BHASIN INFRASTRUCTURE DEVELOPERS PVT LTD (Other than Individual)","address":"RAJGADH ESTATES, PH 2 EXTENSION , ZONE 5, VILL BIRMI","pin_code":"142027","website":"www.rajgadhestates.com","registration_date":"01-Nov-2019","valid_upto":"31-Jul-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR02-PR0379: MEGA REAL ESTATE PROJECT- GLOBAL CITY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR02-PR0379',
      'MEGA REAL ESTATE PROJECT- GLOBAL CITY',
      'mega-real-estate-project-global-city',
      'active',
      'Promoter: TEWARI & GANGAHAR INFRASTRUCTURES PVT. LTD. (Other than Individual). Address: VILLAGE VALLAH. PIN: 143001. Valid upto: 31-Mar-2021',
      '{"district":"Amritsar","promoter":"TEWARI & GANGAHAR INFRASTRUCTURES PVT. LTD. (Other than Individual)","address":"VILLAGE VALLAH","pin_code":"143001","registration_date":"09-Aug-2018","valid_upto":"31-Mar-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL65-PM0106: King Citi Phase - I
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL65-PM0106',
      'King Citi Phase - I',
      'king-citi-phase-i',
      'active',
      'Promoter: Parsvnath Developers Ltd (Other than Individual). Address: Village Dharia KM 216, G T Road Shambhu Rajpura. PIN: 140401. Valid upto: 31-Dec-2019',
      '{"district":"Patiala","promoter":"Parsvnath Developers Ltd (Other than Individual)","address":"Village Dharia KM 216, G T Road Shambhu Rajpura","pin_code":"140401","website":"http://www.parsvnath.com/","registration_date":"12-Jul-2018","valid_upto":"31-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PM0116: IT City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PM0116',
      'IT City',
      'it-city',
      'active',
      'Promoter: Greater Mohali Area Development Authority (GMADA) (Other than Individual). Address: IT City. PIN: 140306. Valid upto: 31-Dec-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Greater Mohali Area Development Authority (GMADA) (Other than Individual)","address":"IT City","pin_code":"140306","registration_date":"09-Aug-2018","valid_upto":"31-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL65-PM0110: King City Extension - 5
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL65-PM0110',
      'King City Extension - 5',
      'king-city-extension-5',
      'active',
      'Promoter: Parsvnath Developers Ltd (Other than Individual). Address: Village Dharia KM 216, G T Road Shambhu Rajpura. PIN: 140401. Valid upto: 30-Jun-2020',
      '{"district":"Patiala","promoter":"Parsvnath Developers Ltd (Other than Individual)","address":"Village Dharia KM 216, G T Road Shambhu Rajpura","pin_code":"140401","website":"http://www.parsvnath.com/","registration_date":"12-Jul-2018","valid_upto":"30-Jun-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL65-PM0108: King City Extension - 2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL65-PM0108',
      'King City Extension - 2',
      'king-city-extension-2',
      'active',
      'Promoter: Parsvnath Developers Ltd (Other than Individual). Address: Village Dharia KM 216, G T Road Shambhu Rajpura. PIN: 140401. Valid upto: 30-Jun-2020',
      '{"district":"Patiala","promoter":"Parsvnath Developers Ltd (Other than Individual)","address":"Village Dharia KM 216, G T Road Shambhu Rajpura","pin_code":"140401","website":"http://www.parsvnath.com/","registration_date":"12-Jul-2018","valid_upto":"30-Jun-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL65-PM0107: King City Extension - 1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL65-PM0107',
      'King City Extension - 1',
      'king-city-extension-1',
      'active',
      'Promoter: Parsvnath Developers Ltd (Other than Individual). Address: Village Dharia KM 216, G T Road Shambhu Rajpura. PIN: 140401. Valid upto: 30-Jun-2020',
      '{"district":"Patiala","promoter":"Parsvnath Developers Ltd (Other than Individual)","address":"Village Dharia KM 216, G T Road Shambhu Rajpura","pin_code":"140401","website":"http://www.parsvnath.com/","registration_date":"12-Jul-2018","valid_upto":"30-Jun-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL65-PM0105: Parsvnath City - Rajpura
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL65-PM0105',
      'Parsvnath City - Rajpura',
      'parsvnath-city-rajpura',
      'active',
      'Promoter: Parsvnath Developers Ltd (Other than Individual). Address: Village Dharia KM 216, G T Road Shambhu Rajpura. PIN: 140401. Valid upto: 31-Mar-2020',
      '{"district":"Patiala","promoter":"Parsvnath Developers Ltd (Other than Individual)","address":"Village Dharia KM 216, G T Road Shambhu Rajpura","pin_code":"140401","website":"http://www.parsvnath.com/","registration_date":"12-Jul-2018","valid_upto":"31-Mar-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL65-PM0109: King City Extension - 4
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL65-PM0109',
      'King City Extension - 4',
      'king-city-extension-4',
      'active',
      'Promoter: Parsvnath Developers Ltd (Other than Individual). Address: Village Dharia KM 216, G T Road Shambhu Rajpura. PIN: 140401. Valid upto: 30-Jun-2020',
      '{"district":"Patiala","promoter":"Parsvnath Developers Ltd (Other than Individual)","address":"Village Dharia KM 216, G T Road Shambhu Rajpura","pin_code":"140401","website":"http://www.parsvnath.com/","registration_date":"12-Jul-2018","valid_upto":"30-Jun-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-GSP27-PM0124: New Town Avenue
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-GSP27-PM0124',
      'New Town Avenue',
      'new-town-avenue',
      'active',
      'Promoter: Gupta Property Developers Pvt Ltd (Other than Individual). Address: Village Kotli Muglan, Tehsil Pathankot. PIN: 145001. Valid upto: 31-Mar-2019',
      '{"district":"Gurdaspur","promoter":"Gupta Property Developers Pvt Ltd (Other than Individual)","address":"Village Kotli Muglan, Tehsil Pathankot","pin_code":"145001","registration_date":"30-Oct-2018","valid_upto":"31-Mar-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PM0005: Super Mega Mixed Use Integrated Industrial Park Project - Phase-1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PM0005',
      'Super Mega Mixed Use Integrated Industrial Park Project - Phase-1',
      'super-mega-mixed-use-integrated-industrial-park-project-phase-1',
      'active',
      'Promoter: Shipra Estate Limited (Other than Individual). Address: Village Nagla, Opposite Manav Mangal School,, PO Dhakoli, Zirakpur. PIN: 140603. Valid upto: 26-Jul-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Shipra Estate Limited (Other than Individual)","address":"Village Nagla, Opposite Manav Mangal School,, PO Dhakoli, Zirakpur","pin_code":"140603","website":"www.shipraworld.com","registration_date":"20-Sep-2017","valid_upto":"26-Jul-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0102: Signature Towers
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0102',
      'Signature Towers',
      'signature-towers',
      'active',
      'Promoter: KLV Builders and Developers (Other than Individual). Address: Signature Towers, JLPL City , Sector 66A Mohali. PIN: 160055. Valid upto: 26-Apr-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KLV Builders and Developers (Other than Individual)","address":"Signature Towers, JLPL City , Sector 66A Mohali","pin_code":"160055","website":"www.klvsignaturetowers.com","registration_date":"19-Sep-2017","valid_upto":"26-Apr-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-GSP27-PM0123: Sant Rasila Avenue
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-GSP27-PM0123',
      'Sant Rasila Avenue',
      'sant-rasila-avenue',
      'active',
      'Promoter: Rasila Projects & Services Pvt. Ltd (Other than Individual). Address: Village Kotli Muglan, Tehsil Pathankot. PIN: 145001. Valid upto: 31-Mar-2019',
      '{"district":"Gurdaspur","promoter":"Rasila Projects & Services Pvt. Ltd (Other than Individual)","address":"Village Kotli Muglan, Tehsil Pathankot","pin_code":"145001","registration_date":"30-Oct-2018","valid_upto":"31-Mar-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0029: Golf Links-I (Commercial)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0029',
      'Golf Links-I (Commercial)',
      'golf-links-i-commercial',
      'active',
      'Promoter: ANSAL PROPERTIES AND INFRASTRUCTURE LTD. (Other than Individual). Address: Golflinks-I, Sector-114, Mohali. PIN: 160114. Valid upto: 31-Dec-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ANSAL PROPERTIES AND INFRASTRUCTURE LTD. (Other than Individual)","address":"Golflinks-I, Sector-114, Mohali","pin_code":"160114","registration_date":"11-Sep-2017","valid_upto":"31-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0220: The Resort Part A
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0220',
      'The Resort Part A',
      'the-resort-part-a',
      'active',
      'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 31-Jan-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"28-Nov-2017","valid_upto":"31-Jan-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-RPR70-PM0115: SUKH SEHAJ ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-RPR70-PM0115',
      'SUKH SEHAJ ENCLAVE',
      'sukh-sehaj-enclave',
      'active',
      'Promoter: Twenty First century buildcon pvt. ltd. (Other than Individual). Address: VILLAGE SAHOTA TEHSIL ANANDPUR SAHIB. PIN: 140118. Valid upto: 31-Jul-2019',
      '{"district":"Rupnagar (Ropar)","promoter":"Twenty First century buildcon pvt. ltd. (Other than Individual)","address":"VILLAGE SAHOTA TEHSIL ANANDPUR SAHIB","pin_code":"140118","registration_date":"08-Aug-2018","valid_upto":"31-Jul-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PM0021: Sunny Basant- Sunny Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PM0021',
      'Sunny Basant- Sunny Enclave',
      'sunny-basant-sunny-enclave',
      'active',
      'Promoter: Bajwa Developers Limited (Other than Individual). Address: SECTOR 117 AND 74 A. PIN: 140307. Valid upto: 31-Dec-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Limited (Other than Individual)","address":"SECTOR 117 AND 74 A","pin_code":"140307","registration_date":"26-Dec-2017","valid_upto":"31-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PM0117: Shourya Greens
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PM0117',
      'Shourya Greens',
      'shourya-greens',
      'active',
      'Promoter: Shourya Towers Pvt. Ltd. (Other than Individual). Address: Shourya Greens. PIN: 144001. Valid upto: 10-Oct-2022',
      '{"district":"Jalandhar","promoter":"Shourya Towers Pvt. Ltd. (Other than Individual)","address":"Shourya Greens","pin_code":"144001","website":"http://www.shouryagroup.com/shourya-greens.htm","registration_date":"16-Aug-2018","valid_upto":"10-Oct-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PM0121: Sector 88 & 89 including Purab Premium Apartments
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PM0121',
      'Sector 88 & 89 including Purab Premium Apartments',
      'sector-88-89-including-purab-premium-apartments',
      'active',
      'Promoter: Greater Mohali Area Development Authority (GMADA) (Other than Individual). Address: Sector 88, 89. PIN: 160062. Valid upto: 31-Mar-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Greater Mohali Area Development Authority (GMADA) (Other than Individual)","address":"Sector 88, 89","pin_code":"160062","registration_date":"27-Sep-2018","valid_upto":"31-Mar-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0279: SAPHHIRE HOMES
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0279',
      'SAPHHIRE HOMES',
      'saphhire-homes',
      'active',
      'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: PLOT NO 1952 - 1974, SECTOR 110 TDI CITY-II. PIN: 140306. Valid upto: 26-Jul-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"PLOT NO 1952 - 1974, SECTOR 110 TDI CITY-II","pin_code":"140306","registration_date":"08-Feb-2018","valid_upto":"26-Jul-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0181: Swastik Vihar Apartments
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0181',
      'Swastik Vihar Apartments',
      'swastik-vihar-apartments',
      'active',
      'Promoter: Prem Bansal Real Estates Pvt. Ltd (Other than Individual). Address: Swastik Vihar Apartments Village Bhabat, Tehsil Zirakpur. PIN: 140603. Valid upto: 30-Mar-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Prem Bansal Real Estates Pvt. Ltd (Other than Individual)","address":"Swastik Vihar Apartments Village Bhabat, Tehsil Zirakpur","pin_code":"140603","registration_date":"20-Dec-2017","valid_upto":"30-Mar-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0088: Umbera Greens
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0088',
      'Umbera Greens',
      'umbera-greens',
      'active',
      'Promoter: Umbera Group (Other than Individual). Address: Villages Sangowal and Jaspal Bangar,, Canal Road, Ludhiana. PIN: 141122. Valid upto: 25-Jul-2022',
      '{"district":"Ludhiana","promoter":"Umbera Group (Other than Individual)","address":"Villages Sangowal and Jaspal Bangar,, Canal Road, Ludhiana","pin_code":"141122","website":"www.umberagroup.com","registration_date":"14-Sep-2017","valid_upto":"25-Jul-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0232: OPERA GARDEN
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0232',
      'OPERA GARDEN',
      'opera-garden-dup1',
      'active',
      'Promoter: CHANDIGARH COLONISERS PRIVATE LIMITED (Other than Individual). Address: VILLAGE KISHANPURA, ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CHANDIGARH COLONISERS PRIVATE LIMITED (Other than Individual)","address":"VILLAGE KISHANPURA, ZIRAKPUR","pin_code":"140603","registration_date":"11-Dec-2017","valid_upto":"31-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FGS17-PM0093: Palm City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FGS17-PM0093',
      'Palm City',
      'palm-city',
      'active',
      'Promoter: Jai Maa Vijay Housing & Land Developers Pvt Ltd (Other than Individual). Address: Village Attewali, Chunni road, Fatehgarh Sahib. PIN: 140407. Valid upto: 31-Dec-2018',
      '{"district":"Fatehgarh Sahib","promoter":"Jai Maa Vijay Housing & Land Developers Pvt Ltd (Other than Individual)","address":"Village Attewali, Chunni road, Fatehgarh Sahib","pin_code":"140407","registration_date":"23-May-2018","valid_upto":"31-Dec-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PC0002: Royal Arcade Ludhiana (Commercial-I)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PC0002',
      'Royal Arcade Ludhiana (Commercial-I)',
      'royal-arcade-ludhiana-commercial-i',
      'active',
      'Promoter: OMAXE LIMITED (Other than Individual). Address: Royal Arcade Ludhiana (Commercial-1), within Omaxe Royal Residency, Group Housing ,, Village Thakarwal & Dad, Pakhowal Road,. PIN: 142022. Valid upto: 31-Jul-2019',
      '{"district":"Ludhiana","promoter":"OMAXE LIMITED (Other than Individual)","address":"Royal Arcade Ludhiana (Commercial-1), within Omaxe Royal Residency, Group Housing ,, Village Thakarwal & Dad, Pakhowal Road,","pin_code":"142022","website":"www.omaxe.com","registration_date":"06-Sep-2017","valid_upto":"31-Jul-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PM0146: Rajgadh Estates, Phase-2, Extension 1, Zone 4
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PM0146',
      'Rajgadh Estates, Phase-2, Extension 1, Zone 4',
      'rajgadh-estates-phase-2-extension-1-zone-4',
      'active',
      'Promoter: BHASIN INFRASTRUCTURE DEVELOPERS PVT LTD (Other than Individual). Address: RAJGADH ESTATES, PH 2 EXTENSION , ZONE 4, VILL BIRMI. PIN: 142027. Valid upto: 30-Jun-2022',
      '{"district":"Ludhiana","promoter":"BHASIN INFRASTRUCTURE DEVELOPERS PVT LTD (Other than Individual)","address":"RAJGADH ESTATES, PH 2 EXTENSION , ZONE 4, VILL BIRMI","pin_code":"142027","website":"www.rajgadhestates.com","registration_date":"01-Nov-2019","valid_upto":"30-Jun-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0311: Nirmal City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0311',
      'Nirmal City',
      'nirmal-city',
      'active',
      'Promoter: Aman Homes (Other than Individual). Address: M/s. Bajwa developers limited side at  village Jandpur, Kharar. PIN: 140301. Valid upto: 28-Jul-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Aman Homes (Other than Individual)","address":"M/s. Bajwa developers limited side at  village Jandpur, Kharar","pin_code":"140301","registration_date":"12-Mar-2018","valid_upto":"28-Jul-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0027: ROYAL VIEW EXECUTIVE PLUS & ROYAL VIEW PREMIER PLUS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0027',
      'ROYAL VIEW EXECUTIVE PLUS & ROYAL VIEW PREMIER PLUS',
      'royal-view-executive-plus-royal-view-premier-plus',
      'active',
      'Promoter: OMAXE LIMITED (Other than Individual). Address: Group Housing , Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana. PIN: 142022. Valid upto: 30-Apr-2018',
      '{"district":"Ludhiana","promoter":"OMAXE LIMITED (Other than Individual)","address":"Group Housing , Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana","pin_code":"142022","website":"www.omaxe.com","registration_date":"05-Sep-2017","valid_upto":"30-Apr-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FGS17-PM0092: Palm City Extension
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FGS17-PM0092',
      'Palm City Extension',
      'palm-city-extension',
      'active',
      'Promoter: JMV Promoters Pvt Ltd (Other than Individual). Address: Palm City Extension, Village Attewali, Fatehgarh Sahib. PIN: 140407. Valid upto: 30-Sep-2018',
      '{"district":"Fatehgarh Sahib","promoter":"JMV Promoters Pvt Ltd (Other than Individual)","address":"Palm City Extension, Village Attewali, Fatehgarh Sahib","pin_code":"140407","registration_date":"23-May-2018","valid_upto":"30-Sep-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0032: PHASE-2 DEVELOPMENT OF MEGA RESIDENTIAL PROJECT AT MULLANPUR
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0032',
      'PHASE-2 DEVELOPMENT OF MEGA RESIDENTIAL PROJECT AT MULLANPUR',
      'phase-2-development-of-mega-residential-project-at-mullanpur',
      'active',
      'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 31-Jan-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"06-Sep-2017","valid_upto":"31-Jan-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0533: Rajgadh Estates, Phase-2, Extension 1, Zone 3
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0533',
      'Rajgadh Estates, Phase-2, Extension 1, Zone 3',
      'rajgadh-estates-phase-2-extension-1-zone-3',
      'active',
      'Promoter: BHASIN INFRASTRUCTURE DEVELOPERS PVT LTD (Other than Individual). Address: RAJGADH ESTATES, PHASE 2 EXTENSION - 1, ZONE 3. PIN: 142027. Valid upto: 31-Dec-2021',
      '{"district":"Ludhiana","promoter":"BHASIN INFRASTRUCTURE DEVELOPERS PVT LTD (Other than Individual)","address":"RAJGADH ESTATES, PHASE 2 EXTENSION - 1, ZONE 3","pin_code":"142027","website":"www.rajgadhestates.com","registration_date":"01-Nov-2019","valid_upto":"31-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0532: Rajgadh Estates, Phase-2, Extension 1, Zone 2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0532',
      'Rajgadh Estates, Phase-2, Extension 1, Zone 2',
      'rajgadh-estates-phase-2-extension-1-zone-2',
      'active',
      'Promoter: BHASIN INFRASTRUCTURE DEVELOPERS PVT LTD (Other than Individual). Address: RAJGADH ESTATES, PH 2 EXTENSION, ZONE 2. PIN: 142027. Valid upto: 13-Dec-2020',
      '{"district":"Ludhiana","promoter":"BHASIN INFRASTRUCTURE DEVELOPERS PVT LTD (Other than Individual)","address":"RAJGADH ESTATES, PH 2 EXTENSION, ZONE 2","pin_code":"142027","website":"www.rajgadhestates.com","registration_date":"01-Nov-2019","valid_upto":"13-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PI0002: MetroPark
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PI0002',
      'MetroPark',
      'metropark',
      'active',
      'Promoter: A-Tech Infrastructures Pvt Ltd (Other than Individual). Address: MetroPark, Sector-103, Mohali. PIN: 140306. Valid upto: 30-Jun-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"A-Tech Infrastructures Pvt Ltd (Other than Individual)","address":"MetroPark, Sector-103, Mohali","pin_code":"140306","registration_date":"10-Nov-2017","valid_upto":"30-Jun-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0035: INTEGRATED RESIDENTIAL TOWNSHIP PHASE-5
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0035',
      'INTEGRATED RESIDENTIAL TOWNSHIP PHASE-5',
      'integrated-residential-township-phase-5',
      'active',
      'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 31-Jul-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"06-Sep-2017","valid_upto":"31-Jul-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PM0074: Model Town
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PM0074',
      'Model Town',
      'model-town-dup3',
      'active',
      'Promoter: U.S. Promoters & Developers (Other than Individual). Address: Village Bhucho Kalan, Bathinda. PIN: 151101. Valid upto: 31-Dec-2020',
      '{"district":"Bathinda","promoter":"U.S. Promoters & Developers (Other than Individual)","address":"Village Bhucho Kalan, Bathinda","pin_code":"151101","registration_date":"25-Mar-2018","valid_upto":"31-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL65-PR0370: King City Extension - 3
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL65-PR0370',
      'King City Extension - 3',
      'king-city-extension-3',
      'active',
      'Promoter: Parsvnath Developers Ltd (Other than Individual). Address: Village Dharia KM 216, G T Road Shambhu Rajpura. PIN: 140401. Valid upto: 30-Jun-2020',
      '{"district":"Patiala","promoter":"Parsvnath Developers Ltd (Other than Individual)","address":"Village Dharia KM 216, G T Road Shambhu Rajpura","pin_code":"140401","website":"http://www.parsvnath.com/","registration_date":"12-Jul-2018","valid_upto":"30-Jun-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR03-PM0143: MODEL INDUSTRIAL PARK, AMRITSAR
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR03-PM0143',
      'MODEL INDUSTRIAL PARK, AMRITSAR',
      'model-industrial-park-amritsar',
      'active',
      'Promoter: ALPHA CORP DEVELOPMENT PVT. LTD  (Other than Individual). Address: MODEL INDUSTRIAL PARK , AMRITSAR, VILLAGE VALLAH (HADBAST NO. 280), ABBUTTING AMRITSAR, MEHTA LINK ROAD. PIN: 143501. Valid upto: 10-Jun-2022',
      '{"district":"Amritsar","promoter":"ALPHA CORP DEVELOPMENT PVT. LTD  (Other than Individual)","address":"MODEL INDUSTRIAL PARK , AMRITSAR, VILLAGE VALLAH (HADBAST NO. 280), ABBUTTING AMRITSAR, MEHTA LINK ROAD","pin_code":"143501","website":"www.alphacorp.in","registration_date":"10-Jun-2019","valid_upto":"10-Jun-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR01-PR0423: COLLAGE WINDSOR APARTMENTS I
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR01-PR0423',
      'COLLAGE WINDSOR APARTMENTS I',
      'collage-windsor-apartments-i',
      'active',
      'Promoter: Collage Group Infrastructure Pvt. Ltd. (Other than Individual). Address: HERITAGE CITY, VILLAGE HEIR, AJNALA ROAD. PIN: 143001. Valid upto: 31-Dec-2019',
      '{"district":"Amritsar","promoter":"Collage Group Infrastructure Pvt. Ltd. (Other than Individual)","address":"HERITAGE CITY, VILLAGE HEIR, AJNALA ROAD","pin_code":"143001","website":"www.collageindia.com","registration_date":"18-Feb-2019","valid_upto":"31-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0378: Milenio Floors
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0378',
      'Milenio Floors',
      'milenio-floors',
      'active',
      'Promoter: Proud nature buildtech private limited (Other than Individual). Address: Milenio Floors, Gulmohar Residensy, Golflink Ansal, Sector 116. PIN: 140308. Valid upto: 01-Mar-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Proud nature buildtech private limited (Other than Individual)","address":"Milenio Floors, Gulmohar Residensy, Golflink Ansal, Sector 116","pin_code":"140308","website":"http://www.grouppnb.com","registration_date":"07-Aug-2018","valid_upto":"01-Mar-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0191: GOLDEN SAND APPARTMENTS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0191',
      'GOLDEN SAND APPARTMENTS',
      'golden-sand-appartments',
      'active',
      'Promoter: Golden Sand Appartments (Other than Individual). Address: OLD AMBALA ROAD, GAZIPUR, ZIRAKPUR. PIN: 160104. Valid upto: 30-Dec-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Golden Sand Appartments (Other than Individual)","address":"OLD AMBALA ROAD, GAZIPUR, ZIRAKPUR","pin_code":"160104","website":"www.goldensandappartments.com","registration_date":"08-Nov-2017","valid_upto":"30-Dec-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0060: Ireo Waterfront Pocket 1 (Phase-1)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0060',
      'Ireo Waterfront Pocket 1 (Phase-1)',
      'ireo-waterfront-pocket-1-phase-1',
      'active',
      'Promoter: Ireo Waterfront Pvt Ltd (Other than Individual). Address: Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.. PIN: 141001. Valid upto: 31-Dec-2021',
      '{"district":"Ludhiana","promoter":"Ireo Waterfront Pvt Ltd (Other than Individual)","address":"Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.","pin_code":"141001","website":"www.ireowaterfont.com","registration_date":"11-Sep-2017","valid_upto":"31-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PM0104: LUXOTIC HOMES
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PM0104',
      'LUXOTIC HOMES',
      'luxotic-homes',
      'active',
      'Promoter: RAP PROJECTS PRIVATE LIMITED (Other than Individual). Address: 66 FT ROAD VILLAGE PHOLARIWAL, NEAR URBAN ESTATE PHASE II. PIN: 144001. Valid upto: 19-Feb-2019',
      '{"district":"Jalandhar","promoter":"RAP PROJECTS PRIVATE LIMITED (Other than Individual)","address":"66 FT ROAD VILLAGE PHOLARIWAL, NEAR URBAN ESTATE PHASE II","pin_code":"144001","registration_date":"02-May-2018","valid_upto":"19-Feb-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0164: Gold Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0164',
      'Gold Homes',
      'gold-homes',
      'active',
      'Promoter: Shubham Builders (Other than Individual). Address: Santemajra KHARAR LANDRAN HIGHWAY, SECTOR-116. PIN: 140307. Valid upto: 31-Jul-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Shubham Builders (Other than Individual)","address":"Santemajra KHARAR LANDRAN HIGHWAY, SECTOR-116","pin_code":"140307","registration_date":"17-Oct-2017","valid_upto":"31-Jul-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH44-PI0001: Knowledge Based IT Park.
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH44-PI0001',
      'Knowledge Based IT Park.',
      'knowledge-based-it-park',
      'active',
      'Promoter: Malhotra Developers and Colonisers (Other than Individual). Address: Vill-Kohara-Jandiali. PIN: 141122. Valid upto: 29-Jul-2022',
      '{"district":"Ludhiana","promoter":"Malhotra Developers and Colonisers (Other than Individual)","address":"Vill-Kohara-Jandiali","pin_code":"141122","registration_date":"13-Sep-2017","valid_upto":"29-Jul-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-RPR70-PM0120: Gobind Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-RPR70-PM0120',
      'Gobind Enclave',
      'gobind-enclave-dup1',
      'active',
      'Promoter: Ropar Properties & Builders Pvt Ltd (Other than Individual). Address: Gobind Enclave, Near Nangal Chownk. PIN: 140001. Valid upto: 31-Oct-2020',
      '{"district":"Rupnagar (Ropar)","promoter":"Ropar Properties & Builders Pvt Ltd (Other than Individual)","address":"Gobind Enclave, Near Nangal Chownk","pin_code":"140001","website":"http://www.gobindvalley.com/","registration_date":"13-Sep-2018","valid_upto":"31-Oct-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0038: GILLCO VALLEY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0038',
      'GILLCO VALLEY',
      'gillco-valley',
      'active',
      'Promoter: GILLCO DEVELOPERS AND BUILDERS PVT LTD (Other than Individual). Address: VILL KHOONIMAJRA, KHARAR. PIN: 140301. Valid upto: 31-Dec-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GILLCO DEVELOPERS AND BUILDERS PVT LTD (Other than Individual)","address":"VILL KHOONIMAJRA, KHARAR","pin_code":"140301","registration_date":"06-Sep-2017","valid_upto":"31-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-MGA54-PM0122: Mini Chandigarh
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-MGA54-PM0122',
      'Mini Chandigarh',
      'mini-chandigarh',
      'active',
      'Promoter: Chandigarh Dwellings & Land Promoters Pvt. Ltd. (Other than Individual). Address: Village Moga Jeet Singh-II,, Kotkapura Road,. PIN: 142001. Valid upto: 15-Oct-2019',
      '{"district":"Moga","promoter":"Chandigarh Dwellings & Land Promoters Pvt. Ltd. (Other than Individual)","address":"Village Moga Jeet Singh-II,, Kotkapura Road,","pin_code":"142001","registration_date":"18-Oct-2018","valid_upto":"15-Oct-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-RPR70-PM0138: HEMKUNT ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-RPR70-PM0138',
      'HEMKUNT ENCLAVE',
      'hemkunt-enclave',
      'active',
      'Promoter: Jeet Properties Pvt. Ltd (Other than Individual). Address: Hemkunt Enclave railon road, District Ropar. PIN: 140001. Valid upto: 19-Dec-2019',
      '{"district":"Rupnagar (Ropar)","promoter":"Jeet Properties Pvt. Ltd (Other than Individual)","address":"Hemkunt Enclave railon road, District Ropar","pin_code":"140001","registration_date":"27-Feb-2019","valid_upto":"19-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PM0023: Geetu Constructions Private Limited
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PM0023',
      'Geetu Constructions Private Limited',
      'geetu-constructions-private-limited',
      'active',
      'Promoter: GEETU CONSTRUCTIONS PVT LTD (Other than Individual). Address: VILLAGE LANDRAN, SECTOR-113, MOHALI. PIN: 160059. Valid upto: 31-Jul-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GEETU CONSTRUCTIONS PVT LTD (Other than Individual)","address":"VILLAGE LANDRAN, SECTOR-113, MOHALI","pin_code":"160059","registration_date":"12-Jan-2018","valid_upto":"31-Jul-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR0360: AGI PALACE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR0360',
      'AGI PALACE',
      'agi-palace',
      'active',
      'Promoter: AGI INFRA LIMITED (Other than Individual). Address: VILLAGE PHOLRIWAL. PIN: 144022. Valid upto: 31-Dec-2020',
      '{"district":"Jalandhar","promoter":"AGI INFRA LIMITED (Other than Individual)","address":"VILLAGE PHOLRIWAL","pin_code":"144022","website":"www.agiinfra.com","registration_date":"17-Apr-2018","valid_upto":"31-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-RPR70-PM0114: GOLDEN CITY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-RPR70-PM0114',
      'GOLDEN CITY',
      'golden-city',
      'active',
      'Promoter: Bhangu Developers and Builders Pvt ltd (Other than Individual). Address: Ropar-Nangal Road, Tehsil and Distt. Rupnagar (Ropar). PIN: 140001. Valid upto: 30-Jun-2020',
      '{"district":"Rupnagar (Ropar)","promoter":"Bhangu Developers and Builders Pvt ltd (Other than Individual)","address":"Ropar-Nangal Road, Tehsil and Distt. Rupnagar (Ropar)","pin_code":"140001","registration_date":"02-Aug-2018","valid_upto":"30-Jun-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PM0025: Anand Enclave Block-C
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PM0025',
      'Anand Enclave Block-C',
      'anand-enclave-block-c',
      'active',
      'Promoter: Anand Enclave Developers Pvt. Ltd. (Other than Individual). Address: Village lalton Kalan, Ludhiana. PIN: 141001. Valid upto: 31-Mar-2020',
      '{"district":"Ludhiana","promoter":"Anand Enclave Developers Pvt. Ltd. (Other than Individual)","address":"Village lalton Kalan, Ludhiana","pin_code":"141001","registration_date":"06-Feb-2018","valid_upto":"31-Mar-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FDK12-PM0102: Gobind Estate Kotkapura
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FDK12-PM0102',
      'Gobind Estate Kotkapura',
      'gobind-estate-kotkapura',
      'active',
      'Promoter: Kotkapura Township Colonisers (Other than Individual). Address: Gobind Estate, Muktsar Road, Kotkapura. PIN: 151204. Valid upto: 30-Sep-2018',
      '{"district":"Faridkot","promoter":"Kotkapura Township Colonisers (Other than Individual)","address":"Gobind Estate, Muktsar Road, Kotkapura","pin_code":"151204","website":"www.gobindestate.com","registration_date":"19-Jun-2018","valid_upto":"30-Sep-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PI0003: I.T. Twin Towers
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PI0003',
      'I.T. Twin Towers',
      'it-twin-towers',
      'active',
      'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: IT Twin Tower, Sector-66A. PIN: 140306. Valid upto: 31-Oct-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"IT Twin Tower, Sector-66A","pin_code":"140306","website":"www.jantahousing.com","registration_date":"30-Nov-2017","valid_upto":"31-Oct-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PI0004: Industrial Colony
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PI0004',
      'Industrial Colony',
      'industrial-colony',
      'active',
      'Promoter: Vinod  Kumar Jain (Individual). Address: pragati industrial park, village behra. PIN: 140507',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Vinod  Kumar Jain (Individual)","address":"pragati industrial park, village behra","pin_code":"140507","website":"www.pragatipark.com","registration_date":"05-Mar-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0230: Eco Green Colony Phase-2
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0230',
      'Eco Green Colony Phase-2',
      'eco-green-colony-phase-2',
      'active',
      'Promoter: GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: Eco Green Colony Phase-II, Saidhpura, Gulabgarh Road. PIN: 140507. Valid upto: 31-Dec-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"Eco Green Colony Phase-II, Saidhpura, Gulabgarh Road","pin_code":"140507","website":"www.gbpgroup.in","registration_date":"28-Nov-2017","valid_upto":"31-Dec-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0034: Connaught Plaza
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0034',
      'Connaught Plaza',
      'connaught-plaza',
      'active',
      'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: SCO 1030A-H SCO 1035-36, CONNAUGHT PLAZA SECTOR 74A TDI CITY II. PIN: 140301. Valid upto: 04-Aug-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"SCO 1030A-H SCO 1035-36, CONNAUGHT PLAZA SECTOR 74A TDI CITY II","pin_code":"140301","registration_date":"08-Feb-2018","valid_upto":"04-Aug-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PM0039: Chandigarh Royale City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PM0039',
      'Chandigarh Royale City',
      'chandigarh-royale-city',
      'active',
      'Promoter: CHANDIGARH ROYALE CITY PROMOTERS PVT. LTD (Other than Individual). Address: VILLAGE KARALA, ZIRAKPUR - BANUR HIGHWAY. PIN: 140603. Valid upto: 11-Sep-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CHANDIGARH ROYALE CITY PROMOTERS PVT. LTD (Other than Individual)","address":"VILLAGE KARALA, ZIRAKPUR - BANUR HIGHWAY","pin_code":"140603","registration_date":"06-Mar-2018","valid_upto":"11-Sep-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR02-PR0239: Ansal City-Amritsar
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR02-PR0239',
      'Ansal City-Amritsar',
      'ansal-city-amritsar',
      'active',
      'Promoter: Ansal Buildwell Ltd (Other than Individual). Address: VILLAGE JANDIALA GURU, GT ROAD, MEHARBAN PURA. PIN: 143115. Valid upto: 31-Dec-2018',
      '{"district":"Amritsar","promoter":"Ansal Buildwell Ltd (Other than Individual)","address":"VILLAGE JANDIALA GURU, GT ROAD, MEHARBAN PURA","pin_code":"143115","website":"www.ansalabl.com","registration_date":"13-Dec-2017","valid_upto":"31-Dec-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BTI08-PM0129: ATMA SINGH ENCLAVE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BTI08-PM0129',
      'ATMA SINGH ENCLAVE',
      'atma-singh-enclave',
      'active',
      'Promoter: HARMINDER  SINGH (Individual). Address: BIR ROAD,. PIN: 151001. Valid upto: 30-Dec-2019',
      '{"district":"Bathinda","promoter":"HARMINDER  SINGH (Individual)","address":"BIR ROAD,","pin_code":"151001","registration_date":"15-Jan-2019","valid_upto":"30-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR01-PR0424: COLLAGE WINDSOR APARTMENT II
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR01-PR0424',
      'COLLAGE WINDSOR APARTMENT II',
      'collage-windsor-apartment-ii',
      'active',
      'Promoter: Collage Group Infrastructure Pvt. Ltd. (Other than Individual). Address: VILLAGE HEIR, AJNALA ROAD. PIN: 143001. Valid upto: 31-Dec-2019',
      '{"district":"Amritsar","promoter":"Collage Group Infrastructure Pvt. Ltd. (Other than Individual)","address":"VILLAGE HEIR, AJNALA ROAD","pin_code":"143001","website":"www.collageindia.com","registration_date":"18-Feb-2019","valid_upto":"31-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-MNS49-PR0818: New Town
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-MNS49-PR0818',
      'New Town',
      'new-town',
      'active',
      'Promoter: New Town (Other than Individual). Address: Royal City, Colony Road, Near DAV School, Budhlada. PIN: 151502. Valid upto: 30-Jun-2024',
      '{"district":"Mansa","promoter":"New Town (Other than Individual)","address":"Royal City, Colony Road, Near DAV School, Budhlada","pin_code":"151502","registration_date":"05-Aug-2022","valid_upto":"30-Jun-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR0822: U-Colony
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR0822',
      'U-Colony',
      'u-colony',
      'active',
      'Promoter: J.S.R. Earth Evolution Private Limited (Other than Individual). Address: Village Chak Hussaina, Lamba Pind. PIN: 144004. Valid upto: 11-Feb-2025',
      '{"district":"Jalandhar","promoter":"J.S.R. Earth Evolution Private Limited (Other than Individual)","address":"Village Chak Hussaina, Lamba Pind","pin_code":"144004","registration_date":"08-Aug-2022","valid_upto":"11-Feb-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR0779: Affordable Group Housing Project AGI Smart Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR0779',
      'Affordable Group Housing Project AGI Smart Homes',
      'affordable-group-housing-project-agi-smart-homes',
      'active',
      'Promoter: AGI INFRA LIMITED (Other than Individual). Address: Village Pholriwal, (H.B.No.252). PIN: 144022. Valid upto: 04-Aug-2025',
      '{"district":"Jalandhar","promoter":"AGI INFRA LIMITED (Other than Individual)","address":"Village Pholriwal, (H.B.No.252)","pin_code":"144022","website":"www.agiinfra.com","registration_date":"25-Apr-2022","valid_upto":"04-Aug-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0011: Gobind Colony
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0011',
      'Gobind Colony',
      'gobind-colony',
      'active',
      'Promoter: A V Developers (Other than Individual). Address: Gobind Colony, Kharar. PIN: 140301. Valid upto: 30-Aug-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"A V Developers (Other than Individual)","address":"Gobind Colony, Kharar","pin_code":"140301","registration_date":"01-Sep-2017","valid_upto":"30-Aug-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0024: Parsvnath Greens Derabassi
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0024',
      'Parsvnath Greens Derabassi',
      'parsvnath-greens-derabassi',
      'active',
      'Promoter: Parsvnath Developers Limited (Other than Individual). Address: Mubarikpur Road, Derabassi. PIN: 140507. Valid upto: 31-Jul-2018',
      '{"district":"Patiala","promoter":"Parsvnath Developers Limited (Other than Individual)","address":"Mubarikpur Road, Derabassi","pin_code":"140507","website":"www.parsvnath.com","registration_date":"05-Sep-2017","valid_upto":"31-Jul-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0048: Attam Vallabh Janpath
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0048',
      'Attam Vallabh Janpath',
      'attam-vallabh-janpath',
      'active',
      'Promoter: JANPATH ESTATES PRIVATE LIMITED  (Other than Individual). Address: Janpath Villas, Sidhwan Canal Road,, Village Jhammat, P.O.Ayali Kalan,. PIN: 142027. Valid upto: 30-Jul-2019',
      '{"district":"Ludhiana","promoter":"JANPATH ESTATES PRIVATE LIMITED  (Other than Individual)","address":"Janpath Villas, Sidhwan Canal Road,, Village Jhammat, P.O.Ayali Kalan,","pin_code":"142027","registration_date":"08-Nov-2017","valid_upto":"30-Jul-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0050: Trishla City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0050',
      'Trishla City',
      'trishla-city',
      'active',
      'Promoter: TRISHLA BUILDTECH PVT. LTD. (Other than Individual). Address: TRISHLA CITY, VILLAGE NABHA SAHIB ,HIGH GROUND ROAD, ZIRAKPUR. PIN: 140603. Valid upto: 19-Jul-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TRISHLA BUILDTECH PVT. LTD. (Other than Individual)","address":"TRISHLA CITY, VILLAGE NABHA SAHIB ,HIGH GROUND ROAD, ZIRAKPUR","pin_code":"140603","registration_date":"07-Sep-2017","valid_upto":"19-Jul-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0033: Golflinks-II,Sector-116(Commercial)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0033',
      'Golflinks-II,Sector-116(Commercial)',
      'golflinks-iisector-116commercial',
      'active',
      'Promoter: ANSAL PROPERTIES AND INFRASTRUCTURE LTD. (Other than Individual). Address: Golflinks-II, Sector-116, Mohali. PIN: 160114. Valid upto: 31-Dec-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ANSAL PROPERTIES AND INFRASTRUCTURE LTD. (Other than Individual)","address":"Golflinks-II, Sector-116, Mohali","pin_code":"160114","registration_date":"13-Feb-2018","valid_upto":"31-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0458: Parivar Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0458',
      'Parivar Enclave',
      'parivar-enclave',
      'active',
      'Promoter: Ajay   Jindal (Individual). Address: Village-  Mouja Dhnoni. PIN: 140603. Valid upto: 30-Apr-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Ajay   Jindal (Individual)","address":"Village-  Mouja Dhnoni","pin_code":"140603","registration_date":"14-May-2019","valid_upto":"30-Apr-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0178: Mohali Citi Centre Avenue
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0178',
      'Mohali Citi Centre Avenue',
      'mohali-citi-centre-avenue',
      'active',
      'Promoter: STJ and CO (Other than Individual). Address: Block- E, Aero City, SAS Nagar. PIN: 140603. Valid upto: 31-Mar-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"STJ and CO (Other than Individual)","address":"Block- E, Aero City, SAS Nagar","pin_code":"140603","registration_date":"05-Aug-2022","valid_upto":"31-Mar-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0820: CO-OPERATIVE HOUSING COMPLEX POCKET II
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0820',
      'CO-OPERATIVE HOUSING COMPLEX POCKET II',
      'co-operative-housing-complex-pocket-ii',
      'active',
      'Promoter: THE PUNJAB STATE CO-OP HOUSE BUILDING FEDERATION LTD. (Other than Individual). Address: Housefed Punjab, SECTOR 79. PIN: 140308. Valid upto: 30-Apr-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"THE PUNJAB STATE CO-OP HOUSE BUILDING FEDERATION LTD. (Other than Individual)","address":"Housefed Punjab, SECTOR 79","pin_code":"140308","registration_date":"05-Aug-2022","valid_upto":"30-Apr-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0817: THE ZIRK
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0817',
      'THE ZIRK',
      'the-zirk',
      'active',
      'Promoter: Urban Nest  Projects LLP (Other than Individual). Address: Village NABHA, H.B. No. 290, Zirakpur. PIN: 140603. Valid upto: 31-Dec-2027',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Urban Nest  Projects LLP (Other than Individual)","address":"Village NABHA, H.B. No. 290, Zirakpur","pin_code":"140603","registration_date":"05-Aug-2022","valid_upto":"31-Dec-2027"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0824: MOTIA AERO GREENS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0824',
      'MOTIA AERO GREENS',
      'motia-aero-greens',
      'active',
      'Promoter: SHIVA DEVELOPERS (Other than Individual). Address: H. B. No. 289 Village Diyalpura,Sub Tehsil Zirakpur, District S.A.S. Nagar. PIN: 140603. Valid upto: 10-Jul-2026',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SHIVA DEVELOPERS (Other than Individual)","address":"H. B. No. 289 Village Diyalpura,Sub Tehsil Zirakpur, District S.A.S. Nagar","pin_code":"140603","registration_date":"05-Aug-2022","valid_upto":"10-Jul-2026"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0823: SUKHMANI CO OPERATIVE HOUSE BUILDING SOCIETY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0823',
      'SUKHMANI CO OPERATIVE HOUSE BUILDING SOCIETY',
      'sukhmani-co-operative-house-building-society',
      'active',
      'Promoter: THE SUKHMANI CO-OPERATIVE HOUSE BUILDING SOCIETY LTD (Other than Individual). Address: VILLAGE BANUR, MC LIMIT, Tehsil Banur. PIN: 140601. Valid upto: 02-Sep-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"THE SUKHMANI CO-OPERATIVE HOUSE BUILDING SOCIETY LTD (Other than Individual)","address":"VILLAGE BANUR, MC LIMIT, Tehsil Banur","pin_code":"140601","registration_date":"05-Aug-2022","valid_upto":"02-Sep-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0226: Spanish Homes
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0226',
      'Spanish Homes',
      'spanish-homes',
      'active',
      'Promoter: Vipul Sud Builders (Other than Individual). Address: Spanish office, Sector 125. PIN: 140301. Valid upto: 07-May-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Vipul Sud Builders (Other than Individual)","address":"Spanish office, Sector 125","pin_code":"140301","registration_date":"11-Dec-2017","valid_upto":"07-May-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0012: ATS Golf Meadows 1 Extn
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0012',
      'ATS Golf Meadows 1 Extn',
      'ats-golf-meadows-1-extn',
      'active',
      'Promoter: ATS Estates Private Limited (Other than Individual). Address: ATS Golf Meadows, Dera Bassi. PIN: 140507. Valid upto: 25-Jul-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ATS Estates Private Limited (Other than Individual)","address":"ATS Golf Meadows, Dera Bassi","pin_code":"140507","registration_date":"22-Sep-2017","valid_upto":"25-Jul-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PM0072: Bollywood Green City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PM0072',
      'Bollywood Green City',
      'bollywood-green-city',
      'active',
      'Promoter: Lark Projects Pvt. Ltd (Other than Individual). Address: Sector 113, Landran-chunni sirhind road. PIN: 160055. Valid upto: 31-Dec-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Lark Projects Pvt. Ltd (Other than Individual)","address":"Sector 113, Landran-chunni sirhind road","pin_code":"160055","registration_date":"24-Apr-2018","valid_upto":"31-Dec-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0014: Sushma Infinium
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0014',
      'Sushma Infinium',
      'sushma-infinium',
      'active',
      'Promoter: Sushma Buildtech Limited (Other than Individual). Address: Village Bishangarh - Bishanpura, Zirakpur, NH Chandigarh Ambala Road. PIN: 140603. Valid upto: 13-Sep-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sushma Buildtech Limited (Other than Individual)","address":"Village Bishangarh - Bishanpura, Zirakpur, NH Chandigarh Ambala Road","pin_code":"140603","website":"www.sushma.co.in","registration_date":"14-Sep-2017","valid_upto":"13-Sep-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0019: Wave Estate, Commercial pocket- A
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0019',
      'Wave Estate, Commercial pocket- A',
      'wave-estate-commercial-pocket-a',
      'active',
      'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: WAVE ESTATE, SECTOR -85 & 99. PIN: 143308. Valid upto: 31-May-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"WAVE ESTATE, SECTOR -85 & 99","pin_code":"143308","registration_date":"11-Oct-2017","valid_upto":"31-May-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR77-PM0112: Ekta Vihar
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR77-PM0112',
      'Ekta Vihar',
      'ekta-vihar-dup1',
      'active',
      'Promoter: Ekta Colonisers (Other than Individual). Address: Village-Mangwal , Sangrur. PIN: 148024. Valid upto: 31-Dec-2018',
      '{"district":"Sangrur","promoter":"Ekta Colonisers (Other than Individual)","address":"Village-Mangwal , Sangrur","pin_code":"148024","registration_date":"16-Jul-2018","valid_upto":"31-Dec-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0043: Commercial Complex
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0043',
      'Commercial Complex',
      'commercial-complex',
      'active',
      'Promoter: Aura Builders & Developers (Other than Individual). Address: Aura Commercial Complex, Vill Khanpur, Kharar-morinda Road, Teh Kharar. PIN: 140301. Valid upto: 31-Mar-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Aura Builders & Developers (Other than Individual)","address":"Aura Commercial Complex, Vill Khanpur, Kharar-morinda Road, Teh Kharar","pin_code":"140301","registration_date":"19-Mar-2018","valid_upto":"31-Mar-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0193: GBP Crest-II
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0193',
      'GBP Crest-II',
      'gbp-crest-ii',
      'active',
      'Promoter: GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: GBP Crest-II, Saidhpura, Gulabgarh Road. PIN: 140507. Valid upto: 31-Dec-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"GBP Crest-II, Saidhpura, Gulabgarh Road","pin_code":"140507","website":"www.gbpgroup.in","registration_date":"16-Nov-2017","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-BNL06-PM0111: DREAM CITY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-BNL06-PM0111',
      'DREAM CITY',
      'dream-city-dup3',
      'active',
      'Promoter: Grewal properties and real estate (Other than Individual). Address: Village Dhanaula, District Barnala. PIN: 148101. Valid upto: 30-Sep-2018',
      '{"district":"Barnala","promoter":"Grewal properties and real estate (Other than Individual)","address":"Village Dhanaula, District Barnala","pin_code":"148101","registration_date":"13-Jul-2018","valid_upto":"30-Sep-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0079: Amazon Tower
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0079',
      'Amazon Tower',
      'amazon-tower',
      'active',
      'Promoter: Bajwa Developers Limited (Other than Individual). Address: Vill. Desumajra Kharar. PIN: 140301. Valid upto: 27-Jul-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Limited (Other than Individual)","address":"Vill. Desumajra Kharar","pin_code":"140301","registration_date":"08-Nov-2017","valid_upto":"27-Jul-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR73-PM0094: Ekta Vihar
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR73-PM0094',
      'Ekta Vihar',
      'ekta-vihar-dup2',
      'active',
      'Promoter: Ekta Construction Co. (Other than Individual). Address: Dhuri, sangrur. PIN: 148024. Valid upto: 31-Dec-2019',
      '{"district":"Sangrur","promoter":"Ekta Construction Co. (Other than Individual)","address":"Dhuri, sangrur","pin_code":"148024","registration_date":"25-May-2018","valid_upto":"31-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PM0024: Anand Enclave Block-B
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PM0024',
      'Anand Enclave Block-B',
      'anand-enclave-block-b',
      'active',
      'Promoter: CEE ENN Promoters and Developers Pvt Ltd (Other than Individual). Address: Village lalton Kalan, Pakhowal Road, Ludhiana. PIN: 141001. Valid upto: 31-Mar-2020',
      '{"district":"Ludhiana","promoter":"CEE ENN Promoters and Developers Pvt Ltd (Other than Individual)","address":"Village lalton Kalan, Pakhowal Road, Ludhiana","pin_code":"141001","registration_date":"06-Feb-2018","valid_upto":"31-Mar-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PC0067: DEVELOPMENT OF COMMERCIAL POCKET(RIGHT & LEFT SIDE OF MOHINI RESORT) SECTOR-32A LUDHIANA
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PC0067',
      'DEVELOPMENT OF COMMERCIAL POCKET(RIGHT & LEFT SIDE OF MOHINI RESORT) SECTOR-32A LUDHIANA',
      'development-of-commercial-pocketright-left-side-of-mohini-resort-sector-32a-ludhiana',
      'active',
      'Promoter: Greater Ludhiana Area Development Authority (Other than Individual). Address: Right and Left hand Side of Mohini Resort, Sector-32 A Samrala Road, Ludhiana. PIN: 141001. Valid upto: 30-Sep-2020',
      '{"district":"Ludhiana","promoter":"Greater Ludhiana Area Development Authority (Other than Individual)","address":"Right and Left hand Side of Mohini Resort, Sector-32 A Samrala Road, Ludhiana","pin_code":"141001","registration_date":"18-Apr-2018","valid_upto":"30-Sep-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PC0063: Commercial Pocket Phase 2 & 3, Dugri Urban Estate, Dugri Ludhiana By Pass
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PC0063',
      'Commercial Pocket Phase 2 & 3, Dugri Urban Estate, Dugri Ludhiana By Pass',
      'commercial-pocket-phase-2-3-dugri-urban-estate-dugri-ludhiana-by-pass',
      'active',
      'Promoter: Greater Ludhiana Area Development Authority (Other than Individual). Address: Dugri Urban Estate, Dugri Ludhiana By Pass, Ludhiana. PIN: 141001. Valid upto: 31-Jul-2018',
      '{"district":"Ludhiana","promoter":"Greater Ludhiana Area Development Authority (Other than Individual)","address":"Dugri Urban Estate, Dugri Ludhiana By Pass, Ludhiana","pin_code":"141001","registration_date":"25-Apr-2018","valid_upto":"31-Jul-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0045: Hotel and Commercial Site (CP-67)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0045',
      'Hotel and Commercial Site (CP-67)',
      'hotel-and-commercial-site-cp-67',
      'active',
      'Promoter: A B ALCOBEV PRIVATE LIMITED (Other than Individual). Address: Sector-67, SAS Nagar, mohali. PIN: 140603. Valid upto: 31-Dec-2024',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"A B ALCOBEV PRIVATE LIMITED (Other than Individual)","address":"Sector-67, SAS Nagar, mohali","pin_code":"140603","registration_date":"27-Mar-2018","valid_upto":"31-Dec-2024"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0076: Orchard County-II
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0076',
      'Orchard County-II',
      'orchard-county-ii',
      'active',
      'Promoter: Ansal Lotus Melange  (Other than Individual). Address: SCO 183-184, sector 9C. PIN: 140307. Valid upto: 31-Dec-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Ansal Lotus Melange  (Other than Individual)","address":"SCO 183-184, sector 9C","pin_code":"140307","registration_date":"18-Jul-2018","valid_upto":"31-Dec-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0080: FOOD COURT(MOHALI WALK)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0080',
      'FOOD COURT(MOHALI WALK)',
      'food-courtmohali-walk',
      'active',
      'Promoter: P.P. BULDWELL PRIVATE LIMITED (Other than Individual). Address: SITE NO.1 AND SITE NO.2, SECTOR 62. PIN: 160055. Valid upto: 30-Dec-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"P.P. BULDWELL PRIVATE LIMITED (Other than Individual)","address":"SITE NO.1 AND SITE NO.2, SECTOR 62","pin_code":"160055","registration_date":"29-Oct-2018","valid_upto":"30-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZR22-PC0070: OLD CIVIL HOSPITAL SITE NEAR SAHEED UDHAM SINGH CHOWK, FZR
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZR22-PC0070',
      'OLD CIVIL HOSPITAL SITE NEAR SAHEED UDHAM SINGH CHOWK, FZR',
      'old-civil-hospital-site-near-saheed-udham-singh-chowk-fzr',
      'active',
      'Promoter: Greater Ludhiana Area Development Authority (Other than Individual). Address: Near Saheed Udham Singh Chowk, Ferozpur. PIN: 152001. Valid upto: 31-Dec-2018',
      '{"district":"Firozpur","promoter":"Greater Ludhiana Area Development Authority (Other than Individual)","address":"Near Saheed Udham Singh Chowk, Ferozpur","pin_code":"152001","registration_date":"20-Dec-2017","valid_upto":"31-Dec-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FZR22-PC0069: JAIL FARM SITE (BACKSIDE JAIL)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FZR22-PC0069',
      'JAIL FARM SITE (BACKSIDE JAIL)',
      'jail-farm-site-backside-jail',
      'active',
      'Promoter: Greater Ludhiana Area Development Authority (Other than Individual). Address: Back Side Jail, Near Dr Anil Baghi, Memorial Hospital, Ferozpur. PIN: 152001. Valid upto: 30-Sep-2018',
      '{"district":"Firozpur","promoter":"Greater Ludhiana Area Development Authority (Other than Individual)","address":"Back Side Jail, Near Dr Anil Baghi, Memorial Hospital, Ferozpur","pin_code":"152001","registration_date":"30-Oct-2017","valid_upto":"30-Sep-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PC0060: Commercial  Site at Police Kotwali
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PC0060',
      'Commercial  Site at Police Kotwali',
      'commercial-site-at-police-kotwali',
      'active',
      'Promoter: Greater Ludhiana Area Development Authority (Other than Individual). Address: Site At Police Kotwali, Chaura Bazar, Ludhiana. PIN: 141001. Valid upto: 31-Mar-2019',
      '{"district":"Ludhiana","promoter":"Greater Ludhiana Area Development Authority (Other than Individual)","address":"Site At Police Kotwali, Chaura Bazar, Ludhiana","pin_code":"141001","registration_date":"18-Apr-2018","valid_upto":"31-Mar-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PC0062: Eco City - 1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PC0062',
      'Eco City - 1',
      'eco-city-1',
      'active',
      'Promoter: Greater Mohali Area Development Authority (GMADA) (Other than Individual). Address: Eco City -1, New Chandigarh, Majri, Kharar,. PIN: 140110. Valid upto: 31-Dec-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Greater Mohali Area Development Authority (GMADA) (Other than Individual)","address":"Eco City -1, New Chandigarh, Majri, Kharar,","pin_code":"140110","registration_date":"27-Apr-2018","valid_upto":"31-Dec-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PC0078: BPH COMPLEX
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PC0078',
      'BPH COMPLEX',
      'bph-complex',
      'active',
      'Promoter: BPH COMPLEX (Other than Individual). Address: VILLAGE BARAN. PIN: 147001. Valid upto: 31-Dec-2019',
      '{"district":"Patiala","promoter":"BPH COMPLEX (Other than Individual)","address":"VILLAGE BARAN","pin_code":"147001","registration_date":"19-Jul-2018","valid_upto":"31-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PC0050: Commercial Pocket of Old District Court Ludhiana- Pocket No. 2 & 3
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PC0050',
      'Commercial Pocket of Old District Court Ludhiana- Pocket No. 2 & 3',
      'commercial-pocket-of-old-district-court-ludhiana-pocket-no-2-3',
      'active',
      'Promoter: Greater Ludhiana Area Development Authority (Other than Individual). Address: Old District Court, Ludhiana. PIN: 141001. Valid upto: 30-Sep-2018',
      '{"district":"Ludhiana","promoter":"Greater Ludhiana Area Development Authority (Other than Individual)","address":"Old District Court, Ludhiana","pin_code":"141001","registration_date":"12-Apr-2018","valid_upto":"30-Sep-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0066: Gulmohar Plaza--1
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0066',
      'Gulmohar Plaza--1',
      'gulmohar-plaza-1',
      'active',
      'Promoter: Darshan   Singh (Individual). Address: Chandigarh- Ambala Highway, NAC-Lalru,. PIN: 140501. Valid upto: 30-Aug-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Darshan   Singh (Individual)","address":"Chandigarh- Ambala Highway, NAC-Lalru,","pin_code":"140501","registration_date":"02-May-2018","valid_upto":"30-Aug-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0052: Metro Plaza
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0052',
      'Metro Plaza',
      'metro-plaza',
      'active',
      'Promoter: Metro Developers (Other than Individual). Address: Near MC Park, Lohgarh, Zirakpur. PIN: 140603. Valid upto: 31-Mar-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Metro Developers (Other than Individual)","address":"Near MC Park, Lohgarh, Zirakpur","pin_code":"140603","registration_date":"12-Apr-2018","valid_upto":"31-Mar-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0065: RAINBOW
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0065',
      'RAINBOW',
      'rainbow',
      'active',
      'Promoter: RAINBOW(TRISHLA BUILDTECH PVT.LTD) (Other than Individual). Address: TRISHLA  CITY, VILLAGE-NABHA,HIGH GROUND ROAD, ZIRAKPUR. PIN: 140603. Valid upto: 30-Apr-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"RAINBOW(TRISHLA BUILDTECH PVT.LTD) (Other than Individual)","address":"TRISHLA  CITY, VILLAGE-NABHA,HIGH GROUND ROAD, ZIRAKPUR","pin_code":"140603","registration_date":"02-May-2018","valid_upto":"30-Apr-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0162: FRIENDS HOMES
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0162',
      'FRIENDS HOMES',
      'friends-homes',
      'active',
      'Promoter: FRENDEN HOUSING PRIVATE LIMITED (Other than Individual). Address: FRIENDS HOMES, GLOBAL CITY SECTOR 124 TEHSIL KHARAR. PIN: 140301. Valid upto: 30-Sep-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"FRENDEN HOUSING PRIVATE LIMITED (Other than Individual)","address":"FRIENDS HOMES, GLOBAL CITY SECTOR 124 TEHSIL KHARAR","pin_code":"140301","registration_date":"23-Oct-2017","valid_upto":"30-Sep-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PC0051: Commercial Pocket in Sector 40
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PC0051',
      'Commercial Pocket in Sector 40',
      'commercial-pocket-in-sector-40',
      'active',
      'Promoter: Greater Ludhiana Area Development Authority (Other than Individual). Address: Samrala Road, Sector-40, Ludhiana. PIN: 141001. Valid upto: 31-Dec-2020',
      '{"district":"Ludhiana","promoter":"Greater Ludhiana Area Development Authority (Other than Individual)","address":"Samrala Road, Sector-40, Ludhiana","pin_code":"141001","registration_date":"20-Dec-2017","valid_upto":"31-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PC0064: Taj Complex
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PC0064',
      'Taj Complex',
      'taj-complex',
      'active',
      'Promoter: PREM KUMAR  GARG (Individual). Address: TAJ COMPLEX, Village Baren. PIN: 147004. Valid upto: 31-Mar-2019',
      '{"district":"Patiala","promoter":"PREM KUMAR  GARG (Individual)","address":"TAJ COMPLEX, Village Baren","pin_code":"147004","registration_date":"02-May-2018","valid_upto":"31-Mar-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PC0057: Development of Commercial Pockets and Convenient Shopping
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PC0057',
      'Development of Commercial Pockets and Convenient Shopping',
      'development-of-commercial-pockets-and-convenient-shopping',
      'active',
      'Promoter: Greater Ludhiana Area Development Authority (Other than Individual). Address: Sector-39, Samrala Road, Ludhiana. PIN: 141001. Valid upto: 30-Sep-2019',
      '{"district":"Ludhiana","promoter":"Greater Ludhiana Area Development Authority (Other than Individual)","address":"Sector-39, Samrala Road, Ludhiana","pin_code":"141001","registration_date":"13-Apr-2018","valid_upto":"30-Sep-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PC0056: Commercial Pocket Opp. Vardhman Mill Sector 39-A
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PC0056',
      'Commercial Pocket Opp. Vardhman Mill Sector 39-A',
      'commercial-pocket-opp-vardhman-mill-sector-39-a',
      'active',
      'Promoter: Greater Ludhiana Area Development Authority (Other than Individual). Address: Commercial Pocket, Sector-39A, Opp. Vardhman Mill. PIN: 141001. Valid upto: 30-Sep-2019',
      '{"district":"Ludhiana","promoter":"Greater Ludhiana Area Development Authority (Other than Individual)","address":"Commercial Pocket, Sector-39A, Opp. Vardhman Mill","pin_code":"141001","registration_date":"13-Apr-2018","valid_upto":"30-Sep-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PC0058: AGI BUSINESS CENTRE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PC0058',
      'AGI BUSINESS CENTRE',
      'agi-business-centre',
      'active',
      'Promoter: AGI INFRA LIMITED (Other than Individual). Address: NEAR BUS STAND. PIN: 144001. Valid upto: 31-Dec-2018',
      '{"district":"Jalandhar","promoter":"AGI INFRA LIMITED (Other than Individual)","address":"NEAR BUS STAND","pin_code":"144001","website":"www.agiinfra.com","registration_date":"16-Apr-2018","valid_upto":"31-Dec-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PC0053: GLOBAL BUSINESS PARK
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PC0053',
      'GLOBAL BUSINESS PARK',
      'global-business-park',
      'active',
      'Promoter: Spirit Global Constructions Pvt. Ltd. (Other than Individual). Address: VILLAGE BHORA, MAIN G.T. ROAD, NEAR JALLANDHAR BYE-PASS, OPPOSITE GREEN LAND PUBLIC SCHOOL. PIN: 141008. Valid upto: 31-Mar-2023',
      '{"district":"Ludhiana","promoter":"Spirit Global Constructions Pvt. Ltd. (Other than Individual)","address":"VILLAGE BHORA, MAIN G.T. ROAD, NEAR JALLANDHAR BYE-PASS, OPPOSITE GREEN LAND PUBLIC SCHOOL","pin_code":"141008","registration_date":"12-Apr-2018","valid_upto":"31-Mar-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PC0047: Motia Pacific Centre
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PC0047',
      'Motia Pacific Centre',
      'motia-pacific-centre',
      'active',
      'Promoter: MOTIA TOWNSHIP PVT LTD (Other than Individual). Address: MOTIA PACIFIC CENTRRE, VILLAGE KISHANPURA. PIN: 140603. Valid upto: 20-Mar-2021',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MOTIA TOWNSHIP PVT LTD (Other than Individual)","address":"MOTIA PACIFIC CENTRRE, VILLAGE KISHANPURA","pin_code":"140603","website":"www.motiazpacificcentre.com","registration_date":"28-Mar-2019","valid_upto":"20-Mar-2021"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PC0046: One City Hub (Formerly known as IREO-HUB)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PC0046',
      'One City Hub (Formerly known as IREO-HUB)',
      'one-city-hub-formerly-known-as-ireo-hub',
      'active',
      'Promoter: PUMA REALTORS PRIVATE LIMITED (Other than Individual). Address: Village Sukhparh and Sambalkhi, Sector 98. PIN: 140307. Valid upto: 31-Dec-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PUMA REALTORS PRIVATE LIMITED (Other than Individual)","address":"Village Sukhparh and Sambalkhi, Sector 98","pin_code":"140307","registration_date":"02-Apr-2018","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-LDH45-PR0299: PARZA CO-OPERATIVE HOUSE BUILDING SOCIETY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-LDH45-PR0299',
      'PARZA CO-OPERATIVE HOUSE BUILDING SOCIETY',
      'parza-co-operative-house-building-society',
      'active',
      'Promoter: THE PARJA CO OP HOUSE BUILDING SOCIETY LIMITED (Other than Individual). Address: SITE NO1, SECTOR 40 CHANDIGARH ROAD. PIN: 141001. Valid upto: 31-Dec-2018',
      '{"district":"Ludhiana","promoter":"THE PARJA CO OP HOUSE BUILDING SOCIETY LIMITED (Other than Individual)","address":"SITE NO1, SECTOR 40 CHANDIGARH ROAD","pin_code":"141001","registration_date":"27-Feb-2018","valid_upto":"31-Dec-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-ASR02-PR0361: AMRITSAR ONE
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-ASR02-PR0361',
      'AMRITSAR ONE',
      'amritsar-one',
      'active',
      'Promoter: ATM ESTATES PVT LTD (Other than Individual). Address: Near Shubham Enclave, G.T Road, Daburji. PIN: 143001. Valid upto: 30-Dec-2023',
      '{"district":"Amritsar","promoter":"ATM ESTATES PVT LTD (Other than Individual)","address":"Near Shubham Enclave, G.T Road, Daburji","pin_code":"143001","registration_date":"18-May-2018","valid_upto":"30-Dec-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-FGS17-PR0362: Taj Enclave
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-FGS17-PR0362',
      'Taj Enclave',
      'taj-enclave',
      'active',
      'Promoter: Disha Colonizers & Builders Pvt. Ltd (Other than Individual). Address: Village Madhofal, H.B No. 124, Opp. Lincolin college of law, Sirhind. PIN: 140407. Valid upto: 31-Dec-2018',
      '{"district":"Fatehgarh Sahib","promoter":"Disha Colonizers & Builders Pvt. Ltd (Other than Individual)","address":"Village Madhofal, H.B No. 124, Opp. Lincolin college of law, Sirhind","pin_code":"140407","registration_date":"23-May-2018","valid_upto":"31-Dec-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0096: SBP HOUSING PARK
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0096',
      'SBP HOUSING PARK',
      'sbp-housing-park',
      'active',
      'Promoter: SINGLA BUILDER AND PROMOTERS LIMITED (Other than Individual). Address: VILLAGE RONI, MC DERABASSI. PIN: 140603. Valid upto: 31-Mar-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SINGLA BUILDER AND PROMOTERS LIMITED (Other than Individual)","address":"VILLAGE RONI, MC DERABASSI","pin_code":"140603","registration_date":"15-Sep-2017","valid_upto":"31-Mar-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0347: Eco City 2 Extension
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0347',
      'Eco City 2 Extension',
      'eco-city-2-extension',
      'active',
      'Promoter: Greater Mohali Area Development Authority (GMADA) (Other than Individual). Address: Eco City 2 Extension, New Chandigarh. PIN: 140901. Valid upto: 31-Dec-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Greater Mohali Area Development Authority (GMADA) (Other than Individual)","address":"Eco City 2 Extension, New Chandigarh","pin_code":"140901","registration_date":"27-Apr-2018","valid_upto":"31-Dec-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0375: ROYALE GARDENS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0375',
      'ROYALE GARDENS',
      'royale-gardens',
      'active',
      'Promoter: ROYALE GARDNES (Other than Individual). Address: VILLAGE KARALA, ZIRAKPUR - BANUR HIGHWAY. PIN: 140603. Valid upto: 15-Mar-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ROYALE GARDNES (Other than Individual)","address":"VILLAGE KARALA, ZIRAKPUR - BANUR HIGHWAY","pin_code":"140603","registration_date":"18-Jul-2018","valid_upto":"15-Mar-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-RPR70-PR0366: Gobind Enclave Extension
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-RPR70-PR0366',
      'Gobind Enclave Extension',
      'gobind-enclave-extension',
      'active',
      'Promoter: Ropar Properties & Builders Pvt Ltd (Other than Individual). Address: Gobind Enclave Extension, H.B. No. 44, Near Nangal Chowk. PIN: 140001. Valid upto: 30-Jun-2020',
      '{"district":"Rupnagar (Ropar)","promoter":"Ropar Properties & Builders Pvt Ltd (Other than Individual)","address":"Gobind Enclave Extension, H.B. No. 44, Near Nangal Chowk","pin_code":"140001","website":"http://www.gobindvalley.com","registration_date":"21-Jun-2018","valid_upto":"30-Jun-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0310: Prestige Towers
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0310',
      'Prestige Towers',
      'prestige-towers',
      'active',
      'Promoter: Vera Developeres Pvt. Ltd. (Other than Individual). Address: Near TDI Club House, Sector 117. PIN: 160055. Valid upto: 31-Jul-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Vera Developeres Pvt. Ltd. (Other than Individual)","address":"Near TDI Club House, Sector 117","pin_code":"160055","website":"www.pregtigetowers.in","registration_date":"07-Mar-2018","valid_upto":"31-Jul-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0084: Sushma Crescent
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0084',
      'Sushma Crescent',
      'sushma-crescent',
      'active',
      'Promoter: Sushma Buildtech Limited (Other than Individual). Address: Village Gazipur - Kishanpura, Sushma Square, Dhakoli, Zirakpur. PIN: 140603. Valid upto: 29-Jul-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sushma Buildtech Limited (Other than Individual)","address":"Village Gazipur - Kishanpura, Sushma Square, Dhakoli, Zirakpur","pin_code":"140603","registration_date":"17-Oct-2017","valid_upto":"29-Jul-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR0358: THE GREEN COUNTY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR0358',
      'THE GREEN COUNTY',
      'the-green-county',
      'active',
      'Promoter: MILLENNIUM REAL ESTATE DEVELOPERS PVT LTD. (Other than Individual). Address: THE GREEN COUNTY, UNIVERSITY ROAD, LADHEWALI. PIN: 144009. Valid upto: 19-Feb-2023',
      '{"district":"Jalandhar","promoter":"MILLENNIUM REAL ESTATE DEVELOPERS PVT LTD. (Other than Individual)","address":"THE GREEN COUNTY, UNIVERSITY ROAD, LADHEWALI","pin_code":"144009","website":"www.thegreencounty.in","registration_date":"11-May-2018","valid_upto":"19-Feb-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0368: Aero City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0368',
      'Aero City',
      'aero-city-dup1',
      'active',
      'Promoter: Greater Mohali Area Development Authority (GMADA) (Other than Individual). Address: Aerocity. PIN: 140603. Valid upto: 31-Dec-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Greater Mohali Area Development Authority (GMADA) (Other than Individual)","address":"Aerocity","pin_code":"140603","registration_date":"06-Jul-2018","valid_upto":"31-Dec-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR0363: Elite City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR0363',
      'Elite City',
      'elite-city',
      'active',
      'Promoter: M.K Land Developers (Other than Individual). Address: Vill-Barsal & Vill-Udhopur. PIN: 144020. Valid upto: 31-Dec-2019',
      '{"district":"Jalandhar","promoter":"M.K Land Developers (Other than Individual)","address":"Vill-Barsal & Vill-Udhopur","pin_code":"144020","registration_date":"01-Jun-2018","valid_upto":"31-Dec-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0194: GBP Camellia
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0194',
      'GBP Camellia',
      'gbp-camellia',
      'active',
      'Promoter: GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: Village - Aujla, Tehsil-Kharar, SAS Nagar, Mohali.. PIN: 140301. Valid upto: 31-Dec-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"Village - Aujla, Tehsil-Kharar, SAS Nagar, Mohali.","pin_code":"140301","website":"www.gbpgroup.in","registration_date":"08-Nov-2017","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL34-PR0372: Shourya Greens (Residential Colony)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL34-PR0372',
      'Shourya Greens (Residential Colony)',
      'shourya-greens-residential-colony',
      'active',
      'Promoter: Shourya Towers Pvt. Ltd. (Other than Individual). Address: Adjoining Surya Enclave, Near trinity Collage, Amritsar by pass Road. PIN: 144009. Valid upto: 10-Oct-2022',
      '{"district":"Jalandhar","promoter":"Shourya Towers Pvt. Ltd. (Other than Individual)","address":"Adjoining Surya Enclave, Near trinity Collage, Amritsar by pass Road","pin_code":"144009","registration_date":"16-Jul-2018","valid_upto":"10-Oct-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SGR77-PR0371: NEW SANGRUR VALLEY
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SGR77-PR0371',
      'NEW SANGRUR VALLEY',
      'new-sangrur-valley',
      'active',
      'Promoter: Grewal Constructions Pvt. Ltd (Other than Individual). Address: Village Akoi, sangrur-Dhuri. PIN: 148001. Valid upto: 30-Dec-2018',
      '{"district":"Sangrur","promoter":"Grewal Constructions Pvt. Ltd (Other than Individual)","address":"Village Akoi, sangrur-Dhuri","pin_code":"148001","registration_date":"16-Jul-2018","valid_upto":"30-Dec-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-RPR70-PR0364: Sun City Extension II
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-RPR70-PR0364',
      'Sun City Extension II',
      'sun-city-extension-ii',
      'active',
      'Promoter: Ropar Properties & Builders Pvt Ltd (Other than Individual). Address: Sun City Extension II, Village Chhoti Haveli. PIN: 140001. Valid upto: 29-Jun-2020',
      '{"district":"Rupnagar (Ropar)","promoter":"Ropar Properties & Builders Pvt Ltd (Other than Individual)","address":"Sun City Extension II, Village Chhoti Haveli","pin_code":"140001","registration_date":"07-Jun-2018","valid_upto":"29-Jun-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0374: Golden Tone Cooperative House Building Society
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0374',
      'Golden Tone Cooperative House Building Society',
      'golden-tone-cooperative-house-building-society',
      'active',
      'Promoter: Golden Tone Cooperative House Building Society Ltd. (Other than Individual). Address: Plot No. 187, Sector 80, Mohali. PIN: 140308. Valid upto: 31-Aug-2018',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Golden Tone Cooperative House Building Society Ltd. (Other than Individual)","address":"Plot No. 187, Sector 80, Mohali","pin_code":"140308","registration_date":"17-Jul-2018","valid_upto":"31-Aug-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL65-PR0369: Parsvnath Castle Rajpura
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL65-PR0369',
      'Parsvnath Castle Rajpura',
      'parsvnath-castle-rajpura',
      'active',
      'Promoter: Parsvnath Developers Ltd (Other than Individual). Address: Village Dharia KM 216, G T Road Rajpura. PIN: 140401. Valid upto: 30-Sep-2020',
      '{"district":"Patiala","promoter":"Parsvnath Developers Ltd (Other than Individual)","address":"Village Dharia KM 216, G T Road Rajpura","pin_code":"140401","website":"http://www.parsvnath.com/","registration_date":"12-Sep-2018","valid_upto":"30-Sep-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-RPR70-PR0365: Urban Estate Anandpur Sahib
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-RPR70-PR0365',
      'Urban Estate Anandpur Sahib',
      'urban-estate-anandpur-sahib',
      'active',
      'Promoter: Greater Mohali Area Development Authority (GMADA) (Other than Individual). Address: Urban Estate, Village Dasgmesh Nagar. PIN: 140301. Valid upto: 31-Dec-2018',
      '{"district":"Rupnagar (Ropar)","promoter":"Greater Mohali Area Development Authority (GMADA) (Other than Individual)","address":"Urban Estate, Village Dasgmesh Nagar","pin_code":"140301","registration_date":"07-Jun-2018","valid_upto":"31-Dec-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0367: Uniworld City
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0367',
      'Uniworld City',
      'uniworld-city',
      'active',
      'Promoter: Unitech Limited (Other than Individual). Address: Sector 97, 106 & 107, At Mohali along Kharar Banur Road (Pb). PIN: 160043. Valid upto: 24-Nov-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Unitech Limited (Other than Individual)","address":"Sector 97, 106 & 107, At Mohali along Kharar Banur Road (Pb)","pin_code":"160043","website":"http://www.unitechgroup.com/townships/uniworld-city-mohali.asp","registration_date":"21-Jun-2018","valid_upto":"24-Nov-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0284: OMAXE GREENS Phase-II
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0284',
      'OMAXE GREENS Phase-II',
      'omaxe-greens-phase-ii',
      'active',
      'Promoter: OMAXE LIMITED (Other than Individual). Address: Village Jharmari, Tehsil Derabassi. PIN: 134007. Valid upto: 31-Dec-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"OMAXE LIMITED (Other than Individual)","address":"Village Jharmari, Tehsil Derabassi","pin_code":"134007","website":"www.omaxe.com","registration_date":"09-Feb-2018","valid_upto":"31-Dec-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0373: MANNAT FLOORS/ VENETIAN SPACES
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0373',
      'MANNAT FLOORS/ VENETIAN SPACES',
      'mannat-floors-venetian-spaces',
      'active',
      'Promoter: Manohar Infrastructure and Constructions Pvt Ltd (Other than Individual). Address: RKM CITY, SECTOR-112, LANDRAN. PIN: 140307. Valid upto: 31-Jul-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Manohar Infrastructure and Constructions Pvt Ltd (Other than Individual)","address":"RKM CITY, SECTOR-112, LANDRAN","pin_code":"140307","website":"https://www.manoharrealty.com/venetian-spaces/","registration_date":"16-Jul-2018","valid_upto":"31-Jul-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-PTL63-PR0357: GOKUL TOWERS
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-PTL63-PR0357',
      'GOKUL TOWERS',
      'gokul-towers',
      'active',
      'Promoter: GAZEBO CONSTRUCTIONS PRIVATE LIMITED (Other than Individual). Address: NEAR AYURVEDIC COLLEGE ,LOWER MALL PATIALA. PIN: 147001. Valid upto: 30-Jun-2018',
      '{"district":"Patiala","promoter":"GAZEBO CONSTRUCTIONS PRIVATE LIMITED (Other than Individual)","address":"NEAR AYURVEDIC COLLEGE ,LOWER MALL PATIALA","pin_code":"147001","registration_date":"10-May-2018","valid_upto":"30-Jun-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS79-PR0101: Leafstone Apartments
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS79-PR0101',
      'Leafstone Apartments',
      'leafstone-apartments',
      'active',
      'Promoter: MD BUILDERS & DEVELOPERS (Other than Individual). Address: HIGHLAND MARG , NABHA , ZIRAKPUR. PIN: 140603. Valid upto: 31-Jul-2019',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MD BUILDERS & DEVELOPERS (Other than Individual)","address":"HIGHLAND MARG , NABHA , ZIRAKPUR","pin_code":"140603","registration_date":"19-Sep-2017","valid_upto":"31-Jul-2019"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0333: Motia Blue Ridge
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0333',
      'Motia Blue Ridge',
      'motia-blue-ridge',
      'active',
      'Promoter: Citi Developers (Other than Individual). Address: MOTIA BLUE RIDGE ( ADJOINING SECTOR 20, PANHKULA, PEER MUCHALLA ZIRAKPUR. PIN: 140603. Valid upto: 30-Apr-2023',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Citi Developers (Other than Individual)","address":"MOTIA BLUE RIDGE ( ADJOINING SECTOR 20, PANHKULA, PEER MUCHALLA ZIRAKPUR","pin_code":"140603","website":"http://www.motiablueridge.com/","registration_date":"11-Apr-2018","valid_upto":"30-Apr-2023"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS80-PR0312: Vrindavan Gardens
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS80-PR0312',
      'Vrindavan Gardens',
      'vrindavan-gardens',
      'active',
      'Promoter: Vrindavan Gardens (Other than Individual). Address: Vrindavan Gardens, Vill Peermachhala. PIN: 140603. Valid upto: 31-Mar-2020',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Vrindavan Gardens (Other than Individual)","address":"Vrindavan Gardens, Vill Peermachhala","pin_code":"140603","registration_date":"25-Apr-2018","valid_upto":"31-Mar-2020"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0331: One City Hamlet-2 (Formerly known as HAMLET-2)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0331',
      'One City Hamlet-2 (Formerly known as HAMLET-2)',
      'one-city-hamlet-2-formerly-known-as-hamlet-2',
      'active',
      'Promoter: PUMA REALTORS PRIVATE LIMITED (Other than Individual). Address: Village Sukhparh and Sambalkhi, Sector 98. PIN: 160055. Valid upto: 31-Dec-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PUMA REALTORS PRIVATE LIMITED (Other than Individual)","address":"Village Sukhparh and Sambalkhi, Sector 98","pin_code":"160055","registration_date":"11-Apr-2018","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0319: One City Hamlet (Formerly known as IREO HAMLET)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0319',
      'One City Hamlet (Formerly known as IREO HAMLET)',
      'one-city-hamlet-formerly-known-as-ireo-hamlet',
      'active',
      'Promoter: PUMA REALTORS PRIVATE LIMITED (Other than Individual). Address: Sector 98. PIN: 140308. Valid upto: 31-Dec-2022',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PUMA REALTORS PRIVATE LIMITED (Other than Individual)","address":"Sector 98","pin_code":"140308","registration_date":"21-Mar-2018","valid_upto":"31-Dec-2022"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-SAS81-PR0322: One City Hamlet C-1 (Formerly known as Block C-1 part of Intergraded Township)
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-SAS81-PR0322',
      'One City Hamlet C-1 (Formerly known as Block C-1 part of Intergraded Township)',
      'one-city-hamlet-c-1-formerly-known-as-block-c-1-part-of-intergraded-township',
      'active',
      'Promoter: PUMA REALTORS PRIVATE LIMITED (Other than Individual). Address: Village Dholl, Sector 98. PIN: 140308. Valid upto: 30-Dec-2025',
      '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PUMA REALTORS PRIVATE LIMITED (Other than Individual)","address":"Village Dholl, Sector 98","pin_code":"140308","registration_date":"23-Mar-2018","valid_upto":"30-Dec-2025"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;

  -- PBRERA-JAL33-PR0202: Jalandhar Heights-1, Block No. 11,18,23,24, & 25
    INSERT INTO projects (tenant_id, rera_number, name, slug, status, description, metadata)
    VALUES (
      v_tenant_id,
      'PBRERA-JAL33-PR0202',
      'Jalandhar Heights-1, Block No. 11,18,23,24, & 25',
      'jalandhar-heights-1-block-no-11182324-25',
      'active',
      'Promoter: AGI INFRA LIMITED (Other than Individual). Address: VILLAGE PHOLRIWAL. PIN: 144022. Valid upto: 31-Mar-2018',
      '{"district":"Jalandhar","promoter":"AGI INFRA LIMITED (Other than Individual)","address":"VILLAGE PHOLRIWAL","pin_code":"144022","website":"www.agiinfra.com","registration_date":"10-Nov-2017","valid_upto":"31-Mar-2018"}'::jsonb
    )
    ON CONFLICT DO NOTHING;
    IF FOUND THEN
      v_inserted := v_inserted + 1;
    ELSE
      v_skipped := v_skipped + 1;
    END IF;


  RAISE NOTICE 'Chunk 6: % inserted, % skipped', v_inserted, v_skipped;
END $$;
