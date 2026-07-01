-- 0009_fix_metadata_part03.sql
-- Projects 401 to 600
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

  v_rera := 'PBRERA-LDH44-PC0362';
  v_meta := '{"district":"Ludhiana","promoter":"Sky Developer (Other than Individual)","address":"Village Nandpur, H.B No 233, Dehlon Sananewal Road, Tehsil and Distt Ludhiana","pin_code":"141120","registration_date":"11-Jul-2025","valid_upto":"01-Apr-2029"}'::jsonb;
  v_desc := 'Promoter: Sky Developer (Other than Individual). Address: Village Nandpur, H.B No 233, Dehlon Sananewal Road, Tehsil and Distt Ludhiana. PIN: 141120. Valid upto: 01-Apr-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT40-PR1226';
  v_meta := '{"district":"Kapurthala","promoter":"EK ONKAR INFRA (Other than Individual)","address":"VILLAGE MEHERU, Teh Phagwara","pin_code":"144411","registration_date":"11-Jul-2025","valid_upto":"23-Jan-2030"}'::jsonb;
  v_desc := 'Promoter: EK ONKAR INFRA (Other than Individual). Address: VILLAGE MEHERU, Teh Phagwara. PIN: 144411. Valid upto: 23-Jan-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1227';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Royal Street (Other than Individual)","address":"VILLAGE BHAGO MAJRA, HADBAST NO. 75,, TEHSIL KHARAR, SAS NAGAR","pin_code":"140307","registration_date":"14-Jul-2025","valid_upto":"24-Apr-2030"}'::jsonb;
  v_desc := 'Promoter: Royal Street (Other than Individual). Address: VILLAGE BHAGO MAJRA, HADBAST NO. 75,, TEHSIL KHARAR, SAS NAGAR. PIN: 140307. Valid upto: 24-Apr-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1228';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"RLTS Infra Private Limited (Other than Individual)","address":"Village Kurali, Harbast No 121,, Tehsil Kharar","pin_code":"140103","registration_date":"14-Jul-2025","valid_upto":"24-Apr-2030"}'::jsonb;
  v_desc := 'Promoter: RLTS Infra Private Limited (Other than Individual). Address: Village Kurali, Harbast No 121,, Tehsil Kharar. PIN: 140103. Valid upto: 24-Apr-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL64-PC0363';
  v_meta := '{"district":"Patiala","promoter":"RSR GROUP (Other than Individual)","address":"Village Attalan, H.B.No.181,, Teh Patran","pin_code":"147105","registration_date":"14-Jul-2025","valid_upto":"23-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: RSR GROUP (Other than Individual). Address: Village Attalan, H.B.No.181,, Teh Patran. PIN: 147105. Valid upto: 23-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR1221';
  v_meta := '{"district":"Patiala","promoter":"RYAN Real Estate (Other than Individual)","address":"Village Taffazalpura (H.B. No. 31)","pin_code":"147111","registration_date":"14-Jul-2025","valid_upto":"21-Aug-2029"}'::jsonb;
  v_desc := 'Promoter: RYAN Real Estate (Other than Individual). Address: Village Taffazalpura (H.B. No. 31). PIN: 147111. Valid upto: 21-Aug-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR1220';
  v_meta := '{"district":"Bathinda","promoter":"R L DEVELOPERS (Other than Individual)","address":"Main multania road, Bathinda","pin_code":"151005","registration_date":"07-Jul-2025","valid_upto":"01-Dec-2029"}'::jsonb;
  v_desc := 'Promoter: R L DEVELOPERS (Other than Individual). Address: Main multania road, Bathinda. PIN: 151005. Valid upto: 01-Dec-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0361';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Highcross Buildtech LLP (Other than Individual)","address":"VILL. RAMGARH BHUDDA,, Zirakpur","pin_code":"140603","registration_date":"04-Jul-2025","valid_upto":"27-Feb-2030"}'::jsonb;
  v_desc := 'Promoter: Highcross Buildtech LLP (Other than Individual). Address: VILL. RAMGARH BHUDDA,, Zirakpur. PIN: 140603. Valid upto: 27-Feb-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1195';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Accor Developers LLP  (Other than Individual)","address":"Village Bishangarh, H.B No. 45","pin_code":"140506","registration_date":"30-Jun-2025","valid_upto":"31-Dec-2025"}'::jsonb;
  v_desc := 'Promoter: Accor Developers LLP  (Other than Individual). Address: Village Bishangarh, H.B No. 45. PIN: 140506. Valid upto: 31-Dec-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT39-PC0360';
  v_meta := '{"district":"Kapurthala","promoter":"JASHER REALTTY PRIVATE LIMITED (Other than Individual)","address":"Village Saido Bhulana (H.B.No.124)","pin_code":"144602","registration_date":"01-Jul-2025","valid_upto":"27-Aug-2029"}'::jsonb;
  v_desc := 'Promoter: JASHER REALTTY PRIVATE LIMITED (Other than Individual). Address: Village Saido Bhulana (H.B.No.124). PIN: 144602. Valid upto: 27-Aug-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0091';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Wooden Heights Developers Pvt Ltd (Other than Individual)","address":"Shaurya Ananda, Group Housing Site No 1,, Sector 86, Mohali","pin_code":"140308","registration_date":"15-Sep-2017","valid_upto":"31-Aug-2020"}'::jsonb;
  v_desc := 'Promoter: Wooden Heights Developers Pvt Ltd (Other than Individual). Address: Shaurya Ananda, Group Housing Site No 1,, Sector 86, Mohali. PIN: 140308. Valid upto: 31-Aug-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1217';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"HARFATEH DEVELOPERS  (Other than Individual)","address":"Village Bhabhat, Tehsil Derabassi, Zirakpur, Distt SAS Nagar, Mohali (PB.)","pin_code":"140603","registration_date":"27-Jun-2025","valid_upto":"16-Feb-2030"}'::jsonb;
  v_desc := 'Promoter: HARFATEH DEVELOPERS  (Other than Individual). Address: Village Bhabhat, Tehsil Derabassi, Zirakpur, Distt SAS Nagar, Mohali (PB.). PIN: 140603. Valid upto: 16-Feb-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1219';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omni Pacific Colonizers Pvt Ltd (Other than Individual)","address":"Viilage Aujla, Hadbast No. 77, Tehsil Kjharar, District SAS Nagar","pin_code":"144036","registration_date":"26-Jun-2025","valid_upto":"14-May-2030"}'::jsonb;
  v_desc := 'Promoter: Omni Pacific Colonizers Pvt Ltd (Other than Individual). Address: Viilage Aujla, Hadbast No. 77, Tehsil Kjharar, District SAS Nagar. PIN: 144036. Valid upto: 14-May-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR1215';
  v_meta := '{"district":"Bathinda","promoter":"Radha Madhav Developers (Other than Individual)","address":"Near Wazir-E-Bagh","pin_code":"151001","registration_date":"26-Jun-2025","valid_upto":"20-Nov-2029"}'::jsonb;
  v_desc := 'Promoter: Radha Madhav Developers (Other than Individual). Address: Near Wazir-E-Bagh. PIN: 151001. Valid upto: 20-Nov-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL20-PR1199';
  v_meta := '{"district":"Fazilka","promoter":"Executive Officer Municipal Council Fazilka (Other than Individual)","address":"Near Water Works, Fazilka","pin_code":"152123","registration_date":"26-Jun-2025","valid_upto":"31-Dec-2026"}'::jsonb;
  v_desc := 'Promoter: Executive Officer Municipal Council Fazilka (Other than Individual). Address: Near Water Works, Fazilka. PIN: 152123. Valid upto: 31-Dec-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1214';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"DH DEVELOPERS (Other than Individual)","address":"Banur , Tehsil Mohali , Distt . SAS Nagar , Punjab","pin_code":"140601","registration_date":"26-Jun-2025","valid_upto":"31-May-2030"}'::jsonb;
  v_desc := 'Promoter: DH DEVELOPERS (Other than Individual). Address: Banur , Tehsil Mohali , Distt . SAS Nagar , Punjab. PIN: 140601. Valid upto: 31-May-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-GSP27-PR1210';
  v_meta := '{"district":"Gurdaspur","promoter":"Ajay  Gupta (Individual)","address":"Near Shri Ram Mandir","pin_code":"143521","registration_date":"26-Jun-2025","valid_upto":"30-Jun-2027"}'::jsonb;
  v_desc := 'Promoter: Ajay  Gupta (Individual). Address: Near Shri Ram Mandir. PIN: 143521. Valid upto: 30-Jun-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FDK12-PR1213';
  v_meta := '{"district":"Faridkot","promoter":"Axiom Foundation  (Other than Individual)","address":"Jaitu Bathinda Byepass Road, H.B. No 129","pin_code":"151204","registration_date":"26-Jun-2025","valid_upto":"06-Oct-2029"}'::jsonb;
  v_desc := 'Promoter: Axiom Foundation  (Other than Individual). Address: Jaitu Bathinda Byepass Road, H.B. No 129. PIN: 151204. Valid upto: 06-Oct-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL62-PR1211';
  v_meta := '{"district":"Patiala","promoter":"Prabal  Jindal (Individual)","address":"Hadbast no 204, village Nabha, Mehas-Nabha Road, Opp Punjab Public School Ground","pin_code":"147201","registration_date":"24-Jun-2025","valid_upto":"03-Oct-2029"}'::jsonb;
  v_desc := 'Promoter: Prabal  Jindal (Individual). Address: Hadbast no 204, village Nabha, Mehas-Nabha Road, Opp Punjab Public School Ground. PIN: 147201. Valid upto: 03-Oct-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PC0359';
  v_meta := '{"district":"Barnala","promoter":"ZIPGROWTH ESTATES LLP (Other than Individual)","address":"VILLAGE HANDIAYA -D, HADBAST NO. 58, TEHSIL & DISTRICT BARNALA","pin_code":"148107","registration_date":"24-Jun-2025","valid_upto":"15-Oct-2029"}'::jsonb;
  v_desc := 'Promoter: ZIPGROWTH ESTATES LLP (Other than Individual). Address: VILLAGE HANDIAYA -D, HADBAST NO. 58, TEHSIL & DISTRICT BARNALA. PIN: 148107. Valid upto: 15-Oct-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-RPR68-PR1212';
  v_meta := '{"district":"Rupnagar (Ropar)","promoter":"Vishal  Keshyap (Individual)","address":"Ward No 10. Manemajra, Road Chamkaur Sahib, Tehsil Chamkaur Sahib,","pin_code":"140112","registration_date":"24-Jun-2025","valid_upto":"17-Jan-2029"}'::jsonb;
  v_desc := 'Promoter: Vishal  Keshyap (Individual). Address: Ward No 10. Manemajra, Road Chamkaur Sahib, Tehsil Chamkaur Sahib,. PIN: 140112. Valid upto: 17-Jan-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR1209';
  v_meta := '{"district":"Jalandhar","promoter":"S. Ikram  Singh (Individual)","address":"VILL GAZIPUR, H.B. NO 142","pin_code":"144103","registration_date":"17-Jun-2025","valid_upto":"13-Oct-2029"}'::jsonb;
  v_desc := 'Promoter: S. Ikram  Singh (Individual). Address: VILL GAZIPUR, H.B. NO 142. PIN: 144103. Valid upto: 13-Oct-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0351';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gursewak   Singh (Individual)","address":"Village Lohgarh, Zirakpur, Tehsil Dera Bassi,","pin_code":"140603","registration_date":"18-Jun-2025","valid_upto":"31-Dec-2027"}'::jsonb;
  v_desc := 'Promoter: Gursewak   Singh (Individual). Address: Village Lohgarh, Zirakpur, Tehsil Dera Bassi,. PIN: 140603. Valid upto: 31-Dec-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FGS17-PC0358';
  v_meta := '{"district":"Fatehgarh Sahib","promoter":"GREWAL LAND DEVELOPERS (Other than Individual)","address":"H.B. NO. 138, VILLAGE BRAHMAN MAJRA, SIRHIND, TEHSIL FATEHGARH SAHIB","pin_code":"140406","registration_date":"17-Jun-2025","valid_upto":"07-Jan-2030"}'::jsonb;
  v_desc := 'Promoter: GREWAL LAND DEVELOPERS (Other than Individual). Address: H.B. NO. 138, VILLAGE BRAHMAN MAJRA, SIRHIND, TEHSIL FATEHGARH SAHIB. PIN: 140406. Valid upto: 07-Jan-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0355';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"WISTERIA HOUSING PRIVATE LIMITED (Other than Individual)","address":"Located at khasra No.14//13/2,14//18/2 village jandpur,tehsil kharar Distt. SAS Nagar, SAME","pin_code":"140301","registration_date":"17-Jun-2025","valid_upto":"11-Jul-2028"}'::jsonb;
  v_desc := 'Promoter: WISTERIA HOUSING PRIVATE LIMITED (Other than Individual). Address: Located at khasra No.14//13/2,14//18/2 village jandpur,tehsil kharar Distt. SAS Nagar, SAME. PIN: 140301. Valid upto: 11-Jul-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1207';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TOWNBELL INDIA LANDCRAFT PRIVATE LIMITED (Other than Individual)","address":"Village Aujla, Hadbast No-182,","pin_code":"140301","registration_date":"16-Jun-2025","valid_upto":"14-May-2030"}'::jsonb;
  v_desc := 'Promoter: TOWNBELL INDIA LANDCRAFT PRIVATE LIMITED (Other than Individual). Address: Village Aujla, Hadbast No-182,. PIN: 140301. Valid upto: 14-May-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR1208';
  v_meta := '{"district":"Ludhiana","promoter":"Buildcon Solutions (Other than Individual)","address":"Village Gill-2(HB No. 263), Tehsil Ludhiana South","pin_code":"141116","registration_date":"16-Jun-2025","valid_upto":"11-Sep-2029"}'::jsonb;
  v_desc := 'Promoter: Buildcon Solutions (Other than Individual). Address: Village Gill-2(HB No. 263), Tehsil Ludhiana South. PIN: 141116. Valid upto: 11-Sep-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1206';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"BIGBLOCK BUILDERS LLP (Other than Individual)","address":"LANDRA KHARAR ROAD, village kharar, tehsil kharar","pin_code":"140301","registration_date":"16-Jun-2025","valid_upto":"06-Apr-2030"}'::jsonb;
  v_desc := 'Promoter: BIGBLOCK BUILDERS LLP (Other than Individual). Address: LANDRA KHARAR ROAD, village kharar, tehsil kharar. PIN: 140301. Valid upto: 06-Apr-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT38-PR1205';
  v_meta := '{"district":"Kapurthala","promoter":"S. LOVEROOP   SINGH  (Individual)","address":"Village Nadala Pati Khairdin, Village Nadala Pati Dadupur, Village. Nadala Pati Narangpur, HADBAST NO. 64","pin_code":"144624","registration_date":"16-Jun-2025","valid_upto":"05-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: S. LOVEROOP   SINGH  (Individual). Address: Village Nadala Pati Khairdin, Village Nadala Pati Dadupur, Village. Nadala Pati Narangpur, HADBAST NO. 64. PIN: 144624. Valid upto: 05-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0352';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gillco Developers and Builders Private Limited  (Other than Individual)","address":"Village Kharar Hadbast No. 184, Tehsil Kharar","pin_code":"140301","registration_date":"05-Jun-2025","valid_upto":"16-Feb-2030"}'::jsonb;
  v_desc := 'Promoter: Gillco Developers and Builders Private Limited  (Other than Individual). Address: Village Kharar Hadbast No. 184, Tehsil Kharar. PIN: 140301. Valid upto: 16-Feb-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR1188';
  v_meta := '{"district":"Ludhiana","promoter":"Portolan Infratech (Other than Individual)","address":"Village Sahnewal Kalan-1, HB No. 227, Tehsil Sahnewal","pin_code":"141120","registration_date":"05-Jun-2025","valid_upto":"10-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: Portolan Infratech (Other than Individual). Address: Village Sahnewal Kalan-1, HB No. 227, Tehsil Sahnewal. PIN: 141120. Valid upto: 10-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR1203';
  v_meta := '{"district":"Ludhiana","promoter":"Shamsher Dass Mahal (Individual)","address":"33 Ft. Road, Mundian Kalan, H.B. No. 179","pin_code":"141015","registration_date":"10-Jun-2025","valid_upto":"03-Sep-2029"}'::jsonb;
  v_desc := 'Promoter: Shamsher Dass Mahal (Individual). Address: 33 Ft. Road, Mundian Kalan, H.B. No. 179. PIN: 141015. Valid upto: 03-Sep-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR1198';
  v_meta := '{"district":"Jalandhar","promoter":"BHAVNOOR SINGH BEDI (Individual)","address":"Village Partappura, H.B.No.263 and, Village Fathepur, H.B.No.259","pin_code":"144035","registration_date":"09-Jun-2025","valid_upto":"27-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: BHAVNOOR SINGH BEDI (Individual). Address: Village Partappura, H.B.No.263 and, Village Fathepur, H.B.No.259. PIN: 144035. Valid upto: 27-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0328';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AC INFRA (Other than Individual)","address":"M/S AC INFRA AT VILLAGE PEERMUCHALLA HADBAST,53 MC ZIRAKPUR,DISTT.SAS NAGAR (MOHALI) Pb., SAME","pin_code":"140603","registration_date":"27-May-2025","valid_upto":"12-Jun-2029"}'::jsonb;
  v_desc := 'Promoter: AC INFRA (Other than Individual). Address: M/S AC INFRA AT VILLAGE PEERMUCHALLA HADBAST,53 MC ZIRAKPUR,DISTT.SAS NAGAR (MOHALI) Pb., SAME. PIN: 140603. Valid upto: 12-Jun-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR1201';
  v_meta := '{"district":"Patiala","promoter":"PRABH BUILDERS (Other than Individual)","address":"VILLAGE JHILL TEH. & DIST. H.B. NO. 21","pin_code":"147004","registration_date":"10-Jun-2025","valid_upto":"28-Sep-2028"}'::jsonb;
  v_desc := 'Promoter: PRABH BUILDERS (Other than Individual). Address: VILLAGE JHILL TEH. & DIST. H.B. NO. 21. PIN: 147004. Valid upto: 28-Sep-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MKT58-PR1191';
  v_meta := '{"district":"Muktsar","promoter":"SHREE SHYAM JI DEVELOPERS (Other than Individual)","address":"BARKANDI ROAD, HADBAST NO.54","pin_code":"152026","registration_date":"10-Jun-2025","valid_upto":"29-Sep-2029"}'::jsonb;
  v_desc := 'Promoter: SHREE SHYAM JI DEVELOPERS (Other than Individual). Address: BARKANDI ROAD, HADBAST NO.54. PIN: 152026. Valid upto: 29-Sep-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL19-PR1200';
  v_meta := '{"district":"Fazilka","promoter":"KDM SURYACON DEVELOPERS (Other than Individual)","address":"HINDUMALKOT ROAD","pin_code":"152116","registration_date":"10-Jun-2025","valid_upto":"11-Sep-2029"}'::jsonb;
  v_desc := 'Promoter: KDM SURYACON DEVELOPERS (Other than Individual). Address: HINDUMALKOT ROAD. PIN: 152116. Valid upto: 11-Sep-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PR1202';
  v_meta := '{"district":"Amritsar","promoter":"ASHYAANA NEXT (Other than Individual)","address":"Village Muradpura(H.B. No. 342), Village Bal Khurd(H.B. No. 339)","pin_code":"143008","registration_date":"09-Jun-2025","valid_upto":"21-Aug-2029"}'::jsonb;
  v_desc := 'Promoter: ASHYAANA NEXT (Other than Individual). Address: Village Muradpura(H.B. No. 342), Village Bal Khurd(H.B. No. 339). PIN: 143008. Valid upto: 21-Aug-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MGA52-PC0347';
  v_meta := '{"district":"Moga","promoter":"BURJ DOWNTOWN PRIVATE LIMITED (Other than Individual)","address":"BURJ DOWN TOWN PRIVATE LIMITED VILLAGE GILL MOGA ROAD, BAGAPURANA,BAGHAPURANA","pin_code":"142038","registration_date":"09-Jun-2025","valid_upto":"07-Nov-2028"}'::jsonb;
  v_desc := 'Promoter: BURJ DOWNTOWN PRIVATE LIMITED (Other than Individual). Address: BURJ DOWN TOWN PRIVATE LIMITED VILLAGE GILL MOGA ROAD, BAGAPURANA,BAGHAPURANA. PIN: 142038. Valid upto: 07-Nov-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FGS17-PR1182';
  v_meta := '{"district":"Fatehgarh Sahib","promoter":"SANT ENCLAVE (Other than Individual)","address":"VILLAGE SIRHIND, HADBAST NO. 125","pin_code":"140406","registration_date":"06-Jun-2025","valid_upto":"26-Aug-2029"}'::jsonb;
  v_desc := 'Promoter: SANT ENCLAVE (Other than Individual). Address: VILLAGE SIRHIND, HADBAST NO. 125. PIN: 140406. Valid upto: 26-Aug-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MNS50-PR1192';
  v_meta := '{"district":"Mansa","promoter":"Archit Construction Company (Other than Individual)","address":"Hadbast No. 76, in the Revenue Tehsil and Distt. Mansa","pin_code":"151505","registration_date":"06-Jun-2025","valid_upto":"31-Jan-2030"}'::jsonb;
  v_desc := 'Promoter: Archit Construction Company (Other than Individual). Address: Hadbast No. 76, in the Revenue Tehsil and Distt. Mansa. PIN: 151505. Valid upto: 31-Jan-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1194';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"IBS BUILDERS & PROMOTERS (Other than Individual)","address":"NH-205 WARD NO 8, KURALI, PADIALA","pin_code":"140103","registration_date":"06-Jun-2025","valid_upto":"23-Mar-2028"}'::jsonb;
  v_desc := 'Promoter: IBS BUILDERS & PROMOTERS (Other than Individual). Address: NH-205 WARD NO 8, KURALI, PADIALA. PIN: 140103. Valid upto: 23-Mar-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1187';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Metro Pro Infratech (Other than Individual)","address":"Village Chanalon, Hadbast No. 110,, Within M.C. Limits","pin_code":"140103","registration_date":"06-Jun-2025","valid_upto":"31-Dec-2027"}'::jsonb;
  v_desc := 'Promoter: Metro Pro Infratech (Other than Individual). Address: Village Chanalon, Hadbast No. 110,, Within M.C. Limits. PIN: 140103. Valid upto: 31-Dec-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0356';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Greater Mohali Area Development Authority (GMADA) (Other than Individual)","address":"Bulk Material Market, Sector-65, Mohali","pin_code":"160062","registration_date":"06-Jun-2025","valid_upto":"31-Dec-2027"}'::jsonb;
  v_desc := 'Promoter: Greater Mohali Area Development Authority (GMADA) (Other than Individual). Address: Bulk Material Market, Sector-65, Mohali. PIN: 160062. Valid upto: 31-Dec-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0350';
  v_meta := '{"district":"Ludhiana","promoter":"A.D.S. BUILDWELL PRIVATE LIMITED (Other than Individual)","address":"Site No. 1A,ADJ Westend Mall Ferozepur Road Ludhiana, SAME","pin_code":"141001","registration_date":"06-Jun-2025","valid_upto":"26-May-2029"}'::jsonb;
  v_desc := 'Promoter: A.D.S. BUILDWELL PRIVATE LIMITED (Other than Individual). Address: Site No. 1A,ADJ Westend Mall Ferozepur Road Ludhiana, SAME. PIN: 141001. Valid upto: 26-May-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR1193';
  v_meta := '{"district":"Ludhiana","promoter":"RICHVILLE INFRA PRIVATE LIMITED (Other than Individual)","address":"Village Ayali Khurd","pin_code":"142027","registration_date":"05-Jun-2025","valid_upto":"27-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: RICHVILLE INFRA PRIVATE LIMITED (Other than Individual). Address: Village Ayali Khurd. PIN: 142027. Valid upto: 27-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PC0357';
  v_meta := '{"district":"Patiala","promoter":"Inayat Realtech Group (Other than Individual)","address":"Village Fatehpur, H. B. No. 179, chandigarh-Bathinda Highway, Tehsil and Distt. Patial","pin_code":"147001","registration_date":"06-Jun-2025","valid_upto":"25-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: Inayat Realtech Group (Other than Individual). Address: Village Fatehpur, H. B. No. 179, chandigarh-Bathinda Highway, Tehsil and Distt. Patial. PIN: 147001. Valid upto: 25-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1197';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CHANDIGARH COLONISERS PRIVATE LIMITED (Other than Individual)","address":"HADBAST NO. 54, VILLAGE KISHANPURA, Dhakoli, SAS Nagar, Mohali, Punjab","pin_code":"160104","registration_date":"06-Jun-2025","valid_upto":"01-Sep-2027"}'::jsonb;
  v_desc := 'Promoter: CHANDIGARH COLONISERS PRIVATE LIMITED (Other than Individual). Address: HADBAST NO. 54, VILLAGE KISHANPURA, Dhakoli, SAS Nagar, Mohali, Punjab. PIN: 160104. Valid upto: 01-Sep-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL65-PR1177';
  v_meta := '{"district":"Patiala","promoter":"SUNTECK DEVELOPERS AND PROMOTERS (Other than Individual)","address":"VILLAGE JAMITGARH AND JABOMAJRA, Hadbast No. 388-389, Sub-Teshil Ghanour","pin_code":"140401","registration_date":"05-Jun-2025","valid_upto":"27-Feb-2030"}'::jsonb;
  v_desc := 'Promoter: SUNTECK DEVELOPERS AND PROMOTERS (Other than Individual). Address: VILLAGE JAMITGARH AND JABOMAJRA, Hadbast No. 388-389, Sub-Teshil Ghanour. PIN: 140401. Valid upto: 27-Feb-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL20-PR1196';
  v_meta := '{"district":"Fazilka","promoter":"Vrindavan Garden (Other than Individual)","address":"M.R College Road Opp. B.S.F. Campus","pin_code":"152123","registration_date":"05-Jun-2025","valid_upto":"03-Jul-2029"}'::jsonb;
  v_desc := 'Promoter: Vrindavan Garden (Other than Individual). Address: M.R College Road Opp. B.S.F. Campus. PIN: 152123. Valid upto: 03-Jul-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0353';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omni Pacific Colonizers Pvt Ltd (Other than Individual)","address":"NH 205 (Kharar Kurali section) at Village Dau Majra, Tehsil Kharar, District SAS Nagar","pin_code":"140301","registration_date":"05-Jun-2025","valid_upto":"15-Jan-2030"}'::jsonb;
  v_desc := 'Promoter: Omni Pacific Colonizers Pvt Ltd (Other than Individual). Address: NH 205 (Kharar Kurali section) at Village Dau Majra, Tehsil Kharar, District SAS Nagar. PIN: 140301. Valid upto: 15-Jan-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL35-PR1189';
  v_meta := '{"district":"Jalandhar","promoter":"PARAMOUNT LAND BUILDERS PRIVATE LIMITED (Other than Individual)","address":"VILLAGE NAKODAR, H.N.NO.31","pin_code":"144040","registration_date":"04-Jun-2025","valid_upto":"12-Feb-2029"}'::jsonb;
  v_desc := 'Promoter: PARAMOUNT LAND BUILDERS PRIVATE LIMITED (Other than Individual). Address: VILLAGE NAKODAR, H.N.NO.31. PIN: 144040. Valid upto: 12-Feb-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-RPR70-PC0341';
  v_meta := '{"district":"Rupnagar (Ropar)","promoter":"DASHMESH BUILDERS AND DEVELOPERS (Other than Individual)","address":"Ward No. 14, Chandigarh- Ludhiana NH-05, Morinda","pin_code":"140101","registration_date":"03-Jun-2025","valid_upto":"19-Dec-2029"}'::jsonb;
  v_desc := 'Promoter: DASHMESH BUILDERS AND DEVELOPERS (Other than Individual). Address: Ward No. 14, Chandigarh- Ludhiana NH-05, Morinda. PIN: 140101. Valid upto: 19-Dec-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0354';
  v_meta := '{"district":"Ludhiana","promoter":"RICHVILLE INFRA PRIVATE LIMITED (Other than Individual)","address":"Village Malakpur, Hadbast No. 147","pin_code":"142027","registration_date":"05-Jun-2025","valid_upto":"27-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: RICHVILLE INFRA PRIVATE LIMITED (Other than Individual). Address: Village Malakpur, Hadbast No. 147. PIN: 142027. Valid upto: 27-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR1161';
  v_meta := '{"district":"Ludhiana","promoter":"HERO REALTY PRIVATE LIMITED (Other than Individual)","address":"Village Birmi, Tehsil Mullanpur Dakha,","pin_code":"141101","website":"https://herohomes.in/project-ludhiana/home.html","registration_date":"05-Jun-2025","valid_upto":"31-Dec-2031"}'::jsonb;
  v_desc := 'Promoter: HERO REALTY PRIVATE LIMITED (Other than Individual). Address: Village Birmi, Tehsil Mullanpur Dakha,. PIN: 141101. Valid upto: 31-Dec-2031';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PC0349';
  v_meta := '{"district":"Barnala","promoter":"Z-Power Developers (Other than Individual)","address":"Barnala City Centre, Hadbast No. 55, Dhanaula Road, Barnala","pin_code":"148101","registration_date":"05-Jun-2025","valid_upto":"26-Apr-2029"}'::jsonb;
  v_desc := 'Promoter: Z-Power Developers (Other than Individual). Address: Barnala City Centre, Hadbast No. 55, Dhanaula Road, Barnala. PIN: 148101. Valid upto: 26-Apr-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL20-PR1179';
  v_meta := '{"district":"Fazilka","promoter":"J S Enterprises (Other than Individual)","address":"Ganganagar Road, Vill. Alamgarh, Tehsil. Abohar & Distt. Fazilka","pin_code":"152116","registration_date":"05-Jun-2025","valid_upto":"31-Jul-2029"}'::jsonb;
  v_desc := 'Promoter: J S Enterprises (Other than Individual). Address: Ganganagar Road, Vill. Alamgarh, Tehsil. Abohar & Distt. Fazilka. PIN: 152116. Valid upto: 31-Jul-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SBS83-PC0344';
  v_meta := '{"district":"Shahid Bhagat Singh Nagar (Nawanshahr)","promoter":"Richmond Developers (Other than Individual)","address":"Village Chakk Mander, H.B.No.10, Tehsil Banga","pin_code":"144501","registration_date":"05-Jun-2025","valid_upto":"24-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: Richmond Developers (Other than Individual). Address: Village Chakk Mander, H.B.No.10, Tehsil Banga. PIN: 144501. Valid upto: 24-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL07-PC0346';
  v_meta := '{"district":"Barnala","promoter":"S.M. DEVELOPERS AND PROMOTERS (Other than Individual)","address":"Near Paul Filling Station, Barnala to Bathinda Road, Tapa Mandi","pin_code":"148108","registration_date":"05-Jun-2025","valid_upto":"18-Feb-2030"}'::jsonb;
  v_desc := 'Promoter: S.M. DEVELOPERS AND PROMOTERS (Other than Individual). Address: Near Paul Filling Station, Barnala to Bathinda Road, Tapa Mandi. PIN: 148108. Valid upto: 18-Feb-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PI0028';
  v_meta := '{"district":"Ludhiana","promoter":"Piyush   Aneja (Individual)","address":"Village Dharour, Hadbast No. 232, Tehsil Sahnewal","pin_code":"141120","registration_date":"05-Jun-2025","valid_upto":"04-Nov-2029"}'::jsonb;
  v_desc := 'Promoter: Piyush   Aneja (Individual). Address: Village Dharour, Hadbast No. 232, Tehsil Sahnewal. PIN: 141120. Valid upto: 04-Nov-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1181';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Vintage Buildtech  (Other than Individual)","address":"Village Ramgarh Bhudda, Zirakpur","pin_code":"123456","registration_date":"05-Jun-2025","valid_upto":"27-Apr-2030"}'::jsonb;
  v_desc := 'Promoter: Vintage Buildtech  (Other than Individual). Address: Village Ramgarh Bhudda, Zirakpur. PIN: 123456. Valid upto: 27-Apr-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PC0348';
  v_meta := '{"district":"Patiala","promoter":"CONNAUGHT PLACE DEVELOPERS (Other than Individual)","address":"Village Arain Majra Tehsil and Distt Patiala","pin_code":"147001","registration_date":"05-Jun-2025","valid_upto":"18-Jun-2029"}'::jsonb;
  v_desc := 'Promoter: CONNAUGHT PLACE DEVELOPERS (Other than Individual). Address: Village Arain Majra Tehsil and Distt Patiala. PIN: 147001. Valid upto: 18-Jun-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL19-PR1190';
  v_meta := '{"district":"Fazilka","promoter":"M M TRADERS (Other than Individual)","address":"KANDHWALA ROAD, DURGA NAGRI","pin_code":"152116","registration_date":"05-Jun-2025","valid_upto":"30-Jan-2029"}'::jsonb;
  v_desc := 'Promoter: M M TRADERS (Other than Individual). Address: KANDHWALA ROAD, DURGA NAGRI. PIN: 152116. Valid upto: 30-Jan-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR1184';
  v_meta := '{"district":"Ludhiana","promoter":"Nirmaan Builders and Developers (Other than Individual)","address":"Village Talwara, H.B. No. 149","pin_code":"141008","registration_date":"05-Jun-2025","valid_upto":"01-Sep-2029"}'::jsonb;
  v_desc := 'Promoter: Nirmaan Builders and Developers (Other than Individual). Address: Village Talwara, H.B. No. 149. PIN: 141008. Valid upto: 01-Sep-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR1176';
  v_meta := '{"district":"Jalandhar","promoter":"PERFECT HOMES (Other than Individual)","address":"Village Bambianwali, H.B.No.235, Tehsil Jalandhar-1","pin_code":"144024","registration_date":"28-May-2025","valid_upto":"27-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: PERFECT HOMES (Other than Individual). Address: Village Bambianwali, H.B.No.235, Tehsil Jalandhar-1. PIN: 144024. Valid upto: 27-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MGA54-PC0343';
  v_meta := '{"district":"Moga","promoter":"Prestin Olive Enterprises LLP (Other than Individual)","address":"Village Khera Swadh, HB No. 29","pin_code":"142011","registration_date":"28-May-2025","valid_upto":"24-Apr-2030"}'::jsonb;
  v_desc := 'Promoter: Prestin Olive Enterprises LLP (Other than Individual). Address: Village Khera Swadh, HB No. 29. PIN: 142011. Valid upto: 24-Apr-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PC0342';
  v_meta := '{"district":"Bathinda","promoter":"Paragon Infra (Other than Individual)","address":"Village Bhucho Kalan(HB No. 201), and Lehra Khana(HB No. 202), Tehsil Nathana","pin_code":"151101","registration_date":"28-May-2025","valid_upto":"27-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: Paragon Infra (Other than Individual). Address: Village Bhucho Kalan(HB No. 201), and Lehra Khana(HB No. 202), Tehsil Nathana. PIN: 151101. Valid upto: 27-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0345';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Northedge Developers LLP (Other than Individual)","address":"Village Azizpur, Near Azizpur Toll Plaza","pin_code":"140603","website":"www.sushma.co.in","registration_date":"28-May-2025","valid_upto":"15-Oct-2029"}'::jsonb;
  v_desc := 'Promoter: Northedge Developers LLP (Other than Individual). Address: Village Azizpur, Near Azizpur Toll Plaza. PIN: 140603. Valid upto: 15-Oct-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR1175';
  v_meta := '{"district":"Bathinda","promoter":"DREAM LAND DEVELOPERS (Other than Individual)","address":"Village Beer Talab, HB No.072","pin_code":"151001","registration_date":"28-May-2025","valid_upto":"12-Feb-2032"}'::jsonb;
  v_desc := 'Promoter: DREAM LAND DEVELOPERS (Other than Individual). Address: Village Beer Talab, HB No.072. PIN: 151001. Valid upto: 12-Feb-2032';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL20-PR1174';
  v_meta := '{"district":"Fazilka","promoter":"Sandeep  Gilhotra (Individual)","address":"Freedom Fighter Road, Adjoining MR Grand, Village Salemshah and Badha","pin_code":"152123","registration_date":"28-May-2025","valid_upto":"25-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: Sandeep  Gilhotra (Individual). Address: Freedom Fighter Road, Adjoining MR Grand, Village Salemshah and Badha. PIN: 152123. Valid upto: 25-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FGS16-PC0330';
  v_meta := '{"district":"Fatehgarh Sahib","promoter":"ALC CROSSWALK (Other than Individual)","address":"ALC CROSSWALK-1 Village Mukaronpur, Landran -Sirhind Road","pin_code":"140412","website":"www.aroralandcorp.com","registration_date":"26-May-2025","valid_upto":"07-Apr-2027"}'::jsonb;
  v_desc := 'Promoter: ALC CROSSWALK (Other than Individual). Address: ALC CROSSWALK-1 Village Mukaronpur, Landran -Sirhind Road. PIN: 140412. Valid upto: 07-Apr-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PC0331';
  v_meta := '{"district":"Jalandhar","promoter":"GL DEVELOPERS (Other than Individual)","address":"Village Nakodar Hadbast No 31, Tehsil Nakodar","pin_code":"144040","registration_date":"27-May-2025","valid_upto":"06-Feb-2030"}'::jsonb;
  v_desc := 'Promoter: GL DEVELOPERS (Other than Individual). Address: Village Nakodar Hadbast No 31, Tehsil Nakodar. PIN: 144040. Valid upto: 06-Feb-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-HSP29-PR1146';
  v_meta := '{"district":"Hoshiarpur","promoter":"S. Santosh  Kumar (Individual)","address":"Vill. Usman Shahid (H.No.-142) & Village Dasuya(H.No.-128),, Tehsil. Dasuya","pin_code":"144205","registration_date":"27-May-2025","valid_upto":"09-Sep-2029"}'::jsonb;
  v_desc := 'Promoter: S. Santosh  Kumar (Individual). Address: Vill. Usman Shahid (H.No.-142) & Village Dasuya(H.No.-128),, Tehsil. Dasuya. PIN: 144205. Valid upto: 09-Sep-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PC0317';
  v_meta := '{"district":"Barnala","promoter":"HG CITY BARNALA PVT LTD (Other than Individual)","address":"Village Handiaya-C, Tehsil & District Barnala","pin_code":"148107","registration_date":"27-May-2025","valid_upto":"07-Aug-2029"}'::jsonb;
  v_desc := 'Promoter: HG CITY BARNALA PVT LTD (Other than Individual). Address: Village Handiaya-C, Tehsil & District Barnala. PIN: 148107. Valid upto: 07-Aug-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1172';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),Punjab-141003","pin_code":"141003","registration_date":"27-May-2025","valid_upto":"05-Nov-2029"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),Punjab-141003. PIN: 141003. Valid upto: 05-Nov-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PR1171';
  v_meta := '{"district":"Amritsar","promoter":"DINKAR REALCON PRIVATE LIMITED (Other than Individual)","address":"Omaxe New Amritsar","pin_code":"143115","registration_date":"27-May-2025","valid_upto":"20-Dec-2029"}'::jsonb;
  v_desc := 'Promoter: DINKAR REALCON PRIVATE LIMITED (Other than Individual). Address: Omaxe New Amritsar. PIN: 143115. Valid upto: 20-Dec-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0340';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),Punjab-141003","pin_code":"140901","registration_date":"27-May-2025","valid_upto":"03-Dec-2029"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),Punjab-141003. PIN: 140901. Valid upto: 03-Dec-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR1162';
  v_meta := '{"district":"Ludhiana","promoter":"GOPALA ENCLAVE  (Other than Individual)","address":"Village Bholapur and Village Mundian Kalan, Hadbast No. 238 and 179, Tehsil Sahnewal","pin_code":"141015","registration_date":"26-May-2025","valid_upto":"27-Oct-2029"}'::jsonb;
  v_desc := 'Promoter: GOPALA ENCLAVE  (Other than Individual). Address: Village Bholapur and Village Mundian Kalan, Hadbast No. 238 and 179, Tehsil Sahnewal. PIN: 141015. Valid upto: 27-Oct-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PC0329';
  v_meta := '{"district":"Barnala","promoter":"SHIVA ENTERPRISES (Other than Individual)","address":"NEAR CIVIL HOSPITAL,HOSPITAL ROAD ,BARNALATEHSIL&DISTT. BARNALA(CORE AREA - 9 ), SAME","pin_code":"148101","registration_date":"26-May-2025","valid_upto":"10-Oct-2029"}'::jsonb;
  v_desc := 'Promoter: SHIVA ENTERPRISES (Other than Individual). Address: NEAR CIVIL HOSPITAL,HOSPITAL ROAD ,BARNALATEHSIL&DISTT. BARNALA(CORE AREA - 9 ), SAME. PIN: 148101. Valid upto: 10-Oct-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1166';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KLG Infra (Other than Individual)","address":"Chunnk Site No. 8, Block-C, 83 Alpha SAS Nagar","pin_code":"140306","registration_date":"26-May-2025","valid_upto":"31-Jan-2034"}'::jsonb;
  v_desc := 'Promoter: KLG Infra (Other than Individual). Address: Chunnk Site No. 8, Block-C, 83 Alpha SAS Nagar. PIN: 140306. Valid upto: 31-Jan-2034';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR1170';
  v_meta := '{"district":"Bathinda","promoter":"LV DEVELOPERS (Other than Individual)","address":"Rampura Phul, Rampura Phul","pin_code":"151103","registration_date":"26-May-2025","valid_upto":"29-Jan-2030"}'::jsonb;
  v_desc := 'Promoter: LV DEVELOPERS (Other than Individual). Address: Rampura Phul, Rampura Phul. PIN: 151103. Valid upto: 29-Jan-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR77-PC0337';
  v_meta := '{"district":"Sangrur","promoter":"AAT Developers (Other than Individual)","address":"Village Sangrur A & B, Hadbast No. 23","pin_code":"148001","registration_date":"26-May-2025","valid_upto":"10-Feb-2030"}'::jsonb;
  v_desc := 'Promoter: AAT Developers (Other than Individual). Address: Village Sangrur A & B, Hadbast No. 23. PIN: 148001. Valid upto: 10-Feb-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL62-PC0336';
  v_meta := '{"district":"Patiala","promoter":"A-One Builders and Developers (Other than Individual)","address":"Village Nabha H. B No. 204, Tehsil Nabha","pin_code":"147201","registration_date":"26-May-2025","valid_upto":"17-Dec-2029"}'::jsonb;
  v_desc := 'Promoter: A-One Builders and Developers (Other than Individual). Address: Village Nabha H. B No. 204, Tehsil Nabha. PIN: 147201. Valid upto: 17-Dec-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1160';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Shiv Om Strips Pvt. Ltd (Other than Individual)","address":"H.B. No. 12 Village Sadhemajra, Haibtpur Road, Tehsil Derabassi","pin_code":"140201","registration_date":"26-May-2025","valid_upto":"26-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: Shiv Om Strips Pvt. Ltd (Other than Individual). Address: H.B. No. 12 Village Sadhemajra, Haibtpur Road, Tehsil Derabassi. PIN: 140201. Valid upto: 26-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT39-PR1164';
  v_meta := '{"district":"Kapurthala","promoter":"Satguru Land Developers (Other than Individual)","address":"Village Saido Bhulana (H.B no 124), Kapurthala","pin_code":"144602","registration_date":"26-May-2025","valid_upto":"25-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: Satguru Land Developers (Other than Individual). Address: Village Saido Bhulana (H.B no 124), Kapurthala. PIN: 144602. Valid upto: 25-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT39-PC0332';
  v_meta := '{"district":"Kapurthala","promoter":"Satguru Land Developers (Other than Individual)","address":"Village Saido Bhulana (H.B. No. 124), Tehsil & Distt. Kapurthala","pin_code":"144602","registration_date":"26-May-2025","valid_upto":"23-Apr-2029"}'::jsonb;
  v_desc := 'Promoter: Satguru Land Developers (Other than Individual). Address: Village Saido Bhulana (H.B. No. 124), Tehsil & Distt. Kapurthala. PIN: 144602. Valid upto: 23-Apr-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SBS84-PR1163';
  v_meta := '{"district":"Shahid Bhagat Singh Nagar (Nawanshahr)","promoter":"GURCON PROJECTS PRIVATE LIMITED  (Other than Individual)","address":"Village Barnala Kalan-1, H.B.No.135","pin_code":"144516","registration_date":"26-May-2025","valid_upto":"02-Feb-2030"}'::jsonb;
  v_desc := 'Promoter: GURCON PROJECTS PRIVATE LIMITED  (Other than Individual). Address: Village Barnala Kalan-1, H.B.No.135. PIN: 144516. Valid upto: 02-Feb-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1167';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),Punjab-141003","pin_code":"141003","registration_date":"22-May-2025","valid_upto":"05-Nov-2029"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),Punjab-141003. PIN: 141003. Valid upto: 05-Nov-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1159';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KRISHNA BUILDERS & DEVELOPERS (Other than Individual)","address":"VILLAGE RAMGHAR BHUDDA, NEAR PR7 MARBLE MARKET","pin_code":"140601","registration_date":"22-May-2025","valid_upto":"01-Jan-2029"}'::jsonb;
  v_desc := 'Promoter: KRISHNA BUILDERS & DEVELOPERS (Other than Individual). Address: VILLAGE RAMGHAR BHUDDA, NEAR PR7 MARBLE MARKET. PIN: 140601. Valid upto: 01-Jan-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1169';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GMI HOUSING LLP (Other than Individual)","address":"Village Banur, Hadbast No .280,, Tehsil Banur","pin_code":"160022","registration_date":"22-May-2025","valid_upto":"14-Jan-2030"}'::jsonb;
  v_desc := 'Promoter: GMI HOUSING LLP (Other than Individual). Address: Village Banur, Hadbast No .280,, Tehsil Banur. PIN: 160022. Valid upto: 14-Jan-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0333';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GMI HOUSING LLP (Other than Individual)","address":"Village Banur, Hadbast No .280, Tehsil Banur ,District S.AS Nagar","pin_code":"140601","registration_date":"22-May-2025","valid_upto":"14-Jan-2030"}'::jsonb;
  v_desc := 'Promoter: GMI HOUSING LLP (Other than Individual). Address: Village Banur, Hadbast No .280, Tehsil Banur ,District S.AS Nagar. PIN: 140601. Valid upto: 14-Jan-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0334';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ALC Cybrum  (Other than Individual)","address":"The Cybrum CP-04 Phase 8A, SAS Nagar Mohali, SAS Nagar Mohali","pin_code":"160062","website":"www.aroralandcorp.com","registration_date":"22-May-2025","valid_upto":"22-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: ALC Cybrum  (Other than Individual). Address: The Cybrum CP-04 Phase 8A, SAS Nagar Mohali, SAS Nagar Mohali. PIN: 160062. Valid upto: 22-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0327';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GBM BUILDTECH PVT LTD (Other than Individual)","address":"VILLAGE SINGHPURA, HB. NO. 43, ZIRAKPUR","pin_code":"140601","registration_date":"22-May-2025","valid_upto":"31-Dec-2025"}'::jsonb;
  v_desc := 'Promoter: GBM BUILDTECH PVT LTD (Other than Individual). Address: VILLAGE SINGHPURA, HB. NO. 43, ZIRAKPUR. PIN: 140601. Valid upto: 31-Dec-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1168';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),Punjab-141003","pin_code":"141003","registration_date":"23-May-2025","valid_upto":"05-Nov-2029"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),Punjab-141003. PIN: 141003. Valid upto: 05-Nov-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0335';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AMBIKA REALCON PRIVATE LIMITED (Other than Individual)","address":"FLORENCE PARK PHASE IV, SECTOR 14 NEW CHANDIGARH","pin_code":"121001","website":"www.ambikarealcon.com","registration_date":"23-May-2025","valid_upto":"31-Dec-2026"}'::jsonb;
  v_desc := 'Promoter: AMBIKA REALCON PRIVATE LIMITED (Other than Individual). Address: FLORENCE PARK PHASE IV, SECTOR 14 NEW CHANDIGARH. PIN: 121001. Valid upto: 31-Dec-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT39-PC0338';
  v_meta := '{"district":"Kapurthala","promoter":"GILLSONS CONSTRUCTIONS LIMITED (Other than Individual)","address":"Vill.Khurampur (HB No.63), and Vill.Hajipur (HB No.62), Hosiarpur Road,Tehsil Phagwara","pin_code":"144401","registration_date":"23-May-2025","valid_upto":"16-Feb-2030"}'::jsonb;
  v_desc := 'Promoter: GILLSONS CONSTRUCTIONS LIMITED (Other than Individual). Address: Vill.Khurampur (HB No.63), and Vill.Hajipur (HB No.62), Hosiarpur Road,Tehsil Phagwara. PIN: 144401. Valid upto: 16-Feb-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PC0318';
  v_meta := '{"district":"Bathinda","promoter":"PEEJAY PROMOTERS (Other than Individual)","address":"PARK PANORAMA COLONY, GREEN PALACE ROAD","pin_code":"151001","registration_date":"22-May-2025","valid_upto":"09-Sep-2029"}'::jsonb;
  v_desc := 'Promoter: PEEJAY PROMOTERS (Other than Individual). Address: PARK PANORAMA COLONY, GREEN PALACE ROAD. PIN: 151001. Valid upto: 09-Sep-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0326';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Cee Dee Developers Pvt Ltd (Other than Individual)","address":"SITE NO I & II SHOPPING COMPLEX PHASE-IX, EXPANSION INDUSTRIAL FOCAL POINT, SAS NAGAR MOHALI","pin_code":"160062","registration_date":"22-May-2025","valid_upto":"22-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: Cee Dee Developers Pvt Ltd (Other than Individual). Address: SITE NO I & II SHOPPING COMPLEX PHASE-IX, EXPANSION INDUSTRIAL FOCAL POINT, SAS NAGAR MOHALI. PIN: 160062. Valid upto: 22-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0325';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"HOMELAND REALTY PRIVATE LIMITED (Other than Individual)","address":"Commercial Allocable Pocket M3, A-40A, PHASE VIII EXTENSION, INDUSTRIAL FOCAL POINT, INDUSTRIAL AREA","pin_code":"160059","registration_date":"21-May-2025","valid_upto":"31-Mar-2035"}'::jsonb;
  v_desc := 'Promoter: HOMELAND REALTY PRIVATE LIMITED (Other than Individual). Address: Commercial Allocable Pocket M3, A-40A, PHASE VIII EXTENSION, INDUSTRIAL FOCAL POINT, INDUSTRIAL AREA. PIN: 160059. Valid upto: 31-Mar-2035';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FDK12-PC0301';
  v_meta := '{"district":"Faridkot","promoter":"Indocan Developers (Other than Individual)","address":"PELICAN PLAZA,   VILL. PAKKA, NH-54 ,  FARIDKOT - TALWANDI ROAD, FARIDKOT","pin_code":"151203","registration_date":"09-May-2025","valid_upto":"21-Sep-2027"}'::jsonb;
  v_desc := 'Promoter: Indocan Developers (Other than Individual). Address: PELICAN PLAZA,   VILL. PAKKA, NH-54 ,  FARIDKOT - TALWANDI ROAD, FARIDKOT. PIN: 151203. Valid upto: 21-Sep-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1151';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"BSBP ESTATES PRIVATE LIMITED (Other than Individual)","address":"Village Azizpur, Near Azizpur Toll Plaza","pin_code":"140603","website":"www.sushma.co.in","registration_date":"20-May-2025","valid_upto":"03-Dec-2029"}'::jsonb;
  v_desc := 'Promoter: BSBP ESTATES PRIVATE LIMITED (Other than Individual). Address: Village Azizpur, Near Azizpur Toll Plaza. PIN: 140603. Valid upto: 03-Dec-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0323';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Motia Builder and Promoters (Other than Individual)","address":"Village Dyalpura HB no 289, within MC Zirakpur, Sub tehsil Zirakpur","pin_code":"140601","registration_date":"20-May-2025","valid_upto":"31-Dec-2029"}'::jsonb;
  v_desc := 'Promoter: Motia Builder and Promoters (Other than Individual). Address: Village Dyalpura HB no 289, within MC Zirakpur, Sub tehsil Zirakpur. PIN: 140601. Valid upto: 31-Dec-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL64-PC0322';
  v_meta := '{"district":"Patiala","promoter":"Metro Developers and Builders (Other than Individual)","address":"Jakhal Road, Patran","pin_code":"147105","registration_date":"20-May-2025","valid_upto":"03-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: Metro Developers and Builders (Other than Individual). Address: Jakhal Road, Patran. PIN: 147105. Valid upto: 03-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0321';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Saturn Realtors & Developers (Other than Individual)","address":"Villagge Banur, Hadbast No. 280, Sub- tehsil Banur","pin_code":"140601","registration_date":"20-May-2025","valid_upto":"12-Sep-2029"}'::jsonb;
  v_desc := 'Promoter: Saturn Realtors & Developers (Other than Individual). Address: Villagge Banur, Hadbast No. 280, Sub- tehsil Banur. PIN: 140601. Valid upto: 12-Sep-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PC0320';
  v_meta := '{"district":"Jalandhar","promoter":"Deep Infrastructure (Other than Individual)","address":"Village Mallupotta, H.B. No. 76, tehsil Banga, District S.B.S. Nagar","pin_code":"144505","registration_date":"20-May-2025","valid_upto":"27-Oct-2029"}'::jsonb;
  v_desc := 'Promoter: Deep Infrastructure (Other than Individual). Address: Village Mallupotta, H.B. No. 76, tehsil Banga, District S.B.S. Nagar. PIN: 144505. Valid upto: 27-Oct-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-RPR70-PR1149';
  v_meta := '{"district":"Rupnagar (Ropar)","promoter":"Ropar Properties & Builders Pvt Ltd (Other than Individual)","address":"Hadbast No. 46, Village Araaji, Ropar, Bypass Road Rupnagar","pin_code":"160062","registration_date":"20-May-2025","valid_upto":"30-Sep-2029"}'::jsonb;
  v_desc := 'Promoter: Ropar Properties & Builders Pvt Ltd (Other than Individual). Address: Hadbast No. 46, Village Araaji, Ropar, Bypass Road Rupnagar. PIN: 160062. Valid upto: 30-Sep-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL34-PR1152';
  v_meta := '{"district":"Jalandhar","promoter":"United Developers (Other than Individual)","address":"Vill Laroi","pin_code":"144201","registration_date":"20-May-2025","valid_upto":"31-Mar-2028"}'::jsonb;
  v_desc := 'Promoter: United Developers (Other than Individual). Address: Vill Laroi. PIN: 144201. Valid upto: 31-Mar-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1156';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KLG Infra (Other than Individual)","address":"Village khijargarh and Azizpur, Sub Tehsil Banur","pin_code":"140601","registration_date":"20-May-2025","valid_upto":"31-Jan-2030"}'::jsonb;
  v_desc := 'Promoter: KLG Infra (Other than Individual). Address: Village khijargarh and Azizpur, Sub Tehsil Banur. PIN: 140601. Valid upto: 31-Jan-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1154';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"HANUMANT BUILDERS & PROMOTERS (Other than Individual)","address":"SECTOR 113, LANDRAN- CHUNNI SIRHIND, ROAD","pin_code":"140301","registration_date":"20-May-2025","valid_upto":"31-Dec-2026"}'::jsonb;
  v_desc := 'Promoter: HANUMANT BUILDERS & PROMOTERS (Other than Individual). Address: SECTOR 113, LANDRAN- CHUNNI SIRHIND, ROAD. PIN: 140301. Valid upto: 31-Dec-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1153';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Hanumant Buildtech (Other than Individual)","address":"Village Landran, Sector 113","pin_code":"160055","registration_date":"20-May-2025","valid_upto":"31-Dec-2026"}'::jsonb;
  v_desc := 'Promoter: Hanumant Buildtech (Other than Individual). Address: Village Landran, Sector 113. PIN: 160055. Valid upto: 31-Dec-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR1155';
  v_meta := '{"district":"Ludhiana","promoter":"Brother Hood Realtors Private Limited (Other than Individual)","address":"Ghalewal, Rahon Road","pin_code":"141007","registration_date":"20-May-2025","valid_upto":"05-Sep-2029"}'::jsonb;
  v_desc := 'Promoter: Brother Hood Realtors Private Limited (Other than Individual). Address: Ghalewal, Rahon Road. PIN: 141007. Valid upto: 05-Sep-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR1157';
  v_meta := '{"district":"Jalandhar","promoter":"Kuber Builders & Developers  (Other than Individual)","address":"Village Ladhewali, H.B No. 220, Teh & Distt. Jalandhar","pin_code":"144007","registration_date":"20-May-2025","valid_upto":"12-Nov-2029"}'::jsonb;
  v_desc := 'Promoter: Kuber Builders & Developers  (Other than Individual). Address: Village Ladhewali, H.B No. 220, Teh & Distt. Jalandhar. PIN: 144007. Valid upto: 12-Nov-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR73-PR1148';
  v_meta := '{"district":"Sangrur","promoter":"Ekta Land Promotor (Other than Individual)","address":"Village Dhuri Hadbast no. 94, Tehsil Dhuri","pin_code":"148024","registration_date":"20-May-2025","valid_upto":"03-Oct-2029"}'::jsonb;
  v_desc := 'Promoter: Ekta Land Promotor (Other than Individual). Address: Village Dhuri Hadbast no. 94, Tehsil Dhuri. PIN: 148024. Valid upto: 03-Oct-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MGA53-PC0314';
  v_meta := '{"district":"Moga","promoter":"Friends Developers (Other than Individual)","address":"Village Dharamkot Shmali , H.B No. 290,  Tehsil Dharamkot, District Moga , Punjab","pin_code":"142042","registration_date":"16-May-2025","valid_upto":"31-Mar-2028"}'::jsonb;
  v_desc := 'Promoter: Friends Developers (Other than Individual). Address: Village Dharamkot Shmali , H.B No. 290,  Tehsil Dharamkot, District Moga , Punjab. PIN: 142042. Valid upto: 31-Mar-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL07-PC0319';
  v_meta := '{"district":"Barnala","promoter":"SPKR PROMOTERS & DEVELOPERS LLP (Other than Individual)","address":"VILLAGE HANDIAYA, TEHSIL AND DISTRICT BARNALA","pin_code":"148107","registration_date":"20-May-2025","valid_upto":"07-Aug-2029"}'::jsonb;
  v_desc := 'Promoter: SPKR PROMOTERS & DEVELOPERS LLP (Other than Individual). Address: VILLAGE HANDIAYA, TEHSIL AND DISTRICT BARNALA. PIN: 148107. Valid upto: 07-Aug-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1147';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"BLISSBEL BUILDERS & DEVELOPERS (Other than Individual)","address":"Village Kishanpura,","pin_code":"140603","registration_date":"20-May-2025","valid_upto":"16-Feb-2032"}'::jsonb;
  v_desc := 'Promoter: BLISSBEL BUILDERS & DEVELOPERS (Other than Individual). Address: Village Kishanpura,. PIN: 140603. Valid upto: 16-Feb-2032';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR1145';
  v_meta := '{"district":"Bathinda","promoter":"PARAMOUNT PROMOTERS (Other than Individual)","address":"Village Nehianwala and Amargarh, Tehsil Goniana Mandi","pin_code":"151201","registration_date":"20-May-2025","valid_upto":"12-Jan-2030"}'::jsonb;
  v_desc := 'Promoter: PARAMOUNT PROMOTERS (Other than Individual). Address: Village Nehianwala and Amargarh, Tehsil Goniana Mandi. PIN: 151201. Valid upto: 12-Jan-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0324';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omni Pacific Colonizers Pvt Ltd (Other than Individual)","address":"vilage Radiala and Dau Majra, Hadbast no. 77 and 76, TEHSIL KHARAR , DISTRICT SAS NAGAR","pin_code":"140301","registration_date":"20-May-2025","valid_upto":"19-Jan-2030"}'::jsonb;
  v_desc := 'Promoter: Omni Pacific Colonizers Pvt Ltd (Other than Individual). Address: vilage Radiala and Dau Majra, Hadbast no. 77 and 76, TEHSIL KHARAR , DISTRICT SAS NAGAR. PIN: 140301. Valid upto: 19-Jan-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1144';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Urban Realty Partners DB (Other than Individual)","address":"Village Gulabgarh, Tehsil: Dera Bassi,, SAS Nagar","pin_code":"140507","registration_date":"16-May-2025","valid_upto":"30-Sep-2029"}'::jsonb;
  v_desc := 'Promoter: Urban Realty Partners DB (Other than Individual). Address: Village Gulabgarh, Tehsil: Dera Bassi,, SAS Nagar. PIN: 140507. Valid upto: 30-Sep-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FDK12-PR1142';
  v_meta := '{"district":"Faridkot","promoter":"ROSE VALLEY COLONISERS (Other than Individual)","address":"MOGA ROAD, KOTKAPURA","pin_code":"151204","registration_date":"15-May-2025","valid_upto":"30-Sep-2029"}'::jsonb;
  v_desc := 'Promoter: ROSE VALLEY COLONISERS (Other than Individual). Address: MOGA ROAD, KOTKAPURA. PIN: 151204. Valid upto: 30-Sep-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0315';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"HALE AND NICHE DEVELOPERS PRIVATE LIMITED (Other than Individual)","address":"VILLAGE SANETA, HADBAST NO.288, TEHSIL MOHALI","pin_code":"140307","registration_date":"15-May-2025","valid_upto":"31-Oct-2027"}'::jsonb;
  v_desc := 'Promoter: HALE AND NICHE DEVELOPERS PRIVATE LIMITED (Other than Individual). Address: VILLAGE SANETA, HADBAST NO.288, TEHSIL MOHALI. PIN: 140307. Valid upto: 31-Oct-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FGS15-PR1140';
  v_meta := '{"district":"Fatehgarh Sahib","promoter":"Kanav  Sood (Individual)","address":"Vilage Beer  Hadbast no. 27 Amloh","pin_code":"147203","registration_date":"14-May-2025","valid_upto":"20-Jan-2030"}'::jsonb;
  v_desc := 'Promoter: Kanav  Sood (Individual). Address: Vilage Beer  Hadbast no. 27 Amloh. PIN: 147203. Valid upto: 20-Jan-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MNS50-PR1141';
  v_meta := '{"district":"Mansa","promoter":"Kat Builders And Developers LLP (Other than Individual)","address":"Village Thuthianwali and Mansa Khurd, HB No 57& 55","pin_code":"151505","registration_date":"14-May-2025","valid_upto":"16-Dec-2029"}'::jsonb;
  v_desc := 'Promoter: Kat Builders And Developers LLP (Other than Individual). Address: Village Thuthianwali and Mansa Khurd, HB No 57& 55. PIN: 151505. Valid upto: 16-Dec-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0311';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KTS ENTERPRISES  (Other than Individual)","address":"Village Padiala, Kurali, Hadbast No. 379, Tehsil Kharar, Distt SAS Nagar","pin_code":"140103","registration_date":"07-May-2025","valid_upto":"27-Aug-2029"}'::jsonb;
  v_desc := 'Promoter: KTS ENTERPRISES  (Other than Individual). Address: Village Padiala, Kurali, Hadbast No. 379, Tehsil Kharar, Distt SAS Nagar. PIN: 140103. Valid upto: 27-Aug-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PC0308';
  v_meta := '{"district":"Bathinda","promoter":"Ganpati Land Promoters (Other than Individual)","address":"NH-07, Bathinda-Malout Road, Village Behman Diwana","pin_code":"151001","registration_date":"25-Apr-2025","valid_upto":"06-Feb-2030"}'::jsonb;
  v_desc := 'Promoter: Ganpati Land Promoters (Other than Individual). Address: NH-07, Bathinda-Malout Road, Village Behman Diwana. PIN: 151001. Valid upto: 06-Feb-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR1138';
  v_meta := '{"district":"Jalandhar","promoter":"Sohana Land Promoters (Other than Individual)","address":"Village Khusropur Hb no. 246, & Sansarpur Hb no 247 Teh & Dist Jalandhar","pin_code":"144024","registration_date":"28-Apr-2025","valid_upto":"30-Jul-2029"}'::jsonb;
  v_desc := 'Promoter: Sohana Land Promoters (Other than Individual). Address: Village Khusropur Hb no. 246, & Sansarpur Hb no 247 Teh & Dist Jalandhar. PIN: 144024. Valid upto: 30-Jul-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MNS50-PC0309';
  v_meta := '{"district":"Mansa","promoter":"Kat Builders And Developers LLP (Other than Individual)","address":"Village Thuthianwali and Mansa Khurd, HB No 57& 55","pin_code":"151505","registration_date":"30-Apr-2025","valid_upto":"11-Aug-2029"}'::jsonb;
  v_desc := 'Promoter: Kat Builders And Developers LLP (Other than Individual). Address: Village Thuthianwali and Mansa Khurd, HB No 57& 55. PIN: 151505. Valid upto: 11-Aug-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1136';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CRA BUILDTECH LLP (Other than Individual)","address":"Group Housing Site  No. 04 Sector 88 SAS Nagar, Punjab","pin_code":"160055","registration_date":"25-Apr-2025","valid_upto":"20-Apr-2028"}'::jsonb;
  v_desc := 'Promoter: CRA BUILDTECH LLP (Other than Individual). Address: Group Housing Site  No. 04 Sector 88 SAS Nagar, Punjab. PIN: 160055. Valid upto: 20-Apr-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1135';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"K S INFRACON PVT. LTD. (Other than Individual)","address":"Village Singhpura, Zirakpur","pin_code":"140603","registration_date":"25-Apr-2025","valid_upto":"19-Dec-2029"}'::jsonb;
  v_desc := 'Promoter: K S INFRACON PVT. LTD. (Other than Individual). Address: Village Singhpura, Zirakpur. PIN: 140603. Valid upto: 19-Dec-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0310';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jaskaran  Singh (Individual)","address":"Village Padiala Kurali","pin_code":"140103","registration_date":"30-Apr-2025","valid_upto":"08-Jul-2029"}'::jsonb;
  v_desc := 'Promoter: Jaskaran  Singh (Individual). Address: Village Padiala Kurali. PIN: 140103. Valid upto: 08-Jul-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR1139';
  v_meta := '{"district":"Bathinda","promoter":"Ananda Developers (Other than Individual)","address":"Village Goniana, Teh Bathinda","pin_code":"151001","registration_date":"30-Apr-2025","valid_upto":"15-Jan-2030"}'::jsonb;
  v_desc := 'Promoter: Ananda Developers (Other than Individual). Address: Village Goniana, Teh Bathinda. PIN: 151001. Valid upto: 15-Jan-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL65-PC0307';
  v_meta := '{"district":"Patiala","promoter":"GOLDUST LAND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"Site Office Goldust City Centre, On National Highway,, HB 173, Village Ramgarh, Ramgarh Urf Buta Singhwala,","pin_code":"140601","registration_date":"25-Apr-2025","valid_upto":"01-Feb-2029"}'::jsonb;
  v_desc := 'Promoter: GOLDUST LAND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: Site Office Goldust City Centre, On National Highway,, HB 173, Village Ramgarh, Ramgarh Urf Buta Singhwala,. PIN: 140601. Valid upto: 01-Feb-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1118';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omni Pacific Colonizers Pvt Ltd (Other than Individual)","address":"Village Pandiala Hadbast no. 379, within Municipal Council Kurali, Tehsil Kharar , District SAS Nagar","pin_code":"140103","registration_date":"17-Apr-2025","valid_upto":"14-Jan-2030"}'::jsonb;
  v_desc := 'Promoter: Omni Pacific Colonizers Pvt Ltd (Other than Individual). Address: Village Pandiala Hadbast no. 379, within Municipal Council Kurali, Tehsil Kharar , District SAS Nagar. PIN: 140103. Valid upto: 14-Jan-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0306';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TOWNBELL INDIA LANDCRAFT PRIVATE LIMITED (Other than Individual)","address":"HARBAST NO 182, Village Aujla, Tehsil Kharar","pin_code":"140301","registration_date":"17-Apr-2025","valid_upto":"15-Jan-2030"}'::jsonb;
  v_desc := 'Promoter: TOWNBELL INDIA LANDCRAFT PRIVATE LIMITED (Other than Individual). Address: HARBAST NO 182, Village Aujla, Tehsil Kharar. PIN: 140301. Valid upto: 15-Jan-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-HSP29-PR1078';
  v_meta := '{"district":"Hoshiarpur","promoter":"Satnam   Singh (Individual)","address":"Village Chak Alla Baksh HB no 236, Tehsil Mukerian","pin_code":"144211","registration_date":"17-Apr-2025","valid_upto":"27-Mar-2028"}'::jsonb;
  v_desc := 'Promoter: Satnam   Singh (Individual). Address: Village Chak Alla Baksh HB no 236, Tehsil Mukerian. PIN: 144211. Valid upto: 27-Mar-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL19-PR1122';
  v_meta := '{"district":"Fazilka","promoter":"Krishna Enterprises (Other than Individual)","address":"FAZILKA ROAD","pin_code":"152116","registration_date":"15-Apr-2025","valid_upto":"30-Jan-2029"}'::jsonb;
  v_desc := 'Promoter: Krishna Enterprises (Other than Individual). Address: FAZILKA ROAD. PIN: 152116. Valid upto: 30-Jan-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH42-PM0174';
  v_meta := '{"district":"Ludhiana","promoter":"SKB INFRA (Other than Individual)","address":"Village Gureh","pin_code":"142023","registration_date":"15-Apr-2025","valid_upto":"27-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: SKB INFRA (Other than Individual). Address: Village Gureh. PIN: 142023. Valid upto: 27-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1132';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"G K Residency Private Limited (Other than Individual)","address":"Village Santemajra HB No. 186, MC Kharar, Tehsil Kharar","pin_code":"140307","registration_date":"16-Apr-2025","valid_upto":"30-Sep-2029"}'::jsonb;
  v_desc := 'Promoter: G K Residency Private Limited (Other than Individual). Address: Village Santemajra HB No. 186, MC Kharar, Tehsil Kharar. PIN: 140307. Valid upto: 30-Sep-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1131';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"B N Builders And Promoters (Other than Individual)","address":"Village Jagadhari, HB no 37, Tehsil Derabassi, SAS Nagar","pin_code":"140507","registration_date":"16-Apr-2025","valid_upto":"19-Dec-2029"}'::jsonb;
  v_desc := 'Promoter: B N Builders And Promoters (Other than Individual). Address: Village Jagadhari, HB no 37, Tehsil Derabassi, SAS Nagar. PIN: 140507. Valid upto: 19-Dec-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR1130';
  v_meta := '{"district":"Jalandhar","promoter":"AGI Infra Limited (Other than Individual)","address":"Village Pholriwal, H.B. No. 252","pin_code":"144022","website":"www.agiinfra.com","registration_date":"16-Apr-2025","valid_upto":"03-Dec-2029"}'::jsonb;
  v_desc := 'Promoter: AGI Infra Limited (Other than Individual). Address: Village Pholriwal, H.B. No. 252. PIN: 144022. Valid upto: 03-Dec-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FDK12-PR1129';
  v_meta := '{"district":"Faridkot","promoter":"S. Yudhvir  Singh Sandhu (Individual)","address":"Hari Nau Road, Kothe Sainian, Kotkapura","pin_code":"151204","registration_date":"16-Apr-2025","valid_upto":"14-Nov-2028"}'::jsonb;
  v_desc := 'Promoter: S. Yudhvir  Singh Sandhu (Individual). Address: Hari Nau Road, Kothe Sainian, Kotkapura. PIN: 151204. Valid upto: 14-Nov-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR1126';
  v_meta := '{"district":"Bathinda","promoter":"R L DEVELOPERS (Other than Individual)","address":"LAL SINGH BASTI, MAIN ROAD BATHINDA","pin_code":"151001","registration_date":"16-Apr-2025","valid_upto":"07-Aug-2029"}'::jsonb;
  v_desc := 'Promoter: R L DEVELOPERS (Other than Individual). Address: LAL SINGH BASTI, MAIN ROAD BATHINDA. PIN: 151001. Valid upto: 07-Aug-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-GSP27-PC0305';
  v_meta := '{"district":"Gurdaspur","promoter":"S. Simarjit   Singh  (Individual)","address":"VILLAGE SHAHZADA NANGAL, HB NO 335","pin_code":"143533","registration_date":"09-Apr-2025","valid_upto":"27-Jun-2029"}'::jsonb;
  v_desc := 'Promoter: S. Simarjit   Singh  (Individual). Address: VILLAGE SHAHZADA NANGAL, HB NO 335. PIN: 143533. Valid upto: 27-Jun-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR1127';
  v_meta := '{"district":"Bathinda","promoter":"Shree Buildtech (Other than Individual)","address":"Lal Singh Basti , main Road Bathinda","pin_code":"151001","registration_date":"09-Apr-2025","valid_upto":"07-Aug-2029"}'::jsonb;
  v_desc := 'Promoter: Shree Buildtech (Other than Individual). Address: Lal Singh Basti , main Road Bathinda. PIN: 151001. Valid upto: 07-Aug-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR1125';
  v_meta := '{"district":"Bathinda","promoter":"PRMIERE ESTATES (Other than Individual)","address":"AFORDABLE COLONY BIR AVENUE OWNED BY PREMIER ESTATES AT BIR ROAD BATHINDA, SAME","pin_code":"151001","registration_date":"09-Apr-2025","valid_upto":"09-Apr-2029"}'::jsonb;
  v_desc := 'Promoter: PRMIERE ESTATES (Other than Individual). Address: AFORDABLE COLONY BIR AVENUE OWNED BY PREMIER ESTATES AT BIR ROAD BATHINDA, SAME. PIN: 151001. Valid upto: 09-Apr-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0303';
  v_meta := '{"district":"Ludhiana","promoter":"Somsons Infra Limited (Other than Individual)","address":"Village Daad,, Ludhiana West","pin_code":"142022","registration_date":"03-Apr-2025","valid_upto":"27-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: Somsons Infra Limited (Other than Individual). Address: Village Daad,, Ludhiana West. PIN: 142022. Valid upto: 27-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0304';
  v_meta := '{"district":"Ludhiana","promoter":"G.K.HOUSING &DEVELOPERS PRIVATE LIMITED  (Other than Individual)","address":"Village Jaspal Banger(H.B.No. 259)Tehsil Ludhiana West Distt Ludhiana, SAME","pin_code":"141122","registration_date":"03-Apr-2025","valid_upto":"11-Sep-2029"}'::jsonb;
  v_desc := 'Promoter: G.K.HOUSING &DEVELOPERS PRIVATE LIMITED  (Other than Individual). Address: Village Jaspal Banger(H.B.No. 259)Tehsil Ludhiana West Distt Ludhiana, SAME. PIN: 141122. Valid upto: 11-Sep-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL19-PR1119';
  v_meta := '{"district":"Fazilka","promoter":"CCD Signature Green City (Other than Individual)","address":"Malout- Fazilka Road, Arniwala Shekh Subhan, Distt. Fazilka, Fazilka","pin_code":"152124","registration_date":"03-Apr-2025","valid_upto":"31-May-2029"}'::jsonb;
  v_desc := 'Promoter: CCD Signature Green City (Other than Individual). Address: Malout- Fazilka Road, Arniwala Shekh Subhan, Distt. Fazilka, Fazilka. PIN: 152124. Valid upto: 31-May-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1123';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"EVERMARK DEVELOPERS & PROMOTERS PVT. LTD. (Other than Individual)","address":"VILLAGE RAMGARH BHUDDA, ZIRAKPUR , PUNJAB","pin_code":"140603","registration_date":"03-Apr-2025","valid_upto":"23-Dec-2029"}'::jsonb;
  v_desc := 'Promoter: EVERMARK DEVELOPERS & PROMOTERS PVT. LTD. (Other than Individual). Address: VILLAGE RAMGARH BHUDDA, ZIRAKPUR , PUNJAB. PIN: 140603. Valid upto: 23-Dec-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT39-PR1124';
  v_meta := '{"district":"Kapurthala","promoter":"JASHER REALTTY PRIVATE LIMITED (Other than Individual)","address":"Village Saido Bhulana (H.B.No.124) and Village Rasulpur Chisti (H.B.No.127),","pin_code":"144602","registration_date":"03-Apr-2025","valid_upto":"31-Jul-2029"}'::jsonb;
  v_desc := 'Promoter: JASHER REALTTY PRIVATE LIMITED (Other than Individual). Address: Village Saido Bhulana (H.B.No.124) and Village Rasulpur Chisti (H.B.No.127),. PIN: 144602. Valid upto: 31-Jul-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR1128';
  v_meta := '{"district":"Patiala","promoter":"Tricone Projects India Ltd (Other than Individual)","address":"Village Kasiana, H. B. No. 335, Tehsil & District Patiala","pin_code":"147001","registration_date":"03-Apr-2025","valid_upto":"24-Nov-2029"}'::jsonb;
  v_desc := 'Promoter: Tricone Projects India Ltd (Other than Individual). Address: Village Kasiana, H. B. No. 335, Tehsil & District Patiala. PIN: 147001. Valid upto: 24-Nov-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0394';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GVT INFRA (Other than Individual)","address":"OLD KALKA AMBALA ROAD, Opposite Delhi Public World School, Gazipur, NAC Zirakpur","pin_code":"160104","registration_date":"11-Oct-2018","valid_upto":"10-Apr-2023"}'::jsonb;
  v_desc := 'Promoter: GVT INFRA (Other than Individual). Address: OLD KALKA AMBALA ROAD, Opposite Delhi Public World School, Gazipur, NAC Zirakpur. PIN: 160104. Valid upto: 10-Apr-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR77-PC0300';
  v_meta := '{"district":"Sangrur","promoter":"G & G Associates (Other than Individual)","address":"Village Akoi, H. B. No. 21, Dhuri Road, Sangrur","pin_code":"148001","registration_date":"26-Mar-2025","valid_upto":"13-Nov-2029"}'::jsonb;
  v_desc := 'Promoter: G & G Associates (Other than Individual). Address: Village Akoi, H. B. No. 21, Dhuri Road, Sangrur. PIN: 148001. Valid upto: 13-Nov-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1117';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MEYDAN INFRA LLP (Other than Individual)","address":"VILLAGE SINGHPURA, HB. NO 43, ZIRAKPUR","pin_code":"140603","registration_date":"25-Mar-2025","valid_upto":"21-Jan-2030"}'::jsonb;
  v_desc := 'Promoter: MEYDAN INFRA LLP (Other than Individual). Address: VILLAGE SINGHPURA, HB. NO 43, ZIRAKPUR. PIN: 140603. Valid upto: 21-Jan-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FGS17-PC0299';
  v_meta := '{"district":"Fatehgarh Sahib","promoter":"Raunak  Shergill (Individual)","address":"Village Bara, Hadbast No 137, Teh. Distt Fatehgarh Sahib","pin_code":"140412","registration_date":"24-Mar-2025","valid_upto":"04-Jul-2029"}'::jsonb;
  v_desc := 'Promoter: Raunak  Shergill (Individual). Address: Village Bara, Hadbast No 137, Teh. Distt Fatehgarh Sahib. PIN: 140412. Valid upto: 04-Jul-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0111';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MB Infrabuild Private Limited (Other than Individual)","address":"Beverly Golf Avenue, Golf Range, SAS Nagar, Sector-65","pin_code":"160062","website":"www.beverlygolfavenue.com","registration_date":"22-Sep-2017","valid_upto":"31-Jul-2021"}'::jsonb;
  v_desc := 'Promoter: MB Infrabuild Private Limited (Other than Individual). Address: Beverly Golf Avenue, Golf Range, SAS Nagar, Sector-65. PIN: 160062. Valid upto: 31-Jul-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1105';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SUKHDA TRADING COMPANY (Other than Individual)","address":"VILLAGE KURALI NO. 121, KURALI","pin_code":"140103","registration_date":"21-Jan-2025","valid_upto":"01-Aug-2029"}'::jsonb;
  v_desc := 'Promoter: SUKHDA TRADING COMPANY (Other than Individual). Address: VILLAGE KURALI NO. 121, KURALI. PIN: 140103. Valid upto: 01-Aug-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PC0292';
  v_meta := '{"district":"Bathinda","promoter":"KHATUJI BUILDCON PRIVATE LIMITED (Other than Individual)","address":"Vill. Doomwali, Tehsil Sangat, Distt Bathinda","pin_code":"151401","registration_date":"17-Feb-2025","valid_upto":"29-Sep-2029"}'::jsonb;
  v_desc := 'Promoter: KHATUJI BUILDCON PRIVATE LIMITED (Other than Individual). Address: Vill. Doomwali, Tehsil Sangat, Distt Bathinda. PIN: 151401. Valid upto: 29-Sep-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1114';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"HERO REALTY PRIVATE LIMITED (Other than Individual)","address":"Group Housing Site No. 1, Sector 88,","pin_code":"140308","website":"https://herohomes.in/project-mohali/phase-2.html","registration_date":"17-Feb-2025","valid_upto":"01-Nov-2029"}'::jsonb;
  v_desc := 'Promoter: HERO REALTY PRIVATE LIMITED (Other than Individual). Address: Group Housing Site No. 1, Sector 88,. PIN: 140308. Valid upto: 01-Nov-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH42-PR1116';
  v_meta := '{"district":"Ludhiana","promoter":"JANDU LAND PROMOTERS LLP (Other than Individual)","address":"Village Balloke","pin_code":"141001","registration_date":"17-Feb-2025","valid_upto":"29-Oct-2029"}'::jsonb;
  v_desc := 'Promoter: JANDU LAND PROMOTERS LLP (Other than Individual). Address: Village Balloke. PIN: 141001. Valid upto: 29-Oct-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PC0279';
  v_meta := '{"district":"Jalandhar","promoter":"Triworld developers (Other than Individual)","address":"Village Pholriwal, Harbast No 252,, Tehsil and Dist Jalandhar","pin_code":"144022","registration_date":"17-Feb-2025","valid_upto":"14-May-2029"}'::jsonb;
  v_desc := 'Promoter: Triworld developers (Other than Individual). Address: Village Pholriwal, Harbast No 252,, Tehsil and Dist Jalandhar. PIN: 144022. Valid upto: 14-May-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FDK12-PR1113';
  v_meta := '{"district":"Faridkot","promoter":"Marval Estate (Other than Individual)","address":"Muktsar Road, Kotkapura","pin_code":"151204","registration_date":"31-Jan-2025","valid_upto":"31-Jul-2029"}'::jsonb;
  v_desc := 'Promoter: Marval Estate (Other than Individual). Address: Muktsar Road, Kotkapura. PIN: 151204. Valid upto: 31-Jul-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0842';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Vaneet Infrastructure and Developers Private Limited (Other than Individual)","address":"Village - Bakarpur, Tehsil- Derabassi","pin_code":"140201","registration_date":"15-Mar-2023","valid_upto":"20-Jul-2025"}'::jsonb;
  v_desc := 'Promoter: Vaneet Infrastructure and Developers Private Limited (Other than Individual). Address: Village - Bakarpur, Tehsil- Derabassi. PIN: 140201. Valid upto: 20-Jul-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0295';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SK BUILDERS (Other than Individual)","address":"Village Lalru, H.B No 218, within M.C Lalru Derabassi","pin_code":"140501","registration_date":"29-Jan-2025","valid_upto":"07-Aug-2029"}'::jsonb;
  v_desc := 'Promoter: SK BUILDERS (Other than Individual). Address: Village Lalru, H.B No 218, within M.C Lalru Derabassi. PIN: 140501. Valid upto: 07-Aug-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FGS17-PR1108';
  v_meta := '{"district":"Fatehgarh Sahib","promoter":"PURI PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"Village Sirhind, H.B. No 125,, Tehsil Fatehgarh Sahib","pin_code":"140406","registration_date":"21-Jan-2025","valid_upto":"04-Apr-2029"}'::jsonb;
  v_desc := 'Promoter: PURI PROMOTERS PRIVATE LIMITED (Other than Individual). Address: Village Sirhind, H.B. No 125,, Tehsil Fatehgarh Sahib. PIN: 140406. Valid upto: 04-Apr-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1111';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GULNAAR KREATIVE DEVELOPERS LLP (Other than Individual)","address":"Village Singhpura, HB No 43, Ramgarh Budha HB No 42","pin_code":"140601","registration_date":"23-Jan-2025","valid_upto":"21-Aug-2029"}'::jsonb;
  v_desc := 'Promoter: GULNAAR KREATIVE DEVELOPERS LLP (Other than Individual). Address: Village Singhpura, HB No 43, Ramgarh Budha HB No 42. PIN: 140601. Valid upto: 21-Aug-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR1110';
  v_meta := '{"district":"Ludhiana","promoter":"RAJESH KUMAR TANGRI (Individual)","address":"Village Karimpur","pin_code":"141101","registration_date":"17-Jan-2025","valid_upto":"04-Jul-2029"}'::jsonb;
  v_desc := 'Promoter: RAJESH KUMAR TANGRI (Individual). Address: Village Karimpur. PIN: 141101. Valid upto: 04-Jul-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PC0296';
  v_meta := '{"district":"Bathinda","promoter":"Kohinoor Developers (Other than Individual)","address":"village Chak Kharak Singh Wala, Urf Doomwali","pin_code":"151401","registration_date":"17-Jan-2025","valid_upto":"13-Nov-2029"}'::jsonb;
  v_desc := 'Promoter: Kohinoor Developers (Other than Individual). Address: village Chak Kharak Singh Wala, Urf Doomwali. PIN: 151401. Valid upto: 13-Nov-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1106';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"7C REALTY MANAGEMENT PRIVATE LIMITED  (Other than Individual)","address":"VILLAGE NAUGIARI, HADBAST NO. 282 TEHSIL BANUR","pin_code":"140306","registration_date":"03-Jan-2025","valid_upto":"15-Oct-2029"}'::jsonb;
  v_desc := 'Promoter: 7C REALTY MANAGEMENT PRIVATE LIMITED  (Other than Individual). Address: VILLAGE NAUGIARI, HADBAST NO. 282 TEHSIL BANUR. PIN: 140306. Valid upto: 15-Oct-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR1104';
  v_meta := '{"district":"Ludhiana","promoter":"Home Life  Buildcon Private Limited (Other than Individual)","address":"H.B. No 155, Village Ayali Kalan, H.B. No 145, Bains, Ludhiana","pin_code":"141012","registration_date":"08-Jan-2025","valid_upto":"02-Sep-2029"}'::jsonb;
  v_desc := 'Promoter: Home Life  Buildcon Private Limited (Other than Individual). Address: H.B. No 155, Village Ayali Kalan, H.B. No 145, Bains, Ludhiana. PIN: 141012. Valid upto: 02-Sep-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR1107';
  v_meta := '{"district":"Ludhiana","promoter":"CM LUXURY HOMES (Other than Individual)","address":"Village Jainpur, Hadbast No. 148","pin_code":"142027","registration_date":"07-Jan-2025","valid_upto":"11-Sep-2029"}'::jsonb;
  v_desc := 'Promoter: CM LUXURY HOMES (Other than Individual). Address: Village Jainpur, Hadbast No. 148. PIN: 142027. Valid upto: 11-Sep-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR1087';
  v_meta := '{"district":"Jalandhar","promoter":"SUKHKARAM LAND DEVELOPERS (Other than Individual)","address":"VILLAGE BAMBIANWALI, H.B.NO.235","pin_code":"144024","registration_date":"08-Jan-2025","valid_upto":"07-Jul-2027"}'::jsonb;
  v_desc := 'Promoter: SUKHKARAM LAND DEVELOPERS (Other than Individual). Address: VILLAGE BAMBIANWALI, H.B.NO.235. PIN: 144024. Valid upto: 07-Jul-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL35-PR1103';
  v_meta := '{"district":"Jalandhar","promoter":"EATON CENTRE (Other than Individual)","address":"Village Nakodar HB No. 31 Distt. Jalandhar","pin_code":"144042","registration_date":"19-Dec-2024","valid_upto":"10-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: EATON CENTRE (Other than Individual). Address: Village Nakodar HB No. 31 Distt. Jalandhar. PIN: 144042. Valid upto: 10-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0616';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SRG Marbella Developers & Promoters LLP (Other than Individual)","address":"Curo One, Village Mullanpur Garibdas, Old Barrier, New Chandigarh","pin_code":"140901","registration_date":"07-Jul-2020","valid_upto":"31-Dec-2025"}'::jsonb;
  v_desc := 'Promoter: SRG Marbella Developers & Promoters LLP (Other than Individual). Address: Curo One, Village Mullanpur Garibdas, Old Barrier, New Chandigarh. PIN: 140901. Valid upto: 31-Dec-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1101';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Mohali Greensville Infra LLP (Other than Individual)","address":"Sector-113,, Village Kailon , Landran","pin_code":"140307","registration_date":"29-Nov-2024","valid_upto":"15-Oct-2029"}'::jsonb;
  v_desc := 'Promoter: Mohali Greensville Infra LLP (Other than Individual). Address: Sector-113,, Village Kailon , Landran. PIN: 140307. Valid upto: 15-Oct-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR1102';
  v_meta := '{"district":"Jalandhar","promoter":"PARAMJOT  SINGH (Individual)","address":"Village Chohak, H.B.No.218","pin_code":"144007","registration_date":"26-Nov-2024","valid_upto":"09-Jul-2029"}'::jsonb;
  v_desc := 'Promoter: PARAMJOT  SINGH (Individual). Address: Village Chohak, H.B.No.218. PIN: 144007. Valid upto: 09-Jul-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0290';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"EVERMARK DEVELOPERS & PROMOTERS PVT. LTD. (Other than Individual)","address":"VILLAGE RAMGARH BHUDDA, ZIRAKPUR , PUNJAB","pin_code":"140603","registration_date":"25-Nov-2024","valid_upto":"19-May-2029"}'::jsonb;
  v_desc := 'Promoter: EVERMARK DEVELOPERS & PROMOTERS PVT. LTD. (Other than Individual). Address: VILLAGE RAMGARH BHUDDA, ZIRAKPUR , PUNJAB. PIN: 140603. Valid upto: 19-May-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1098';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"Sector-66A, Mohali","pin_code":"140306","website":"www.jantahousing.com","registration_date":"22-Nov-2024","valid_upto":"31-Aug-2029"}'::jsonb;
  v_desc := 'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: Sector-66A, Mohali. PIN: 140306. Valid upto: 31-Aug-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1099';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"SCO-39-42, Sector-82","pin_code":"140306","website":"www.jantahousing.com","registration_date":"22-Nov-2024","valid_upto":"31-Aug-2029"}'::jsonb;
  v_desc := 'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: SCO-39-42, Sector-82. PIN: 140306. Valid upto: 31-Aug-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1097';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"Sector-66","pin_code":"140306","website":"www.jantahousing.com","registration_date":"22-Nov-2024","valid_upto":"31-Oct-2029"}'::jsonb;
  v_desc := 'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: Sector-66. PIN: 140306. Valid upto: 31-Oct-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1100';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PRIDE INFRA (Other than Individual)","address":"VILLAGE KHARAR, HADBAST 184, KHARAR","pin_code":"140301","registration_date":"25-Nov-2024","valid_upto":"18-Jun-2028"}'::jsonb;
  v_desc := 'Promoter: PRIDE INFRA (Other than Individual). Address: VILLAGE KHARAR, HADBAST 184, KHARAR. PIN: 140301. Valid upto: 18-Jun-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1091';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Evermark Infra LLP (Other than Individual)","address":"Village kaulimajra , lalru","pin_code":"140506","registration_date":"21-Nov-2024","valid_upto":"08-Aug-2029"}'::jsonb;
  v_desc := 'Promoter: Evermark Infra LLP (Other than Individual). Address: Village kaulimajra , lalru. PIN: 140506. Valid upto: 08-Aug-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0291';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sunita  Rani (Individual)","address":"Hadbast no 290,, Village nabha, zirakpur","pin_code":"140603","registration_date":"07-Nov-2024","valid_upto":"30-May-2029"}'::jsonb;
  v_desc := 'Promoter: Sunita  Rani (Individual). Address: Hadbast no 290,, Village nabha, zirakpur. PIN: 140603. Valid upto: 30-May-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1094';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Central Government Employees Welfare Housing Organisation (Other than Individual)","address":"PLOT NO 3 SEC 79 SAS NAGAR MOHALI","pin_code":"160071","website":"www.cgewho.in","registration_date":"25-Oct-2024","valid_upto":"04-Jul-2028"}'::jsonb;
  v_desc := 'Promoter: Central Government Employees Welfare Housing Organisation (Other than Individual). Address: PLOT NO 3 SEC 79 SAS NAGAR MOHALI. PIN: 160071. Valid upto: 04-Jul-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR1096';
  v_meta := '{"district":"Bathinda","promoter":"Balaji Buildtech And Developers (Other than Individual)","address":"Dabwali Road, Bathinda","pin_code":"151001","registration_date":"08-Nov-2024","valid_upto":"07-Dec-2028"}'::jsonb;
  v_desc := 'Promoter: Balaji Buildtech And Developers (Other than Individual). Address: Dabwali Road, Bathinda. PIN: 151001. Valid upto: 07-Dec-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PR1089';
  v_meta := '{"district":"Barnala","promoter":"GANPATI BUILDERS AND DEVELOPERS  (Other than Individual)","address":"HADBAST NO 58, VILLAGE HANDIAYA","pin_code":"148107","registration_date":"05-Nov-2024","valid_upto":"24-Apr-2025"}'::jsonb;
  v_desc := 'Promoter: GANPATI BUILDERS AND DEVELOPERS  (Other than Individual). Address: HADBAST NO 58, VILLAGE HANDIAYA. PIN: 148107. Valid upto: 24-Apr-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-RPR67-PC0119';
  v_meta := '{"district":"Rupnagar (Ropar)","promoter":"ROPAR IMPROVEMENT TRUST (Other than Individual)","address":"ROOPNAGAR","pin_code":"140001","registration_date":"18-Jun-2020","valid_upto":"31-Mar-2021"}'::jsonb;
  v_desc := 'Promoter: ROPAR IMPROVEMENT TRUST (Other than Individual). Address: ROOPNAGAR. PIN: 140001. Valid upto: 31-Mar-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL34-PR0872';
  v_meta := '{"district":"Jalandhar","promoter":"Sukhdeep   Singh (Individual)","address":"Village Reru H.B. No.207, Near Pathankot Byepass Road, Tehsil and Distt Jalandhar","pin_code":"144012","registration_date":"16-Oct-2023","valid_upto":"01-Mar-2028"}'::jsonb;
  v_desc := 'Promoter: Sukhdeep   Singh (Individual). Address: Village Reru H.B. No.207, Near Pathankot Byepass Road, Tehsil and Distt Jalandhar. PIN: 144012. Valid upto: 01-Mar-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0112';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Earlwood Private Limited (Other than Individual)","address":"Vill Santemajra Teh. Kharar","pin_code":"140307","registration_date":"04-Feb-2020","valid_upto":"31-Dec-2025"}'::jsonb;
  v_desc := 'Promoter: Earlwood Private Limited (Other than Individual). Address: Vill Santemajra Teh. Kharar. PIN: 140307. Valid upto: 31-Dec-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0137';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Altus Space Builders Pvt. Ltd. (Other than Individual)","address":"Village-Palheri, Mullanpur","pin_code":"140301","website":"http://altusnewchandigarh.in","registration_date":"18-Nov-2020","valid_upto":"16-Jun-2025"}'::jsonb;
  v_desc := 'Promoter: Altus Space Builders Pvt. Ltd. (Other than Individual). Address: Village-Palheri, Mullanpur. PIN: 140301. Valid upto: 16-Jun-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PC0288';
  v_meta := '{"district":"Barnala","promoter":"Sourav  .. (Individual)","address":"Opp. Court Complex, Gate No. 2, Handiaya Road, Tehsil and Distt. Barnala","pin_code":"148101","registration_date":"11-Oct-2024","valid_upto":"31-Mar-2027"}'::jsonb;
  v_desc := 'Promoter: Sourav  .. (Individual). Address: Opp. Court Complex, Gate No. 2, Handiaya Road, Tehsil and Distt. Barnala. PIN: 148101. Valid upto: 31-Mar-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR1090';
  v_meta := '{"district":"Jalandhar","promoter":"AGI Infra Limited (Other than Individual)","address":"Village Pholriwal, H. B. No. 252","pin_code":"144022","website":"www.agiinfra.com","registration_date":"09-Oct-2024","valid_upto":"30-Mar-2028"}'::jsonb;
  v_desc := 'Promoter: AGI Infra Limited (Other than Individual). Address: Village Pholriwal, H. B. No. 252. PIN: 144022. Valid upto: 30-Mar-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1093';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PARTAP INFRATECH PVT. LTD. (Other than Individual)","address":"VILLAGE KHARAR AND BADALA NAYA SHAHAR, KHARAR","pin_code":"140301","registration_date":"10-Oct-2024","valid_upto":"08-May-2029"}'::jsonb;
  v_desc := 'Promoter: PARTAP INFRATECH PVT. LTD. (Other than Individual). Address: VILLAGE KHARAR AND BADALA NAYA SHAHAR, KHARAR. PIN: 140301. Valid upto: 08-May-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL19-PC0284';
  v_meta := '{"district":"Fazilka","promoter":"MUNICIPAL COMMITTEE (Other than Individual)","address":"ABOHAR PUNJAB","pin_code":"152116","registration_date":"08-Oct-2024"}'::jsonb;
  v_desc := 'Promoter: MUNICIPAL COMMITTEE (Other than Individual). Address: ABOHAR PUNJAB. PIN: 152116';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PR1088';
  v_meta := '{"district":"Barnala","promoter":"Barnala Improvement Trust  (Other than Individual)","address":"Captain Karam Singh Nagar (16 Acre), Barnala","pin_code":"148101","registration_date":"08-Oct-2024","valid_upto":"28-Feb-2026"}'::jsonb;
  v_desc := 'Promoter: Barnala Improvement Trust  (Other than Individual). Address: Captain Karam Singh Nagar (16 Acre), Barnala. PIN: 148101. Valid upto: 28-Feb-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR1081';
  v_meta := '{"district":"Ludhiana","promoter":"Holistic Developers and Builders (Other than Individual)","address":"Village Mullanpur, Tehsil Mullanpur Dakha","pin_code":"141101","registration_date":"26-Sep-2024","valid_upto":"31-Jan-2029"}'::jsonb;
  v_desc := 'Promoter: Holistic Developers and Builders (Other than Individual). Address: Village Mullanpur, Tehsil Mullanpur Dakha. PIN: 141101. Valid upto: 31-Jan-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0282';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MRS DEVELOPERS (Other than Individual)","address":"EASTERN COURT 1, VILLAGE DHAKOLI, ZIRAKPUR","pin_code":"140603","registration_date":"26-Sep-2024","valid_upto":"29-Dec-2027"}'::jsonb;
  v_desc := 'Promoter: MRS DEVELOPERS (Other than Individual). Address: EASTERN COURT 1, VILLAGE DHAKOLI, ZIRAKPUR. PIN: 140603. Valid upto: 29-Dec-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PR1082';
  v_meta := '{"district":"Amritsar","promoter":"PARADOR DEVELOPERS AMRITSAR PRIVATE LIMITED (Other than Individual)","address":"Village Mannawala and Bishambarpur., GT Road Amritsar","pin_code":"143109","website":"www.experion.co/residential-experion-virsa","registration_date":"27-Sep-2024","valid_upto":"13-Dec-2026"}'::jsonb;
  v_desc := 'Promoter: PARADOR DEVELOPERS AMRITSAR PRIVATE LIMITED (Other than Individual). Address: Village Mannawala and Bishambarpur., GT Road Amritsar. PIN: 143109. Valid upto: 13-Dec-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1080';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gulmohar Township India Private Limited (Other than Individual)","address":"Aero Business Park, village Manakpur Kallar Road, Teshil SAS Nagar mohali","pin_code":"140306","registration_date":"27-Sep-2024","valid_upto":"31-Aug-2030"}'::jsonb;
  v_desc := 'Promoter: Gulmohar Township India Private Limited (Other than Individual). Address: Aero Business Park, village Manakpur Kallar Road, Teshil SAS Nagar mohali. PIN: 140306. Valid upto: 31-Aug-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH43-PC0281';
  v_meta := '{"district":"Ludhiana","promoter":"Rudra Infrastructures (Other than Individual)","address":"Khanna Kalan , H.B No. 223, Khanna Amloh Road, Opp Sabzi Mandi, Khanna","pin_code":"141401","registration_date":"26-Sep-2024","valid_upto":"18-Aug-2029"}'::jsonb;
  v_desc := 'Promoter: Rudra Infrastructures (Other than Individual). Address: Khanna Kalan , H.B No. 223, Khanna Amloh Road, Opp Sabzi Mandi, Khanna. PIN: 141401. Valid upto: 18-Aug-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  RAISE NOTICE 'Part 3: updated % projects', v_updated;
END $$;