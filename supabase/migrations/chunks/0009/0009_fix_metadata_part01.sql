-- 0009_fix_metadata_part01.sql
-- Projects 1 to 200
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

  v_rera := 'PBRERA-SAS81-PM0013';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"SCO-39-42, Sector-82","pin_code":"140306","website":"www.jantahousing.com","registration_date":"31-Oct-2017","valid_upto":"29-May-2018"}'::jsonb;
  v_desc := 'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: SCO-39-42, Sector-82. PIN: 140306. Valid upto: 29-May-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PM0164';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"omaxe.com","registration_date":"27-Dec-2021","valid_upto":"30-Sep-2024"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 30-Sep-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI10-PC0424';
  v_meta := '{"district":"Bathinda","promoter":"Rampura Developers (Other than Individual)","address":"NH-7, Bathinda Chandigarh National Highway, Rampura Phul","pin_code":"151103","registration_date":"15-Apr-2026","valid_upto":"05-Oct-2030"}'::jsonb;
  v_desc := 'Promoter: Rampura Developers (Other than Individual). Address: NH-7, Bathinda Chandigarh National Highway, Rampura Phul. PIN: 151103. Valid upto: 05-Oct-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR1356';
  v_meta := '{"district":"Patiala","promoter":"Simran Land Promoters Private Limited (Other than Individual)","address":"Village Jhill, H.B. No. 21","pin_code":"147004","registration_date":"20-Mar-2026","valid_upto":"03-Oct-2030"}'::jsonb;
  v_desc := 'Promoter: Simran Land Promoters Private Limited (Other than Individual). Address: Village Jhill, H.B. No. 21. PIN: 147004. Valid upto: 03-Oct-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PC0428';
  v_meta := '{"district":"Jalandhar","promoter":"Grid Builders and Developers (Other than Individual)","address":"Village Nurmahal, H.B. No. 64, Tehsil Phillaur, Distt. Jalandhar","pin_code":"144039","registration_date":"28-Apr-2026","valid_upto":"31-Dec-2030"}'::jsonb;
  v_desc := 'Promoter: Grid Builders and Developers (Other than Individual). Address: Village Nurmahal, H.B. No. 64, Tehsil Phillaur, Distt. Jalandhar. PIN: 144039. Valid upto: 31-Dec-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PC0316';
  v_meta := '{"district":"Ludhiana","promoter":"SUVILLE BUILDERS & DEVELOPERS PVT. LTD (Other than Individual)","address":"Village Bhamian Kalan, Bholapur Road, Mundian Kalan, District Ludhiana","pin_code":"141015","registration_date":"16-May-2025","valid_upto":"20-Oct-2029"}'::jsonb;
  v_desc := 'Promoter: SUVILLE BUILDERS & DEVELOPERS PVT. LTD (Other than Individual). Address: Village Bhamian Kalan, Bholapur Road, Mundian Kalan, District Ludhiana. PIN: 141015. Valid upto: 20-Oct-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1294';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CRA Buildtech LLP (Other than Individual)","address":"Group Housing Site No.5, Sector 88","pin_code":"160055","registration_date":"17-Dec-2025","valid_upto":"31-Dec-2030"}'::jsonb;
  v_desc := 'Promoter: CRA Buildtech LLP (Other than Individual). Address: Group Housing Site No.5, Sector 88. PIN: 160055. Valid upto: 31-Dec-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH46-PR0991';
  v_meta := '{"district":"Ludhiana","promoter":"SANJEEV RAI SAGGAR (Individual)","address":"Village Haraichan, Tehsil Payal","pin_code":"141421","registration_date":"18-Jun-2024","valid_upto":"14-Sep-2028"}'::jsonb;
  v_desc := 'Promoter: SANJEEV RAI SAGGAR (Individual). Address: Village Haraichan, Tehsil Payal. PIN: 141421. Valid upto: 14-Sep-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR1043';
  v_meta := '{"district":"Jalandhar","promoter":"RRA ESTATES PRIVATE LIMITED (Other than Individual)","address":"Village Pholriwal, H.B. No. 252, Jalandhar","pin_code":"144022","registration_date":"09-Aug-2024","valid_upto":"24-Apr-2028"}'::jsonb;
  v_desc := 'Promoter: RRA ESTATES PRIVATE LIMITED (Other than Individual). Address: Village Pholriwal, H.B. No. 252, Jalandhar. PIN: 144022. Valid upto: 24-Apr-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PI0024';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MODERN ASSOCIATES (Other than Individual)","address":"VILLAGE BASMA (H.B.NO.227), TEHSIL BANUR, SAS NAGAR, VILLAGE KHERI GURNA, (H.B.NO.247) TEHSIL RAJPURA, PATIALA","pin_code":"160055","registration_date":"24-Jul-2024","valid_upto":"30-Sep-2029"}'::jsonb;
  v_desc := 'Promoter: MODERN ASSOCIATES (Other than Individual). Address: VILLAGE BASMA (H.B.NO.227), TEHSIL BANUR, SAS NAGAR, VILLAGE KHERI GURNA, (H.B.NO.247) TEHSIL RAJPURA, PATIALA. PIN: 160055. Valid upto: 30-Sep-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1075';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Ambika Infra Ventures Pvt Ltd (Other than Individual)","address":"Village Madhopur, H.B No. 11, Tehsil Derabassi, Dist. SAS Nagar","pin_code":"140507","registration_date":"26-Sep-2024","valid_upto":"11-Apr-2029"}'::jsonb;
  v_desc := 'Promoter: Ambika Infra Ventures Pvt Ltd (Other than Individual). Address: Village Madhopur, H.B No. 11, Tehsil Derabassi, Dist. SAS Nagar. PIN: 140507. Valid upto: 11-Apr-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1297';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Everest Developers (Other than Individual)","address":"Village Dayalpura, Zirakpur, Distt. SAS Nagar, Punjab, (H.B No.289)","pin_code":"140603","registration_date":"24-Dec-2025","valid_upto":"21-Aug-2030"}'::jsonb;
  v_desc := 'Promoter: Everest Developers (Other than Individual). Address: Village Dayalpura, Zirakpur, Distt. SAS Nagar, Punjab, (H.B No.289). PIN: 140603. Valid upto: 21-Aug-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1320';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Miwan Realcon LLP (Other than Individual)","address":"H. B. No. 9, Village Gulabgarh, Tehsil Derabassi","pin_code":"140507","registration_date":"03-Mar-2026","valid_upto":"30-Sep-2028"}'::jsonb;
  v_desc := 'Promoter: Miwan Realcon LLP (Other than Individual). Address: H. B. No. 9, Village Gulabgarh, Tehsil Derabassi. PIN: 140507. Valid upto: 30-Sep-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1264';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GSLBuilder and Promoters (Other than Individual)","address":"Village lohgarh, Zirakpur","pin_code":"140603","registration_date":"16-Oct-2025","valid_upto":"19-Jun-2030"}'::jsonb;
  v_desc := 'Promoter: GSLBuilder and Promoters (Other than Individual). Address: Village lohgarh, Zirakpur. PIN: 140603. Valid upto: 19-Jun-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL61-PR1031';
  v_meta := '{"district":"Patiala","promoter":"SHALIMAR DEVELOPERS  (Other than Individual)","address":"SANOUR, DISTT - PATIALA","pin_code":"147103","registration_date":"19-Jul-2024","valid_upto":"25-Jul-2028"}'::jsonb;
  v_desc := 'Promoter: SHALIMAR DEVELOPERS  (Other than Individual). Address: SANOUR, DISTT - PATIALA. PIN: 147103. Valid upto: 25-Jul-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR1180';
  v_meta := '{"district":"Jalandhar","promoter":"HAMILTON LAND DEVELOPERS PRIVATE LIMITED (Other than Individual)","address":"Harbast No 230, Village Rehmanpur, Jalandhar","pin_code":"144024","registration_date":"05-Jun-2025","valid_upto":"31-May-2028"}'::jsonb;
  v_desc := 'Promoter: HAMILTON LAND DEVELOPERS PRIVATE LIMITED (Other than Individual). Address: Harbast No 230, Village Rehmanpur, Jalandhar. PIN: 144024. Valid upto: 31-May-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0994';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"DIVYA BUILDERS & DEVELOPERS (Other than Individual)","address":"VILLAGE CHANALO,, KURALI","pin_code":"140103","registration_date":"21-Jun-2024","valid_upto":"30-Nov-2027"}'::jsonb;
  v_desc := 'Promoter: DIVYA BUILDERS & DEVELOPERS (Other than Individual). Address: VILLAGE CHANALO,, KURALI. PIN: 140103. Valid upto: 30-Nov-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1065';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"B N Builders And Promoters (Other than Individual)","address":"Village Jagadhari, HB no 37, Tehsil Derabassi, SAS Nagar","pin_code":"140507","registration_date":"11-Sep-2024","valid_upto":"10-Jun-2029"}'::jsonb;
  v_desc := 'Promoter: B N Builders And Promoters (Other than Individual). Address: Village Jagadhari, HB no 37, Tehsil Derabassi, SAS Nagar. PIN: 140507. Valid upto: 10-Jun-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1047';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KLV Builders & Developers (Other than Individual)","address":"Village Naugiari, H.B no. 282, District Mohali, SAS Nagar","pin_code":"140306","registration_date":"21-Aug-2024","valid_upto":"18-Dec-2028"}'::jsonb;
  v_desc := 'Promoter: KLV Builders & Developers (Other than Individual). Address: Village Naugiari, H.B no. 282, District Mohali, SAS Nagar. PIN: 140306. Valid upto: 18-Dec-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0313';
  v_meta := '{"district":"Ludhiana","promoter":"SOLITAIRE HEIGHTS (Other than Individual)","address":"Villages Sunet and Daad","pin_code":"141012","registration_date":"16-May-2025","valid_upto":"31-Mar-2028"}'::jsonb;
  v_desc := 'Promoter: SOLITAIRE HEIGHTS (Other than Individual). Address: Villages Sunet and Daad. PIN: 141012. Valid upto: 31-Mar-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1218';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"STELLARBILT LLP (Other than Individual)","address":"VILLAGE KISHANPURA, HADBAST 54, ZIRAKPUR","pin_code":"140603","registration_date":"02-Jul-2025","valid_upto":"01-May-2030"}'::jsonb;
  v_desc := 'Promoter: STELLARBILT LLP (Other than Individual). Address: VILLAGE KISHANPURA, HADBAST 54, ZIRAKPUR. PIN: 140603. Valid upto: 01-May-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0473';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Mannat Maple Construction Company (Other than Individual)","address":"Village-Dayalpura","pin_code":"140507","registration_date":"13-Jun-2019","valid_upto":"30-Apr-2021"}'::jsonb;
  v_desc := 'Promoter: Mannat Maple Construction Company (Other than Individual). Address: Village-Dayalpura. PIN: 140507. Valid upto: 30-Apr-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR1073';
  v_meta := '{"district":"Ludhiana","promoter":"Umbera Group (Other than Individual)","address":"Villages Dakha-1, Dakha-2, Issewal and Bhattian","pin_code":"141102","registration_date":"26-Sep-2024","valid_upto":"30-Jan-2029"}'::jsonb;
  v_desc := 'Promoter: Umbera Group (Other than Individual). Address: Villages Dakha-1, Dakha-2, Issewal and Bhattian. PIN: 141102. Valid upto: 30-Jan-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL35-PR1115';
  v_meta := '{"district":"Jalandhar","promoter":"ANKUSH  MARWAHA (Individual)","address":"Village Malri (H.B.No.28) and Village Nakodar-2 (H.B.No.31), Tehsil Nakodar","pin_code":"144040","registration_date":"17-Feb-2025","valid_upto":"09-Sep-2029"}'::jsonb;
  v_desc := 'Promoter: ANKUSH  MARWAHA (Individual). Address: Village Malri (H.B.No.28) and Village Nakodar-2 (H.B.No.31), Tehsil Nakodar. PIN: 144040. Valid upto: 09-Sep-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1392';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Raman   Kumar (Individual)","address":"Village Gazipur, Zirakpur, Sub Tehsil Zirakpur HB.NO-50, Dist SAS Nagar","pin_code":"140603","registration_date":"19-Jun-2026","valid_upto":"30-Oct-2030"}'::jsonb;
  v_desc := 'Promoter: Raman   Kumar (Individual). Address: Village Gazipur, Zirakpur, Sub Tehsil Zirakpur HB.NO-50, Dist SAS Nagar. PIN: 140603. Valid upto: 30-Oct-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR1072';
  v_meta := '{"district":"Patiala","promoter":"AMBIKA LAND DEVELOPERS (Other than Individual)","address":"HADBAST NO 71, NEAR GOLDEN CITY, SANAUR","pin_code":"147103","registration_date":"24-Sep-2024","valid_upto":"27-Jun-2029"}'::jsonb;
  v_desc := 'Promoter: AMBIKA LAND DEVELOPERS (Other than Individual). Address: HADBAST NO 71, NEAR GOLDEN CITY, SANAUR. PIN: 147103. Valid upto: 27-Jun-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1390';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gillco Developers and Builders Private Limited (Other than Individual)","address":"Village Ballomajra,  HB No. 32, Tehsil Mohali","pin_code":"160055","registration_date":"16-Jun-2026","valid_upto":"01-Jun-2030"}'::jsonb;
  v_desc := 'Promoter: Gillco Developers and Builders Private Limited (Other than Individual). Address: Village Ballomajra,  HB No. 32, Tehsil Mohali. PIN: 160055. Valid upto: 01-Jun-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MNS49-PC0434';
  v_meta := '{"district":"Mansa","promoter":"VS GOLD BUILDERS AND PROMOTERS LLP (Other than Individual)","address":"VILLAGE BUDHLADA, DISTT.MANSA","pin_code":"151502","registration_date":"16-Jun-2026","valid_upto":"16-Feb-2031"}'::jsonb;
  v_desc := 'Promoter: VS GOLD BUILDERS AND PROMOTERS LLP (Other than Individual). Address: VILLAGE BUDHLADA, DISTT.MANSA. PIN: 151502. Valid upto: 16-Feb-2031';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PR1393';
  v_meta := '{"district":"Barnala","promoter":"The Sun View Enclave (Other than Individual)","address":"Opposite YS Genxt School, Sanghera Byepass Road, Barnala","pin_code":"148101","registration_date":"16-Jun-2026","valid_upto":"31-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: The Sun View Enclave (Other than Individual). Address: Opposite YS Genxt School, Sanghera Byepass Road, Barnala. PIN: 148101. Valid upto: 31-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1389';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Balaji Land Planners LLP (Other than Individual)","address":"Village Dayalpura, H.B. No. 289, Zirakpur","pin_code":"140603","registration_date":"16-Jun-2026","valid_upto":"28-Feb-2031"}'::jsonb;
  v_desc := 'Promoter: Balaji Land Planners LLP (Other than Individual). Address: Village Dayalpura, H.B. No. 289, Zirakpur. PIN: 140603. Valid upto: 28-Feb-2031';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR1391';
  v_meta := '{"district":"Patiala","promoter":"The Patiala Improvement Trust  (Other than Individual)","address":"Sanour Road , Opposite Mohindra College","pin_code":"147001","registration_date":"16-Jun-2026","valid_upto":"03-Nov-2030"}'::jsonb;
  v_desc := 'Promoter: The Patiala Improvement Trust  (Other than Individual). Address: Sanour Road , Opposite Mohindra College. PIN: 147001. Valid upto: 03-Nov-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0444';
  v_meta := '{"district":"Ludhiana","promoter":"Umbera Group (Other than Individual)","address":"Village Bhanohar, Sub-Tehsil Mullanpur Dakha, District Ludhiana.","pin_code":"141102","website":"www.umberagroup.com","registration_date":"10-Apr-2019","valid_upto":"28-Feb-2024"}'::jsonb;
  v_desc := 'Promoter: Umbera Group (Other than Individual). Address: Village Bhanohar, Sub-Tehsil Mullanpur Dakha, District Ludhiana.. PIN: 141102. Valid upto: 28-Feb-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0388';
  v_meta := '{"district":"Jalandhar","promoter":"Triworld developers (Other than Individual)","address":"66 feet road village qadianwali, H.B.No 292, Tehsil Jalandhar","pin_code":"144001","registration_date":"18-Sep-2018","valid_upto":"05-Feb-2023"}'::jsonb;
  v_desc := 'Promoter: Triworld developers (Other than Individual). Address: 66 feet road village qadianwali, H.B.No 292, Tehsil Jalandhar. PIN: 144001. Valid upto: 05-Feb-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR1143';
  v_meta := '{"district":"Ludhiana","promoter":"OMNIA REALITY PRIVATE LIMITED (Other than Individual)","address":"Village Talwara","pin_code":"142027","registration_date":"15-May-2025","valid_upto":"27-Jun-2029"}'::jsonb;
  v_desc := 'Promoter: OMNIA REALITY PRIVATE LIMITED (Other than Individual). Address: Village Talwara. PIN: 142027. Valid upto: 27-Jun-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR0953';
  v_meta := '{"district":"Bathinda","promoter":"Lovish Promoters and Developers Pvt. Ltd. (Other than Individual)","address":"Badal Road, Village Naruana","pin_code":"151001","registration_date":"06-Jun-2024","valid_upto":"31-Dec-2027"}'::jsonb;
  v_desc := 'Promoter: Lovish Promoters and Developers Pvt. Ltd. (Other than Individual). Address: Badal Road, Village Naruana. PIN: 151001. Valid upto: 31-Dec-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0890';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MADHAV DEVELOPERS (Other than Individual)","address":"VILLAGE SANAULI TEHSIL. ZIRAKPUR, DIST. SAS NAGAR (MOHALI)","pin_code":"140603","registration_date":"08-Jan-2024","valid_upto":"08-Jun-2028"}'::jsonb;
  v_desc := 'Promoter: MADHAV DEVELOPERS (Other than Individual). Address: VILLAGE SANAULI TEHSIL. ZIRAKPUR, DIST. SAS NAGAR (MOHALI). PIN: 140603. Valid upto: 08-Jun-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL64-PC0293';
  v_meta := '{"district":"Patiala","promoter":"URBAN INFRA DEVELOPERS (Other than Individual)","address":"HADBAST NO 176 AND 177 VILLAGE NIYAL, PATRAN PATIALA ROAD, PATRAN","pin_code":"147105","registration_date":"01-Jan-2025","valid_upto":"01-Jul-2029"}'::jsonb;
  v_desc := 'Promoter: URBAN INFRA DEVELOPERS (Other than Individual). Address: HADBAST NO 176 AND 177 VILLAGE NIYAL, PATRAN PATIALA ROAD, PATRAN. PIN: 147105. Valid upto: 01-Jul-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PM0166';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KLV Colonisers Private Limited (Other than Individual)","address":"Village ChapparChiri Kalan , Tehsil and Distrcit S.A.S Nagar Mohali","pin_code":"140308","registration_date":"10-Jun-2022","valid_upto":"31-Mar-2027"}'::jsonb;
  v_desc := 'Promoter: KLV Colonisers Private Limited (Other than Individual). Address: Village ChapparChiri Kalan , Tehsil and Distrcit S.A.S Nagar Mohali. PIN: 140308. Valid upto: 31-Mar-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PM0125';
  v_meta := '{"district":"Amritsar","promoter":"DSK realtors pvt Ltd (Other than Individual)","address":"Vill-Heir,Bal and Meerakot Kalan","pin_code":"141503","registration_date":"29-Nov-2018","valid_upto":"31-Mar-2024"}'::jsonb;
  v_desc := 'Promoter: DSK realtors pvt Ltd (Other than Individual). Address: Vill-Heir,Bal and Meerakot Kalan. PIN: 141503. Valid upto: 31-Mar-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0294';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MEYDAN INFRA LLP (Other than Individual)","address":"Hadbast No. 43, Village Singhpura, Zirakpur","pin_code":"140603","registration_date":"17-Jan-2025","valid_upto":"28-Apr-2029"}'::jsonb;
  v_desc := 'Promoter: MEYDAN INFRA LLP (Other than Individual). Address: Hadbast No. 43, Village Singhpura, Zirakpur. PIN: 140603. Valid upto: 28-Apr-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MNS49-PR1383';
  v_meta := '{"district":"Mansa","promoter":"Laddi Builders and Developers  (Other than Individual)","address":"Situated in Boha  the Revenue Tehsil of Budhlada, H.B No 137, Distt. Mansa","pin_code":"151502","registration_date":"11-Jun-2026","valid_upto":"26-Feb-2031"}'::jsonb;
  v_desc := 'Promoter: Laddi Builders and Developers  (Other than Individual). Address: Situated in Boha  the Revenue Tehsil of Budhlada, H.B No 137, Distt. Mansa. PIN: 151502. Valid upto: 26-Feb-2031';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MKT58-PC0431';
  v_meta := '{"district":"Muktsar","promoter":"Cee Dee Developers Pvt Ltd (Other than Individual)","address":"Village Jandwala Charat Singh, Tehsil Malout, Distt Shri Muktsar Sahib","pin_code":"152123","registration_date":"11-Jun-2026","valid_upto":"16-Mar-2032"}'::jsonb;
  v_desc := 'Promoter: Cee Dee Developers Pvt Ltd (Other than Individual). Address: Village Jandwala Charat Singh, Tehsil Malout, Distt Shri Muktsar Sahib. PIN: 152123. Valid upto: 16-Mar-2032';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL65-PR1386';
  v_meta := '{"district":"Patiala","promoter":"Brotherhood Builders (Other than Individual)","address":"NH 07, Rajpura-bZirakpur National Highway Village Pehar Khurd & Dhakansu Kalan, Rajpura","pin_code":"140101","registration_date":"11-Jun-2026","valid_upto":"07-Jan-2031"}'::jsonb;
  v_desc := 'Promoter: Brotherhood Builders (Other than Individual). Address: NH 07, Rajpura-bZirakpur National Highway Village Pehar Khurd & Dhakansu Kalan, Rajpura. PIN: 140101. Valid upto: 07-Jan-2031';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PR1384';
  v_meta := '{"district":"Barnala","promoter":"TARA BUILDERS (Other than Individual)","address":"RAIKOT ROAD, NEAR GAUSHALA, BARNALA","pin_code":"148101","registration_date":"11-Jun-2026","valid_upto":"11-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: TARA BUILDERS (Other than Individual). Address: RAIKOT ROAD, NEAR GAUSHALA, BARNALA. PIN: 148101. Valid upto: 11-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1388';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SK BUILDERS (Other than Individual)","address":"Village  Lalru,  H.B No 218 , Distt. SAS Nagar ,Punjab","pin_code":"140501","registration_date":"11-Jun-2026","valid_upto":"16-Feb-2031"}'::jsonb;
  v_desc := 'Promoter: SK BUILDERS (Other than Individual). Address: Village  Lalru,  H.B No 218 , Distt. SAS Nagar ,Punjab. PIN: 140501. Valid upto: 16-Feb-2031';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-HSP32-PC0432';
  v_meta := '{"district":"Hoshiarpur","promoter":"CM SQUARES (Other than Individual)","address":"VILLAGE BUDHEWAL (H.B. NO. 273), KHARAK BALRA (H.B.NO.274)","pin_code":"144211","registration_date":"11-Jun-2026","valid_upto":"27-Aug-2030"}'::jsonb;
  v_desc := 'Promoter: CM SQUARES (Other than Individual). Address: VILLAGE BUDHEWAL (H.B. NO. 273), KHARAK BALRA (H.B.NO.274). PIN: 144211. Valid upto: 27-Aug-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FGS18-PR1387';
  v_meta := '{"district":"Fatehgarh Sahib","promoter":"Deep Builders and Developers (Other than Individual)","address":"Revenue estate of Village Khamanon Kalan, H.B no. 301, Tehsil and District Khamanon, District Fatehgarh Sahib","pin_code":"141801","registration_date":"11-Jun-2026","valid_upto":"21-Jan-2031"}'::jsonb;
  v_desc := 'Promoter: Deep Builders and Developers (Other than Individual). Address: Revenue estate of Village Khamanon Kalan, H.B no. 301, Tehsil and District Khamanon, District Fatehgarh Sahib. PIN: 141801. Valid upto: 21-Jan-2031';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL64-PR1385';
  v_meta := '{"district":"Patiala","promoter":"GBD Group (Other than Individual)","address":"Village Kangthala (H.B. No. 209) and Shergarh (H.B. No. 137), Tehsil Patran","pin_code":"147105","registration_date":"11-Jun-2026","valid_upto":"31-Jan-2031"}'::jsonb;
  v_desc := 'Promoter: GBD Group (Other than Individual). Address: Village Kangthala (H.B. No. 209) and Shergarh (H.B. No. 137), Tehsil Patran. PIN: 147105. Valid upto: 31-Jan-2031';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MNS49-PC0433';
  v_meta := '{"district":"Mansa","promoter":"PARTAP INFRASTRUCTURE LLP (Other than Individual)","address":"VILLAGE BAHADURPUR, BARETA","pin_code":"151501","registration_date":"11-Jun-2026","valid_upto":"20-Jan-2031"}'::jsonb;
  v_desc := 'Promoter: PARTAP INFRASTRUCTURE LLP (Other than Individual). Address: VILLAGE BAHADURPUR, BARETA. PIN: 151501. Valid upto: 20-Jan-2031';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0260';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KBD LANDCORP (Other than Individual)","address":"VILLAGE DAUN MAJRA, HADBAST 76, MC KHARAR","pin_code":"140301","registration_date":"19-Jul-2024","valid_upto":"15-May-2029"}'::jsonb;
  v_desc := 'Promoter: KBD LANDCORP (Other than Individual). Address: VILLAGE DAUN MAJRA, HADBAST 76, MC KHARAR. PIN: 140301. Valid upto: 15-May-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR1382';
  v_meta := '{"district":"Bathinda","promoter":"Aggarwal Builders and Promoters (Other than Individual)","address":"Village Patti Jhutti, Ring Road","pin_code":"151001","registration_date":"29-May-2026","valid_upto":"18-Feb-2031"}'::jsonb;
  v_desc := 'Promoter: Aggarwal Builders and Promoters (Other than Individual). Address: Village Patti Jhutti, Ring Road. PIN: 151001. Valid upto: 18-Feb-2031';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR0136';
  v_meta := '{"district":"Patiala","promoter":"Tricone Projects India Limited (Other than Individual)","address":"Village - Hardaspur and Kasiana, Sirhind Road","pin_code":"147001","registration_date":"04-Oct-2017","valid_upto":"03-Oct-2020"}'::jsonb;
  v_desc := 'Promoter: Tricone Projects India Limited (Other than Individual). Address: Village - Hardaspur and Kasiana, Sirhind Road. PIN: 147001. Valid upto: 03-Oct-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1041';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Aerofront Developers (Other than Individual)","address":"village ballomajra,sector 118, SAS Nagar","pin_code":"140307","registration_date":"09-Aug-2024","valid_upto":"23-May-2029"}'::jsonb;
  v_desc := 'Promoter: Aerofront Developers (Other than Individual). Address: village ballomajra,sector 118, SAS Nagar. PIN: 140307. Valid upto: 23-May-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MNS49-PR1242';
  v_meta := '{"district":"Mansa","promoter":"R D Developers (Other than Individual)","address":"Hadbast No. 229, Budhlada, Mansa","pin_code":"151502","registration_date":"25-Aug-2025","valid_upto":"31-Jan-2030"}'::jsonb;
  v_desc := 'Promoter: R D Developers (Other than Individual). Address: Hadbast No. 229, Budhlada, Mansa. PIN: 151502. Valid upto: 31-Jan-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1240';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Ravinder  Singh (Individual)","address":"Village Padiala,, Hadbast No.379, Kurali, Tehsil Kharar,","pin_code":"140103","registration_date":"27-Aug-2025","valid_upto":"12-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: Ravinder  Singh (Individual). Address: Village Padiala,, Hadbast No.379, Kurali, Tehsil Kharar,. PIN: 140103. Valid upto: 12-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PR0531';
  v_meta := '{"district":"Amritsar","promoter":"Vishnurupa Developers Private Limited (Other than Individual)","address":"Village Manawala, NH1, GT Road","pin_code":"143115","registration_date":"18-Oct-2019","valid_upto":"30-Nov-2023"}'::jsonb;
  v_desc := 'Promoter: Vishnurupa Developers Private Limited (Other than Individual). Address: Village Manawala, NH1, GT Road. PIN: 143115. Valid upto: 30-Nov-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL19-PR1039';
  v_meta := '{"district":"Fazilka","promoter":"Singla Estates and Holdings Co (Other than Individual)","address":"Malout-Sri Ganganagar Byepass, Near Subhash Nagar, Abohar","pin_code":"152116","registration_date":"09-Aug-2024","valid_upto":"30-May-2029"}'::jsonb;
  v_desc := 'Promoter: Singla Estates and Holdings Co (Other than Individual). Address: Malout-Sri Ganganagar Byepass, Near Subhash Nagar, Abohar. PIN: 152116. Valid upto: 30-May-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR1058';
  v_meta := '{"district":"Patiala","promoter":"MAGNUS HOUSING (Other than Individual)","address":"VILLAGE JHILL, HADBAST NO.21, SIRHIND ROAD,","pin_code":"147001","registration_date":"06-Sep-2024","valid_upto":"13-Jun-2029"}'::jsonb;
  v_desc := 'Promoter: MAGNUS HOUSING (Other than Individual). Address: VILLAGE JHILL, HADBAST NO.21, SIRHIND ROAD,. PIN: 147001. Valid upto: 13-Jun-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR1314';
  v_meta := '{"district":"Jalandhar","promoter":"G L Groups (Other than Individual)","address":"Village Suchi H.B No. 215 Teh & Distt. Jalandhar","pin_code":"144009","registration_date":"17-Feb-2026","valid_upto":"03-Oct-2030"}'::jsonb;
  v_desc := 'Promoter: G L Groups (Other than Individual). Address: Village Suchi H.B No. 215 Teh & Distt. Jalandhar. PIN: 144009. Valid upto: 03-Oct-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1183';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MU BUILDERS AND PROMOTERS (Other than Individual)","address":"VILLAGE RAMGARH BHUDA, ZIRAKPUR","pin_code":"140603","registration_date":"05-Jun-2025","valid_upto":"30-Sep-2029"}'::jsonb;
  v_desc := 'Promoter: MU BUILDERS AND PROMOTERS (Other than Individual). Address: VILLAGE RAMGARH BHUDA, ZIRAKPUR. PIN: 140603. Valid upto: 30-Sep-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1008';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"N K SHARMA ENTERPRISES PVT LTD (Other than Individual)","address":"HADBAST NO. 50 , VILLAGE GAZIPUR, ZIRAKPUR","pin_code":"140603","registration_date":"17-Jul-2024","valid_upto":"25-Feb-2029"}'::jsonb;
  v_desc := 'Promoter: N K SHARMA ENTERPRISES PVT LTD (Other than Individual). Address: HADBAST NO. 50 , VILLAGE GAZIPUR, ZIRAKPUR. PIN: 140603. Valid upto: 25-Feb-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0928';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"JOY ERA (Other than Individual)","address":"SITE NO.3, SECTOR 88","pin_code":"140501","registration_date":"07-May-2024","valid_upto":"01-Sep-2030"}'::jsonb;
  v_desc := 'Promoter: JOY ERA (Other than Individual). Address: SITE NO.3, SECTOR 88. PIN: 140501. Valid upto: 01-Sep-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR78-PR1233';
  v_meta := '{"district":"Sangrur","promoter":"GLOBAL REALTY (Other than Individual)","address":"VILLAGE SUNAM B, HADBAST NO. 28, TEHSIL SUNAM","pin_code":"148028","registration_date":"21-Jul-2025","valid_upto":"18-Feb-2030"}'::jsonb;
  v_desc := 'Promoter: GLOBAL REALTY (Other than Individual). Address: VILLAGE SUNAM B, HADBAST NO. 28, TEHSIL SUNAM. PIN: 148028. Valid upto: 18-Feb-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1018';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"VAMANA DEVELOPERS (Other than Individual)","address":"Revenue Estate of Nabha, Sub-tehsil Zirakpur , Tehsil -Dera Bassi, Distt.SAS Nagar ,Punjab","pin_code":"140603","registration_date":"16-Jul-2024","valid_upto":"05-May-2029"}'::jsonb;
  v_desc := 'Promoter: VAMANA DEVELOPERS (Other than Individual). Address: Revenue Estate of Nabha, Sub-tehsil Zirakpur , Tehsil -Dera Bassi, Distt.SAS Nagar ,Punjab. PIN: 140603. Valid upto: 05-May-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-RPR68-PC0251';
  v_meta := '{"district":"Rupnagar (Ropar)","promoter":"Maa Bhagwati Developers  (Other than Individual)","address":"Vill. Rampur Mehrab, Chandigarh-Ludhiana Highway, Morinda","pin_code":"140101","registration_date":"21-Jun-2024","valid_upto":"13-May-2029"}'::jsonb;
  v_desc := 'Promoter: Maa Bhagwati Developers  (Other than Individual). Address: Vill. Rampur Mehrab, Chandigarh-Ludhiana Highway, Morinda. PIN: 140101. Valid upto: 13-May-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0230';
  v_meta := '{"district":"Ludhiana","promoter":"Rauni Developers Private Limited (Other than Individual)","address":"Village Fatehpur Awana, HB No. 152, Tehsil And Dist. Ludhiana","pin_code":"141001","registration_date":"06-Jun-2024","valid_upto":"20-Sep-2028"}'::jsonb;
  v_desc := 'Promoter: Rauni Developers Private Limited (Other than Individual). Address: Village Fatehpur Awana, HB No. 152, Tehsil And Dist. Ludhiana. PIN: 141001. Valid upto: 20-Sep-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR1379';
  v_meta := '{"district":"Ludhiana","promoter":"Jaspal Singh Grewal (Individual)","address":"Bhamian Khurd (H.B. No. 180) Tehsil Ludhiana","pin_code":"141015","registration_date":"28-Apr-2026","valid_upto":"15-Jan-2031"}'::jsonb;
  v_desc := 'Promoter: Jaspal Singh Grewal (Individual). Address: Bhamian Khurd (H.B. No. 180) Tehsil Ludhiana. PIN: 141015. Valid upto: 15-Jan-2031';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FGS17-PC0302';
  v_meta := '{"district":"Fatehgarh Sahib","promoter":"ASHOK   KUMAR BANSAL (Individual)","address":"Brahman Majra, Sirhind, Hadbast No. 138, Brahman Majra Sirhind-Patiala Road SH-12A","pin_code":"140406","registration_date":"17-Apr-2025","valid_upto":"05-Dec-2028"}'::jsonb;
  v_desc := 'Promoter: ASHOK   KUMAR BANSAL (Individual). Address: Brahman Majra, Sirhind, Hadbast No. 138, Brahman Majra Sirhind-Patiala Road SH-12A. PIN: 140406. Valid upto: 05-Dec-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0942';
  v_meta := '{"district":"Jalandhar","promoter":"BHAVNOOR SINGH BEDI (Individual)","address":"Village Fatehpur H.B.No.259, Village Phoolpur H.B.No.290 and Village Lambri H.B.No.266, Tehsil Jalandhar-1 and 2","pin_code":"144039","registration_date":"30-May-2024","valid_upto":"04-Apr-2029"}'::jsonb;
  v_desc := 'Promoter: BHAVNOOR SINGH BEDI (Individual). Address: Village Fatehpur H.B.No.259, Village Phoolpur H.B.No.290 and Village Lambri H.B.No.266, Tehsil Jalandhar-1 and 2. PIN: 144039. Valid upto: 04-Apr-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL19-PR1083';
  v_meta := '{"district":"Fazilka","promoter":"Makkar Land Promoters LLP (Other than Individual)","address":"Abohar-Kiker Road,, Abohar","pin_code":"152116","registration_date":"30-Sep-2024","valid_upto":"30-Jan-2029"}'::jsonb;
  v_desc := 'Promoter: Makkar Land Promoters LLP (Other than Individual). Address: Abohar-Kiker Road,, Abohar. PIN: 152116. Valid upto: 30-Jan-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0816';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Prabhat Estate (Other than Individual)","address":"Village Gazipur, Zirakpur, District S.A.S. Nagar, Punjab, Tehsil Dera Bassi","pin_code":"140603","registration_date":"15-Jul-2022","valid_upto":"01-Nov-2024"}'::jsonb;
  v_desc := 'Promoter: Prabhat Estate (Other than Individual). Address: Village Gazipur, Zirakpur, District S.A.S. Nagar, Punjab, Tehsil Dera Bassi. PIN: 140603. Valid upto: 01-Nov-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0202';
  v_meta := '{"district":"Ludhiana","promoter":"Gulab Valley Developers Pvt. Ltd. (Other than Individual)","address":"Ludhiana Ferozpur Road, NH 95,, Village Dakha 1 & 2, Tehsil Mullanpur Dakha,","pin_code":"141001","registration_date":"26-Apr-2024","valid_upto":"06-Feb-2028"}'::jsonb;
  v_desc := 'Promoter: Gulab Valley Developers Pvt. Ltd. (Other than Individual). Address: Ludhiana Ferozpur Road, NH 95,, Village Dakha 1 & 2, Tehsil Mullanpur Dakha,. PIN: 141001. Valid upto: 06-Feb-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0761';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Aggarwal Buildtech (Other than Individual)","address":"Village Chandogobindgarg, HB No. 179, Sector 124","pin_code":"140301","registration_date":"23-Dec-2021","valid_upto":"31-Oct-2026"}'::jsonb;
  v_desc := 'Promoter: Aggarwal Buildtech (Other than Individual). Address: Village Chandogobindgarg, HB No. 179, Sector 124. PIN: 140301. Valid upto: 31-Oct-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0781';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Singla Builders and promoters limited (Other than Individual)","address":"Sante Majra, HADBAST No.186","pin_code":"140301","website":"https://www.sbpgroup.in","registration_date":"28-Apr-2022","valid_upto":"26-Jan-2027"}'::jsonb;
  v_desc := 'Promoter: Singla Builders and promoters limited (Other than Individual). Address: Sante Majra, HADBAST No.186. PIN: 140301. Valid upto: 26-Jan-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR78-PR1381';
  v_meta := '{"district":"Sangrur","promoter":"Lasya Mansions Private Limited (Other than Individual)","address":"Village Sunam B, H.B No. 28, Tehsil Sunam, Distt. Sangrur","pin_code":"148028","registration_date":"05-May-2026","valid_upto":"20-Nov-2030"}'::jsonb;
  v_desc := 'Promoter: Lasya Mansions Private Limited (Other than Individual). Address: Village Sunam B, H.B No. 28, Tehsil Sunam, Distt. Sangrur. PIN: 148028. Valid upto: 20-Nov-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MKT58-PR1380';
  v_meta := '{"district":"Muktsar","promoter":"Platinum Developers (Other than Individual)","address":"VILLAGE UDEKARAN, KOTKAPURA ROAD, SRI MUKTSAR SAHIB","pin_code":"152026","registration_date":"05-May-2026","valid_upto":"22-Apr-2030"}'::jsonb;
  v_desc := 'Promoter: Platinum Developers (Other than Individual). Address: VILLAGE UDEKARAN, KOTKAPURA ROAD, SRI MUKTSAR SAHIB. PIN: 152026. Valid upto: 22-Apr-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL19-PC0430';
  v_meta := '{"district":"Fazilka","promoter":"Sandeep Theatre Prop. Sameer Nagpal (Other than Individual)","address":"Thana Road (Bus Stand Road), Tehsil Abohar","pin_code":"152116","registration_date":"05-May-2026","valid_upto":"31-Jan-2031"}'::jsonb;
  v_desc := 'Promoter: Sandeep Theatre Prop. Sameer Nagpal (Other than Individual). Address: Thana Road (Bus Stand Road), Tehsil Abohar. PIN: 152116. Valid upto: 31-Jan-2031';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI09-PR1204';
  v_meta := '{"district":"Bathinda","promoter":"RBM PROMOTERS (Other than Individual)","address":"VILLAGE MAUR TEHSIL MAUR","pin_code":"151509","registration_date":"16-Jun-2025","valid_upto":"09-Dec-2029"}'::jsonb;
  v_desc := 'Promoter: RBM PROMOTERS (Other than Individual). Address: VILLAGE MAUR TEHSIL MAUR. PIN: 151509. Valid upto: 09-Dec-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1247';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AMJAY BUILDERS AND PROMOTERS LLP (Other than Individual)","address":"Village Dhanoni, Hadbast no 36, Tehsil Derabassi","pin_code":"140506","registration_date":"09-Sep-2025","valid_upto":"26-Sep-2029"}'::jsonb;
  v_desc := 'Promoter: AMJAY BUILDERS AND PROMOTERS LLP (Other than Individual). Address: Village Dhanoni, Hadbast no 36, Tehsil Derabassi. PIN: 140506. Valid upto: 26-Sep-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL34-PC0429';
  v_meta := '{"district":"Jalandhar","promoter":"Eastview Village Infra Private Limited (Other than Individual)","address":"VILLAGE DHADDA, H.B.No.6, Tehsil Adampur (Bhogpur)","pin_code":"144201","registration_date":"28-Apr-2026","valid_upto":"29-Oct-2030"}'::jsonb;
  v_desc := 'Promoter: Eastview Village Infra Private Limited (Other than Individual). Address: VILLAGE DHADDA, H.B.No.6, Tehsil Adampur (Bhogpur). PIN: 144201. Valid upto: 29-Oct-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL34-PR1343';
  v_meta := '{"district":"Jalandhar","promoter":"Satnam Singh Aujala (Individual)","address":"Basti Danishmanda H.B.No.312","pin_code":"144002","registration_date":"24-Apr-2026","valid_upto":"18-Dec-2030"}'::jsonb;
  v_desc := 'Promoter: Satnam Singh Aujala (Individual). Address: Basti Danishmanda H.B.No.312. PIN: 144002. Valid upto: 18-Dec-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR1374';
  v_meta := '{"district":"Patiala","promoter":"MB Developers and Builders (Other than Individual)","address":"H.B. No. 71, Village Sanour, Tehsil and Distt. Patiala","pin_code":"147103","registration_date":"28-Apr-2026","valid_upto":"31-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: MB Developers and Builders (Other than Individual). Address: H.B. No. 71, Village Sanour, Tehsil and Distt. Patiala. PIN: 147103. Valid upto: 31-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-HSP31-PR1375';
  v_meta := '{"district":"Hoshiarpur","promoter":"S. Ajmeer    Kalkat (Individual)","address":"VILLAGE SHERGARH, H.B.NO.250","pin_code":"146203","registration_date":"28-Apr-2026","valid_upto":"28-Jan-2031"}'::jsonb;
  v_desc := 'Promoter: S. Ajmeer    Kalkat (Individual). Address: VILLAGE SHERGARH, H.B.NO.250. PIN: 146203. Valid upto: 28-Jan-2031';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1376';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KTS Enterprises  (Other than Individual)","address":"Village Padiala, Hadbast No. 379, within MC limit Kurali, Tehsil Kharar, Distt. SAS Nagar","pin_code":"140103","registration_date":"28-Apr-2026","valid_upto":"16-Nov-2030"}'::jsonb;
  v_desc := 'Promoter: KTS Enterprises  (Other than Individual). Address: Village Padiala, Hadbast No. 379, within MC limit Kurali, Tehsil Kharar, Distt. SAS Nagar. PIN: 140103. Valid upto: 16-Nov-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MKT58-PR1377';
  v_meta := '{"district":"Muktsar","promoter":"A.G.M. Enterprises (Other than Individual)","address":"Abohar Road, H.B. No. 54, Sri Muktsar Sahib","pin_code":"152026","registration_date":"28-Apr-2026","valid_upto":"31-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: A.G.M. Enterprises (Other than Individual). Address: Abohar Road, H.B. No. 54, Sri Muktsar Sahib. PIN: 152026. Valid upto: 31-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PR1378';
  v_meta := '{"district":"Barnala","promoter":"Divya Colonizers and Builders Pvt. Ltd. (Other than Individual)","address":"Adjoining D Mart, Village Handiaya, H. B. No. 58, Barnala","pin_code":"148101","registration_date":"28-Apr-2026","valid_upto":"30-Sep-2030"}'::jsonb;
  v_desc := 'Promoter: Divya Colonizers and Builders Pvt. Ltd. (Other than Individual). Address: Adjoining D Mart, Village Handiaya, H. B. No. 58, Barnala. PIN: 148101. Valid upto: 30-Sep-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0417';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Prithvi Raj Infratech (Other than Individual)","address":"Village kailon, Sector 114, S.A.S Nagar","pin_code":"140307","registration_date":"24-Apr-2026","valid_upto":"14-Dec-2030"}'::jsonb;
  v_desc := 'Promoter: Prithvi Raj Infratech (Other than Individual). Address: Village kailon, Sector 114, S.A.S Nagar. PIN: 140307. Valid upto: 14-Dec-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZR22-PR1284';
  v_meta := '{"district":"Firozpur","promoter":"SHRI RAM DEVELOPERS (Other than Individual)","address":"Dera Socha Sauda Road, Fazilka","pin_code":"152123","registration_date":"17-Nov-2025","valid_upto":"09-Sep-2029"}'::jsonb;
  v_desc := 'Promoter: SHRI RAM DEVELOPERS (Other than Individual). Address: Dera Socha Sauda Road, Fazilka. PIN: 152123. Valid upto: 09-Sep-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL64-PR0934';
  v_meta := '{"district":"Patiala","promoter":"Parmod Kumar And Others (Other than Individual)","address":"VILLAGE PATRAN H.B. NO. 176,, TEHSIL- PATRAN","pin_code":"147105","registration_date":"06-May-2024","valid_upto":"01-Apr-2026"}'::jsonb;
  v_desc := 'Promoter: Parmod Kumar And Others (Other than Individual). Address: VILLAGE PATRAN H.B. NO. 176,, TEHSIL- PATRAN. PIN: 147105. Valid upto: 01-Apr-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR1186';
  v_meta := '{"district":"Patiala","promoter":"Shree Radha Krishan Developers  (Other than Individual)","address":"Sanaur, District Patiala","pin_code":"147103","registration_date":"05-Jun-2025","valid_upto":"24-Sep-2028"}'::jsonb;
  v_desc := 'Promoter: Shree Radha Krishan Developers  (Other than Individual). Address: Sanaur, District Patiala. PIN: 147103. Valid upto: 24-Sep-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0312';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Pankaj   Gupta (Individual)","address":"Village Rauni HB no 14, Tehsil Derabassi","pin_code":"39346","registration_date":"16-May-2025","valid_upto":"18-Dec-2029"}'::jsonb;
  v_desc := 'Promoter: Pankaj   Gupta (Individual). Address: Village Rauni HB no 14, Tehsil Derabassi. PIN: 39346. Valid upto: 18-Dec-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MKT57-PR1251';
  v_meta := '{"district":"Muktsar","promoter":"Shri Prayag Builders LLP (Other than Individual)","address":"Malout- Bathinda Road to Shekhu Link Road, Malout","pin_code":"152107","registration_date":"01-Oct-2025","valid_upto":"16-Jun-2030"}'::jsonb;
  v_desc := 'Promoter: Shri Prayag Builders LLP (Other than Individual). Address: Malout- Bathinda Road to Shekhu Link Road, Malout. PIN: 152107. Valid upto: 16-Jun-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR1165';
  v_meta := '{"district":"Ludhiana","promoter":"TRIMURTI HOMES PRIVATE LIMITED (Other than Individual)","address":"Village Daad and village Threekay","pin_code":"142022","registration_date":"22-May-2025","valid_upto":"22-Aug-2029"}'::jsonb;
  v_desc := 'Promoter: TRIMURTI HOMES PRIVATE LIMITED (Other than Individual). Address: Village Daad and village Threekay. PIN: 142022. Valid upto: 22-Aug-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR1121';
  v_meta := '{"district":"Bathinda","promoter":"PREMIER DEVELOPERS (Other than Individual)","address":"AMARPURA BADAL ROAD BATHINDA, SAME","pin_code":"151001","registration_date":"15-Apr-2025","valid_upto":"02-May-2029"}'::jsonb;
  v_desc := 'Promoter: PREMIER DEVELOPERS (Other than Individual). Address: AMARPURA BADAL ROAD BATHINDA, SAME. PIN: 151001. Valid upto: 02-May-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR1012';
  v_meta := '{"district":"Ludhiana","promoter":"AGI Majestic Living Private Limited (Other than Individual)","address":"Village Daad (H.B. no. 279) and Thakkarwal (H.B. no. 280), Pakhowal Road,, Tehsil Ludhiana West","pin_code":"141012","registration_date":"17-Jul-2024","valid_upto":"28-Feb-2029"}'::jsonb;
  v_desc := 'Promoter: AGI Majestic Living Private Limited (Other than Individual). Address: Village Daad (H.B. no. 279) and Thakkarwal (H.B. no. 280), Pakhowal Road,, Tehsil Ludhiana West. PIN: 141012. Valid upto: 28-Feb-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR1158';
  v_meta := '{"district":"Ludhiana","promoter":"Kuldeep  Singh  Khaira (Individual)","address":"Village Laddian Kalan HB no 105, Tehsil Ludhiana (west)","pin_code":"141008","registration_date":"20-May-2025","valid_upto":"09-Sep-2029"}'::jsonb;
  v_desc := 'Promoter: Kuldeep  Singh  Khaira (Individual). Address: Village Laddian Kalan HB no 105, Tehsil Ludhiana (west). PIN: 141008. Valid upto: 09-Sep-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR1243';
  v_meta := '{"district":"Ludhiana","promoter":"Jay Ell Housing LLP (Other than Individual)","address":"Village Bulara","pin_code":"141116","website":"www.jayellhousing.com","registration_date":"04-Sep-2025","valid_upto":"30-Oct-2029"}'::jsonb;
  v_desc := 'Promoter: Jay Ell Housing LLP (Other than Individual). Address: Village Bulara. PIN: 141116. Valid upto: 30-Oct-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1137';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Aeorpark Developers  (Other than Individual)","address":"Village Dyalpura, Hadbast No. 289, Tehsil Sub Zirakpur, Distt. SAS Nagar","pin_code":"140601","registration_date":"28-Apr-2025","valid_upto":"28-Nov-2029"}'::jsonb;
  v_desc := 'Promoter: Aeorpark Developers  (Other than Individual). Address: Village Dyalpura, Hadbast No. 289, Tehsil Sub Zirakpur, Distt. SAS Nagar. PIN: 140601. Valid upto: 28-Nov-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR1238';
  v_meta := '{"district":"Ludhiana","promoter":"Umbera Infra (Other than Individual)","address":"Village Issewal, HB No. 135, Tehsil Mullanpur Dakha","pin_code":"141102","registration_date":"04-Sep-2025","valid_upto":"31-Dec-2029"}'::jsonb;
  v_desc := 'Promoter: Umbera Infra (Other than Individual). Address: Village Issewal, HB No. 135, Tehsil Mullanpur Dakha. PIN: 141102. Valid upto: 31-Dec-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MNS50-PR1236';
  v_meta := '{"district":"Mansa","promoter":"Archit Land Promoters (Other than Individual)","address":"Village Jawaharke and Mansa Kalan, Tehsil & District Mansa","pin_code":"151505","registration_date":"05-Aug-2025","valid_upto":"25-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: Archit Land Promoters (Other than Individual). Address: Village Jawaharke and Mansa Kalan, Tehsil & District Mansa. PIN: 151505. Valid upto: 25-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0297';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Velora Buildtech  LLP (Other than Individual)","address":"Village Banur, Tehsil Banur, Dist. S.A.S Nagar","pin_code":"140601","registration_date":"21-Mar-2025","valid_upto":"02-May-2029"}'::jsonb;
  v_desc := 'Promoter: Velora Buildtech  LLP (Other than Individual). Address: Village Banur, Tehsil Banur, Dist. S.A.S Nagar. PIN: 140601. Valid upto: 02-May-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1150';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Velora Buildtech  LLP (Other than Individual)","address":"Village Sekhanmajra, Tehsil Mohali","pin_code":"140306","registration_date":"20-May-2025","valid_upto":"23-Feb-2030"}'::jsonb;
  v_desc := 'Promoter: Velora Buildtech  LLP (Other than Individual). Address: Village Sekhanmajra, Tehsil Mohali. PIN: 140306. Valid upto: 23-Feb-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1173';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AM BUILDTECH (Other than Individual)","address":"VILLAGE KARALA, SUB TEHSIL BANUR","pin_code":"140601","registration_date":"28-May-2025","valid_upto":"27-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: AM BUILDTECH (Other than Individual). Address: VILLAGE KARALA, SUB TEHSIL BANUR. PIN: 140601. Valid upto: 27-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1178';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GRS INFRA HOUSING (Other than Individual)","address":"Harbast No 53, Village Peermuchhala, Zirakpur","pin_code":"140603","registration_date":"05-Jun-2025","valid_upto":"19-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: GRS INFRA HOUSING (Other than Individual). Address: Harbast No 53, Village Peermuchhala, Zirakpur. PIN: 140603. Valid upto: 19-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PI0022';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"NG ESTATE (Other than Individual)","address":"Village-Basauli Hb. No. 164, Teh. Derabassi,","pin_code":"140501","registration_date":"07-Jun-2024","valid_upto":"07-May-2032"}'::jsonb;
  v_desc := 'Promoter: NG ESTATE (Other than Individual). Address: Village-Basauli Hb. No. 164, Teh. Derabassi,. PIN: 140501. Valid upto: 07-May-2032';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0858';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MOTIA BUILDERS AND PROMOTERS (Other than Individual)","address":"KHASRA NO. 801, 802/1 , 806/1, 807/1 ,807/2 , 808, 809, VILLAGE DYALPURA  SUB TEHSIL ZIRAKPUR","pin_code":"140603","registration_date":"16-Jun-2023","valid_upto":"18-Nov-2025"}'::jsonb;
  v_desc := 'Promoter: MOTIA BUILDERS AND PROMOTERS (Other than Individual). Address: KHASRA NO. 801, 802/1 , 806/1, 807/1 ,807/2 , 808, 809, VILLAGE DYALPURA  SUB TEHSIL ZIRAKPUR. PIN: 140603. Valid upto: 18-Nov-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1092';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"INNOTION LAND DEVELOERS PVT. LTD. (Other than Individual)","address":"VILLAGE KHANPUR, HADBAST 183, MC KHARAR","pin_code":"140301","registration_date":"11-Oct-2024","valid_upto":"23-Apr-2029"}'::jsonb;
  v_desc := 'Promoter: INNOTION LAND DEVELOERS PVT. LTD. (Other than Individual). Address: VILLAGE KHANPUR, HADBAST 183, MC KHARAR. PIN: 140301. Valid upto: 23-Apr-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0459';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sanju Kumar  Builders & Promoters (Other than Individual)","address":"Village- Gulabgarh, Tehsil- Derabassi","pin_code":"140501","registration_date":"14-May-2019","valid_upto":"30-Apr-2022"}'::jsonb;
  v_desc := 'Promoter: Sanju Kumar  Builders & Promoters (Other than Individual). Address: Village- Gulabgarh, Tehsil- Derabassi. PIN: 140501. Valid upto: 30-Apr-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0764';
  v_meta := '{"district":"Ludhiana","promoter":"KBC REALTORS PRIVATE LIMITED (Other than Individual)","address":"Village Mansooran, Pakhowal Road,, Tehsil and District Ludhiana.","pin_code":"142029","registration_date":"12-Jan-2022","valid_upto":"09-Dec-2026"}'::jsonb;
  v_desc := 'Promoter: KBC REALTORS PRIVATE LIMITED (Other than Individual). Address: Village Mansooran, Pakhowal Road,, Tehsil and District Ludhiana.. PIN: 142029. Valid upto: 09-Dec-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0166';
  v_meta := '{"district":"Ludhiana","promoter":"Emerald Lands (India) Pvt. Ltd. (Other than Individual)","address":"Village- Mullanpur and Talwandi Khurd, Off Ferozepur Road","pin_code":"141101","registration_date":"13-Dec-2019","valid_upto":"30-Sep-2017"}'::jsonb;
  v_desc := 'Promoter: Emerald Lands (India) Pvt. Ltd. (Other than Individual). Address: Village- Mullanpur and Talwandi Khurd, Off Ferozepur Road. PIN: 141101. Valid upto: 30-Sep-2017';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PR0530';
  v_meta := '{"district":"Amritsar","promoter":"PARADOR DEVELOPERS AMRITSAR PRIVATE LIMITED (Other than Individual)","address":"Village Mannawala and Rakhjheeta, G.T. Road, Amritsar - 1","pin_code":"143109","website":"www.experionvirsa.com","registration_date":"04-Oct-2019","valid_upto":"12-Jun-2024"}'::jsonb;
  v_desc := 'Promoter: PARADOR DEVELOPERS AMRITSAR PRIVATE LIMITED (Other than Individual). Address: Village Mannawala and Rakhjheeta, G.T. Road, Amritsar - 1. PIN: 143109. Valid upto: 12-Jun-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0860';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Cee Dee Developers Pvt Ltd (Other than Individual)","address":"Greenwoods, Sector 115,, Vill. Tolemajra,","pin_code":"140307","registration_date":"31-Jul-2023","valid_upto":"28-Mar-2028"}'::jsonb;
  v_desc := 'Promoter: Cee Dee Developers Pvt Ltd (Other than Individual). Address: Greenwoods, Sector 115,, Vill. Tolemajra,. PIN: 140307. Valid upto: 28-Mar-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0853';
  v_meta := '{"district":"Jalandhar","promoter":"Ananta Empires Private Limited  (Other than Individual)","address":"Village Pholriwal (HB 252) Tehsil Jalandhar -1, Dist Jalandhar , Punjab","pin_code":"144003","registration_date":"08-Jun-2023","valid_upto":"31-Mar-2026"}'::jsonb;
  v_desc := 'Promoter: Ananta Empires Private Limited  (Other than Individual). Address: Village Pholriwal (HB 252) Tehsil Jalandhar -1, Dist Jalandhar , Punjab. PIN: 144003. Valid upto: 31-Mar-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0321';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PUMA REALTORS PRIVATE LIMITED (Other than Individual)","address":"Village Dholl, Sector 98","pin_code":"140308","registration_date":"23-Mar-2018","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: PUMA REALTORS PRIVATE LIMITED (Other than Individual). Address: Village Dholl, Sector 98. PIN: 140308. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0330';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PUMA REALTORS PRIVATE LIMITED (Other than Individual)","address":"Village Dholl, Sector 98","pin_code":"140308","registration_date":"11-Apr-2018","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: PUMA REALTORS PRIVATE LIMITED (Other than Individual). Address: Village Dholl, Sector 98. PIN: 140308. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR1370';
  v_meta := '{"district":"Ludhiana","promoter":"OMAXE LIMITED (Other than Individual)","address":"Omaxe Royal Nest  Near Omaxe Royal Residency, Pakhowal Road Thakkarwal","pin_code":"142022","website":"www.omaxe.com","registration_date":"22-Apr-2026","valid_upto":"31-Jan-2031"}'::jsonb;
  v_desc := 'Promoter: OMAXE LIMITED (Other than Individual). Address: Omaxe Royal Nest  Near Omaxe Royal Residency, Pakhowal Road Thakkarwal. PIN: 142022. Valid upto: 31-Jan-2031';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PM0176';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GIP REALTY MANAGEMENT LLP (Other than Individual)","address":"Village Naugiari Tehsil and Distt. SAS nagar","pin_code":"140306","registration_date":"17-Apr-2026","valid_upto":"05-Feb-2031"}'::jsonb;
  v_desc := 'Promoter: GIP REALTY MANAGEMENT LLP (Other than Individual). Address: Village Naugiari Tehsil and Distt. SAS nagar. PIN: 140306. Valid upto: 05-Feb-2031';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR1373';
  v_meta := '{"district":"Bathinda","promoter":"Sheesh Mahal Developers Limited (Other than Individual)","address":"Backside Sheesh Mahal Colony, Dabwali Road","pin_code":"151001","registration_date":"17-Apr-2026","valid_upto":"18-Nov-2030"}'::jsonb;
  v_desc := 'Promoter: Sheesh Mahal Developers Limited (Other than Individual). Address: Backside Sheesh Mahal Colony, Dabwali Road. PIN: 151001. Valid upto: 18-Nov-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1372';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"NH PROMOTERS (Other than Individual)","address":"Village Kurali, Hadbast No. 121, within M.C. Kurali, Tehsil Kharar,","pin_code":"140103","registration_date":"17-Apr-2026","valid_upto":"23-Jan-2030"}'::jsonb;
  v_desc := 'Promoter: NH PROMOTERS (Other than Individual). Address: Village Kurali, Hadbast No. 121, within M.C. Kurali, Tehsil Kharar,. PIN: 140103. Valid upto: 23-Jan-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL19-PR1371';
  v_meta := '{"district":"Fazilka","promoter":"SHRE SURYACON DEVELOPERS (Other than Individual)","address":"GANGANAGAR ROAD, VILLAGE. ALAMGARH","pin_code":"152116","registration_date":"17-Apr-2026","valid_upto":"06-Jul-2030"}'::jsonb;
  v_desc := 'Promoter: SHRE SURYACON DEVELOPERS (Other than Individual). Address: GANGANAGAR ROAD, VILLAGE. ALAMGARH. PIN: 152116. Valid upto: 06-Jul-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR77-PR1368';
  v_meta := '{"district":"Sangrur","promoter":"Sunrise Builders & Developers (Other than Individual)","address":"Village Sangrur A & B, Hadbast No.23, Tehsil Sangrur","pin_code":"148001","registration_date":"17-Apr-2026","valid_upto":"06-Nov-2030"}'::jsonb;
  v_desc := 'Promoter: Sunrise Builders & Developers (Other than Individual). Address: Village Sangrur A & B, Hadbast No.23, Tehsil Sangrur. PIN: 148001. Valid upto: 06-Nov-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PC0426';
  v_meta := '{"district":"Patiala","promoter":"RSG INFRA VENTURES PRIVATE LIMITED (Other than Individual)","address":"VILLAGE JHILL, HADBAST NO.21","pin_code":"147001","registration_date":"15-Apr-2026","valid_upto":"26-Jul-2030"}'::jsonb;
  v_desc := 'Promoter: RSG INFRA VENTURES PRIVATE LIMITED (Other than Individual). Address: VILLAGE JHILL, HADBAST NO.21. PIN: 147001. Valid upto: 26-Jul-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0425';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MOTIAZ LANDMARK LLP (Other than Individual)","address":"Village Chatt, Hudbust no 286, Adj. Peer Baba Dargah, Zirakpur- Patiala Highway","pin_code":"140603","registration_date":"15-Apr-2026","valid_upto":"20-Apr-2030"}'::jsonb;
  v_desc := 'Promoter: MOTIAZ LANDMARK LLP (Other than Individual). Address: Village Chatt, Hudbust no 286, Adj. Peer Baba Dargah, Zirakpur- Patiala Highway. PIN: 140603. Valid upto: 20-Apr-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0427';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Hardip Singh   Sandhu (Individual)","address":"Sante Majra, Kharar landran Road, MC Kharar","pin_code":"140307","registration_date":"15-Apr-2026","valid_upto":"06-Aug-2030"}'::jsonb;
  v_desc := 'Promoter: Hardip Singh   Sandhu (Individual). Address: Sante Majra, Kharar landran Road, MC Kharar. PIN: 140307. Valid upto: 06-Aug-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MKT58-PC0423';
  v_meta := '{"district":"Muktsar","promoter":"Jashandeep Singh Chahal (Individual)","address":"Malout Sri-Muktsar Road, Tehsil and Distt. Sri Muktsar Sahib","pin_code":"152026","registration_date":"15-Apr-2026","valid_upto":"31-Jul-2030"}'::jsonb;
  v_desc := 'Promoter: Jashandeep Singh Chahal (Individual). Address: Malout Sri-Muktsar Road, Tehsil and Distt. Sri Muktsar Sahib. PIN: 152026. Valid upto: 31-Jul-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL19-PR1367';
  v_meta := '{"district":"Fazilka","promoter":"CCC SURYACON DEVELOPERS (Other than Individual)","address":"Sitto Hanumangarh road,, Byepass Azimgarh, Abohar","pin_code":"152116","registration_date":"15-Apr-2026","valid_upto":"02-Nov-2030"}'::jsonb;
  v_desc := 'Promoter: CCC SURYACON DEVELOPERS (Other than Individual). Address: Sitto Hanumangarh road,, Byepass Azimgarh, Abohar. PIN: 152116. Valid upto: 02-Nov-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR1366';
  v_meta := '{"district":"Ludhiana","promoter":"GREENFIELD DEVELOPER (Other than Individual)","address":"Village Lalton kalan-1, H.B NO. 291 TEHSIL","pin_code":"142022","registration_date":"15-Apr-2026","valid_upto":"30-Sep-2030"}'::jsonb;
  v_desc := 'Promoter: GREENFIELD DEVELOPER (Other than Individual). Address: Village Lalton kalan-1, H.B NO. 291 TEHSIL. PIN: 142022. Valid upto: 30-Sep-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR1365';
  v_meta := '{"district":"Ludhiana","promoter":"Futurama Infra LLP (Other than Individual)","address":"Village Bagga Kalan 122, Rajjowal 112, Talwara 149, Bagga Khurd 111. Teh Ludhiana west","pin_code":"141008","registration_date":"15-Apr-2026","valid_upto":"23-Sep-2030"}'::jsonb;
  v_desc := 'Promoter: Futurama Infra LLP (Other than Individual). Address: Village Bagga Kalan 122, Rajjowal 112, Talwara 149, Bagga Khurd 111. Teh Ludhiana west. PIN: 141008. Valid upto: 23-Sep-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR72-PR1364';
  v_meta := '{"district":"Sangrur","promoter":"NN Ventures (Other than Individual)","address":"Village Bhawanigarh, Hadbast No. 40, Tehsil Bhawanigarh","pin_code":"148026","registration_date":"15-Apr-2026","valid_upto":"31-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: NN Ventures (Other than Individual). Address: Village Bhawanigarh, Hadbast No. 40, Tehsil Bhawanigarh. PIN: 148026. Valid upto: 31-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PM0157';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Landchester Infrastructure associates (Other than Individual)","address":"Sector 102 A SAS Nagar Mohali, PROJECT AREA IS IN MASTER PLAN BANUR AS PER CLU","pin_code":"160055","registration_date":"05-Nov-2020","valid_upto":"15-Sep-2025"}'::jsonb;
  v_desc := 'Promoter: Landchester Infrastructure associates (Other than Individual). Address: Sector 102 A SAS Nagar Mohali, PROJECT AREA IS IN MASTER PLAN BANUR AS PER CLU. PIN: 160055. Valid upto: 15-Sep-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH43-PR1362';
  v_meta := '{"district":"Ludhiana","promoter":"Diamond Developers (Other than Individual)","address":"Village Rattanheri, Tehsil Khanna","pin_code":"141401","registration_date":"09-Apr-2026","valid_upto":"31-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: Diamond Developers (Other than Individual). Address: Village Rattanheri, Tehsil Khanna. PIN: 141401. Valid upto: 31-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PR1363';
  v_meta := '{"district":"Barnala","promoter":"DEEPAK PROMOTERS & DEVELOPERS (Other than Individual)","address":"NEAR TRUCK UNION, DHANAULA ROAD, DHANAULA","pin_code":"148105","registration_date":"09-Apr-2026","valid_upto":"09-Aug-2030"}'::jsonb;
  v_desc := 'Promoter: DEEPAK PROMOTERS & DEVELOPERS (Other than Individual). Address: NEAR TRUCK UNION, DHANAULA ROAD, DHANAULA. PIN: 148105. Valid upto: 09-Aug-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1063';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SHAM EXOTIC GROUP (Other than Individual)","address":"GH SITE NO-2, MEDICITY NEW CHANDIGARH","pin_code":"140901","registration_date":"11-Sep-2024","valid_upto":"30-Apr-2029"}'::jsonb;
  v_desc := 'Promoter: SHAM EXOTIC GROUP (Other than Individual). Address: GH SITE NO-2, MEDICITY NEW CHANDIGARH. PIN: 140901. Valid upto: 30-Apr-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PM0020';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Curo India Private Limited (Other than Individual)","address":"Curo-One, Mullanpur Garibdass","pin_code":"140901","registration_date":"25-Sep-2017","valid_upto":"30-Jun-2023"}'::jsonb;
  v_desc := 'Promoter: Curo India Private Limited (Other than Individual). Address: Curo-One, Mullanpur Garibdass. PIN: 140901. Valid upto: 30-Jun-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR03-PC0190';
  v_meta := '{"district":"Amritsar","promoter":"VEER COLONISERS AND BUILDERS PVT. LTD. (Other than Individual)","address":"Village Kamboh, Ajnala Road","pin_code":"143001","registration_date":"24-Nov-2023","valid_upto":"31-May-2028"}'::jsonb;
  v_desc := 'Promoter: VEER COLONISERS AND BUILDERS PVT. LTD. (Other than Individual). Address: Village Kamboh, Ajnala Road. PIN: 143001. Valid upto: 31-May-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0240';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AEROCITY BUSINESS CENTRE (Other than Individual)","address":"Village Chhat, Aerocity Lights, Zirakpur Patiala Highway, Zirakpur","pin_code":"140603","registration_date":"12-Jun-2024","valid_upto":"30-Jun-2029"}'::jsonb;
  v_desc := 'Promoter: AEROCITY BUSINESS CENTRE (Other than Individual). Address: Village Chhat, Aerocity Lights, Zirakpur Patiala Highway, Zirakpur. PIN: 140603. Valid upto: 30-Jun-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR1245';
  v_meta := '{"district":"Jalandhar","promoter":"GENUINE LAND DEVELOPER (Other than Individual)","address":"Village Nahal, H.B. 280","pin_code":"144629","registration_date":"09-Sep-2025","valid_upto":"23-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: GENUINE LAND DEVELOPER (Other than Individual). Address: Village Nahal, H.B. 280. PIN: 144629. Valid upto: 23-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PC0285';
  v_meta := '{"district":"Ludhiana","promoter":"BOHRR INFRA (Other than Individual)","address":"Village Daad, Hadbast No. 279","pin_code":"142022","registration_date":"30-Sep-2024","valid_upto":"05-Dec-2028"}'::jsonb;
  v_desc := 'Promoter: BOHRR INFRA (Other than Individual). Address: Village Daad, Hadbast No. 279. PIN: 142022. Valid upto: 05-Dec-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PR0983';
  v_meta := '{"district":"Barnala","promoter":"SALDHA LAND DEVELOPERS (Other than Individual)","address":"HB NO. 55, VILLAGE HANDIAYA C, BARNALA","pin_code":"148101","registration_date":"24-Jun-2024","valid_upto":"01-Nov-2028"}'::jsonb;
  v_desc := 'Promoter: SALDHA LAND DEVELOPERS (Other than Individual). Address: HB NO. 55, VILLAGE HANDIAYA C, BARNALA. PIN: 148101. Valid upto: 01-Nov-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR1074';
  v_meta := '{"district":"Jalandhar","promoter":"RBB Enterprises (Other than Individual)","address":"Village Pholriwal (H.B. No. 252) Tehsil Jalandhar-1","pin_code":"144022","registration_date":"24-Sep-2024","valid_upto":"26-Jun-2029"}'::jsonb;
  v_desc := 'Promoter: RBB Enterprises (Other than Individual). Address: Village Pholriwal (H.B. No. 252) Tehsil Jalandhar-1. PIN: 144022. Valid upto: 26-Jun-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PC0406';
  v_meta := '{"district":"Bathinda","promoter":"Malwa Developers (Other than Individual)","address":"H.B. No. 72, Barnala-Bathinda Road, Opposite Bansal Hospita, Rampura Phul","pin_code":"151103","registration_date":"30-Mar-2026","valid_upto":"20-Jul-2027"}'::jsonb;
  v_desc := 'Promoter: Malwa Developers (Other than Individual). Address: H.B. No. 72, Barnala-Bathinda Road, Opposite Bansal Hospita, Rampura Phul. PIN: 151103. Valid upto: 20-Jul-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR1361';
  v_meta := '{"district":"Ludhiana","promoter":"GOLDUST INFRA (Other than Individual)","address":"Ludhiana Malerkotla Road, Hadbast No 270, Village Sarinh","pin_code":"141116","registration_date":"30-Mar-2026","valid_upto":"01-Sep-2030"}'::jsonb;
  v_desc := 'Promoter: GOLDUST INFRA (Other than Individual). Address: Ludhiana Malerkotla Road, Hadbast No 270, Village Sarinh. PIN: 141116. Valid upto: 01-Sep-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PC0422';
  v_meta := '{"district":"Patiala","promoter":"PERRY  GOYAL (Individual)","address":"MULTIUSE SITE-1, PUDA ENCLAVE-1, ANIMAL HUSBANDRY SITE NABHA ROAD,PATIALA","pin_code":"147001","registration_date":"30-Mar-2026","valid_upto":"26-Jun-2030"}'::jsonb;
  v_desc := 'Promoter: PERRY  GOYAL (Individual). Address: MULTIUSE SITE-1, PUDA ENCLAVE-1, ANIMAL HUSBANDRY SITE NABHA ROAD,PATIALA. PIN: 147001. Valid upto: 26-Jun-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL21-PR1360';
  v_meta := '{"district":"Fazilka","promoter":"Deepak   Kumar (Individual)","address":"Jalalabad - Ferozpur road, near Platinum Honda Showroom, Jalalabad, Distt. Fazilka","pin_code":"152024","registration_date":"30-Mar-2026","valid_upto":"28-Dec-2030"}'::jsonb;
  v_desc := 'Promoter: Deepak   Kumar (Individual). Address: Jalalabad - Ferozpur road, near Platinum Honda Showroom, Jalalabad, Distt. Fazilka. PIN: 152024. Valid upto: 28-Dec-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0421';
  v_meta := '{"district":"Ludhiana","promoter":"TARUNJEET  SINGH (Individual)","address":"B-27, VILLAGE GILL-2, DUGRI ROAD","pin_code":"141116","registration_date":"30-Mar-2026","valid_upto":"24-Dec-2030"}'::jsonb;
  v_desc := 'Promoter: TARUNJEET  SINGH (Individual). Address: B-27, VILLAGE GILL-2, DUGRI ROAD. PIN: 141116. Valid upto: 24-Dec-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR1349';
  v_meta := '{"district":"Bathinda","promoter":"VIVEK INFRAPROJECTS PRIVATE LIMITED (Other than Individual)","address":"Hazi Rattan Link Road, Bathinda","pin_code":"151001","registration_date":"25-Mar-2026","valid_upto":"11-Dec-2030"}'::jsonb;
  v_desc := 'Promoter: VIVEK INFRAPROJECTS PRIVATE LIMITED (Other than Individual). Address: Hazi Rattan Link Road, Bathinda. PIN: 151001. Valid upto: 11-Dec-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1350';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Dhir Constructions  (Other than Individual)","address":"Village Saini Majra and Ghandoli, PR-4,, New Chandigarh, Distt. S.A.S Nagar","pin_code":"140901","registration_date":"20-Mar-2026","valid_upto":"28-Feb-2031"}'::jsonb;
  v_desc := 'Promoter: Dhir Constructions  (Other than Individual). Address: Village Saini Majra and Ghandoli, PR-4,, New Chandigarh, Distt. S.A.S Nagar. PIN: 140901. Valid upto: 28-Feb-2031';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0420';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KHANAURI BUILDERS AND DEVELOPERS PRIVATE LIMITED (Other than Individual)","address":"Village Radiala and Daun Majra, Hadbast No.76 and 77,","pin_code":"140301","registration_date":"20-Mar-2026","valid_upto":"26-Jan-2031"}'::jsonb;
  v_desc := 'Promoter: KHANAURI BUILDERS AND DEVELOPERS PRIVATE LIMITED (Other than Individual). Address: Village Radiala and Daun Majra, Hadbast No.76 and 77,. PIN: 140301. Valid upto: 26-Jan-2031';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR1346';
  v_meta := '{"district":"Bathinda","promoter":"DURGA DEVELOPERS  (Other than Individual)","address":"VILLAGE & TEHSIL, RAMPURA PHUL","pin_code":"151103","registration_date":"24-Mar-2026","valid_upto":"11-Dec-2030"}'::jsonb;
  v_desc := 'Promoter: DURGA DEVELOPERS  (Other than Individual). Address: VILLAGE & TEHSIL, RAMPURA PHUL. PIN: 151103. Valid upto: 11-Dec-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH48-PR1354';
  v_meta := '{"district":"Ludhiana","promoter":"United Developers And Builders  (Other than Individual)","address":"Inside Muncipal Council Limits of Samrala, Tehsil Samrala, Distt. Ludhiana","pin_code":"141114","registration_date":"24-Mar-2026","valid_upto":"16-Nov-2030"}'::jsonb;
  v_desc := 'Promoter: United Developers And Builders  (Other than Individual). Address: Inside Muncipal Council Limits of Samrala, Tehsil Samrala, Distt. Ludhiana. PIN: 141114. Valid upto: 16-Nov-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FDK14-PR1352';
  v_meta := '{"district":"Faridkot","promoter":"SUMEET  KUMAR (Individual)","address":"H.B No. 129, Near Dera Pharma Wala","pin_code":"151204","registration_date":"24-Mar-2026","valid_upto":"08-Jun-2030"}'::jsonb;
  v_desc := 'Promoter: SUMEET  KUMAR (Individual). Address: H.B No. 129, Near Dera Pharma Wala. PIN: 151204. Valid upto: 08-Jun-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL19-PR1347';
  v_meta := '{"district":"Fazilka","promoter":"Sukhwinder Singh Sandhu (Individual)","address":"Kandwala Road, Vill- Alamgarh, Tehsil- Abohar","pin_code":"152116","registration_date":"24-Mar-2026","valid_upto":"31-Dec-2029"}'::jsonb;
  v_desc := 'Promoter: Sukhwinder Singh Sandhu (Individual). Address: Kandwala Road, Vill- Alamgarh, Tehsil- Abohar. PIN: 152116. Valid upto: 31-Dec-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR1353';
  v_meta := '{"district":"Bathinda","promoter":"LV DEVELOPERS (Other than Individual)","address":"Village Gill kalan, Tehsil Phul","pin_code":"151103","registration_date":"24-Mar-2026","valid_upto":"24-Sep-2030"}'::jsonb;
  v_desc := 'Promoter: LV DEVELOPERS (Other than Individual). Address: Village Gill kalan, Tehsil Phul. PIN: 151103. Valid upto: 24-Sep-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR1351';
  v_meta := '{"district":"Patiala","promoter":"Rudra Land Promoters (Other than Individual)","address":"Village Tafazalpura, H.B. No. 31, Tehsil and Distt. Patiala","pin_code":"147001","registration_date":"24-Mar-2026","valid_upto":"31-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: Rudra Land Promoters (Other than Individual). Address: Village Tafazalpura, H.B. No. 31, Tehsil and Distt. Patiala. PIN: 147001. Valid upto: 31-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR1348';
  v_meta := '{"district":"Patiala","promoter":"Devi Dayal Goyal (Individual)","address":"Opposite Omaxe City, sirhind road, Village Baran, teh and distt patiala","pin_code":"147001","registration_date":"24-Mar-2026","valid_upto":"30-May-2029"}'::jsonb;
  v_desc := 'Promoter: Devi Dayal Goyal (Individual). Address: Opposite Omaxe City, sirhind road, Village Baran, teh and distt patiala. PIN: 147001. Valid upto: 30-May-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR77-PR1357';
  v_meta := '{"district":"Sangrur","promoter":"GOBIND DEVELOPERS AND BUILDERS (Other than Individual)","address":"LONGOWAL C,D AND E, HADBAST NO 4","pin_code":"148106","registration_date":"20-Mar-2026","valid_upto":"20-Nov-2030"}'::jsonb;
  v_desc := 'Promoter: GOBIND DEVELOPERS AND BUILDERS (Other than Individual). Address: LONGOWAL C,D AND E, HADBAST NO 4. PIN: 148106. Valid upto: 20-Nov-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1358';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MM BUILDERS AND PROMOTERS (Other than Individual)","address":"HADBAST NO. 42, VILLAGE RAMGARH BHUDA, ZIRAKPUR, DERA BASSI","pin_code":"140603","registration_date":"20-Mar-2026","valid_upto":"30-Sep-2029"}'::jsonb;
  v_desc := 'Promoter: MM BUILDERS AND PROMOTERS (Other than Individual). Address: HADBAST NO. 42, VILLAGE RAMGARH BHUDA, ZIRAKPUR, DERA BASSI. PIN: 140603. Valid upto: 30-Sep-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1359';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Shivraj Singh Bains (Individual)","address":"Harbast No 234, Village Bhabat,, Zirakpur","pin_code":"140603","registration_date":"20-Mar-2026","valid_upto":"25-Dec-2030"}'::jsonb;
  v_desc := 'Promoter: Shivraj Singh Bains (Individual). Address: Harbast No 234, Village Bhabat,, Zirakpur. PIN: 140603. Valid upto: 25-Dec-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1355';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),Punjab-141003, Village Bansapur, Paintpur, Sainimarja Punjab-141003","pin_code":"140901","registration_date":"20-Mar-2026","valid_upto":"01-Dec-2030"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),Punjab-141003, Village Bansapur, Paintpur, Sainimarja Punjab-141003. PIN: 140901. Valid upto: 01-Dec-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0419';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"HOMELAND REALTY PRIVATE LIMITED (Other than Individual)","address":"Commercial Allocable Pocket M1 M2, INDUSTRIAL FOCAL POINT,, PHASE VIII EXTENSION,","pin_code":"160059","registration_date":"20-Mar-2026","valid_upto":"06-Feb-2036"}'::jsonb;
  v_desc := 'Promoter: HOMELAND REALTY PRIVATE LIMITED (Other than Individual). Address: Commercial Allocable Pocket M1 M2, INDUSTRIAL FOCAL POINT,, PHASE VIII EXTENSION,. PIN: 160059. Valid upto: 06-Feb-2036';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1331';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"HLP Ventures India LLP (Other than Individual)","address":"Village Kubaheri, Harbast No 323 and Village Abhipur, Harbast No 329, Kharar Tehsil","pin_code":"140109","registration_date":"06-Mar-2026","valid_upto":"15-Jan-2031"}'::jsonb;
  v_desc := 'Promoter: HLP Ventures India LLP (Other than Individual). Address: Village Kubaheri, Harbast No 323 and Village Abhipur, Harbast No 329, Kharar Tehsil. PIN: 140109. Valid upto: 15-Jan-2031';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0034';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"06-Sep-2017","valid_upto":"31-Jan-2019"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 31-Jan-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0930';
  v_meta := '{"district":"Jalandhar","promoter":"Sangam Builders (Other than Individual)","address":"Village Mithapur, H.B.No.310 and, Village Alipur, H.B.No.294","pin_code":"144022","registration_date":"07-May-2024","valid_upto":"09-Aug-2028"}'::jsonb;
  v_desc := 'Promoter: Sangam Builders (Other than Individual). Address: Village Mithapur, H.B.No.310 and, Village Alipur, H.B.No.294. PIN: 144022. Valid upto: 09-Aug-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL20-PR1023';
  v_meta := '{"district":"Fazilka","promoter":"Aashiyana Developers (Other than Individual)","address":"Dera Sacha Sauda Road, Near Radha Soami Satsang Bhawan No. 3, Village Painchanwali","pin_code":"152123","registration_date":"09-Aug-2024","valid_upto":"31-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: Aashiyana Developers (Other than Individual). Address: Dera Sacha Sauda Road, Near Radha Soami Satsang Bhawan No. 3, Village Painchanwali. PIN: 152123. Valid upto: 31-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1109';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"S S Developers (Other than Individual)","address":"Village Chapar Chiri Kalan, Sector 92, hadbast no.195 140307","pin_code":"140308","registration_date":"03-Jan-2025","valid_upto":"28-Mar-2028"}'::jsonb;
  v_desc := 'Promoter: S S Developers (Other than Individual). Address: Village Chapar Chiri Kalan, Sector 92, hadbast no.195 140307. PIN: 140308. Valid upto: 28-Mar-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-RPR70-PC0289';
  v_meta := '{"district":"Rupnagar (Ropar)","promoter":"S. G. ENTERPRISES (Other than Individual)","address":"VILLAGE CHOTI HAVELI, HADBAST 48, RAILON ROAD, ROPAR","pin_code":"140001","registration_date":"22-Nov-2024","valid_upto":"24-Jun-2029"}'::jsonb;
  v_desc := 'Promoter: S. G. ENTERPRISES (Other than Individual). Address: VILLAGE CHOTI HAVELI, HADBAST 48, RAILON ROAD, ROPAR. PIN: 140001. Valid upto: 24-Jun-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT40-PR1345';
  v_meta := '{"district":"Kapurthala","promoter":"GILLSONS CONSTRUCTIONS LIMITED (Other than Individual)","address":"Village Khurampur (H.B.No.63) & Dhak Khurampur (H.B.No.64), Village Palahi (H.B.No.60) & Village Dhak Palahi (H.B.No.61)","pin_code":"144403","registration_date":"11-Mar-2026","valid_upto":"27-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: GILLSONS CONSTRUCTIONS LIMITED (Other than Individual). Address: Village Khurampur (H.B.No.63) & Dhak Khurampur (H.B.No.64), Village Palahi (H.B.No.60) & Village Dhak Palahi (H.B.No.61). PIN: 144403. Valid upto: 27-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL66-PR1344';
  v_meta := '{"district":"Patiala","promoter":"Sh. Guntaspal   Singh (Individual)","address":"Village Malkana,City Samana, Tehsil Samana, District Patiala","pin_code":"147202","registration_date":"11-Mar-2026","valid_upto":"15-May-2030"}'::jsonb;
  v_desc := 'Promoter: Sh. Guntaspal   Singh (Individual). Address: Village Malkana,City Samana, Tehsil Samana, District Patiala. PIN: 147202. Valid upto: 15-May-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MKT58-PR1342';
  v_meta := '{"district":"Muktsar","promoter":"Aazeen Kaur Agro Pvt Ltd  (Other than Individual)","address":"Aman Nagar, Behind Bus Stand, Malout,, Distt Sri Muktsar Sahib","pin_code":"152107","registration_date":"16-Mar-2026","valid_upto":"25-Jun-2030"}'::jsonb;
  v_desc := 'Promoter: Aazeen Kaur Agro Pvt Ltd  (Other than Individual). Address: Aman Nagar, Behind Bus Stand, Malout,, Distt Sri Muktsar Sahib. PIN: 152107. Valid upto: 25-Jun-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MNS49-PR1341';
  v_meta := '{"district":"Mansa","promoter":"G S Builders (Other than Individual)","address":"H.B. No. 229, Budhlada, Mansa","pin_code":"151502","registration_date":"11-Mar-2026","valid_upto":"31-Dec-2029"}'::jsonb;
  v_desc := 'Promoter: G S Builders (Other than Individual). Address: H.B. No. 229, Budhlada, Mansa. PIN: 151502. Valid upto: 31-Dec-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR1340';
  v_meta := '{"district":"Ludhiana","promoter":"New Vision Land Developers LLP  (Other than Individual)","address":"Village Bagga Kalan (H.B. No. 122), Tehsil Ludhiana West","pin_code":"141008","registration_date":"11-Mar-2026","valid_upto":"11-Sep-2030"}'::jsonb;
  v_desc := 'Promoter: New Vision Land Developers LLP  (Other than Individual). Address: Village Bagga Kalan (H.B. No. 122), Tehsil Ludhiana West. PIN: 141008. Valid upto: 11-Sep-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1339';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"United Builders and Infratech (Other than Individual)","address":"Situated at Plot No. 111-118, 137-144 in Aerotro Homes at Village Naugari","pin_code":"140308","registration_date":"11-Mar-2026","valid_upto":"01-Dec-2030"}'::jsonb;
  v_desc := 'Promoter: United Builders and Infratech (Other than Individual). Address: Situated at Plot No. 111-118, 137-144 in Aerotro Homes at Village Naugari. PIN: 140308. Valid upto: 01-Dec-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1338';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),, Village Ranimajra, Sainimarja Punjab-141003","pin_code":"140901","registration_date":"11-Mar-2026","valid_upto":"01-Dec-2030"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),, Village Ranimajra, Sainimarja Punjab-141003. PIN: 140901. Valid upto: 01-Dec-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1337';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),Punjab-141003, Village Bansapur, Chahrmajra, Paintpur Punjab-141003","pin_code":"140901","registration_date":"11-Mar-2026","valid_upto":"01-Dec-2030"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),Punjab-141003, Village Bansapur, Chahrmajra, Paintpur Punjab-141003. PIN: 140901. Valid upto: 01-Dec-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1336';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),Punjab-141003, Village Rasoolpur Punjab-141003","pin_code":"140901","registration_date":"11-Mar-2026","valid_upto":"05-Nov-2030"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),Punjab-141003, Village Rasoolpur Punjab-141003. PIN: 140901. Valid upto: 05-Nov-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1335';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SVP PROMOTERS AND DEVELOPERS (Other than Individual)","address":"HADBAST NO 42, VILL. RAMGARH BHUDA, ZIRAKPUR, DERABASSI","pin_code":"140603","registration_date":"11-Mar-2026","valid_upto":"30-Sep-2029"}'::jsonb;
  v_desc := 'Promoter: SVP PROMOTERS AND DEVELOPERS (Other than Individual). Address: HADBAST NO 42, VILL. RAMGARH BHUDA, ZIRAKPUR, DERABASSI. PIN: 140603. Valid upto: 30-Sep-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1334';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali), village DhodemajraPunjab-141003","pin_code":"141003","registration_date":"11-Mar-2026","valid_upto":"09-Oct-2030"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali), village DhodemajraPunjab-141003. PIN: 141003. Valid upto: 09-Oct-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR1333';
  v_meta := '{"district":"Patiala","promoter":"Patiala Urban Planning and Development Authority (Other than Individual)","address":"Vill Hajimajra","pin_code":"147001","registration_date":"11-Mar-2026","valid_upto":"29-May-2020"}'::jsonb;
  v_desc := 'Promoter: Patiala Urban Planning and Development Authority (Other than Individual). Address: Vill Hajimajra. PIN: 147001. Valid upto: 29-May-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR1332';
  v_meta := '{"district":"Ludhiana","promoter":"EASTMAN BUILDERS (Other than Individual)","address":"Villages Birmi, Tehsil Mullanpur Dakha, Village Bains, Tehsil Ludhiana West","pin_code":"141022","registration_date":"11-Mar-2026","valid_upto":"26-Aug-2030"}'::jsonb;
  v_desc := 'Promoter: EASTMAN BUILDERS (Other than Individual). Address: Villages Birmi, Tehsil Mullanpur Dakha, Village Bains, Tehsil Ludhiana West. PIN: 141022. Valid upto: 26-Aug-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PC0418';
  v_meta := '{"district":"Bathinda","promoter":"POOJA DEVELOPERS (Other than Individual)","address":"PLAZA NH-7, BATHINDA CHANDIGARH NATIONAL HIGHWAY BHUCHO","pin_code":"151101","registration_date":"11-Mar-2026","valid_upto":"29-Sep-2030"}'::jsonb;
  v_desc := 'Promoter: POOJA DEVELOPERS (Other than Individual). Address: PLAZA NH-7, BATHINDA CHANDIGARH NATIONAL HIGHWAY BHUCHO. PIN: 151101. Valid upto: 29-Sep-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MKT58-PC0416';
  v_meta := '{"district":"Muktsar","promoter":"Baldev   Singh (Individual)","address":"HB no. 65, Bir Sarkar, Kotakpura road to Bathinda Bye pass road, Sri Muktsar Sahib","pin_code":"152026","registration_date":"11-Mar-2026","valid_upto":"24-Sep-2030"}'::jsonb;
  v_desc := 'Promoter: Baldev   Singh (Individual). Address: HB no. 65, Bir Sarkar, Kotakpura road to Bathinda Bye pass road, Sri Muktsar Sahib. PIN: 152026. Valid upto: 24-Sep-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR03-PC0415';
  v_meta := '{"district":"Amritsar","promoter":"DINKAR REALCON PRIVATE LIMITED (Other than Individual)","address":"Omaxe New Amritsar Integrated township, village Nijjarpura , Meharbanpura, wadali doga and rakdevidass tehsilAmritsar-II","pin_code":"143115","registration_date":"16-Mar-2026","valid_upto":"01-Dec-2031"}'::jsonb;
  v_desc := 'Promoter: DINKAR REALCON PRIVATE LIMITED (Other than Individual). Address: Omaxe New Amritsar Integrated township, village Nijjarpura , Meharbanpura, wadali doga and rakdevidass tehsilAmritsar-II. PIN: 143115. Valid upto: 01-Dec-2031';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0413';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SBP ESTATES PRIVATE LIMITED (Other than Individual)","address":"Village Ramgarh Bhudda, tehsil Zirakpur,","pin_code":"140601","registration_date":"11-Mar-2026","valid_upto":"17-Sep-2030"}'::jsonb;
  v_desc := 'Promoter: SBP ESTATES PRIVATE LIMITED (Other than Individual). Address: Village Ramgarh Bhudda, tehsil Zirakpur,. PIN: 140601. Valid upto: 17-Sep-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PI0033';
  v_meta := '{"district":"Ludhiana","promoter":"Deol Cycle Industries (Other than Individual)","address":"Village Budhewal, Sub Tehsil Koom Kalan & Distt. Ludhiana","pin_code":"141012","registration_date":"11-Mar-2026","valid_upto":"23-Oct-2030"}'::jsonb;
  v_desc := 'Promoter: Deol Cycle Industries (Other than Individual). Address: Village Budhewal, Sub Tehsil Koom Kalan & Distt. Ludhiana. PIN: 141012. Valid upto: 23-Oct-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0854';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Noble Dream Projects Private Limited (Other than Individual)","address":"Noble Willasa, Wave Estate Block-H, Sector 99, SAS Nagar (Mohali)","pin_code":"140308","registration_date":"08-Jun-2023","valid_upto":"31-Dec-2027"}'::jsonb;
  v_desc := 'Promoter: Noble Dream Projects Private Limited (Other than Individual). Address: Noble Willasa, Wave Estate Block-H, Sector 99, SAS Nagar (Mohali). PIN: 140308. Valid upto: 31-Dec-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1134';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ROSERO INFRA LLP (Other than Individual)","address":"Singhpura Chowk, Near Mehar Hospital, Zirakpur","pin_code":"140603","registration_date":"25-Apr-2025","valid_upto":"31-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: ROSERO INFRA LLP (Other than Individual). Address: Singhpura Chowk, Near Mehar Hospital, Zirakpur. PIN: 140603. Valid upto: 31-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL64-PR1323';
  v_meta := '{"district":"Patiala","promoter":"NOVUS INFRA (Other than Individual)","address":"Village Nial, Hadbast no. 177, Tehsil Patran, Distt. Patiala","pin_code":"147105","registration_date":"05-Mar-2026","valid_upto":"08-Sep-2030"}'::jsonb;
  v_desc := 'Promoter: NOVUS INFRA (Other than Individual). Address: Village Nial, Hadbast no. 177, Tehsil Patran, Distt. Patiala. PIN: 147105. Valid upto: 08-Sep-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0414';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),Punjab-141003, Village Salamatpur and Rasoolpur Punjab-141003","pin_code":"140901","registration_date":"06-Mar-2026","valid_upto":"31-Dec-2028"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),Punjab-141003, Village Salamatpur and Rasoolpur Punjab-141003. PIN: 140901. Valid upto: 31-Dec-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR1328';
  v_meta := '{"district":"Ludhiana","promoter":"Malhotra Land Developers & Colonisers Pvt. Ltd. (Other than Individual)","address":"Village Sahnewal Kalan (H.B No. 227),, Tehsil Ludhiana","pin_code":"141120","registration_date":"05-Mar-2026","valid_upto":"05-May-2030"}'::jsonb;
  v_desc := 'Promoter: Malhotra Land Developers & Colonisers Pvt. Ltd. (Other than Individual). Address: Village Sahnewal Kalan (H.B No. 227),, Tehsil Ludhiana. PIN: 141120. Valid upto: 05-May-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR77-PC0409';
  v_meta := '{"district":"Sangrur","promoter":"LANDKEY DEVELOPERS LLP (Other than Individual)","address":"VILLAGE GHABDAN HADBAST NO. 30, AND GURDASPURA HADBAST NO.31","pin_code":"148001","registration_date":"05-Mar-2026","valid_upto":"15-Oct-2030"}'::jsonb;
  v_desc := 'Promoter: LANDKEY DEVELOPERS LLP (Other than Individual). Address: VILLAGE GHABDAN HADBAST NO. 30, AND GURDASPURA HADBAST NO.31. PIN: 148001. Valid upto: 15-Oct-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FDK12-PR1327';
  v_meta := '{"district":"Faridkot","promoter":"S. Jaswinder  Singh (Individual)","address":"At Sikhawala Road,, Kotkapura","pin_code":"151204","registration_date":"05-Mar-2026","valid_upto":"15-Oct-2030"}'::jsonb;
  v_desc := 'Promoter: S. Jaswinder  Singh (Individual). Address: At Sikhawala Road,, Kotkapura. PIN: 151204. Valid upto: 15-Oct-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-HSP31-PR1326';
  v_meta := '{"district":"Hoshiarpur","promoter":"Vikas  Chaudhary (Individual)","address":"VILLAGE AJJOWAL (HB NO. 371)","pin_code":"146001","registration_date":"05-Mar-2026","valid_upto":"08-Aug-2028"}'::jsonb;
  v_desc := 'Promoter: Vikas  Chaudhary (Individual). Address: VILLAGE AJJOWAL (HB NO. 371). PIN: 146001. Valid upto: 08-Aug-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR1322';
  v_meta := '{"district":"Bathinda","promoter":"The Damdama Sahib Builders  (Other than Individual)","address":"Talwandi Sabo-Raman Road National Highway at Talwandi Sabo","pin_code":"151302","registration_date":"05-Mar-2026","valid_upto":"29-Jun-2030"}'::jsonb;
  v_desc := 'Promoter: The Damdama Sahib Builders  (Other than Individual). Address: Talwandi Sabo-Raman Road National Highway at Talwandi Sabo. PIN: 151302. Valid upto: 29-Jun-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI11-PR1325';
  v_meta := '{"district":"Bathinda","promoter":"BALA JI LAND PROMOTERS & DEVELOPERS (Other than Individual)","address":"TALWANDI SABO TO RAMAN ROAD  NATIONAL HIGHWAY, TALWANDI SABO DISTT BATHINDA","pin_code":"151302","registration_date":"05-Mar-2026","valid_upto":"17-Jul-2030"}'::jsonb;
  v_desc := 'Promoter: BALA JI LAND PROMOTERS & DEVELOPERS (Other than Individual). Address: TALWANDI SABO TO RAMAN ROAD  NATIONAL HIGHWAY, TALWANDI SABO DISTT BATHINDA. PIN: 151302. Valid upto: 17-Jul-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR1330';
  v_meta := '{"district":"Jalandhar","promoter":"EDIFY CONSTRUCTIONS LLP (Other than Individual)","address":"Village Udhopur, Harbast No 257,, Tehsil Jalandhar-1","pin_code":"144001","registration_date":"05-Mar-2026","valid_upto":"08-Aug-2029"}'::jsonb;
  v_desc := 'Promoter: EDIFY CONSTRUCTIONS LLP (Other than Individual). Address: Village Udhopur, Harbast No 257,, Tehsil Jalandhar-1. PIN: 144001. Valid upto: 08-Aug-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0227';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MU BUILDERS AND PROMOTERS (Other than Individual)","address":"Village Nabha, Nr. High Ground Road","pin_code":"140603","registration_date":"30-May-2024","valid_upto":"17-Oct-2028"}'::jsonb;
  v_desc := 'Promoter: MU BUILDERS AND PROMOTERS (Other than Individual). Address: Village Nabha, Nr. High Ground Road. PIN: 140603. Valid upto: 17-Oct-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1321';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CA Developers (Other than Individual)","address":"Village Madhopur and Saidpura, Hadbast No. 11 & 10, Teshsil Dera Bassi, Dist: SAS Nagar","pin_code":"140507","registration_date":"03-Mar-2026","valid_upto":"17-Jul-2030"}'::jsonb;
  v_desc := 'Promoter: CA Developers (Other than Individual). Address: Village Madhopur and Saidpura, Hadbast No. 11 & 10, Teshsil Dera Bassi, Dist: SAS Nagar. PIN: 140507. Valid upto: 17-Jul-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-GSP27-PR1329';
  v_meta := '{"district":"Gurdaspur","promoter":"BD DEVELOPERS (Other than Individual)","address":"VILLAGE AWANKHA, H.B.No.286, DINANAGAR","pin_code":"143531","registration_date":"03-Mar-2026","valid_upto":"17-Dec-2030"}'::jsonb;
  v_desc := 'Promoter: BD DEVELOPERS (Other than Individual). Address: VILLAGE AWANKHA, H.B.No.286, DINANAGAR. PIN: 143531. Valid upto: 17-Dec-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR1324';
  v_meta := '{"district":"Bathinda","promoter":"Kanhiya Real Estate & Infrastructure (Other than Individual)","address":"Adjoining Green City Part 1 & 2, Green Palace Road","pin_code":"151001","registration_date":"03-Mar-2026","valid_upto":"31-Aug-2030"}'::jsonb;
  v_desc := 'Promoter: Kanhiya Real Estate & Infrastructure (Other than Individual). Address: Adjoining Green City Part 1 & 2, Green Palace Road. PIN: 151001. Valid upto: 31-Aug-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0407';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omni Pacific Colonizers Pvt Ltd (Other than Individual)","address":"Village Chapar Chiri Khurad, Tehsil Mohali","pin_code":"140307","registration_date":"03-Mar-2026","valid_upto":"23-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: Omni Pacific Colonizers Pvt Ltd (Other than Individual). Address: Village Chapar Chiri Khurad, Tehsil Mohali. PIN: 140307. Valid upto: 23-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  RAISE NOTICE 'Part 1: updated % projects', v_updated;
END $$;