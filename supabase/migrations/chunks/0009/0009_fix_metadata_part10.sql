-- 0009_fix_metadata_part10.sql
-- Projects 1801 to 2000
DO $$
DECLARE
  v_tenant_id uuid;
  v_rera text;
  v_meta jsonb;
  v_desc text;
  v_updated int := 0;
BEGIN
  SELECT id INTO v_tenant_id FROM tenants WHERE slug = 'newchandigarh';
  IF v_tenant_id IS NULL THEN
    RAISE EXCEPTION 'Tenant newchandigarh not found';
  END IF;

  v_rera := 'PBRERA-SAS80-PR0599';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"WWICS ESTATES PRIVATE LIMITED (Other than Individual)","address":"Village Karoran, Near PEC Chandigarh","pin_code":"160103","registration_date":"04-Mar-2020","valid_upto":"31-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: WWICS ESTATES PRIVATE LIMITED (Other than Individual). Address: Village Karoran, Near PEC Chandigarh. PIN: 160103. Valid upto: 31-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR0597';
  v_meta := '{"district":"Ludhiana","promoter":"Harpreet  Singh  Khatra (Individual)","address":"MACHIWARA ROAD,, SAMRALA, LUDHIANA","pin_code":"141114","registration_date":"02-Mar-2020","valid_upto":"10-Nov-2024"}'::jsonb;
  v_desc := 'Promoter: Harpreet  Singh  Khatra (Individual). Address: MACHIWARA ROAD,, SAMRALA, LUDHIANA. PIN: 141114. Valid upto: 10-Nov-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR0596';
  v_meta := '{"district":"Bathinda","promoter":"Kanhiya Real Estate & Infrastructure (Other than Individual)","address":"Green Palace Road, Bathinda","pin_code":"151001","registration_date":"24-Feb-2020","valid_upto":"30-Oct-2021"}'::jsonb;
  v_desc := 'Promoter: Kanhiya Real Estate & Infrastructure (Other than Individual). Address: Green Palace Road, Bathinda. PIN: 151001. Valid upto: 30-Oct-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR0593';
  v_meta := '{"district":"Bathinda","promoter":"PEE JAY PROMOTERS (Other than Individual)","address":"Near Urban Estate, Phase 4 & 5, Bathinda","pin_code":"151001","registration_date":"17-Feb-2020","valid_upto":"31-Mar-2024"}'::jsonb;
  v_desc := 'Promoter: PEE JAY PROMOTERS (Other than Individual). Address: Near Urban Estate, Phase 4 & 5, Bathinda. PIN: 151001. Valid upto: 31-Mar-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0115';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Artique Infratech (Other than Individual)","address":"Hadbast No. 42, Village Ramgarh Budha, M.C. Zirakpur","pin_code":"140603","registration_date":"17-Feb-2020","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: Artique Infratech (Other than Individual). Address: Hadbast No. 42, Village Ramgarh Budha, M.C. Zirakpur. PIN: 140603. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SBS83-PR0595';
  v_meta := '{"district":"Shahid Bhagat Singh Nagar (Nawanshahr)","promoter":"Rainbow Developers & Promoters (Other than Individual)","address":"Gurdit Singh Nagar, Banga - Garshankar road, Banga","pin_code":"144505","registration_date":"17-Feb-2020","valid_upto":"30-Jun-2020"}'::jsonb;
  v_desc := 'Promoter: Rainbow Developers & Promoters (Other than Individual). Address: Gurdit Singh Nagar, Banga - Garshankar road, Banga. PIN: 144505. Valid upto: 30-Jun-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT39-PR0588';
  v_meta := '{"district":"Kapurthala","promoter":"KAPURTHALA IMPROVEMENT TRUST (Other than Individual)","address":"CIRCULAR ROAD, KAPURTHALA","pin_code":"144601","registration_date":"12-Feb-2020","valid_upto":"31-Dec-2024"}'::jsonb;
  v_desc := 'Promoter: KAPURTHALA IMPROVEMENT TRUST (Other than Individual). Address: CIRCULAR ROAD, KAPURTHALA. PIN: 144601. Valid upto: 31-Dec-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR0591';
  v_meta := '{"district":"Patiala","promoter":"B H PROPERTIES PVT LTD (Other than Individual)","address":"ITBP - Sanour Road, Village Chaura, Patiala","pin_code":"147001","registration_date":"12-Feb-2020","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: B H PROPERTIES PVT LTD (Other than Individual). Address: ITBP - Sanour Road, Village Chaura, Patiala. PIN: 147001. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL19-PR0590';
  v_meta := '{"district":"Fazilka","promoter":"RIDHI SIDHI ESTATE (Other than Individual)","address":"Shri Ganga Nagar Road, Village Alamgarh, Tehsil Abohar, Distt. Fazilka","pin_code":"152116","registration_date":"12-Feb-2020","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: RIDHI SIDHI ESTATE (Other than Individual). Address: Shri Ganga Nagar Road, Village Alamgarh, Tehsil Abohar, Distt. Fazilka. PIN: 152116. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0592';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Dream Homes  (Other than Individual)","address":"REHMAT HOMES, VILLAGE KISHANPURA, MC ZIRAKPUR","pin_code":"140603","registration_date":"12-Feb-2020","valid_upto":"31-Mar-2022"}'::jsonb;
  v_desc := 'Promoter: Dream Homes  (Other than Individual). Address: REHMAT HOMES, VILLAGE KISHANPURA, MC ZIRAKPUR. PIN: 140603. Valid upto: 31-Mar-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL34-PR0589';
  v_meta := '{"district":"Jalandhar","promoter":"J.K. Builders & Promoters (Other than Individual)","address":"Village Nandanpur, Waryana-Nandanpur Road, Near Panchyat Colony, Nandanpur","pin_code":"144021","registration_date":"12-Feb-2020","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: J.K. Builders & Promoters (Other than Individual). Address: Village Nandanpur, Waryana-Nandanpur Road, Near Panchyat Colony, Nandanpur. PIN: 144021. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0587';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Mittal Township Private Limited (Other than Individual)","address":"Village Chajumajra, kharar mohali","pin_code":"140602","registration_date":"10-Feb-2020","valid_upto":"30-Apr-2020"}'::jsonb;
  v_desc := 'Promoter: Mittal Township Private Limited (Other than Individual). Address: Village Chajumajra, kharar mohali. PIN: 140602. Valid upto: 30-Apr-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL61-PM0149';
  v_meta := '{"district":"Patiala","promoter":"WILLIAM RESORTS AND DEVELOPERS LTD (Other than Individual)","address":"VILLAGE TRIPURI SEONA ROAD PATIALA","pin_code":"147001","registration_date":"10-Feb-2020","valid_upto":"30-Jun-2020"}'::jsonb;
  v_desc := 'Promoter: WILLIAM RESORTS AND DEVELOPERS LTD (Other than Individual). Address: VILLAGE TRIPURI SEONA ROAD PATIALA. PIN: 147001. Valid upto: 30-Jun-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR0585';
  v_meta := '{"district":"Ludhiana","promoter":"Dhandra Colonizers & Builders Private Limited (Other than Individual)","address":"Village Dhandra, Tehsil and District Ludhiana","pin_code":"141116","registration_date":"10-Feb-2020","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: Dhandra Colonizers & Builders Private Limited (Other than Individual). Address: Village Dhandra, Tehsil and District Ludhiana. PIN: 141116. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PR0586';
  v_meta := '{"district":"Amritsar","promoter":"BLUE CITY TOWNSHIP & COLONISERS PRIVATE LIMITED (Other than Individual)","address":"Village Meerankot Khurd, Amritsar","pin_code":"143001","registration_date":"07-Feb-2020","valid_upto":"31-Aug-2020"}'::jsonb;
  v_desc := 'Promoter: BLUE CITY TOWNSHIP & COLONISERS PRIVATE LIMITED (Other than Individual). Address: Village Meerankot Khurd, Amritsar. PIN: 143001. Valid upto: 31-Aug-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR0584';
  v_meta := '{"district":"Patiala","promoter":"BH PROPERTIES PRIVATE LIMITED (Other than Individual)","address":"Village Sular, Dakala Road, Patiala","pin_code":"147001","registration_date":"07-Feb-2020","valid_upto":"30-Jun-2022"}'::jsonb;
  v_desc := 'Promoter: BH PROPERTIES PRIVATE LIMITED (Other than Individual). Address: Village Sular, Dakala Road, Patiala. PIN: 147001. Valid upto: 30-Jun-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0113';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Maxxon Space Builders (Other than Individual)","address":"Chandigarh - Ambala National Highway, Village  Singhpura, Zirakpur","pin_code":"140307","registration_date":"04-Feb-2020","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: Maxxon Space Builders (Other than Individual). Address: Chandigarh - Ambala National Highway, Village  Singhpura, Zirakpur. PIN: 140307. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-GSP25-PR0574';
  v_meta := '{"district":"Gurdaspur","promoter":"Usmanpur Finance Pvt. Ltd (Other than Individual)","address":"Gurdaspur Road, Batala, Gurdaspur","pin_code":"143505","registration_date":"05-Feb-2020","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: Usmanpur Finance Pvt. Ltd (Other than Individual). Address: Gurdaspur Road, Batala, Gurdaspur. PIN: 143505. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0579';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GREEN HOME BUILDERS (Other than Individual)","address":"Village Dayalpura, MC Zirakpur","pin_code":"140603","registration_date":"04-Feb-2020","valid_upto":"31-Mar-2024"}'::jsonb;
  v_desc := 'Promoter: GREEN HOME BUILDERS (Other than Individual). Address: Village Dayalpura, MC Zirakpur. PIN: 140603. Valid upto: 31-Mar-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0580';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Ltd (Other than Individual)","address":"Village Jandpur, Hasanpur & Manana, Sector 123, Sahibzada Ajit Singh Nagar (Mohali)","pin_code":"140103","registration_date":"06-Feb-2020","valid_upto":"30-Sep-2024"}'::jsonb;
  v_desc := 'Promoter: Bajwa Developers Ltd (Other than Individual). Address: Village Jandpur, Hasanpur & Manana, Sector 123, Sahibzada Ajit Singh Nagar (Mohali). PIN: 140103. Valid upto: 30-Sep-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0582';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Ltd (Other than Individual)","address":"Near Desu Majra, Near sunny enclave","pin_code":"140301","registration_date":"06-Feb-2020","valid_upto":"31-Mar-2022"}'::jsonb;
  v_desc := 'Promoter: Bajwa Developers Ltd (Other than Individual). Address: Near Desu Majra, Near sunny enclave. PIN: 140301. Valid upto: 31-Mar-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0581';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Ltd (Other than Individual)","address":"Village Jandpur, Sihanpur and Hasanpur, Sector - 123, Sahibzada Ajit Singh Nagar (Mohali)","pin_code":"140603","registration_date":"06-Feb-2020","valid_upto":"31-Oct-2021"}'::jsonb;
  v_desc := 'Promoter: Bajwa Developers Ltd (Other than Individual). Address: Village Jandpur, Sihanpur and Hasanpur, Sector - 123, Sahibzada Ajit Singh Nagar (Mohali). PIN: 140603. Valid upto: 31-Oct-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MKT57-PR0576';
  v_meta := '{"district":"Muktsar","promoter":"SUN PARK INFRASTRUCTURE PVT LTD (Other than Individual)","address":"Malout Seikhu Road (Revenue Estate Village Seikhu), Malout, Muktsar","pin_code":"152107","registration_date":"31-Jan-2020","valid_upto":"21-Feb-2020"}'::jsonb;
  v_desc := 'Promoter: SUN PARK INFRASTRUCTURE PVT LTD (Other than Individual). Address: Malout Seikhu Road (Revenue Estate Village Seikhu), Malout, Muktsar. PIN: 152107. Valid upto: 21-Feb-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0577';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Royale Mansions (Other than Individual)","address":"Village Peermuchalla, Zirakpur","pin_code":"140603","registration_date":"31-Jan-2020","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Royale Mansions (Other than Individual). Address: Village Peermuchalla, Zirakpur. PIN: 140603. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0578';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AV DEVELOPERS (Other than Individual)","address":"Villgae Chhajjumajra, Kharar","pin_code":"160082","registration_date":"31-Jan-2020","valid_upto":"30-Apr-2022"}'::jsonb;
  v_desc := 'Promoter: AV DEVELOPERS (Other than Individual). Address: Villgae Chhajjumajra, Kharar. PIN: 160082. Valid upto: 30-Apr-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR0573';
  v_meta := '{"district":"Patiala","promoter":"Punj Land Estate Pvt.Ltd (Other than Individual)","address":"Bhupindra Road, Phatak No. 22, Patiala","pin_code":"147001","registration_date":"21-Jan-2020","valid_upto":"30-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: Punj Land Estate Pvt.Ltd (Other than Individual). Address: Bhupindra Road, Phatak No. 22, Patiala. PIN: 147001. Valid upto: 30-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0110';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ESS GEE REALTORS (Other than Individual)","address":"OUTSIDE FRIENDS COLONY, AMB-CHD HIGHWAY, ZIRAKPUR","pin_code":"140603","registration_date":"21-Jan-2020","valid_upto":"30-Jun-2022"}'::jsonb;
  v_desc := 'Promoter: ESS GEE REALTORS (Other than Individual). Address: OUTSIDE FRIENDS COLONY, AMB-CHD HIGHWAY, ZIRAKPUR. PIN: 140603. Valid upto: 30-Jun-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR0575';
  v_meta := '{"district":"Ludhiana","promoter":"Malhotra Land Developers and Colonisers Private Limited (Other than Individual)","address":"Village Bulara, Hadbast No. 265, Tehsil Ludhiana","pin_code":"141001","registration_date":"21-Jan-2020","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Malhotra Land Developers and Colonisers Private Limited (Other than Individual). Address: Village Bulara, Hadbast No. 265, Tehsil Ludhiana. PIN: 141001. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0111';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SAI ASSOCIATES (Other than Individual)","address":"Village Nagla, Zirakpur","pin_code":"140603","registration_date":"22-Jan-2020","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: SAI ASSOCIATES (Other than Individual). Address: Village Nagla, Zirakpur. PIN: 140603. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PI0009';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sunny Lovely Developers (Other than Individual)","address":"Village Dhurali and Dehri Sector-102-A, S.A.S Nagar, Mohali.","pin_code":"160071","registration_date":"16-Jan-2020","valid_upto":"01-Dec-2024"}'::jsonb;
  v_desc := 'Promoter: Sunny Lovely Developers (Other than Individual). Address: Village Dhurali and Dehri Sector-102-A, S.A.S Nagar, Mohali.. PIN: 160071. Valid upto: 01-Dec-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0569';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gillco Developers and Builders Pvt. Ltd. (Other than Individual)","address":"Sector 127, Kharar, Sahibzada Ajit Singh Nagar (Mohali)","pin_code":"140301","website":"https://www.gillcogroup.com","registration_date":"15-Jan-2020","valid_upto":"19-May-2021"}'::jsonb;
  v_desc := 'Promoter: Gillco Developers and Builders Pvt. Ltd. (Other than Individual). Address: Sector 127, Kharar, Sahibzada Ajit Singh Nagar (Mohali). PIN: 140301. Valid upto: 19-May-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0570';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Shiwalik Site Planners Private Limited (Other than Individual)","address":"Sector-125 Vill Jhungian Kharar, Greater Mohali  Punjab","pin_code":"140301","registration_date":"15-Jan-2020","valid_upto":"30-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Shiwalik Site Planners Private Limited (Other than Individual). Address: Sector-125 Vill Jhungian Kharar, Greater Mohali  Punjab. PIN: 140301. Valid upto: 30-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0571';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Shiwalik Site Planners Private Limited (Other than Individual)","address":"Sector-125,GreaterMohali","pin_code":"140301","registration_date":"15-Jan-2020","valid_upto":"30-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Shiwalik Site Planners Private Limited (Other than Individual). Address: Sector-125,GreaterMohali. PIN: 140301. Valid upto: 30-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR0551';
  v_meta := '{"district":"Patiala","promoter":"Bajwa Developers Limited (Other than Individual)","address":"Near DMW Colony, H.B. No. 32, Village Rasulpur Siadan, Patiala","pin_code":"147001","registration_date":"09-Dec-2019","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: Bajwa Developers Limited (Other than Individual). Address: Near DMW Colony, H.B. No. 32, Village Rasulpur Siadan, Patiala. PIN: 147001. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR0548';
  v_meta := '{"district":"Ludhiana","promoter":"Ireo Waterfront Pvt Ltd (Other than Individual)","address":"Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.","pin_code":"141001","website":"www.ireowaterfont.com","registration_date":"29-Nov-2019","valid_upto":"31-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: Ireo Waterfront Pvt Ltd (Other than Individual). Address: Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.. PIN: 141001. Valid upto: 31-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0568';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"JOY HOMES (Other than Individual)","address":"Plots in Block A Wave Estate Sector 85 Mohali","pin_code":"140308","registration_date":"10-Jan-2020","valid_upto":"31-Dec-2024"}'::jsonb;
  v_desc := 'Promoter: JOY HOMES (Other than Individual). Address: Plots in Block A Wave Estate Sector 85 Mohali. PIN: 140308. Valid upto: 31-Dec-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0108';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PRIMEGATE DEVELOPERS (INDIA) (Other than Individual)","address":"PR-7, Aerocity Road, Village Singhpura, Zirakpur","pin_code":"140603","registration_date":"03-Jan-2020","valid_upto":"30-Sep-2023"}'::jsonb;
  v_desc := 'Promoter: PRIMEGATE DEVELOPERS (INDIA) (Other than Individual). Address: PR-7, Aerocity Road, Village Singhpura, Zirakpur. PIN: 140603. Valid upto: 30-Sep-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0561';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Universal Infrastructure Company Private Limited (Other than Individual)","address":"C/o JTPL City, Landran Road, Kharar, Sector - 115, Sahibzada Ajit Singh Nagar (Mohali)","pin_code":"140301","registration_date":"03-Jan-2020","valid_upto":"30-Jul-2023"}'::jsonb;
  v_desc := 'Promoter: Universal Infrastructure Company Private Limited (Other than Individual). Address: C/o JTPL City, Landran Road, Kharar, Sector - 115, Sahibzada Ajit Singh Nagar (Mohali). PIN: 140301. Valid upto: 30-Jul-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0566';
  v_meta := '{"district":"Jalandhar","promoter":"A.S.K builders pvt ltd (Other than Individual)","address":"sahib estate ,village usmanpur & village dhanal","pin_code":"144026","registration_date":"07-Jan-2020","valid_upto":"07-Nov-2021"}'::jsonb;
  v_desc := 'Promoter: A.S.K builders pvt ltd (Other than Individual). Address: sahib estate ,village usmanpur & village dhanal. PIN: 144026. Valid upto: 07-Nov-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL61-PC0109';
  v_meta := '{"district":"Patiala","promoter":"William Resorts and Developers Limited (Other than Individual)","address":"Bhadson Road, Sidhuwal, Dudhan Kalan, Patiala","pin_code":"147001","registration_date":"07-Jan-2020","valid_upto":"30-Jun-2020"}'::jsonb;
  v_desc := 'Promoter: William Resorts and Developers Limited (Other than Individual). Address: Bhadson Road, Sidhuwal, Dudhan Kalan, Patiala. PIN: 147001. Valid upto: 30-Jun-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR73-PR0565';
  v_meta := '{"district":"Sangrur","promoter":"SATISH KUMAR BHALLA (Individual)","address":"DHURI BYPASS ROAD SANGRUR","pin_code":"148024","registration_date":"07-Jan-2020","valid_upto":"30-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: SATISH KUMAR BHALLA (Individual). Address: DHURI BYPASS ROAD SANGRUR. PIN: 148024. Valid upto: 30-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR0567';
  v_meta := '{"district":"Ludhiana","promoter":"MGH Colonizers And Builders Private Limited (Other than Individual)","address":"Village Baloke, Tehsil and District, Ludhiana.","pin_code":"141001","registration_date":"07-Jan-2020","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: MGH Colonizers And Builders Private Limited (Other than Individual). Address: Village Baloke, Tehsil and District, Ludhiana.. PIN: 141001. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0564';
  v_meta := '{"district":"Ludhiana","promoter":"MGH Colonizers And Builders Private Limited (Other than Individual)","address":"Green City-1, Dhandra Road,, Ludhiana","pin_code":"141013","registration_date":"07-Jan-2020","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: MGH Colonizers And Builders Private Limited (Other than Individual). Address: Green City-1, Dhandra Road,, Ludhiana. PIN: 141013. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0563';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe City, Mullanpur, Phase - 3D, Sahibzada Ajit Singh Nagar (Mohali)","pin_code":"140901","website":"www.omaxe.com","registration_date":"24-Dec-2019","valid_upto":"28-Feb-2023"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe City, Mullanpur, Phase - 3D, Sahibzada Ajit Singh Nagar (Mohali). PIN: 140901. Valid upto: 28-Feb-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-GSP25-PR0562';
  v_meta := '{"district":"Gurdaspur","promoter":"USMANPUR FINANCE PRIVATE LIMITED (Other than Individual)","address":"Batala-Gurdaspur Road, Village Qilla Tek Singh and Kandial, Batala, Gurdaspur","pin_code":"143507","registration_date":"24-Dec-2019","valid_upto":"22-Nov-2021"}'::jsonb;
  v_desc := 'Promoter: USMANPUR FINANCE PRIVATE LIMITED (Other than Individual). Address: Batala-Gurdaspur Road, Village Qilla Tek Singh and Kandial, Batala, Gurdaspur. PIN: 143507. Valid upto: 22-Nov-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI10-PC0107';
  v_meta := '{"district":"Bathinda","promoter":"HOME DEVELOPERS (Other than Individual)","address":"Village rampura barnala Road, Bathinda","pin_code":"151103","registration_date":"24-Dec-2019","valid_upto":"02-Aug-2023"}'::jsonb;
  v_desc := 'Promoter: HOME DEVELOPERS (Other than Individual). Address: Village rampura barnala Road, Bathinda. PIN: 151103. Valid upto: 02-Aug-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0557';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"K S INFRACON PVT. LTD. (Other than Individual)","address":"Village. Peermuchalla Tehsil Zirakpur,, SAS Nagar, Punjab","pin_code":"140603","registration_date":"16-Dec-2019","valid_upto":"04-Sep-2019"}'::jsonb;
  v_desc := 'Promoter: K S INFRACON PVT. LTD. (Other than Individual). Address: Village. Peermuchalla Tehsil Zirakpur,, SAS Nagar, Punjab. PIN: 140603. Valid upto: 04-Sep-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR0559';
  v_meta := '{"district":"Patiala","promoter":"William Resorts And Developers Limited (Other than Individual)","address":"Village-Noorkherian","pin_code":"147002","registration_date":"16-Dec-2019","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: William Resorts And Developers Limited (Other than Individual). Address: Village-Noorkherian. PIN: 147002. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI10-PM0147';
  v_meta := '{"district":"Bathinda","promoter":"Bhagwati Colonisers Pvt Ltd (Other than Individual)","address":"Rampura, Tehsil Phul, Bathinda","pin_code":"151001","registration_date":"10-Dec-2019","valid_upto":"30-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Bhagwati Colonisers Pvt Ltd (Other than Individual). Address: Rampura, Tehsil Phul, Bathinda. PIN: 151001. Valid upto: 30-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR0553';
  v_meta := '{"district":"Bathinda","promoter":"Housefed Punjab Chandigarh (Other than Individual)","address":"Cooperative Housing Complex Bhatinda","pin_code":"151004","registration_date":"10-Dec-2019","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Housefed Punjab Chandigarh (Other than Individual). Address: Cooperative Housing Complex Bhatinda. PIN: 151004. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PM0148';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jagtar Singh Bhatti (Individual)","address":"Lake View, Village Kishanpura, MC Zirakpur","pin_code":"160104","registration_date":"12-Dec-2019","valid_upto":"30-Sep-2024"}'::jsonb;
  v_desc := 'Promoter: Jagtar Singh Bhatti (Individual). Address: Lake View, Village Kishanpura, MC Zirakpur. PIN: 160104. Valid upto: 30-Sep-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0556';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GILLCO DEVELOPERS AND BUILDERS PVT LTD (Other than Individual)","address":"Gillco Valley, Village Santemajra, Tehsil Kharar","pin_code":"140301","website":"https://www.gillcogroup.com","registration_date":"12-Dec-2019","valid_upto":"30-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: GILLCO DEVELOPERS AND BUILDERS PVT LTD (Other than Individual). Address: Gillco Valley, Village Santemajra, Tehsil Kharar. PIN: 140301. Valid upto: 30-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTH08-PR0549';
  v_meta := '{"district":"Bathinda","promoter":"Walia Projects Pvt.Ltd (Other than Individual)","address":"LAL Singh Nagar","pin_code":"151001","registration_date":"27-Nov-2019","valid_upto":"30-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Walia Projects Pvt.Ltd (Other than Individual). Address: LAL Singh Nagar. PIN: 151001. Valid upto: 30-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PR0550';
  v_meta := '{"district":"Amritsar","promoter":"PARMINDER  SINGH (Individual)","address":"Village Gumtala, Near Bye Pass Road","pin_code":"143008","registration_date":"27-Nov-2019","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: PARMINDER  SINGH (Individual). Address: Village Gumtala, Near Bye Pass Road. PIN: 143008. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0546';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Artique INfratech (Other than Individual)","address":"Village Ramgarh Bhudha under MC zirakpur","pin_code":"140603","registration_date":"21-Nov-2019","valid_upto":"30-Aug-2023"}'::jsonb;
  v_desc := 'Promoter: Artique INfratech (Other than Individual). Address: Village Ramgarh Bhudha under MC zirakpur. PIN: 140603. Valid upto: 30-Aug-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0545';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sbp shinestar private limited (Other than Individual)","address":"Village Chajjumajra, Sector-126, Kharar, Sahibzada Ajit Singh Nagar (Mohali)","pin_code":"140301","website":"www.sbpgroup.in","registration_date":"21-Nov-2019","valid_upto":"31-Mar-2024"}'::jsonb;
  v_desc := 'Promoter: Sbp shinestar private limited (Other than Individual). Address: Village Chajjumajra, Sector-126, Kharar, Sahibzada Ajit Singh Nagar (Mohali). PIN: 140301. Valid upto: 31-Mar-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0542';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"K S INFRACON PVT. LTD. (Other than Individual)","address":"ROSEWOOD ZRK Village- Nabha, M.C.Zirakpur","pin_code":"140301","registration_date":"18-Nov-2019","valid_upto":"31-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: K S INFRACON PVT. LTD. (Other than Individual). Address: ROSEWOOD ZRK Village- Nabha, M.C.Zirakpur. PIN: 140301. Valid upto: 31-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR0544';
  v_meta := '{"district":"Ludhiana","promoter":"MALHOTRA LAND DEVELOPERS & COLONISERS PVT LTD (Other than Individual)","address":"Village Bilga, Hadbast No. 229, Tehsil Sahnewal, Ludhiana","pin_code":"141001","registration_date":"20-Nov-2019","valid_upto":"30-Sep-2022"}'::jsonb;
  v_desc := 'Promoter: MALHOTRA LAND DEVELOPERS & COLONISERS PVT LTD (Other than Individual). Address: Village Bilga, Hadbast No. 229, Tehsil Sahnewal, Ludhiana. PIN: 141001. Valid upto: 30-Sep-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0541';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Vera Developers Private Limited (Other than Individual)","address":"old Kalka Road, Park Street, Near Patiala Chowk, ZIrakpur","pin_code":"140603","website":"www.goldmark.com","registration_date":"18-Nov-2019","valid_upto":"31-Dec-2025"}'::jsonb;
  v_desc := 'Promoter: Vera Developers Private Limited (Other than Individual). Address: old Kalka Road, Park Street, Near Patiala Chowk, ZIrakpur. PIN: 140603. Valid upto: 31-Dec-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0543';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ATS Estates Private Limited (Other than Individual)","address":"Village Madhopur, Dera Bassi, Sahibzada Ajit Singh Nagar (Mohali)","pin_code":"140507","registration_date":"18-Nov-2019","valid_upto":"24-Oct-2024"}'::jsonb;
  v_desc := 'Promoter: ATS Estates Private Limited (Other than Individual). Address: Village Madhopur, Dera Bassi, Sahibzada Ajit Singh Nagar (Mohali). PIN: 140507. Valid upto: 24-Oct-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0103';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CENTRAL INFRADEVELOPERS (Other than Individual)","address":"Villlage Shingpura, SUB TEH. ZIRAKPUR","pin_code":"140603","registration_date":"18-Nov-2019","valid_upto":"30-Jul-2023"}'::jsonb;
  v_desc := 'Promoter: CENTRAL INFRADEVELOPERS (Other than Individual). Address: Villlage Shingpura, SUB TEH. ZIRAKPUR. PIN: 140603. Valid upto: 30-Jul-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0104';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"TDI PARK STREET, 200 FEET INTERNATIONAL AIRPORT ROAD SECTOR 118 TDI CITY 1","pin_code":"140301","registration_date":"18-Nov-2019","valid_upto":"25-Feb-2025"}'::jsonb;
  v_desc := 'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: TDI PARK STREET, 200 FEET INTERNATIONAL AIRPORT ROAD SECTOR 118 TDI CITY 1. PIN: 140301. Valid upto: 25-Feb-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR77-PR0538';
  v_meta := '{"district":"Sangrur","promoter":"Harinder  Singh Grewal (Individual)","address":"Rampura Road, Sangrur","pin_code":"148001","registration_date":"31-Oct-2019","valid_upto":"30-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: Harinder  Singh Grewal (Individual). Address: Rampura Road, Sangrur. PIN: 148001. Valid upto: 30-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0102';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Chandigarh Builders & Promoters (Other than Individual)","address":"VILLAGE RAMGARH, BHUDDA, ZIRAKPUR","pin_code":"140603","registration_date":"06-Nov-2019","valid_upto":"30-Jun-2024"}'::jsonb;
  v_desc := 'Promoter: Chandigarh Builders & Promoters (Other than Individual). Address: VILLAGE RAMGARH, BHUDDA, ZIRAKPUR. PIN: 140603. Valid upto: 30-Jun-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0101';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Remigate Buildestates (India) Private Limited (Other than Individual)","address":"FOOD COURT SITE NO.04, SECTOR-62, S.A.S NAGAR","pin_code":"160062","registration_date":"01-Nov-2019","valid_upto":"31-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: Remigate Buildestates (India) Private Limited (Other than Individual). Address: FOOD COURT SITE NO.04, SECTOR-62, S.A.S NAGAR. PIN: 160062. Valid upto: 31-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR03-PR0539';
  v_meta := '{"district":"Amritsar","promoter":"HARINDER   SINGH (Individual)","address":"Village Mahal and Khairabad, Amritsar","pin_code":"143001","registration_date":"31-Oct-2019","valid_upto":"19-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: HARINDER   SINGH (Individual). Address: Village Mahal and Khairabad, Amritsar. PIN: 143001. Valid upto: 19-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0535';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CENTRAL INFRADEVELOPERS (Other than Individual)","address":"CENTRAL TOWN, NAGLA ROAD, NEAR MANAV MANGAL SMART SCHOOL ZIRAKPUR, VILL. NAGLA, SUB TEH, ZIRAKPUR","pin_code":"140603","registration_date":"25-Oct-2019","valid_upto":"30-Jul-2023"}'::jsonb;
  v_desc := 'Promoter: CENTRAL INFRADEVELOPERS (Other than Individual). Address: CENTRAL TOWN, NAGLA ROAD, NEAR MANAV MANGAL SMART SCHOOL ZIRAKPUR, VILL. NAGLA, SUB TEH, ZIRAKPUR. PIN: 140603. Valid upto: 30-Jul-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0536';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AVENUE BUILDERS AND PROMOTORS (Other than Individual)","address":"Block -F2, wave Estate, Sector -85","pin_code":"140308","website":"www.theparadiseindia.com","registration_date":"25-Oct-2019","valid_upto":"01-Oct-2022"}'::jsonb;
  v_desc := 'Promoter: AVENUE BUILDERS AND PROMOTORS (Other than Individual). Address: Block -F2, wave Estate, Sector -85. PIN: 140308. Valid upto: 01-Oct-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0100';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KCB INFRA (Other than Individual)","address":"Sector 62, SAS Nagar, Mohali","pin_code":"160062","registration_date":"04-Oct-2019","valid_upto":"30-Sep-2024"}'::jsonb;
  v_desc := 'Promoter: KCB INFRA (Other than Individual). Address: Sector 62, SAS Nagar, Mohali. PIN: 160062. Valid upto: 30-Sep-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR03-PR0527';
  v_meta := '{"district":"Amritsar","promoter":"VEER COLONISERS AND BUILDERS PVT. LTD. (Other than Individual)","address":"Village Naushehra, Majitha Road, Amritsar-2","pin_code":"143001","registration_date":"04-Oct-2019","valid_upto":"31-Aug-2024"}'::jsonb;
  v_desc := 'Promoter: VEER COLONISERS AND BUILDERS PVT. LTD. (Other than Individual). Address: Village Naushehra, Majitha Road, Amritsar-2. PIN: 143001. Valid upto: 31-Aug-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0528';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gurpreet Developers and Promoters Pvt. ltd. (Other than Individual)","address":"modern valley, near village khanpur","pin_code":"140301","website":"www.gdphomes.in","registration_date":"04-Oct-2019","valid_upto":"09-Aug-2024"}'::jsonb;
  v_desc := 'Promoter: Gurpreet Developers and Promoters Pvt. ltd. (Other than Individual). Address: modern valley, near village khanpur. PIN: 140301. Valid upto: 09-Aug-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0099';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"CP SQUARE, TDI CITY-I SECTOR 117 INTERNATIONAL AIRPORT ROAD","pin_code":"140301","registration_date":"24-Sep-2019","valid_upto":"30-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: CP SQUARE, TDI CITY-I SECTOR 117 INTERNATIONAL AIRPORT ROAD. PIN: 140301. Valid upto: 30-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-GSP27-PR0525';
  v_meta := '{"district":"Gurdaspur","promoter":"GURDASPUR IMPROVEMENT TRUST (Other than Individual)","address":"Scheme no 7, Amritsar pathankot bypass road","pin_code":"143521","registration_date":"27-Sep-2019","valid_upto":"31-Dec-2024"}'::jsonb;
  v_desc := 'Promoter: GURDASPUR IMPROVEMENT TRUST (Other than Individual). Address: Scheme no 7, Amritsar pathankot bypass road. PIN: 143521. Valid upto: 31-Dec-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR0523';
  v_meta := '{"district":"Ludhiana","promoter":"Punnu Land Developers Pvt.Ltd (Other than Individual)","address":"Village- Brahman Majra, Ludhiana","pin_code":"141003","registration_date":"27-Sep-2019","valid_upto":"30-Jun-2022"}'::jsonb;
  v_desc := 'Promoter: Punnu Land Developers Pvt.Ltd (Other than Individual). Address: Village- Brahman Majra, Ludhiana. PIN: 141003. Valid upto: 30-Jun-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0524';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"K S INFRACON PVT. LTD. (Other than Individual)","address":"Fio Homes 2 ZRK Village Kishanpura,MC Zirakpur","pin_code":"160104","registration_date":"27-Sep-2019","valid_upto":"31-Mar-2022"}'::jsonb;
  v_desc := 'Promoter: K S INFRACON PVT. LTD. (Other than Individual). Address: Fio Homes 2 ZRK Village Kishanpura,MC Zirakpur. PIN: 160104. Valid upto: 31-Mar-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0517';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Kulvinder  Singh (Individual)","address":"Village-Gholumajra","pin_code":"140507","registration_date":"24-Sep-2019","valid_upto":"30-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Kulvinder  Singh (Individual). Address: Village-Gholumajra. PIN: 140507. Valid upto: 30-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR0487';
  v_meta := '{"district":"Ludhiana","promoter":"Greater Ludhiana Area Development Authority (Other than Individual)","address":"Village Daad, Hadbast No.279","pin_code":"142022","website":"https://glada.gov.in/","registration_date":"24-Jul-2019","valid_upto":"29-Apr-2024"}'::jsonb;
  v_desc := 'Promoter: Greater Ludhiana Area Development Authority (Other than Individual). Address: Village Daad, Hadbast No.279. PIN: 142022. Valid upto: 29-Apr-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0521';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AN BUILDERS (Other than Individual)","address":"B Block Wave Estate, Sector 85,","pin_code":"140308","registration_date":"23-Sep-2019","valid_upto":"31-Aug-2022"}'::jsonb;
  v_desc := 'Promoter: AN BUILDERS (Other than Individual). Address: B Block Wave Estate, Sector 85,. PIN: 140308. Valid upto: 31-Aug-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0520';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"JOY HOMES (Other than Individual)","address":"Plots in Block 2 Wave Estate Sector 85 Mohali","pin_code":"140308","registration_date":"23-Sep-2019","valid_upto":"31-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: JOY HOMES (Other than Individual). Address: Plots in Block 2 Wave Estate Sector 85 Mohali. PIN: 140308. Valid upto: 31-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR03-PR0511';
  v_meta := '{"district":"Amritsar","promoter":"Motherhood Builders and Land Developers Ltd (Other than Individual)","address":"Bhagtawala, Near Grain Market, Bhagtanwala near grain market amritsar","pin_code":"143001","registration_date":"23-Sep-2019","valid_upto":"30-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: Motherhood Builders and Land Developers Ltd (Other than Individual). Address: Bhagtawala, Near Grain Market, Bhagtanwala near grain market amritsar. PIN: 143001. Valid upto: 30-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-GSP27-PR0519';
  v_meta := '{"district":"Gurdaspur","promoter":"Usmanpur Finance Pvt. Ltd (Other than Individual)","address":"Village Dhupsari, Teh. Batala","pin_code":"143505","registration_date":"23-Sep-2019","valid_upto":"31-Dec-2024"}'::jsonb;
  v_desc := 'Promoter: Usmanpur Finance Pvt. Ltd (Other than Individual). Address: Village Dhupsari, Teh. Batala. PIN: 143505. Valid upto: 31-Dec-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0510';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"THE PANCHSHEEL CO-OP. HOUSE BUILDING SOCIETY  (Other than Individual)","address":"Village Rampur Kalan, Tehsil Banur, Distt. Sahibzada Ajit Singh Nagar (Mohali)","pin_code":"140603","registration_date":"16-Sep-2019","valid_upto":"31-Mar-2021"}'::jsonb;
  v_desc := 'Promoter: THE PANCHSHEEL CO-OP. HOUSE BUILDING SOCIETY  (Other than Individual). Address: Village Rampur Kalan, Tehsil Banur, Distt. Sahibzada Ajit Singh Nagar (Mohali). PIN: 140603. Valid upto: 31-Mar-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PI0007';
  v_meta := '{"district":"Ludhiana","promoter":"PUNJAB SMALL INDUSTRIES & EXPORT CORPORATION LTD. (Other than Individual)","address":"VILLAGE DHANANSU","pin_code":"141112","registration_date":"16-Sep-2019","valid_upto":"05-Jun-2022"}'::jsonb;
  v_desc := 'Promoter: PUNJAB SMALL INDUSTRIES & EXPORT CORPORATION LTD. (Other than Individual). Address: VILLAGE DHANANSU. PIN: 141112. Valid upto: 05-Jun-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0518';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Rajinder  Singh HUF (Individual)","address":"Siswan Kurali Road, Kharar","pin_code":"141301","registration_date":"10-Sep-2019","valid_upto":"25-Mar-2022"}'::jsonb;
  v_desc := 'Promoter: Rajinder  Singh HUF (Individual). Address: Siswan Kurali Road, Kharar. PIN: 141301. Valid upto: 25-Mar-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR0507';
  v_meta := '{"district":"Ludhiana","promoter":"Greens Developers & Colonizers (Other than Individual)","address":"Village- JAINPUR, Hambra Road, Ludhiana","pin_code":"141001","registration_date":"10-Sep-2019","valid_upto":"31-Aug-2020"}'::jsonb;
  v_desc := 'Promoter: Greens Developers & Colonizers (Other than Individual). Address: Village- JAINPUR, Hambra Road, Ludhiana. PIN: 141001. Valid upto: 31-Aug-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0516';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"WWICS ESTATES PRIVATE LIMITED (Other than Individual)","address":"Kurali H B No.121","pin_code":"140103","registration_date":"06-Sep-2019","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: WWICS ESTATES PRIVATE LIMITED (Other than Individual). Address: Kurali H B No.121. PIN: 140103. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0515';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Vijay  Kumar Bindal (Individual)","address":"SHEKPURA KHURAD","pin_code":"140603","registration_date":"06-Sep-2019","valid_upto":"30-Apr-2020"}'::jsonb;
  v_desc := 'Promoter: Vijay  Kumar Bindal (Individual). Address: SHEKPURA KHURAD. PIN: 140603. Valid upto: 30-Apr-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0512';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jaswinder   Singh (Individual)","address":"Village Gholumajra, H.B 209, N.A.C Lalru, Tehsil. Derabassi,","pin_code":"140501","registration_date":"06-Sep-2019","valid_upto":"30-Jun-2021"}'::jsonb;
  v_desc := 'Promoter: Jaswinder   Singh (Individual). Address: Village Gholumajra, H.B 209, N.A.C Lalru, Tehsil. Derabassi,. PIN: 140501. Valid upto: 30-Jun-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0513';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sanjeev Kumar and Others (Other than Individual)","address":"Village Peermuchalla, Zirakpur","pin_code":"140603","registration_date":"06-Sep-2019","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Sanjeev Kumar and Others (Other than Individual). Address: Village Peermuchalla, Zirakpur. PIN: 140603. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTH08-PR0514';
  v_meta := '{"district":"Bathinda","promoter":"S S AND ASSOCIATES (Other than Individual)","address":"Raman Mandi","pin_code":"151301","registration_date":"06-Sep-2019","valid_upto":"31-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: S S AND ASSOCIATES (Other than Individual). Address: Raman Mandi. PIN: 151301. Valid upto: 31-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0509';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gurpreet Developers and Promoters Pvt. ltd. (Other than Individual)","address":"kharar-kurali highway NH-205, village daun majra, kharar","pin_code":"140301","website":"www.gdphomes.in","registration_date":"03-Sep-2019","valid_upto":"12-Jun-2024"}'::jsonb;
  v_desc := 'Promoter: Gurpreet Developers and Promoters Pvt. ltd. (Other than Individual). Address: kharar-kurali highway NH-205, village daun majra, kharar. PIN: 140301. Valid upto: 12-Jun-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR0506';
  v_meta := '{"district":"Patiala","promoter":"RSG PROPERTIES PVT. LTD. (Other than Individual)","address":"ROYAL CITY SECTOR 4, VILLAGE NOOR KHERIAN","pin_code":"147002","registration_date":"03-Sep-2019","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: RSG PROPERTIES PVT. LTD. (Other than Individual). Address: ROYAL CITY SECTOR 4, VILLAGE NOOR KHERIAN. PIN: 147002. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR0508';
  v_meta := '{"district":"Ludhiana","promoter":"Shyam  Sunder Kothari (Individual)","address":"Village Ayali Lhurd H.B No153","pin_code":"141001","registration_date":"29-Aug-2019","valid_upto":"30-Jun-2022"}'::jsonb;
  v_desc := 'Promoter: Shyam  Sunder Kothari (Individual). Address: Village Ayali Lhurd H.B No153. PIN: 141001. Valid upto: 30-Jun-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-TTN87-PR0505';
  v_meta := '{"district":"Tarn Taran","promoter":"Satyam Land Developers (Other than Individual)","address":"Vill-Balachak, HB No.-52,tehsil & Distt-Tarn Taran","pin_code":"143001","registration_date":"27-Aug-2019","valid_upto":"30-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Satyam Land Developers (Other than Individual). Address: Vill-Balachak, HB No.-52,tehsil & Distt-Tarn Taran. PIN: 143001. Valid upto: 30-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0504';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bharat  Bhushan bansal (Individual)","address":"Village Hassanpur, Dappar, Lalru","pin_code":"140501","registration_date":"16-Aug-2019","valid_upto":"31-Jul-2020"}'::jsonb;
  v_desc := 'Promoter: Bharat  Bhushan bansal (Individual). Address: Village Hassanpur, Dappar, Lalru. PIN: 140501. Valid upto: 31-Jul-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PI0006';
  v_meta := '{"district":"Ludhiana","promoter":"PUNJAB AGRO INDUSTRIES CORPORATION LIMITED (Other than Individual)","address":"Mega Food Park, Village Ladhowal","pin_code":"140008","website":"www.punjabagro.gov.in","registration_date":"16-Aug-2019","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: PUNJAB AGRO INDUSTRIES CORPORATION LIMITED (Other than Individual). Address: Mega Food Park, Village Ladhowal. PIN: 140008. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR78-PR0499';
  v_meta := '{"district":"Sangrur","promoter":"Luxmi Builders (Other than Individual)","address":"Jakhal Road, Sunam","pin_code":"148028","registration_date":"16-Aug-2019","valid_upto":"30-Jun-2022"}'::jsonb;
  v_desc := 'Promoter: Luxmi Builders (Other than Individual). Address: Jakhal Road, Sunam. PIN: 148028. Valid upto: 30-Jun-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI10-PR0501';
  v_meta := '{"district":"Bathinda","promoter":"Guru Nanak Builders (Other than Individual)","address":"At Rampura, Tehsil- Phul, Distt- Bathinda","pin_code":"151001","registration_date":"16-Aug-2019","valid_upto":"30-May-2021"}'::jsonb;
  v_desc := 'Promoter: Guru Nanak Builders (Other than Individual). Address: At Rampura, Tehsil- Phul, Distt- Bathinda. PIN: 151001. Valid upto: 30-May-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR03-PR0498';
  v_meta := '{"district":"Amritsar","promoter":"AIPL Housing and Urban Infrastructure Limited (Other than Individual)","address":"Village Manawala, NH1, GT Road","pin_code":"143109","registration_date":"16-Aug-2019","valid_upto":"28-Feb-2020"}'::jsonb;
  v_desc := 'Promoter: AIPL Housing and Urban Infrastructure Limited (Other than Individual). Address: Village Manawala, NH1, GT Road. PIN: 143109. Valid upto: 28-Feb-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MNS51-PR0503';
  v_meta := '{"district":"Mansa","promoter":"AGGARWAL BUILDCON PVT LTD (Other than Individual)","address":"WARD NO.4 SIRSA ROAD, SARDULGARH","pin_code":"151507","registration_date":"16-Aug-2019","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: AGGARWAL BUILDCON PVT LTD (Other than Individual). Address: WARD NO.4 SIRSA ROAD, SARDULGARH. PIN: 151507. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0502';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Daljit   Singh (Individual)","address":"Village-Lalru","pin_code":"140501","registration_date":"16-Aug-2019","valid_upto":"30-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Daljit   Singh (Individual). Address: Village-Lalru. PIN: 140501. Valid upto: 30-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PR0500';
  v_meta := '{"district":"Amritsar","promoter":"HARSUKH BUILDERS & LAND DEVELOPERS PVT. LTD. (Other than Individual)","address":"jandiala amritsar, jandiala guru bye pass amritsar","pin_code":"143115","website":"http://harsukhbuilders.com","registration_date":"16-Aug-2019","valid_upto":"25-Jun-2022"}'::jsonb;
  v_desc := 'Promoter: HARSUKH BUILDERS & LAND DEVELOPERS PVT. LTD. (Other than Individual). Address: jandiala amritsar, jandiala guru bye pass amritsar. PIN: 143115. Valid upto: 25-Jun-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL20-PR0497';
  v_meta := '{"district":"Fazilka","promoter":"Vera Developers Private Limited (Other than Individual)","address":"Abohar Road, Near M.C. Colony","pin_code":"152116","website":"www.royalcityfazilka.com","registration_date":"13-Aug-2019","valid_upto":"31-Mar-2020"}'::jsonb;
  v_desc := 'Promoter: Vera Developers Private Limited (Other than Individual). Address: Abohar Road, Near M.C. Colony. PIN: 152116. Valid upto: 31-Mar-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0496';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Vera Developers Private Limited (Other than Individual)","address":"Near TDI Club House, Sec 74-A, Mohali","pin_code":"160055","website":"www.lokawas.com","registration_date":"09-Aug-2019","valid_upto":"31-Mar-2024"}'::jsonb;
  v_desc := 'Promoter: Vera Developers Private Limited (Other than Individual). Address: Near TDI Club House, Sec 74-A, Mohali. PIN: 160055. Valid upto: 31-Mar-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT40-PR0493';
  v_meta := '{"district":"Kapurthala","promoter":"GILLSONS CONSTRUCTIONS LIMITED (Other than Individual)","address":"Gilco Greens Hoshiarpur road, Tehsil Phagwara, District Kapurthala","pin_code":"144401","registration_date":"06-Aug-2019","valid_upto":"01-May-2022"}'::jsonb;
  v_desc := 'Promoter: GILLSONS CONSTRUCTIONS LIMITED (Other than Individual). Address: Gilco Greens Hoshiarpur road, Tehsil Phagwara, District Kapurthala. PIN: 144401. Valid upto: 01-May-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0492';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"JOY HOMES (Other than Individual)","address":"Plots in Block 2 Wave Estate Sector 85 Mohali","pin_code":"140308","registration_date":"06-Aug-2019","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: JOY HOMES (Other than Individual). Address: Plots in Block 2 Wave Estate Sector 85 Mohali. PIN: 140308. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0494';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Balaji Infra buildtech (Other than Individual)","address":"Village Jhugian, kharar","pin_code":"140301","website":"balajiinfrabuildtech.com","registration_date":"08-Aug-2019","valid_upto":"31-Dec-2024"}'::jsonb;
  v_desc := 'Promoter: Balaji Infra buildtech (Other than Individual). Address: Village Jhugian, kharar. PIN: 140301. Valid upto: 31-Dec-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0491';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"DREAM HOMES KISHANPURA, ZIRAKPUR, PUNJAB (Other than Individual)","address":"DREAM HOMES, SCO 5, VILLAGE KISHANPURA, ZIRAKPUR","pin_code":"140603","registration_date":"29-Jul-2019","valid_upto":"31-Mar-2020"}'::jsonb;
  v_desc := 'Promoter: DREAM HOMES KISHANPURA, ZIRAKPUR, PUNJAB (Other than Individual). Address: DREAM HOMES, SCO 5, VILLAGE KISHANPURA, ZIRAKPUR. PIN: 140603. Valid upto: 31-Mar-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-HSP32-PR0488';
  v_meta := '{"district":"Hoshiarpur","promoter":"Jaswinder   Singh (Individual)","address":"Village-Khichhian, Mukerian, Distt-Mukerian","pin_code":"144211","registration_date":"29-Jul-2019","valid_upto":"30-Jun-2024"}'::jsonb;
  v_desc := 'Promoter: Jaswinder   Singh (Individual). Address: Village-Khichhian, Mukerian, Distt-Mukerian. PIN: 144211. Valid upto: 30-Jun-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0489';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PHENOMENAL CONSTRUCTION PRIVATE LIMITED (Other than Individual)","address":"VILLAGE GHOLUMAJRA, NAC LARLRU, DERAABASSI","pin_code":"140507","registration_date":"26-Jul-2019","valid_upto":"30-Jun-2020"}'::jsonb;
  v_desc := 'Promoter: PHENOMENAL CONSTRUCTION PRIVATE LIMITED (Other than Individual). Address: VILLAGE GHOLUMAJRA, NAC LARLRU, DERAABASSI. PIN: 140507. Valid upto: 30-Jun-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PC0097';
  v_meta := '{"district":"Ludhiana","promoter":"Hanumant Commercial Site Planners and Developers (Other than Individual)","address":"Kesar Ganj Road, Ludhiana","pin_code":"141203","registration_date":"24-Jul-2019","valid_upto":"30-Jun-2023"}'::jsonb;
  v_desc := 'Promoter: Hanumant Commercial Site Planners and Developers (Other than Individual). Address: Kesar Ganj Road, Ludhiana. PIN: 141203. Valid upto: 30-Jun-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR0486';
  v_meta := '{"district":"Ludhiana","promoter":"EMPIRE COLONIZERS PRIVATE LIMITED (Other than Individual)","address":"STAR ENCLAVE III, VILLAGE GILL-II, MALERKOTLA ROAD","pin_code":"141116","registration_date":"18-Jul-2019","valid_upto":"30-Oct-2022"}'::jsonb;
  v_desc := 'Promoter: EMPIRE COLONIZERS PRIVATE LIMITED (Other than Individual). Address: STAR ENCLAVE III, VILLAGE GILL-II, MALERKOTLA ROAD. PIN: 141116. Valid upto: 30-Oct-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0484';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Ashok  Kumar (Individual)","address":"VILLAGE Bhabat, Punjab","pin_code":"140603","registration_date":"17-Jul-2019","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Ashok  Kumar (Individual). Address: VILLAGE Bhabat, Punjab. PIN: 140603. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR77-PR0483';
  v_meta := '{"district":"Barnala","promoter":"Sangrur Builders Private Limited (Other than Individual)","address":"Vill-Patti Bir Singh Bhadaur, Tehsil  Barnala","pin_code":"148001","registration_date":"15-Jul-2019","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: Sangrur Builders Private Limited (Other than Individual). Address: Vill-Patti Bir Singh Bhadaur, Tehsil  Barnala. PIN: 148001. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0482';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Kishkindha Builders and Creators (Other than Individual)","address":"Kings Lane, sector 110,, TDI, Landran Kharar Road","pin_code":"140307","website":"www.kishkindhagroup.com","registration_date":"15-Jul-2019","valid_upto":"31-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: Kishkindha Builders and Creators (Other than Individual). Address: Kings Lane, sector 110,, TDI, Landran Kharar Road. PIN: 140307. Valid upto: 31-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL62-PR0485';
  v_meta := '{"district":"Patiala","promoter":"Puru Colonisers Private Limited (Other than Individual)","address":"VILLAGE Duladi, Tehsil Nabha","pin_code":"147201","registration_date":"15-Jul-2019","valid_upto":"30-Jun-2022"}'::jsonb;
  v_desc := 'Promoter: Puru Colonisers Private Limited (Other than Individual). Address: VILLAGE Duladi, Tehsil Nabha. PIN: 147201. Valid upto: 30-Jun-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0481';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Kwality Buildtech Pvt. Ltd (Other than Individual)","address":"Ponta Sahib Road Ambala, Distt.-Derabassi","pin_code":"141001","registration_date":"11-Jul-2019","valid_upto":"01-Aug-2021"}'::jsonb;
  v_desc := 'Promoter: Kwality Buildtech Pvt. Ltd (Other than Individual). Address: Ponta Sahib Road Ambala, Distt.-Derabassi. PIN: 141001. Valid upto: 01-Aug-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PR0479';
  v_meta := '{"district":"Amritsar","promoter":"TEWARI & GANGAHAR INFRASTRUCTURES P. LTD, (Other than Individual)","address":"VILLAGE VALLAH","pin_code":"143001","registration_date":"01-Jul-2019","valid_upto":"31-Mar-2020"}'::jsonb;
  v_desc := 'Promoter: TEWARI & GANGAHAR INFRASTRUCTURES P. LTD, (Other than Individual). Address: VILLAGE VALLAH. PIN: 143001. Valid upto: 31-Mar-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR0480';
  v_meta := '{"district":"Ludhiana","promoter":"P.P.R ASSOCIATES- II (Other than Individual)","address":"VILLAGE TALWARA, TEHSIL & DIST. LUDHIANA","pin_code":"141001","registration_date":"01-Jul-2019","valid_upto":"31-Aug-2020"}'::jsonb;
  v_desc := 'Promoter: P.P.R ASSOCIATES- II (Other than Individual). Address: VILLAGE TALWARA, TEHSIL & DIST. LUDHIANA. PIN: 141001. Valid upto: 31-Aug-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PR0478';
  v_meta := '{"district":"Amritsar","promoter":"UMANG  TEWARI (Individual)","address":"VILLAGE VALLAH","pin_code":"143001","registration_date":"01-Jul-2019","valid_upto":"31-Mar-2020"}'::jsonb;
  v_desc := 'Promoter: UMANG  TEWARI (Individual). Address: VILLAGE VALLAH. PIN: 143001. Valid upto: 31-Mar-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0477';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omkareshwar Builders Pvt Ltd (Other than Individual)","address":"Barwala Road, Village, Mouja, Madhopur,","pin_code":"140507","registration_date":"25-Jun-2019","valid_upto":"30-Jun-2022"}'::jsonb;
  v_desc := 'Promoter: Omkareshwar Builders Pvt Ltd (Other than Individual). Address: Barwala Road, Village, Mouja, Madhopur,. PIN: 140507. Valid upto: 30-Jun-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH46-PR0476';
  v_meta := '{"district":"Ludhiana","promoter":"H.G.K.DEVELOPERS PVT.LTD. (Other than Individual)","address":"BLOCK 22 ROYALTON CITY, G.T.ROAD DORAHA","pin_code":"141421","website":"www.royaltonheights.com","registration_date":"25-Jun-2019","valid_upto":"17-May-2024"}'::jsonb;
  v_desc := 'Promoter: H.G.K.DEVELOPERS PVT.LTD. (Other than Individual). Address: BLOCK 22 ROYALTON CITY, G.T.ROAD DORAHA. PIN: 141421. Valid upto: 17-May-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0464';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KLV Divya Builders & Developers (Other than Individual)","address":"Signature City, Landran Banur Road , Near by Palazzo Resorts","pin_code":"140306","website":"www.signaturecitymohali.com","registration_date":"28-May-2019","valid_upto":"30-Oct-2022"}'::jsonb;
  v_desc := 'Promoter: KLV Divya Builders & Developers (Other than Individual). Address: Signature City, Landran Banur Road , Near by Palazzo Resorts. PIN: 140306. Valid upto: 30-Oct-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR0465';
  v_meta := '{"district":"Ludhiana","promoter":"Basera Realtors Pvt.Ltd (Other than Individual)","address":"Vill-Ayali Khurd and Barewal","pin_code":"142027","registration_date":"28-May-2019","valid_upto":"30-Jun-2021"}'::jsonb;
  v_desc := 'Promoter: Basera Realtors Pvt.Ltd (Other than Individual). Address: Vill-Ayali Khurd and Barewal. PIN: 142027. Valid upto: 30-Jun-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0463';
  v_meta := '{"district":"Ludhiana","promoter":"SUNBEAM COLONISERS PRIVATE LIMITED (Other than Individual)","address":"Village Alamgir, Tehsil and District, Ludhiana","pin_code":"141116","registration_date":"28-May-2019","valid_upto":"09-Apr-2019"}'::jsonb;
  v_desc := 'Promoter: SUNBEAM COLONISERS PRIVATE LIMITED (Other than Individual). Address: Village Alamgir, Tehsil and District, Ludhiana. PIN: 141116. Valid upto: 09-Apr-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PM0144';
  v_meta := '{"district":"Ludhiana","promoter":"Hanumant Town Planners and Developers Pvt Ltd (Other than Individual)","address":"Village-Kohara, Sahnewal, Ludhiana","pin_code":"141001","registration_date":"19-Jun-2019","valid_upto":"30-Jun-2022"}'::jsonb;
  v_desc := 'Promoter: Hanumant Town Planners and Developers Pvt Ltd (Other than Individual). Address: Village-Kohara, Sahnewal, Ludhiana. PIN: 141001. Valid upto: 30-Jun-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR03-PR0475';
  v_meta := '{"district":"Amritsar","promoter":"SHARMA & GANGAHAR BUILDERS & COLONISERS PVT. LTD (Other than Individual)","address":"VILLAGE NAUSHEHRA, MAJITHA ROAD","pin_code":"143008","website":"www.sharmagangahar.com","registration_date":"19-Jun-2019","valid_upto":"31-Mar-2020"}'::jsonb;
  v_desc := 'Promoter: SHARMA & GANGAHAR BUILDERS & COLONISERS PVT. LTD (Other than Individual). Address: VILLAGE NAUSHEHRA, MAJITHA ROAD. PIN: 143008. Valid upto: 31-Mar-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0474';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Rakesh Rattan Aggarwal (Individual)","address":"Village Saidpura, H.B No.10","pin_code":"140603","registration_date":"13-Jun-2019","valid_upto":"30-Jun-2022"}'::jsonb;
  v_desc := 'Promoter: Rakesh Rattan Aggarwal (Individual). Address: Village Saidpura, H.B No.10. PIN: 140603. Valid upto: 30-Jun-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0093';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"S M HOTELS (Other than Individual)","address":"ZIRAKPUR AMBALA HIGHWAY, NEAR IDBI BANK","pin_code":"140603","registration_date":"12-Jun-2019","valid_upto":"01-May-2021"}'::jsonb;
  v_desc := 'Promoter: S M HOTELS (Other than Individual). Address: ZIRAKPUR AMBALA HIGHWAY, NEAR IDBI BANK. PIN: 140603. Valid upto: 01-May-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PR0472';
  v_meta := '{"district":"Amritsar","promoter":"NARINDER KUMAR SHARMA (Individual)","address":"VILLAGE VALLAH, NH 1","pin_code":"143001","registration_date":"19-Jun-2019","valid_upto":"31-Mar-2020"}'::jsonb;
  v_desc := 'Promoter: NARINDER KUMAR SHARMA (Individual). Address: VILLAGE VALLAH, NH 1. PIN: 143001. Valid upto: 31-Mar-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0471';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gomti Homes (Other than Individual)","address":"Village- Nabha Kher , Derabassi","pin_code":"140501","registration_date":"03-Jun-2019","valid_upto":"30-May-2023"}'::jsonb;
  v_desc := 'Promoter: Gomti Homes (Other than Individual). Address: Village- Nabha Kher , Derabassi. PIN: 140501. Valid upto: 30-May-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0466';
  v_meta := '{"district":"Ludhiana","promoter":"Home Life Buildcon Pvt. Ltd (Other than Individual)","address":"Village Ayali Kalan, Tehsil ludhiana","pin_code":"142027","registration_date":"31-May-2019","valid_upto":"05-Apr-2024"}'::jsonb;
  v_desc := 'Promoter: Home Life Buildcon Pvt. Ltd (Other than Individual). Address: Village Ayali Kalan, Tehsil ludhiana. PIN: 142027. Valid upto: 05-Apr-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0469';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"STELLAR INFRATECH (Other than Individual)","address":"#54, VILAAGE KISHANPURA","pin_code":"140603","registration_date":"31-May-2019","valid_upto":"30-Jun-2022"}'::jsonb;
  v_desc := 'Promoter: STELLAR INFRATECH (Other than Individual). Address: #54, VILAAGE KISHANPURA. PIN: 140603. Valid upto: 30-Jun-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0470';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Harjinder   Singh (Individual)","address":"Vill-Lalru ,Tehsil-Derabassi","pin_code":"140501","registration_date":"31-May-2019","valid_upto":"30-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Harjinder   Singh (Individual). Address: Vill-Lalru ,Tehsil-Derabassi. PIN: 140501. Valid upto: 30-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SBS82-PR0461';
  v_meta := '{"district":"Shahid Bhagat Singh Nagar (Nawanshahr)","promoter":"SEVEN AGES BUILDERS (Other than Individual)","address":"ADARSH NAGAR, BHADDI ROAD, BALACHAUR","pin_code":"144521","registration_date":"16-May-2019","valid_upto":"30-Jun-2022"}'::jsonb;
  v_desc := 'Promoter: SEVEN AGES BUILDERS (Other than Individual). Address: ADARSH NAGAR, BHADDI ROAD, BALACHAUR. PIN: 144521. Valid upto: 30-Jun-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0462';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Manglam Infra (Other than Individual)","address":"VILLAGE DIYALPURA, NEAR AMAR NURSING COLLEGE, ZIRAKPUR","pin_code":"140603","registration_date":"14-May-2019","valid_upto":"30-Jun-2020"}'::jsonb;
  v_desc := 'Promoter: Manglam Infra (Other than Individual). Address: VILLAGE DIYALPURA, NEAR AMAR NURSING COLLEGE, ZIRAKPUR. PIN: 140603. Valid upto: 30-Jun-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0460';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"R.S BUILDERS & PROMOTERS (Other than Individual)","address":"VILLAGE SANAULI, H.B NO. 50","pin_code":"140603","registration_date":"14-May-2019","valid_upto":"30-Jun-2022"}'::jsonb;
  v_desc := 'Promoter: R.S BUILDERS & PROMOTERS (Other than Individual). Address: VILLAGE SANAULI, H.B NO. 50. PIN: 140603. Valid upto: 30-Jun-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0456';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AMBIKA REALCON DEVELOPERS  PRIVATE LIMITED (Other than Individual)","address":"GROUP HOUSING SITE NO 2,  IT CITY,, SECTOR 66 B","pin_code":"160055","website":"www.ambikarealcon.com","registration_date":"10-May-2019","valid_upto":"31-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: AMBIKA REALCON DEVELOPERS  PRIVATE LIMITED (Other than Individual). Address: GROUP HOUSING SITE NO 2,  IT CITY,, SECTOR 66 B. PIN: 160055. Valid upto: 31-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PC0092';
  v_meta := '{"district":"Patiala","promoter":"Paramjeet  Singh (Individual)","address":"Bhupindra Road, Near 22 Number Phatak","pin_code":"147001","registration_date":"07-May-2019","valid_upto":"05-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: Paramjeet  Singh (Individual). Address: Bhupindra Road, Near 22 Number Phatak. PIN: 147001. Valid upto: 05-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR0455';
  v_meta := '{"district":"Ludhiana","promoter":"AIPL Housing and Urban Infrastructure Limited (Other than Individual)","address":"G T Road, Village Bulepur, Tehsil Khanna, District Ludhiana","pin_code":"141401","registration_date":"07-May-2019","valid_upto":"28-Feb-2020"}'::jsonb;
  v_desc := 'Promoter: AIPL Housing and Urban Infrastructure Limited (Other than Individual). Address: G T Road, Village Bulepur, Tehsil Khanna, District Ludhiana. PIN: 141401. Valid upto: 28-Feb-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL34-PR0454';
  v_meta := '{"district":"Jalandhar","promoter":"AGI INFRA LIMITED (Other than Individual)","address":"VILLAGE PHOLRIWAL","pin_code":"144022","website":"www.agiinfra.com","registration_date":"07-May-2019","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: AGI INFRA LIMITED (Other than Individual). Address: VILLAGE PHOLRIWAL. PIN: 144022. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0453';
  v_meta := '{"district":"Ludhiana","promoter":"SUNBEAM COLONISERS PRIVATE LIMITED (Other than Individual)","address":"Shop No.47-48, Alamgir Enclave,, Malerkotla Road, Ludhiana.","pin_code":"141116","registration_date":"07-May-2019","valid_upto":"15-Jun-2017"}'::jsonb;
  v_desc := 'Promoter: SUNBEAM COLONISERS PRIVATE LIMITED (Other than Individual). Address: Shop No.47-48, Alamgir Enclave,, Malerkotla Road, Ludhiana.. PIN: 141116. Valid upto: 15-Jun-2017';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0433';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jung   Bahadur (Individual)","address":"VPO-Gholumajra","pin_code":"140501","registration_date":"02-Apr-2019","valid_upto":"30-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Jung   Bahadur (Individual). Address: VPO-Gholumajra. PIN: 140501. Valid upto: 30-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0441';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ACME HEIGHTS INFRASTRUCTURE PRIVATE LIMITED (Other than Individual)","address":"SECTOR 92 CHHAPAR CHIRI KALAN MOHALI","pin_code":"140307","registration_date":"02-Apr-2019","valid_upto":"13-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: ACME HEIGHTS INFRASTRUCTURE PRIVATE LIMITED (Other than Individual). Address: SECTOR 92 CHHAPAR CHIRI KALAN MOHALI. PIN: 140307. Valid upto: 13-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0090';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"VRS BUILDERS AND PROMOTERS (Other than Individual)","address":"DISTRICT ONE, ADJOINING MC OFFICE, SECTOR-68","pin_code":"160062","registration_date":"02-Apr-2019","valid_upto":"12-Feb-2021"}'::jsonb;
  v_desc := 'Promoter: VRS BUILDERS AND PROMOTERS (Other than Individual). Address: DISTRICT ONE, ADJOINING MC OFFICE, SECTOR-68. PIN: 160062. Valid upto: 12-Feb-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL34-PR0440';
  v_meta := '{"district":"Jalandhar","promoter":"Space developers (Other than Individual)","address":"Jamsher -mc Donald road, Village -Jamsher","pin_code":"144020","registration_date":"02-Apr-2019","valid_upto":"13-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: Space developers (Other than Individual). Address: Jamsher -mc Donald road, Village -Jamsher. PIN: 144020. Valid upto: 13-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0438';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gursewak   Singh (Individual)","address":"Gholumajra","pin_code":"140501","registration_date":"02-Apr-2019","valid_upto":"30-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Gursewak   Singh (Individual). Address: Gholumajra. PIN: 140501. Valid upto: 30-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0452';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"JOY HOMES (Other than Individual)","address":"Plots in Block 2 Wave Estate Sector 85 Mohali","pin_code":"140308","registration_date":"02-May-2019","valid_upto":"30-Apr-2022"}'::jsonb;
  v_desc := 'Promoter: JOY HOMES (Other than Individual). Address: Plots in Block 2 Wave Estate Sector 85 Mohali. PIN: 140308. Valid upto: 30-Apr-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0437';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"A.V Infratech  (Other than Individual)","address":"Villagr- Chhat","pin_code":"140507","registration_date":"02-Apr-2019","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: A.V Infratech  (Other than Individual). Address: Villagr- Chhat. PIN: 140507. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0446';
  v_meta := '{"district":"Ludhiana","promoter":"Goldwheel Projects Pvt. Ltd. (Other than Individual)","address":"Sona Enclave, Vill. Thakarwal, Pakhowal Road,","pin_code":"141013","registration_date":"12-Apr-2019","valid_upto":"31-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: Goldwheel Projects Pvt. Ltd. (Other than Individual). Address: Sona Enclave, Vill. Thakarwal, Pakhowal Road,. PIN: 141013. Valid upto: 31-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0445';
  v_meta := '{"district":"Ludhiana","promoter":"Ranjit  Kaur (Individual)","address":"Vill. Thakarwal, Pakhowal Road,","pin_code":"141013","registration_date":"12-Apr-2019","valid_upto":"31-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: Ranjit  Kaur (Individual). Address: Vill. Thakarwal, Pakhowal Road,. PIN: 141013. Valid upto: 31-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PC0089';
  v_meta := '{"district":"Amritsar","promoter":"AIPL Housing and Urban Infrastructure Limited (Other than Individual)","address":"G T Road, Village Manawala","pin_code":"143109","registration_date":"02-Apr-2019","valid_upto":"30-Jun-2019"}'::jsonb;
  v_desc := 'Promoter: AIPL Housing and Urban Infrastructure Limited (Other than Individual). Address: G T Road, Village Manawala. PIN: 143109. Valid upto: 30-Jun-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH43-PR0439';
  v_meta := '{"district":"Ludhiana","promoter":"AIPL Housing and Urban Infrastructure Limited (Other than Individual)","address":"G T Road, Village Bulepur, Tehsil Khanna, District Ludhiana","pin_code":"141401","registration_date":"02-Apr-2019","valid_upto":"28-Feb-2020"}'::jsonb;
  v_desc := 'Promoter: AIPL Housing and Urban Infrastructure Limited (Other than Individual). Address: G T Road, Village Bulepur, Tehsil Khanna, District Ludhiana. PIN: 141401. Valid upto: 28-Feb-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0435';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Fortune Multitech Private Limited (Other than Individual)","address":"Victoria Homes Peer Mushalla,Zirakpur,","pin_code":"140603","registration_date":"15-Apr-2019","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: Fortune Multitech Private Limited (Other than Individual). Address: Victoria Homes Peer Mushalla,Zirakpur,. PIN: 140603. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0448';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"The Punjab IAS AND PCS Officers House Building Society Limited (Other than Individual)","address":"The Foothills, Residential Colony, Sector-1, New Chandigarh, Mullanpur","pin_code":"140901","registration_date":"18-Apr-2019","valid_upto":"31-May-2021"}'::jsonb;
  v_desc := 'Promoter: The Punjab IAS AND PCS Officers House Building Society Limited (Other than Individual). Address: The Foothills, Residential Colony, Sector-1, New Chandigarh, Mullanpur. PIN: 140901. Valid upto: 31-May-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0091';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Towncity Realtors Private Limited (Other than Individual)","address":"Village Kishanpura, Near Dhakoli and Gazipur Junction","pin_code":"140603","website":"www.sushma.co.in","registration_date":"22-Apr-2019","valid_upto":"14-Feb-2024"}'::jsonb;
  v_desc := 'Promoter: Towncity Realtors Private Limited (Other than Individual). Address: Village Kishanpura, Near Dhakoli and Gazipur Junction. PIN: 140603. Valid upto: 14-Feb-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0450';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"Village Dayalpura, Zirakpur","pin_code":"140604","website":"http://www.gbpgroup.in/","registration_date":"22-Apr-2019","valid_upto":"31-Dec-2024"}'::jsonb;
  v_desc := 'Promoter: GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: Village Dayalpura, Zirakpur. PIN: 140604. Valid upto: 31-Dec-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0443';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gomti Enterprises (Other than Individual)","address":"Lalru","pin_code":"140501","registration_date":"09-Apr-2019","valid_upto":"31-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: Gomti Enterprises (Other than Individual). Address: Lalru. PIN: 140501. Valid upto: 31-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-RPR70-PR0442';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"WWICS ESTATES PRIVATE LIMITED (Other than Individual)","address":"Dream Meadows I(Imperial County), Kurali H.B. No.121","pin_code":"140103","registration_date":"09-Apr-2019","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: WWICS ESTATES PRIVATE LIMITED (Other than Individual). Address: Dream Meadows I(Imperial County), Kurali H.B. No.121. PIN: 140103. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR78-PM0139';
  v_meta := '{"district":"Sangrur","promoter":"Jitu Real Estate Private Limited (Other than Individual)","address":"TAJ CITY, Opposite Maharaja Palace, Patiala Road","pin_code":"148028","registration_date":"18-Mar-2019","valid_upto":"31-Mar-2020"}'::jsonb;
  v_desc := 'Promoter: Jitu Real Estate Private Limited (Other than Individual). Address: TAJ CITY, Opposite Maharaja Palace, Patiala Road. PIN: 148028. Valid upto: 31-Mar-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-RPR68-PR0436';
  v_meta := '{"district":"Rupnagar (Ropar)","promoter":"RAMAN  GUPTA (Individual)","address":"GLOBAL ENCLAVE, SCO NO. 3, Morinda","pin_code":"140101","registration_date":"18-Mar-2019","valid_upto":"31-Mar-2020"}'::jsonb;
  v_desc := 'Promoter: RAMAN  GUPTA (Individual). Address: GLOBAL ENCLAVE, SCO NO. 3, Morinda. PIN: 140101. Valid upto: 31-Mar-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR77-PC0088';
  v_meta := '{"district":"Sangrur","promoter":"Jitu Real Estate Private Limited (Other than Individual)","address":"Taj Shopping Complex, Dirba Mandi, Tehsil Dirba","pin_code":"148035","registration_date":"18-Mar-2019","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: Jitu Real Estate Private Limited (Other than Individual). Address: Taj Shopping Complex, Dirba Mandi, Tehsil Dirba. PIN: 148035. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-RPR70-PR0432';
  v_meta := '{"district":"Rupnagar (Ropar)","promoter":"Ropar Properties & Builders Pvt Ltd (Other than Individual)","address":"Star City, Village Gurdaspura, Near Bypass","pin_code":"140001","registration_date":"18-Mar-2019","valid_upto":"31-Jan-2022"}'::jsonb;
  v_desc := 'Promoter: Ropar Properties & Builders Pvt Ltd (Other than Individual). Address: Star City, Village Gurdaspura, Near Bypass. PIN: 140001. Valid upto: 31-Jan-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0434';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jung  Bahadur (Individual)","address":"Lalru","pin_code":"141501","registration_date":"18-Mar-2019","valid_upto":"30-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Jung  Bahadur (Individual). Address: Lalru. PIN: 141501. Valid upto: 30-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0087';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Rosy   Singla (Individual)","address":"PR-7,Airport Road,Zirakpur.","pin_code":"140603","website":"www.roselynsquare.com","registration_date":"06-Mar-2019","valid_upto":"31-Jan-2024"}'::jsonb;
  v_desc := 'Promoter: Rosy   Singla (Individual). Address: PR-7,Airport Road,Zirakpur.. PIN: 140603. Valid upto: 31-Jan-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0428';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"SCO-39-42, Sector-82","pin_code":"140306","website":"www.jantahousing.com","registration_date":"27-Feb-2019","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: SCO-39-42, Sector-82. PIN: 140306. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PM0137';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Kulbir  Singh (Individual)","address":"Royal Plaza, Ward No.9 Kurali, SAS Nagar","pin_code":"140301","registration_date":"21-Feb-2019","valid_upto":"15-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: Kulbir  Singh (Individual). Address: Royal Plaza, Ward No.9 Kurali, SAS Nagar. PIN: 140301. Valid upto: 15-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SBS84-PM0134';
  v_meta := '{"district":"Shahid Bhagat Singh Nagar (Nawanshahr)","promoter":"Bhupinder  Pal (Individual)","address":"VPO LADHANA JHIKKA, DISSTT. SAHED BHGAT SINGH NAGAR","pin_code":"141007","registration_date":"21-Feb-2019","valid_upto":"31-Jul-2020"}'::jsonb;
  v_desc := 'Promoter: Bhupinder  Pal (Individual). Address: VPO LADHANA JHIKKA, DISSTT. SAHED BHGAT SINGH NAGAR. PIN: 141007. Valid upto: 31-Jul-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PR0431';
  v_meta := '{"district":"Amritsar","promoter":"VENUS COUNTY DEVELOPERS PRIVATE LIMITED (Other than Individual)","address":"VILLAGE SULTANWIND SUB-URBAN-II, VILLAGE BHAGTUPURA AND VILLAGE CHEETAN KALAN, G.T.ROAD DABURJI","pin_code":"143006","registration_date":"21-Feb-2019","valid_upto":"27-Sep-2020"}'::jsonb;
  v_desc := 'Promoter: VENUS COUNTY DEVELOPERS PRIVATE LIMITED (Other than Individual). Address: VILLAGE SULTANWIND SUB-URBAN-II, VILLAGE BHAGTUPURA AND VILLAGE CHEETAN KALAN, G.T.ROAD DABURJI. PIN: 143006. Valid upto: 27-Sep-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-HPR31-PR0430';
  v_meta := '{"district":"Hoshiarpur","promoter":"PARAMOUNT LANDCON PVT. LTD. (Other than Individual)","address":"Ambe Valley Ext, Vill & P.O. Ajowal, Dist. Hoshiarpur","pin_code":"146001","registration_date":"21-Feb-2019","valid_upto":"11-Apr-2019"}'::jsonb;
  v_desc := 'Promoter: PARAMOUNT LANDCON PVT. LTD. (Other than Individual). Address: Ambe Valley Ext, Vill & P.O. Ajowal, Dist. Hoshiarpur. PIN: 146001. Valid upto: 11-Apr-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0429';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"Falcon View Tower- O, Sector-66A","pin_code":"140306","website":"www.jantahousing.com","registration_date":"21-Feb-2019","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: Falcon View Tower- O, Sector-66A. PIN: 140306. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0427';
  v_meta := '{"district":"Jalandhar","promoter":"AIR FORCE NAVAL HOUSING BOARD (Other than Individual)","address":"JAL VAYU TOWERS, OPP. HMV COLLEGE","pin_code":"144001","website":"afnhb.org","registration_date":"22-Feb-2019","valid_upto":"13-Jun-2018"}'::jsonb;
  v_desc := 'Promoter: AIR FORCE NAVAL HOUSING BOARD (Other than Individual). Address: JAL VAYU TOWERS, OPP. HMV COLLEGE. PIN: 144001. Valid upto: 13-Jun-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0086';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"BOOTHS MOHALI- 1B29 TO B49, SECTOR 119 TDI CITY","pin_code":"140301","website":"www.tdigroupmohali.net","registration_date":"08-Feb-2019","valid_upto":"31-May-2021"}'::jsonb;
  v_desc := 'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: BOOTHS MOHALI- 1B29 TO B49, SECTOR 119 TDI CITY. PIN: 140301. Valid upto: 31-May-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PM0133';
  v_meta := '{"district":"Jalandhar","promoter":"Bhupinder  Pal (Individual)","address":"Villag- Virk,Tehsil-Phillaur,, Jalandhar","pin_code":"144410","website":"www.bhupindraestate.com","registration_date":"08-Feb-2019","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Bhupinder  Pal (Individual). Address: Villag- Virk,Tehsil-Phillaur,, Jalandhar. PIN: 144410. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTK60-PM0135';
  v_meta := '{"district":"Pathankot","promoter":"CM Developers (Other than Individual)","address":"Village Chak Madho Singh & Paddian Lahri","pin_code":"145001","website":"www.santestate.com","registration_date":"08-Feb-2019","valid_upto":"01-Oct-2020"}'::jsonb;
  v_desc := 'Promoter: CM Developers (Other than Individual). Address: Village Chak Madho Singh & Paddian Lahri. PIN: 145001. Valid upto: 01-Oct-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0422';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gurmel   SIngh (Individual)","address":"Near Panchayat bhawan, Lalru","pin_code":"140501","registration_date":"08-Feb-2019","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Gurmel   SIngh (Individual). Address: Near Panchayat bhawan, Lalru. PIN: 140501. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0420';
  v_meta := '{"district":"Ludhiana","promoter":"Arun   Kumari (Individual)","address":"Basant City, Dad-Tharike Road","pin_code":"141012","registration_date":"06-Feb-2019","valid_upto":"03-Apr-2023"}'::jsonb;
  v_desc := 'Promoter: Arun   Kumari (Individual). Address: Basant City, Dad-Tharike Road. PIN: 141012. Valid upto: 03-Apr-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-RPR67-PR0417';
  v_meta := '{"district":"Rupnagar (Ropar)","promoter":"GOLDEN INFRASTRUCTURE PRIVATE LIMITED (Other than Individual)","address":"VILLAGE KOTLA NIHANG","pin_code":"140001","registration_date":"28-Jan-2019","valid_upto":"30-May-2022"}'::jsonb;
  v_desc := 'Promoter: GOLDEN INFRASTRUCTURE PRIVATE LIMITED (Other than Individual). Address: VILLAGE KOTLA NIHANG. PIN: 140001. Valid upto: 30-May-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PC0084';
  v_meta := '{"district":"Jalandhar","promoter":"G3S INFRA HOMES PRIVATE LIMITED (Other than Individual)","address":"MOHALLA SURAJ GANJ, PISHORIAN MOHALLA BASTI SHEIKH","pin_code":"144001","registration_date":"28-Jan-2019","valid_upto":"31-Aug-2023"}'::jsonb;
  v_desc := 'Promoter: G3S INFRA HOMES PRIVATE LIMITED (Other than Individual). Address: MOHALLA SURAJ GANJ, PISHORIAN MOHALLA BASTI SHEIKH. PIN: 144001. Valid upto: 31-Aug-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PC0085';
  v_meta := '{"district":"Patiala","promoter":"Dhillon Properties Pvt. Ltd. (Other than Individual)","address":"Nishant Highway, Village Kasba Urf Rurki","pin_code":"147021","registration_date":"28-Jan-2019","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: Dhillon Properties Pvt. Ltd. (Other than Individual). Address: Nishant Highway, Village Kasba Urf Rurki. PIN: 147021. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0421';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AMBIKA REALCON PRIVATE LIMITED (Other than Individual)","address":"FLORENCE PARK PHASE 3, SECTOR 14 NEW CHANDIGARH","pin_code":"121001","website":"www.ambikarealcon.com","registration_date":"25-Jan-2019","valid_upto":"31-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: AMBIKA REALCON PRIVATE LIMITED (Other than Individual). Address: FLORENCE PARK PHASE 3, SECTOR 14 NEW CHANDIGARH. PIN: 121001. Valid upto: 31-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0419';
  v_meta := '{"district":"Ludhiana","promoter":"UPKAR  KAUR (Individual)","address":"EKTA VIHAR EXT-1, DHANDHRA ROAD, POST OFFICE DHANDRA IA GILL","pin_code":"141116","registration_date":"28-Jan-2019","valid_upto":"30-Jun-2022"}'::jsonb;
  v_desc := 'Promoter: UPKAR  KAUR (Individual). Address: EKTA VIHAR EXT-1, DHANDHRA ROAD, POST OFFICE DHANDRA IA GILL. PIN: 141116. Valid upto: 30-Jun-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0418';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Canvas Promoters & Developers (Other than Individual)","address":"Wave Estate Sector 85 Mohali","pin_code":"140308","registration_date":"28-Jan-2019","valid_upto":"31-Mar-2021"}'::jsonb;
  v_desc := 'Promoter: Canvas Promoters & Developers (Other than Individual). Address: Wave Estate Sector 85 Mohali. PIN: 140308. Valid upto: 31-Mar-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0416';
  v_meta := '{"district":"Ludhiana","promoter":"Ireo Waterfront Pvt Ltd (Other than Individual)","address":"Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.","pin_code":"141001","website":"www.ireowaterfont.com","registration_date":"22-Jan-2019","valid_upto":"31-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: Ireo Waterfront Pvt Ltd (Other than Individual). Address: Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.. PIN: 141001. Valid upto: 31-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0415';
  v_meta := '{"district":"Ludhiana","promoter":"Ireo Waterfront Pvt Ltd (Other than Individual)","address":"Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.","pin_code":"141001","website":"www.ireowaterfont.com","registration_date":"22-Jan-2019","valid_upto":"31-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: Ireo Waterfront Pvt Ltd (Other than Individual). Address: Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.. PIN: 141001. Valid upto: 31-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0414';
  v_meta := '{"district":"Ludhiana","promoter":"Ireo Waterfront Pvt Ltd (Other than Individual)","address":"Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.","pin_code":"141001","website":"www.ireowaterfont.com","registration_date":"22-Jan-2019","valid_upto":"31-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: Ireo Waterfront Pvt Ltd (Other than Individual). Address: Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.. PIN: 141001. Valid upto: 31-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0382';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"Galaxy Heights Tower-A, Sector-66A","pin_code":"140306","website":"www.jantahousing.com","registration_date":"23-Aug-2018","valid_upto":"31-Oct-2019"}'::jsonb;
  v_desc := 'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: Galaxy Heights Tower-A, Sector-66A. PIN: 140306. Valid upto: 31-Oct-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PM0131';
  v_meta := '{"district":"Patiala","promoter":"Dhillon Properties Pvt. Ltd. (Other than Individual)","address":"Nishant Bagh, Village Daun Kalan","pin_code":"147021","registration_date":"21-Jan-2019","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: Dhillon Properties Pvt. Ltd. (Other than Individual). Address: Nishant Bagh, Village Daun Kalan. PIN: 147021. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FDK14-PR0411';
  v_meta := '{"district":"Faridkot","promoter":"Pawan Goods Merchants Co. Ltd (Other than Individual)","address":"KOTHKAPURA, FARIDKOT PUNJAB","pin_code":"151204","registration_date":"21-Jan-2019","valid_upto":"30-Jun-2019"}'::jsonb;
  v_desc := 'Promoter: Pawan Goods Merchants Co. Ltd (Other than Individual). Address: KOTHKAPURA, FARIDKOT PUNJAB. PIN: 151204. Valid upto: 30-Jun-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0412';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Mukesh   Rana (Individual)","address":"Phase 1, Near petrol pump, Ballopur road, Lalru","pin_code":"140501","registration_date":"21-Jan-2019","valid_upto":"30-Jun-2019"}'::jsonb;
  v_desc := 'Promoter: Mukesh   Rana (Individual). Address: Phase 1, Near petrol pump, Ballopur road, Lalru. PIN: 140501. Valid upto: 30-Jun-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PM0130';
  v_meta := '{"district":"Patiala","promoter":"Dhillon Empires Pvt. Ltd. (Other than Individual)","address":"NISHANT BAGH, Village Daun Kalan & Kasba Urf Rurki,","pin_code":"147021","registration_date":"21-Jan-2019","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: Dhillon Empires Pvt. Ltd. (Other than Individual). Address: NISHANT BAGH, Village Daun Kalan & Kasba Urf Rurki,. PIN: 147021. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PM0132';
  v_meta := '{"district":"Amritsar","promoter":"BLUE CITY TOWNSHIP & COLONISERS PRIVATE LIMITED (Other than Individual)","address":"BLUE CITY,  VILLAGE MEERAKOT KHURD / KALLN, MEERANKOT ROAD,, AMRITSAR","pin_code":"143001","registration_date":"21-Jan-2019","valid_upto":"30-Nov-2019"}'::jsonb;
  v_desc := 'Promoter: BLUE CITY TOWNSHIP & COLONISERS PRIVATE LIMITED (Other than Individual). Address: BLUE CITY,  VILLAGE MEERAKOT KHURD / KALLN, MEERANKOT ROAD,, AMRITSAR. PIN: 143001. Valid upto: 30-Nov-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0413';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PHENOMENAL CONSTRUCTION PRIVATE LIMITED (Other than Individual)","address":"VILLAGE GHOLUMAJRA, NAC LARLRU, DERAABASSI","pin_code":"140507","registration_date":"21-Jan-2019","valid_upto":"30-Jun-2020"}'::jsonb;
  v_desc := 'Promoter: PHENOMENAL CONSTRUCTION PRIVATE LIMITED (Other than Individual). Address: VILLAGE GHOLUMAJRA, NAC LARLRU, DERAABASSI. PIN: 140507. Valid upto: 30-Jun-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0409';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SAB Industries Limited (Other than Individual)","address":"On NH 22, Ambala Chandigarh road, Derabassi","pin_code":"140603","registration_date":"08-Jan-2019","valid_upto":"30-Sep-2023"}'::jsonb;
  v_desc := 'Promoter: SAB Industries Limited (Other than Individual). Address: On NH 22, Ambala Chandigarh road, Derabassi. PIN: 140603. Valid upto: 30-Sep-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR0407';
  v_meta := '{"district":"Patiala","promoter":"Shree Sarup Developers (Prop. Sahil Modi) (Other than Individual)","address":"City Homes, Rajpura Road, Patiala, Backside Kohinoor Palace,  Rajpura Road, Patiala","pin_code":"147001","registration_date":"18-Dec-2018","valid_upto":"31-Mar-2020"}'::jsonb;
  v_desc := 'Promoter: Shree Sarup Developers (Prop. Sahil Modi) (Other than Individual). Address: City Homes, Rajpura Road, Patiala, Backside Kohinoor Palace,  Rajpura Road, Patiala. PIN: 147001. Valid upto: 31-Mar-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0083';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Hale & Niche Developers (Other than Individual)","address":"CHD-AMBALA ROAD, VILLAGE SINGHPURA, ZIRAKPUR, DERABASSI","pin_code":"140603","website":"www.handpl.com","registration_date":"08-Jan-2019","valid_upto":"31-Mar-2021"}'::jsonb;
  v_desc := 'Promoter: Hale & Niche Developers (Other than Individual). Address: CHD-AMBALA ROAD, VILLAGE SINGHPURA, ZIRAKPUR, DERABASSI. PIN: 140603. Valid upto: 31-Mar-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0403';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"06-Dec-2018","valid_upto":"11-Feb-2022"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 11-Feb-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0406';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"04-Dec-2018","valid_upto":"11-Feb-2022"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 11-Feb-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0404';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"Falcon View Tower KLMN, Sector-66A","pin_code":"140306","website":"www.jantahousing.com","registration_date":"04-Dec-2018","valid_upto":"30-Sep-2020"}'::jsonb;
  v_desc := 'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: Falcon View Tower KLMN, Sector-66A. PIN: 140306. Valid upto: 30-Sep-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0402';
  v_meta := '{"district":"Ludhiana","promoter":"JANPATH ESTATES PRIVATE LIMITED  (Other than Individual)","address":"Village Bains and Birmi,, Tehsil and District Ludhiana.","pin_code":"142027","registration_date":"26-Nov-2018","valid_upto":"28-Jul-2017"}'::jsonb;
  v_desc := 'Promoter: JANPATH ESTATES PRIVATE LIMITED  (Other than Individual). Address: Village Bains and Birmi,, Tehsil and District Ludhiana.. PIN: 142027. Valid upto: 28-Jul-2017';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  RAISE NOTICE 'Part 10: updated % projects', v_updated;
END $$;