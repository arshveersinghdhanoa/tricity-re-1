-- 0009_fix_metadata_part02.sql
-- Projects 201 to 400
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

  v_rera := 'PBRERA-LDH44-PC0411';
  v_meta := '{"district":"Ludhiana","promoter":"Solitaire Heights (Other than Individual)","address":"Urban Estate, Phase-I, Dugri Road","pin_code":"141013","registration_date":"03-Mar-2026","valid_upto":"02-Dec-2029"}'::jsonb;
  v_desc := 'Promoter: Solitaire Heights (Other than Individual). Address: Urban Estate, Phase-I, Dugri Road. PIN: 141013. Valid upto: 02-Dec-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0408';
  v_meta := '{"district":"Ludhiana","promoter":"Navish Infra LLP (Other than Individual)","address":"Village Daad, H.B. No. 279","pin_code":"142022","registration_date":"03-Mar-2026","valid_upto":"06-Nov-2029"}'::jsonb;
  v_desc := 'Promoter: Navish Infra LLP (Other than Individual). Address: Village Daad, H.B. No. 279. PIN: 142022. Valid upto: 06-Nov-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1319';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"K.S. Developers (Other than Individual)","address":"Village Dyalpura, H.B. No. 289, MC Zirakpur","pin_code":"140603","registration_date":"03-Mar-2026","valid_upto":"10-Jul-2030"}'::jsonb;
  v_desc := 'Promoter: K.S. Developers (Other than Individual). Address: Village Dyalpura, H.B. No. 289, MC Zirakpur. PIN: 140603. Valid upto: 10-Jul-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PC0412';
  v_meta := '{"district":"Jalandhar","promoter":"Karamvir  Singh (Individual)","address":"Civil Lines, Model Town Road","pin_code":"144001","registration_date":"03-Mar-2026","valid_upto":"25-Aug-2030"}'::jsonb;
  v_desc := 'Promoter: Karamvir  Singh (Individual). Address: Civil Lines, Model Town Road. PIN: 144001. Valid upto: 25-Aug-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0410';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),Punjab-141003, Village Bharonjian Punjab-141003","pin_code":"141003","registration_date":"03-Mar-2026","valid_upto":"15-Oct-2030"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),Punjab-141003, Village Bharonjian Punjab-141003. PIN: 141003. Valid upto: 15-Oct-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PI0032';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jubilee Joy Homes LLP (Other than Individual)","address":"Jubilee Techyards, Village Derri (H.B. No. 283) & Village Bathlana (H.B. No. 284)","pin_code":"140307","registration_date":"03-Mar-2026","valid_upto":"02-Dec-2030"}'::jsonb;
  v_desc := 'Promoter: Jubilee Joy Homes LLP (Other than Individual). Address: Jubilee Techyards, Village Derri (H.B. No. 283) & Village Bathlana (H.B. No. 284). PIN: 140307. Valid upto: 02-Dec-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PM0168';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Greymarble Infra Private Limited (Other than Individual)","address":"Village Dehri & Manakpur Kallar, Sector 102 Alpha ,Mohali","pin_code":"140306","registration_date":"09-Oct-2023","valid_upto":"01-Jun-2028"}'::jsonb;
  v_desc := 'Promoter: Greymarble Infra Private Limited (Other than Individual). Address: Village Dehri & Manakpur Kallar, Sector 102 Alpha ,Mohali. PIN: 140306. Valid upto: 01-Jun-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-RPR70-PC0402';
  v_meta := '{"district":"Rupnagar (Ropar)","promoter":"Sudhir   Kumar Chaudhry (Individual)","address":"Railon Road,  Choti Haveli, Harbast No 48, Tehsil: Ropar","pin_code":"140001","registration_date":"09-Feb-2026","valid_upto":"29-Jul-2030"}'::jsonb;
  v_desc := 'Promoter: Sudhir   Kumar Chaudhry (Individual). Address: Railon Road,  Choti Haveli, Harbast No 48, Tehsil: Ropar. PIN: 140001. Valid upto: 29-Jul-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1318';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"Wave Estate, Sec-85","pin_code":"140308","registration_date":"18-Feb-2026","valid_upto":"31-Oct-2030"}'::jsonb;
  v_desc := 'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: Wave Estate, Sec-85. PIN: 140308. Valid upto: 31-Oct-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0405';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"Wave Estate, Sec-85","pin_code":"140308","registration_date":"18-Feb-2026","valid_upto":"31-Oct-2030"}'::jsonb;
  v_desc := 'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: Wave Estate, Sec-85. PIN: 140308. Valid upto: 31-Oct-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1317';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"Wave Estate, Sec-85","pin_code":"140308","registration_date":"18-Feb-2026","valid_upto":"31-Oct-2030"}'::jsonb;
  v_desc := 'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: Wave Estate, Sec-85. PIN: 140308. Valid upto: 31-Oct-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1316';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"Wave Estate, Sec-85","pin_code":"140308","registration_date":"18-Feb-2026","valid_upto":"31-Oct-2030"}'::jsonb;
  v_desc := 'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: Wave Estate, Sec-85. PIN: 140308. Valid upto: 31-Oct-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR1315';
  v_meta := '{"district":"Jalandhar","promoter":"TRICON DEVELOPERS (Other than Individual)","address":"VILL ALIPUR, PO KUKAR PIND","pin_code":"144024","registration_date":"18-Feb-2026","valid_upto":"03-Jul-2029"}'::jsonb;
  v_desc := 'Promoter: TRICON DEVELOPERS (Other than Individual). Address: VILL ALIPUR, PO KUKAR PIND. PIN: 144024. Valid upto: 03-Jul-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL34-PR1312';
  v_meta := '{"district":"Jalandhar","promoter":"AKM INFRA (Other than Individual)","address":"BASTI DANISHMANDA (H.B.No.312)","pin_code":"144002","registration_date":"17-Feb-2026","valid_upto":"17-Sep-2030"}'::jsonb;
  v_desc := 'Promoter: AKM INFRA (Other than Individual). Address: BASTI DANISHMANDA (H.B.No.312). PIN: 144002. Valid upto: 17-Sep-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PC0404';
  v_meta := '{"district":"Jalandhar","promoter":"G L Groups (Other than Individual)","address":"Village Suchi H.B No. 215, Teh & Distt. Jalandhar","pin_code":"144009","registration_date":"17-Feb-2026","valid_upto":"03-Oct-2030"}'::jsonb;
  v_desc := 'Promoter: G L Groups (Other than Individual). Address: Village Suchi H.B No. 215, Teh & Distt. Jalandhar. PIN: 144009. Valid upto: 03-Oct-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-HSP31-PM0175';
  v_meta := '{"district":"Hoshiarpur","promoter":"Malhi Properties Pvt Ltd (Other than Individual)","address":"Village Bajwara ( H.B. No 355), Tehsil and District Hoshiarpur","pin_code":"146023","registration_date":"17-Feb-2026","valid_upto":"16-Oct-2030"}'::jsonb;
  v_desc := 'Promoter: Malhi Properties Pvt Ltd (Other than Individual). Address: Village Bajwara ( H.B. No 355), Tehsil and District Hoshiarpur. PIN: 146023. Valid upto: 16-Oct-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PC0403';
  v_meta := '{"district":"Bathinda","promoter":"Improvement Trust, Bathinda  (Other than Individual)","address":"Near Rose Garden,, Goniana road Bathinda","pin_code":"151001","registration_date":"11-Feb-2026","valid_upto":"27-Oct-2030"}'::jsonb;
  v_desc := 'Promoter: Improvement Trust, Bathinda  (Other than Individual). Address: Near Rose Garden,, Goniana road Bathinda. PIN: 151001. Valid upto: 27-Oct-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MKT58-PR1313';
  v_meta := '{"district":"Muktsar","promoter":"Gurlal  Singh (Individual)","address":"Thandewala Link Road, Sri Muktsar Sahib","pin_code":"152026","registration_date":"17-Feb-2026","valid_upto":"31-Aug-2030"}'::jsonb;
  v_desc := 'Promoter: Gurlal  Singh (Individual). Address: Thandewala Link Road, Sri Muktsar Sahib. PIN: 152026. Valid upto: 31-Aug-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0400';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"STJ Hotels (Other than Individual)","address":"Hadbast No. 43, Village Singhpura, Zirakpur","pin_code":"140603","registration_date":"11-Feb-2026","valid_upto":"20-Jan-2030"}'::jsonb;
  v_desc := 'Promoter: STJ Hotels (Other than Individual). Address: Hadbast No. 43, Village Singhpura, Zirakpur. PIN: 140603. Valid upto: 20-Jan-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PC0262';
  v_meta := '{"district":"Bathinda","promoter":"Jaina Land Developers (Other than Individual)","address":"Dabwali Road, Bathinda","pin_code":"151001","registration_date":"19-Jul-2024","valid_upto":"09-Aug-2028"}'::jsonb;
  v_desc := 'Promoter: Jaina Land Developers (Other than Individual). Address: Dabwali Road, Bathinda. PIN: 151001. Valid upto: 09-Aug-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0612';
  v_meta := '{"district":"Jalandhar","promoter":"Sangam Builders (Other than Individual)","address":"Village Sofi Pind, H.B No. 231,","pin_code":"144005","registration_date":"13-May-2020","valid_upto":"31-Mar-2022"}'::jsonb;
  v_desc := 'Promoter: Sangam Builders (Other than Individual). Address: Village Sofi Pind, H.B No. 231,. PIN: 144005. Valid upto: 31-Mar-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR1112';
  v_meta := '{"district":"Ludhiana","promoter":"A & A Developers (Other than Individual)","address":"Village Baloke","pin_code":"141001","registration_date":"30-Jan-2025","valid_upto":"13-Aug-2029"}'::jsonb;
  v_desc := 'Promoter: A & A Developers (Other than Individual). Address: Village Baloke. PIN: 141001. Valid upto: 13-Aug-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0166';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bharat Builders & Developers (Other than Individual)","address":"Village Ramgarh Bhudda (H.B. No. 42), Under MC Zirakpur","pin_code":"140603","registration_date":"17-Dec-2021","valid_upto":"05-Jan-2025"}'::jsonb;
  v_desc := 'Promoter: Bharat Builders & Developers (Other than Individual). Address: Village Ramgarh Bhudda (H.B. No. 42), Under MC Zirakpur. PIN: 140603. Valid upto: 05-Jan-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0863';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Apporva Leasing Finance And Investment  Company Limited  (Other than Individual)","address":"Sector-88,SAS Nagar_x0009__x0009_","pin_code":"140501","registration_date":"11-Sep-2023","valid_upto":"31-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: Apporva Leasing Finance And Investment  Company Limited  (Other than Individual). Address: Sector-88,SAS Nagar_x0009__x0009_. PIN: 140501. Valid upto: 31-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1021';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CITY HEIGHTS PROJECTS PRIVATE LIMITED  (Other than Individual)","address":"VILL. DHAKOLI, TEH ZIRAKPUR","pin_code":"140603","registration_date":"16-Jul-2024","valid_upto":"11-Jun-2028"}'::jsonb;
  v_desc := 'Promoter: CITY HEIGHTS PROJECTS PRIVATE LIMITED  (Other than Individual). Address: VILL. DHAKOLI, TEH ZIRAKPUR. PIN: 140603. Valid upto: 11-Jun-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT40-PR1017';
  v_meta := '{"district":"Kapurthala","promoter":"GILLSONS CONSTRUCTIONS LIMITED (Other than Individual)","address":"Village Dhak Bhullarai (H.B. No. 66), Hajipur (H.B. No. 62),, Village Khurampur (H.B. No. 63) Dhak Khurammpur (H.B. No. 64), Tehsil Phagwara","pin_code":"144401","registration_date":"16-Jul-2024","valid_upto":"12-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: GILLSONS CONSTRUCTIONS LIMITED (Other than Individual). Address: Village Dhak Bhullarai (H.B. No. 66), Hajipur (H.B. No. 62),, Village Khurampur (H.B. No. 63) Dhak Khurammpur (H.B. No. 64), Tehsil Phagwara. PIN: 144401. Valid upto: 12-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0231';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Emaar MGF Land Limited (Other than Individual)","address":"Sector 105, Mohali","pin_code":"160055","website":"www.emaar-india.com","registration_date":"11-Dec-2017","valid_upto":"30-Jun-2020"}'::jsonb;
  v_desc := 'Promoter: Emaar MGF Land Limited (Other than Individual). Address: Sector 105, Mohali. PIN: 160055. Valid upto: 30-Jun-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PC0339';
  v_meta := '{"district":"Ludhiana","promoter":"MK HOSIERY (Other than Individual)","address":"Hadbast No. 88, G.T. Road, Near Bye Pass Chowk Abadi Taraf Bhora","pin_code":"141003","registration_date":"26-May-2025","valid_upto":"31-Mar-2028"}'::jsonb;
  v_desc := 'Promoter: MK HOSIERY (Other than Individual). Address: Hadbast No. 88, G.T. Road, Near Bye Pass Chowk Abadi Taraf Bhora. PIN: 141003. Valid upto: 31-Mar-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR1311';
  v_meta := '{"district":"Bathinda","promoter":"RPS Suncity Promotors & Developers Private Limited  (Other than Individual)","address":"Village Nahiawala, Tehsil Goniana Mandi","pin_code":"151201","website":"www.omaxe.com","registration_date":"04-Feb-2026","valid_upto":"30-Sep-2030"}'::jsonb;
  v_desc := 'Promoter: RPS Suncity Promotors & Developers Private Limited  (Other than Individual). Address: Village Nahiawala, Tehsil Goniana Mandi. PIN: 151201. Valid upto: 30-Sep-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR1185';
  v_meta := '{"district":"Jalandhar","promoter":"Ravinder  Kumar (Individual)","address":"Vill. Dhina","pin_code":"144022","registration_date":"17-Jun-2025","valid_upto":"12-Nov-2028"}'::jsonb;
  v_desc := 'Promoter: Ravinder  Kumar (Individual). Address: Vill. Dhina. PIN: 144022. Valid upto: 12-Nov-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FDK12-PR1216';
  v_meta := '{"district":"Faridkot","promoter":"Add More Promoters & Developers Limited (Other than Individual)","address":"Village Faridkot, Tehsil Faridkot, District Faridkot","pin_code":"151203","registration_date":"27-Jun-2025","valid_upto":"27-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: Add More Promoters & Developers Limited (Other than Individual). Address: Village Faridkot, Tehsil Faridkot, District Faridkot. PIN: 151203. Valid upto: 27-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL65-PR0960';
  v_meta := '{"district":"Patiala","promoter":"S.G.Enterprises (Other than Individual)","address":"NEAR BSNL TRAINING CENTER, NEELPUR","pin_code":"140401","registration_date":"07-Jun-2024","valid_upto":"24-Apr-2028"}'::jsonb;
  v_desc := 'Promoter: S.G.Enterprises (Other than Individual). Address: NEAR BSNL TRAINING CENTER, NEELPUR. PIN: 140401. Valid upto: 24-Apr-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR0862';
  v_meta := '{"district":"Patiala","promoter":"AVR GROUP (Other than Individual)","address":"Chunk Site Number 1, Group Housing Site,, Phase 2, Part 2","pin_code":"147001","registration_date":"11-Sep-2023","valid_upto":"31-Mar-2028"}'::jsonb;
  v_desc := 'Promoter: AVR GROUP (Other than Individual). Address: Chunk Site Number 1, Group Housing Site,, Phase 2, Part 2. PIN: 147001. Valid upto: 31-Mar-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0797';
  v_meta := '{"district":"Jalandhar","promoter":"AGI INFRA LIMITED (Other than Individual)","address":"Village Pholriwal (H.B.No.252), Tehsil Jalandhar-I","pin_code":"144022","website":"www.agiinfra.com","registration_date":"18-May-2022","valid_upto":"12-Feb-2027"}'::jsonb;
  v_desc := 'Promoter: AGI INFRA LIMITED (Other than Individual). Address: Village Pholriwal (H.B.No.252), Tehsil Jalandhar-I. PIN: 144022. Valid upto: 12-Feb-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PC0257';
  v_meta := '{"district":"Ludhiana","promoter":"Malhotra Realty Private Limited (Other than Individual)","address":"B-6-773-723-722-724-724/1, Abadi Ghaushala Road, taraf Saidan","pin_code":"141008","registration_date":"16-Jul-2024","valid_upto":"28-May-2029"}'::jsonb;
  v_desc := 'Promoter: Malhotra Realty Private Limited (Other than Individual). Address: B-6-773-723-722-724-724/1, Abadi Ghaushala Road, taraf Saidan. PIN: 141008. Valid upto: 28-May-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PM0088';
  v_meta := '{"district":"Bathinda","promoter":"Jai Durga Construction (Other than Individual)","address":"Village Balahr Vinju & Nehianwala, Bathinda Goniana Road, Near Haunman Mandir, Bathinda","pin_code":"151001","registration_date":"17-May-2018","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: Jai Durga Construction (Other than Individual). Address: Village Balahr Vinju & Nehianwala, Bathinda Goniana Road, Near Haunman Mandir, Bathinda. PIN: 151001. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0985';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Metro Pro Infratech (Other than Individual)","address":"village Padiala, Kurali,, H.B No. 379","pin_code":"140103","registration_date":"18-Jun-2024","valid_upto":"30-Nov-2028"}'::jsonb;
  v_desc := 'Promoter: Metro Pro Infratech (Other than Individual). Address: village Padiala, Kurali,, H.B No. 379. PIN: 140103. Valid upto: 30-Nov-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1036';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"S S INFRA (Other than Individual)","address":"HADBAST NO 47, VILLAGE BALTANA ZIRAKPUR","pin_code":"140603","registration_date":"24-Jul-2024","valid_upto":"13-Jun-2029"}'::jsonb;
  v_desc := 'Promoter: S S INFRA (Other than Individual). Address: HADBAST NO 47, VILLAGE BALTANA ZIRAKPUR. PIN: 140603. Valid upto: 13-Jun-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MKT58-PC0367';
  v_meta := '{"district":"Muktsar","promoter":"Harish Quasar Developers (Other than Individual)","address":"Malout Muktsar Road, Near Dera Radha Swami","pin_code":"152026","registration_date":"04-Aug-2025","valid_upto":"31-Jan-2030"}'::jsonb;
  v_desc := 'Promoter: Harish Quasar Developers (Other than Individual). Address: Malout Muktsar Road, Near Dera Radha Swami. PIN: 152026. Valid upto: 31-Jan-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0894';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"HLP INFRATECH LLP (Other than Individual)","address":"Village Ramgarh Bhudda hadbast No. 42 Under M.C. Zirakpur S.A.S. Nagar, Mohali 140603","pin_code":"140603","registration_date":"24-Apr-2024","valid_upto":"31-Aug-2028"}'::jsonb;
  v_desc := 'Promoter: HLP INFRATECH LLP (Other than Individual). Address: Village Ramgarh Bhudda hadbast No. 42 Under M.C. Zirakpur S.A.S. Nagar, Mohali 140603. PIN: 140603. Valid upto: 31-Aug-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0401';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"New Horizon Colonisers LLP (Other than Individual)","address":"Village Bhago Majra, H.B. No. 40, Sector-110","pin_code":"140307","registration_date":"23-Jan-2026","valid_upto":"04-Sep-2030"}'::jsonb;
  v_desc := 'Promoter: New Horizon Colonisers LLP (Other than Individual). Address: Village Bhago Majra, H.B. No. 40, Sector-110. PIN: 140307. Valid upto: 04-Sep-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1288';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"STJ Hotels (Other than Individual)","address":"Hadbast No. 43, Village Singhpura, Zirakpur","pin_code":"140603","registration_date":"23-Jan-2026","valid_upto":"31-Jul-2030"}'::jsonb;
  v_desc := 'Promoter: STJ Hotels (Other than Individual). Address: Hadbast No. 43, Village Singhpura, Zirakpur. PIN: 140603. Valid upto: 31-Jul-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0844';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Affinity Buildtech (Other than Individual)","address":"Village Chatt, Hadbast No. 286, MC Zirakpur","pin_code":"140603","registration_date":"14-Mar-2023","valid_upto":"01-Dec-2027"}'::jsonb;
  v_desc := 'Promoter: Affinity Buildtech (Other than Individual). Address: Village Chatt, Hadbast No. 286, MC Zirakpur. PIN: 140603. Valid upto: 01-Dec-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR1310';
  v_meta := '{"district":"Ludhiana","promoter":"Estatelance Developers Private Limited (Other than Individual)","address":"Omaxe New Ludhiana, Sidhwan Canal Road, Issewal,, Issewal,Bassemi Distt.","pin_code":"141102","website":"www.omaxe.com","registration_date":"20-Jan-2026","valid_upto":"30-Nov-2030"}'::jsonb;
  v_desc := 'Promoter: Estatelance Developers Private Limited (Other than Individual). Address: Omaxe New Ludhiana, Sidhwan Canal Road, Issewal,, Issewal,Bassemi Distt.. PIN: 141102. Valid upto: 30-Nov-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR1309';
  v_meta := '{"district":"Patiala","promoter":"MODERN REALTY (Other than Individual)","address":"Choura Sanour road, village Sanour, Adjacent to SS ENCLAVE","pin_code":"147001","registration_date":"20-Jan-2026","valid_upto":"08-Apr-2030"}'::jsonb;
  v_desc := 'Promoter: MODERN REALTY (Other than Individual). Address: Choura Sanour road, village Sanour, Adjacent to SS ENCLAVE. PIN: 147001. Valid upto: 08-Apr-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FDK12-PR1308';
  v_meta := '{"district":"Faridkot","promoter":"ROYAL VALLEY (Other than Individual)","address":"MUKTSAR ROAD, KOTKAPURA,, HADBAST NO.  129","pin_code":"151204","registration_date":"20-Jan-2026","valid_upto":"17-Jul-2030"}'::jsonb;
  v_desc := 'Promoter: ROYAL VALLEY (Other than Individual). Address: MUKTSAR ROAD, KOTKAPURA,, HADBAST NO.  129. PIN: 151204. Valid upto: 17-Jul-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH43-PR1307';
  v_meta := '{"district":"Ludhiana","promoter":"SG Developers  (Other than Individual)","address":"Village Galwaddi","pin_code":"141401","registration_date":"20-Jan-2026","valid_upto":"18-Sep-2030"}'::jsonb;
  v_desc := 'Promoter: SG Developers  (Other than Individual). Address: Village Galwaddi. PIN: 141401. Valid upto: 18-Sep-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR1304';
  v_meta := '{"district":"Ludhiana","promoter":"E K Developers Pvt. Ltd. (Other than Individual)","address":"Village Jainpur (H.B No. 149), Tehsil Ludhiana West","pin_code":"141412","registration_date":"20-Jan-2026","valid_upto":"30-Jan-2030"}'::jsonb;
  v_desc := 'Promoter: E K Developers Pvt. Ltd. (Other than Individual). Address: Village Jainpur (H.B No. 149), Tehsil Ludhiana West. PIN: 141412. Valid upto: 30-Jan-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL65-PI0031';
  v_meta := '{"district":"Patiala","promoter":"Truway Motors Private Limited (Other than Individual)","address":"Village  Rajgarh Tehsil Rajpura Distt. Patiala","pin_code":"147002","registration_date":"19-Jan-2026","valid_upto":"30-Nov-2030"}'::jsonb;
  v_desc := 'Promoter: Truway Motors Private Limited (Other than Individual). Address: Village  Rajgarh Tehsil Rajpura Distt. Patiala. PIN: 147002. Valid upto: 30-Nov-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MKT57-PR1133';
  v_meta := '{"district":"Muktsar","promoter":"Geetanjali  Garg (Individual)","address":"Village Shekhu","pin_code":"152107","registration_date":"24-Apr-2025","valid_upto":"10-Oct-2029"}'::jsonb;
  v_desc := 'Promoter: Geetanjali  Garg (Individual). Address: Village Shekhu. PIN: 152107. Valid upto: 10-Oct-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0277';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gold Town Infra LLP (Other than Individual)","address":"Village Bishanpura, Hadbast No.44 Under MC Zirakpur","pin_code":"140603","registration_date":"12-Sep-2024","valid_upto":"15-Jan-2029"}'::jsonb;
  v_desc := 'Promoter: Gold Town Infra LLP (Other than Individual). Address: Village Bishanpura, Hadbast No.44 Under MC Zirakpur. PIN: 140603. Valid upto: 15-Jan-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1067';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"NOOR COLONISER AND DEVELOPER (Other than Individual)","address":"VILLAGE BHABAT, ZIRAKPUR (HADBAST NO. 234)","pin_code":"140603","registration_date":"13-Sep-2024","valid_upto":"30-Apr-2027"}'::jsonb;
  v_desc := 'Promoter: NOOR COLONISER AND DEVELOPER (Other than Individual). Address: VILLAGE BHABAT, ZIRAKPUR (HADBAST NO. 234). PIN: 140603. Valid upto: 30-Apr-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0791';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"HLP INFRATECH LLP (Other than Individual)","address":"Village Ramgarh Bhudda hadbast No. 42 Under M.C. Zirakpur S.A.S. Nagar, Mohali 140603","pin_code":"140603","registration_date":"18-May-2022","valid_upto":"23-Mar-2027"}'::jsonb;
  v_desc := 'Promoter: HLP INFRATECH LLP (Other than Individual). Address: Village Ramgarh Bhudda hadbast No. 42 Under M.C. Zirakpur S.A.S. Nagar, Mohali 140603. PIN: 140603. Valid upto: 23-Mar-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1302';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Motia Grand LLP (Other than Individual)","address":"Motia Grand-2, Village Madhopur,, Tehsil Dera Bassi","pin_code":"140507","registration_date":"02-Jan-2026","valid_upto":"04-Sep-2030"}'::jsonb;
  v_desc := 'Promoter: Motia Grand LLP (Other than Individual). Address: Motia Grand-2, Village Madhopur,, Tehsil Dera Bassi. PIN: 140507. Valid upto: 04-Sep-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1301';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PR Developers (Other than Individual)","address":"VILLAGE KURALI , HADBAST NO. 121, KURALI , TEHSIL KHARAR","pin_code":"140301","registration_date":"01-Jan-2026","valid_upto":"22-Sep-2030"}'::jsonb;
  v_desc := 'Promoter: PR Developers (Other than Individual). Address: VILLAGE KURALI , HADBAST NO. 121, KURALI , TEHSIL KHARAR. PIN: 140301. Valid upto: 22-Sep-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR1306';
  v_meta := '{"district":"Bathinda","promoter":"SUKH SANSAR ESTATES LLP (Other than Individual)","address":"RAMPURA TO PHUL ROAD, NATIONAL HIGHWAY AT RAMPURA PHUL","pin_code":"151103","registration_date":"30-Dec-2025","valid_upto":"26-Jun-2030"}'::jsonb;
  v_desc := 'Promoter: SUKH SANSAR ESTATES LLP (Other than Individual). Address: RAMPURA TO PHUL ROAD, NATIONAL HIGHWAY AT RAMPURA PHUL. PIN: 151103. Valid upto: 26-Jun-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR77-PC0399';
  v_meta := '{"district":"Sangrur","promoter":"MADHAV DEVELOPERS (Other than Individual)","address":"VILLAGE SANGRUR-B, SANGRUR","pin_code":"148001","registration_date":"31-Dec-2025","valid_upto":"27-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: MADHAV DEVELOPERS (Other than Individual). Address: VILLAGE SANGRUR-B, SANGRUR. PIN: 148001. Valid upto: 27-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH42-PR1305';
  v_meta := '{"district":"Ludhiana","promoter":"HERO REALTY PRIVATE LIMITED (Other than Individual)","address":"Ludhiana, Village Birmi, Sidhwan Canal Road, near Janpath Estate, Ludhiana, Punjab 142027, Village Birmi, Sidhwan Canal Road, near Janpath Estate, Ludhiana, Punjab 142027","pin_code":"142027","registration_date":"30-Dec-2025","valid_upto":"28-Feb-2031"}'::jsonb;
  v_desc := 'Promoter: HERO REALTY PRIVATE LIMITED (Other than Individual). Address: Ludhiana, Village Birmi, Sidhwan Canal Road, near Janpath Estate, Ludhiana, Punjab 142027, Village Birmi, Sidhwan Canal Road, near Janpath Estate, Ludhiana, Punjab 142027. PIN: 142027. Valid upto: 28-Feb-2031';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1299';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"THE PALASH HOMES (Other than Individual)","address":"Village Gazipur, H.B.No. 50, Zirakpur,","pin_code":"160104","registration_date":"29-Dec-2025","valid_upto":"30-Sep-2030"}'::jsonb;
  v_desc := 'Promoter: THE PALASH HOMES (Other than Individual). Address: Village Gazipur, H.B.No. 50, Zirakpur,. PIN: 160104. Valid upto: 30-Sep-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0096';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"21-Jun-2019","valid_upto":"14-May-2026"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 14-May-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0265';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PSP Developers (Other than Individual)","address":"Hadbast no. 44 , Village Bishanpura, VIP Road, Zirakpur","pin_code":"140603","registration_date":"22-Jul-2024","valid_upto":"24-Jan-2029"}'::jsonb;
  v_desc := 'Promoter: PSP Developers (Other than Individual). Address: Hadbast no. 44 , Village Bishanpura, VIP Road, Zirakpur. PIN: 140603. Valid upto: 24-Jan-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTK60-PR1303';
  v_meta := '{"district":"Pathankot","promoter":"Sh. Naresh  Mahajan (Individual)","address":"Village Kotali Mughlan, H.B.No. 254","pin_code":"145025","registration_date":"24-Dec-2025","valid_upto":"25-Aug-2030"}'::jsonb;
  v_desc := 'Promoter: Sh. Naresh  Mahajan (Individual). Address: Village Kotali Mughlan, H.B.No. 254. PIN: 145025. Valid upto: 25-Aug-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MKT58-PC0398';
  v_meta := '{"district":"Muktsar","promoter":"ADESH ESTATES PRIVATE LIMITED (Other than Individual)","address":"VILLAGE UDEKARAN, HB NO. 66 AND SHRI MUKTSAR SAHIB 2 , HB NO. 54, SHRI MUKTSAR SAHIB","pin_code":"152026","registration_date":"24-Dec-2025","valid_upto":"23-Apr-2030"}'::jsonb;
  v_desc := 'Promoter: ADESH ESTATES PRIVATE LIMITED (Other than Individual). Address: VILLAGE UDEKARAN, HB NO. 66 AND SHRI MUKTSAR SAHIB 2 , HB NO. 54, SHRI MUKTSAR SAHIB. PIN: 152026. Valid upto: 23-Apr-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR1295';
  v_meta := '{"district":"Ludhiana","promoter":"Zannat Developers (Other than Individual)","address":"Village Sarih Tehsil, Harbast No 270, Tehsil and Distt Ludhiana","pin_code":"141116","registration_date":"24-Dec-2025","valid_upto":"08-May-2027"}'::jsonb;
  v_desc := 'Promoter: Zannat Developers (Other than Individual). Address: Village Sarih Tehsil, Harbast No 270, Tehsil and Distt Ludhiana. PIN: 141116. Valid upto: 08-May-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1296';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Vista Land Promoters LLP (Other than Individual)","address":"Village Nabha, Hi Ground Road,, Zirakpur","pin_code":"140603","registration_date":"24-Dec-2025","valid_upto":"27-Oct-2030"}'::jsonb;
  v_desc := 'Promoter: Vista Land Promoters LLP (Other than Individual). Address: Village Nabha, Hi Ground Road,, Zirakpur. PIN: 140603. Valid upto: 27-Oct-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1300';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sarv Sukh Homes LLP (Other than Individual)","address":"Vill Bhabat, H.B No 234, Zirakpur","pin_code":"140603","registration_date":"24-Dec-2025","valid_upto":"25-Sep-2030"}'::jsonb;
  v_desc := 'Promoter: Sarv Sukh Homes LLP (Other than Individual). Address: Vill Bhabat, H.B No 234, Zirakpur. PIN: 140603. Valid upto: 25-Sep-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PC0397';
  v_meta := '{"district":"Jalandhar","promoter":"AGI Infra Limited (Other than Individual)","address":"Village Pholriwal, HB No. 252","pin_code":"144022","registration_date":"24-Dec-2025","valid_upto":"01-Sep-2027"}'::jsonb;
  v_desc := 'Promoter: AGI Infra Limited (Other than Individual). Address: Village Pholriwal, HB No. 252. PIN: 144022. Valid upto: 01-Sep-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR1298';
  v_meta := '{"district":"Bathinda","promoter":"Jai Durga Construction  (Other than Individual)","address":"Village Nehianwala, Tehsil Goniana","pin_code":"151201","registration_date":"24-Dec-2025","valid_upto":"30-Oct-2030"}'::jsonb;
  v_desc := 'Promoter: Jai Durga Construction  (Other than Individual). Address: Village Nehianwala, Tehsil Goniana. PIN: 151201. Valid upto: 30-Oct-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL20-PR1077';
  v_meta := '{"district":"Fazilka","promoter":"Dada Builders (Other than Individual)","address":"Cantt Road, Near Dera Sacha Sauda Road, Fazilka","pin_code":"152123","registration_date":"25-Sep-2024","valid_upto":"04-Jul-2029"}'::jsonb;
  v_desc := 'Promoter: Dada Builders (Other than Individual). Address: Cantt Road, Near Dera Sacha Sauda Road, Fazilka. PIN: 152123. Valid upto: 04-Jul-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR0821';
  v_meta := '{"district":"Bathinda","promoter":"Dream Land Promotors (Other than Individual)","address":"Ring Road Malout - Badal Road Phase 2","pin_code":"151001","registration_date":"08-Aug-2022","valid_upto":"30-Apr-2025"}'::jsonb;
  v_desc := 'Promoter: Dream Land Promotors (Other than Individual). Address: Ring Road Malout - Badal Road Phase 2. PIN: 151001. Valid upto: 30-Apr-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1026';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"K S DEVELOPERS (Other than Individual)","address":"Village Dayalpura, HB No 289, Zirakpur","pin_code":"140601","registration_date":"17-Jul-2024","valid_upto":"14-Apr-2029"}'::jsonb;
  v_desc := 'Promoter: K S DEVELOPERS (Other than Individual). Address: Village Dayalpura, HB No 289, Zirakpur. PIN: 140601. Valid upto: 14-Apr-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR1037';
  v_meta := '{"district":"Ludhiana","promoter":"STAR PROJECTS (Other than Individual)","address":"Village Alamgir, Ludhiana (South)","pin_code":"141013","registration_date":"24-Jul-2024","valid_upto":"27-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: STAR PROJECTS (Other than Individual). Address: Village Alamgir, Ludhiana (South). PIN: 141013. Valid upto: 27-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT40-PC0154';
  v_meta := '{"district":"Kapurthala","promoter":"Eastwood Infra Pvt Ltd (Other than Individual)","address":"Village Khajoorla HB 82, Tehsil Phagwara","pin_code":"144401","registration_date":"03-Aug-2021","valid_upto":"31-Dec-2025"}'::jsonb;
  v_desc := 'Promoter: Eastwood Infra Pvt Ltd (Other than Individual). Address: Village Khajoorla HB 82, Tehsil Phagwara. PIN: 144401. Valid upto: 31-Dec-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0274';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"HI-TECH BUILDERS & PROMOTERS (Other than Individual)","address":"VILLAGE DEVINAGAR, M.C. DERA BASSI","pin_code":"140507","registration_date":"13-Sep-2024","valid_upto":"06-May-2029"}'::jsonb;
  v_desc := 'Promoter: HI-TECH BUILDERS & PROMOTERS (Other than Individual). Address: VILLAGE DEVINAGAR, M.C. DERA BASSI. PIN: 140507. Valid upto: 06-May-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH42-PR1292';
  v_meta := '{"district":"Ludhiana","promoter":"ELYSIAN INFRA (Other than Individual)","address":"VILLAGE AGWAR GUJJRAN, TEHSIL JAGRAON DISTRICT LUDHIANA","pin_code":"142026","registration_date":"09-Dec-2025","valid_upto":"25-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: ELYSIAN INFRA (Other than Individual). Address: VILLAGE AGWAR GUJJRAN, TEHSIL JAGRAON DISTRICT LUDHIANA. PIN: 142026. Valid upto: 25-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR0967';
  v_meta := '{"district":"Bathinda","promoter":"Primeland Promoters (Other than Individual)","address":"Ring road-2 ,Near rosemary convent School","pin_code":"151001","registration_date":"12-Jun-2024","valid_upto":"01-Aug-2026"}'::jsonb;
  v_desc := 'Promoter: Primeland Promoters (Other than Individual). Address: Ring road-2 ,Near rosemary convent School. PIN: 151001. Valid upto: 01-Aug-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1290';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Akash developers (Other than Individual)","address":"Village Saidpura, Hadbast No.10, Tehsil Derabassi","pin_code":"140406","registration_date":"05-Dec-2025","valid_upto":"10-Apr-2029"}'::jsonb;
  v_desc := 'Promoter: Akash developers (Other than Individual). Address: Village Saidpura, Hadbast No.10, Tehsil Derabassi. PIN: 140406. Valid upto: 10-Apr-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL34-PR1291';
  v_meta := '{"district":"Jalandhar","promoter":"M R INFRA (Other than Individual)","address":"Village Wadala and Village Trar, Tehsil Jalandhar 2","pin_code":"144003","registration_date":"05-Dec-2025","valid_upto":"10-Aug-2030"}'::jsonb;
  v_desc := 'Promoter: M R INFRA (Other than Individual). Address: Village Wadala and Village Trar, Tehsil Jalandhar 2. PIN: 144003. Valid upto: 10-Aug-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT40-PR1293';
  v_meta := '{"district":"Kapurthala","promoter":"GTB INFRA (Other than Individual)","address":"Village Maheru, H.B.No.84","pin_code":"144411","registration_date":"05-Dec-2025","valid_upto":"10-Aug-2030"}'::jsonb;
  v_desc := 'Promoter: GTB INFRA (Other than Individual). Address: Village Maheru, H.B.No.84. PIN: 144411. Valid upto: 10-Aug-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1272';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AARV DEVELOPERS  (Other than Individual)","address":"Village Nabha, Sub Tehsil Zirakpur, Distt SAS Nagar, Mohali","pin_code":"140603","registration_date":"05-Dec-2025","valid_upto":"23-Aug-2030"}'::jsonb;
  v_desc := 'Promoter: AARV DEVELOPERS  (Other than Individual). Address: Village Nabha, Sub Tehsil Zirakpur, Distt SAS Nagar, Mohali. PIN: 140603. Valid upto: 23-Aug-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0396';
  v_meta := '{"district":"Ludhiana","promoter":"Ludhiana Wholesale  Market Private Limited (Other than Individual)","address":"Block 19 between Ghumar Mandi (Rani jhansi Road) and College Road, near Fountain Chowk, Civil Line, Ludhiana","pin_code":"141001","website":"www.omaxe.com","registration_date":"05-Dec-2025","valid_upto":"30-Jun-2030"}'::jsonb;
  v_desc := 'Promoter: Ludhiana Wholesale  Market Private Limited (Other than Individual). Address: Block 19 between Ghumar Mandi (Rani jhansi Road) and College Road, near Fountain Chowk, Civil Line, Ludhiana. PIN: 141001. Valid upto: 30-Jun-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR0949';
  v_meta := '{"district":"Bathinda","promoter":"dreamland developers (Other than Individual)","address":"OPP. TOYOTA CAR SHOWROOM, ANOOP NAGAR, DABWALI ROAD","pin_code":"151001","registration_date":"04-Jun-2024","valid_upto":"13-Apr-2026"}'::jsonb;
  v_desc := 'Promoter: dreamland developers (Other than Individual). Address: OPP. TOYOTA CAR SHOWROOM, ANOOP NAGAR, DABWALI ROAD. PIN: 151001. Valid upto: 13-Apr-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1086';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PROCHAMP DEVELOPERS PRIVATE LIMITED (Other than Individual)","address":"VILL. HARLALPUR, HADBAST NO 181,, TEHSIL KHARAR","pin_code":"140901","registration_date":"14-Oct-2024","valid_upto":"07-May-2029"}'::jsonb;
  v_desc := 'Promoter: PROCHAMP DEVELOPERS PRIVATE LIMITED (Other than Individual). Address: VILL. HARLALPUR, HADBAST NO 181,, TEHSIL KHARAR. PIN: 140901. Valid upto: 07-May-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR1076';
  v_meta := '{"district":"Patiala","promoter":"MAGNUS HOUSING (Other than Individual)","address":"Village Jhill, Hadbast No 21,, Sirhind Road,","pin_code":"147001","registration_date":"27-Sep-2024","valid_upto":"22-Jul-2029"}'::jsonb;
  v_desc := 'Promoter: MAGNUS HOUSING (Other than Individual). Address: Village Jhill, Hadbast No 21,, Sirhind Road,. PIN: 147001. Valid upto: 22-Jul-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR1084';
  v_meta := '{"district":"Jalandhar","promoter":"AGI Infra Limited (Other than Individual)","address":"Village Pholriwal, H.B. No. 252","pin_code":"144022","website":"www.agiinfra.com","registration_date":"30-Sep-2024","valid_upto":"05-Oct-2028"}'::jsonb;
  v_desc := 'Promoter: AGI Infra Limited (Other than Individual). Address: Village Pholriwal, H.B. No. 252. PIN: 144022. Valid upto: 05-Oct-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PC0395';
  v_meta := '{"district":"Barnala","promoter":"Jindal Builders (Other than Individual)","address":"Near Indian Oil Petrol Pump, Sanghera Byepass Road, Barnala","pin_code":"148104","registration_date":"27-Nov-2025","valid_upto":"31-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: Jindal Builders (Other than Individual). Address: Near Indian Oil Petrol Pump, Sanghera Byepass Road, Barnala. PIN: 148104. Valid upto: 31-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PC0394';
  v_meta := '{"district":"Barnala","promoter":"GAURI SHANKAR AMAR NATH BUILDERS (Other than Individual)","address":"NANAKSIR GURUDWARA ROAD NEAR KAPIL PALACE BARNALA, Barnala","pin_code":"148101","registration_date":"27-Nov-2025","valid_upto":"12-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: GAURI SHANKAR AMAR NATH BUILDERS (Other than Individual). Address: NANAKSIR GURUDWARA ROAD NEAR KAPIL PALACE BARNALA, Barnala. PIN: 148101. Valid upto: 12-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1289';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"East Avenue Infracon Pvt. Ltd. (Other than Individual)","address":"Village Khanpur, Hadbast no. 183, Tehsil Kharar","pin_code":"140301","registration_date":"28-Nov-2025","valid_upto":"09-Oct-2030"}'::jsonb;
  v_desc := 'Promoter: East Avenue Infracon Pvt. Ltd. (Other than Individual). Address: Village Khanpur, Hadbast no. 183, Tehsil Kharar. PIN: 140301. Valid upto: 09-Oct-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-GSP27-PR1287';
  v_meta := '{"district":"Gurdaspur","promoter":"GOLDEN INFRA (Other than Individual)","address":"VILLAGE ABULKHAIR, (H.B. NO. 329), TEHSIL DINANAGAR","pin_code":"143251","registration_date":"28-Nov-2025","valid_upto":"29-Sep-2030"}'::jsonb;
  v_desc := 'Promoter: GOLDEN INFRA (Other than Individual). Address: VILLAGE ABULKHAIR, (H.B. NO. 329), TEHSIL DINANAGAR. PIN: 143251. Valid upto: 29-Sep-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0989';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Shiva Land Promoters and Builders (Other than Individual)","address":"Village Dhakoli, Peermuchalla, Zirakpur","pin_code":"140603","registration_date":"28-Jun-2024","valid_upto":"30-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: Shiva Land Promoters and Builders (Other than Individual). Address: Village Dhakoli, Peermuchalla, Zirakpur. PIN: 140603. Valid upto: 30-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR1056';
  v_meta := '{"district":"Ludhiana","promoter":"Maha Lakshmi  Real Estate (Other than Individual)","address":"Village Bholapur, HB No. 238","pin_code":"141013","registration_date":"30-Aug-2024","valid_upto":"27-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: Maha Lakshmi  Real Estate (Other than Individual). Address: Village Bholapur, HB No. 238. PIN: 141013. Valid upto: 27-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR1279';
  v_meta := '{"district":"Bathinda","promoter":"Homeland Infra (Other than Individual)","address":"Village Patti Mehna, Bathinda","pin_code":"151201","registration_date":"19-Nov-2025","valid_upto":"08-Sep-2030"}'::jsonb;
  v_desc := 'Promoter: Homeland Infra (Other than Individual). Address: Village Patti Mehna, Bathinda. PIN: 151201. Valid upto: 08-Sep-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FGS17-PR1285';
  v_meta := '{"district":"Fatehgarh Sahib","promoter":"TITAN VALLEY REAL ESTATE (Other than Individual)","address":"VILLAGE SIRHIND, HADBAST NO,125,TEHSIL AND DISTT.FATEHGARH SAHIB","pin_code":"140406","registration_date":"19-Nov-2025","valid_upto":"04-Jul-2029"}'::jsonb;
  v_desc := 'Promoter: TITAN VALLEY REAL ESTATE (Other than Individual). Address: VILLAGE SIRHIND, HADBAST NO,125,TEHSIL AND DISTT.FATEHGARH SAHIB. PIN: 140406. Valid upto: 04-Jul-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR1275';
  v_meta := '{"district":"Jalandhar","promoter":"TRS AND SS BUILDERS (Other than Individual)","address":"Village Nurmahal, Hadbast No. 64, Tehsil Phillaur, District Jalandhar","pin_code":"144039","registration_date":"19-Nov-2025","valid_upto":"14-Jul-2030"}'::jsonb;
  v_desc := 'Promoter: TRS AND SS BUILDERS (Other than Individual). Address: Village Nurmahal, Hadbast No. 64, Tehsil Phillaur, District Jalandhar. PIN: 144039. Valid upto: 14-Jul-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR72-PC0391';
  v_meta := '{"district":"Sangrur","promoter":"Jagdeep  Bansal (Individual)","address":"Village Jhaneri, H.B. No. 107, Tehsil Bhawanigarh","pin_code":"148026","registration_date":"19-Nov-2025","valid_upto":"31-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: Jagdeep  Bansal (Individual). Address: Village Jhaneri, H.B. No. 107, Tehsil Bhawanigarh. PIN: 148026. Valid upto: 31-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL35-PR1278';
  v_meta := '{"district":"Jalandhar","promoter":"G L Developers (Other than Individual)","address":"HB No. 31 Nakodar, Tehsil Nakodar,, Distt Jalandhar","pin_code":"144040","registration_date":"19-Nov-2025","valid_upto":"13-Jul-2030"}'::jsonb;
  v_desc := 'Promoter: G L Developers (Other than Individual). Address: HB No. 31 Nakodar, Tehsil Nakodar,, Distt Jalandhar. PIN: 144040. Valid upto: 13-Jul-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0393';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"BIGBLOCK BUILDERS LLP (Other than Individual)","address":"HADBAST 184, VILLAGE KHARAR, TEHSIL KHARAR","pin_code":"140301","registration_date":"19-Nov-2025","valid_upto":"06-Apr-2030"}'::jsonb;
  v_desc := 'Promoter: BIGBLOCK BUILDERS LLP (Other than Individual). Address: HADBAST 184, VILLAGE KHARAR, TEHSIL KHARAR. PIN: 140301. Valid upto: 06-Apr-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PR1282';
  v_meta := '{"district":"Barnala","promoter":"Jai Shree Balaji Developers (Other than Individual)","address":"Village Handiaya-C, Near Grewal Marriage Palace, Garcha Ice Factory Road, Barnala","pin_code":"148101","registration_date":"17-Nov-2025","valid_upto":"31-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: Jai Shree Balaji Developers (Other than Individual). Address: Village Handiaya-C, Near Grewal Marriage Palace, Garcha Ice Factory Road, Barnala. PIN: 148101. Valid upto: 31-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR1283';
  v_meta := '{"district":"Ludhiana","promoter":"RAJINDER LAND DEVELOPERS AND BUILDERS PRIVATE LIMITED (Other than Individual)","address":"Village Jagirpur,, Basti Jodhewal,","pin_code":"141007","registration_date":"17-Nov-2025","valid_upto":"27-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: RAJINDER LAND DEVELOPERS AND BUILDERS PRIVATE LIMITED (Other than Individual). Address: Village Jagirpur,, Basti Jodhewal,. PIN: 141007. Valid upto: 27-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MKT58-PR1281';
  v_meta := '{"district":"Muktsar","promoter":"Vatika Vihar (Other than Individual)","address":"Near Civil Hospital, Bathinda Road, Hadbast No. 65, Village Chak Birsarkar, Tehsil and Distt.","pin_code":"152026","registration_date":"17-Nov-2025","valid_upto":"30-Sep-2029"}'::jsonb;
  v_desc := 'Promoter: Vatika Vihar (Other than Individual). Address: Near Civil Hospital, Bathinda Road, Hadbast No. 65, Village Chak Birsarkar, Tehsil and Distt.. PIN: 152026. Valid upto: 30-Sep-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1277';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MOTIA REAL ESTATE DEVELOPERS (Other than Individual)","address":"Padiala, Hadbast No. 379, Kurali","pin_code":"140301","registration_date":"17-Nov-2025","valid_upto":"23-Jul-2030"}'::jsonb;
  v_desc := 'Promoter: MOTIA REAL ESTATE DEVELOPERS (Other than Individual). Address: Padiala, Hadbast No. 379, Kurali. PIN: 140301. Valid upto: 23-Jul-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1271';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"EVOQ REALTECH LLP (Other than Individual)","address":"Near BSNL Society, Sector-66, S.A.S Nagar,","pin_code":"123456","registration_date":"14-Nov-2025","valid_upto":"30-Sep-2030"}'::jsonb;
  v_desc := 'Promoter: EVOQ REALTECH LLP (Other than Individual). Address: Near BSNL Society, Sector-66, S.A.S Nagar,. PIN: 123456. Valid upto: 30-Sep-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1273';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Singla Builders and promoters limited (Other than Individual)","address":"Village Kishanpura and sanauli","pin_code":"160104","registration_date":"17-Nov-2025","valid_upto":"28-Jul-2030"}'::jsonb;
  v_desc := 'Promoter: Singla Builders and promoters limited (Other than Individual). Address: Village Kishanpura and sanauli. PIN: 160104. Valid upto: 28-Jul-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1286';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MARTELL BUILDWELL LLP (Other than Individual)","address":"Village Aujla,, Hadbast No. 182, Tehsil Kharar,","pin_code":"140301","registration_date":"17-Nov-2025","valid_upto":"24-Sep-2030"}'::jsonb;
  v_desc := 'Promoter: MARTELL BUILDWELL LLP (Other than Individual). Address: Village Aujla,, Hadbast No. 182, Tehsil Kharar,. PIN: 140301. Valid upto: 24-Sep-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0196';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Luxe Infratech (Other than Individual)","address":"Commercial Site No.1, Sector-68, Commercial Site No.1, Sector-68","pin_code":"160062","registration_date":"08-Jan-2024","valid_upto":"31-May-2028"}'::jsonb;
  v_desc := 'Promoter: Luxe Infratech (Other than Individual). Address: Commercial Site No.1, Sector-68, Commercial Site No.1, Sector-68. PIN: 160062. Valid upto: 31-May-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PC0194';
  v_meta := '{"district":"Jalandhar","promoter":"NIRANJANA CREATIONS OF LAND PVT. LTD. (Other than Individual)","address":"Village Pholriwal (H.B.No.252)","pin_code":"144022","registration_date":"08-Jan-2024","valid_upto":"30-Mar-2028"}'::jsonb;
  v_desc := 'Promoter: NIRANJANA CREATIONS OF LAND PVT. LTD. (Other than Individual). Address: Village Pholriwal (H.B.No.252). PIN: 144022. Valid upto: 30-Mar-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0392';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jubilee Joy Homes LLP (Other than Individual)","address":"Jubilee Twinto, Sec-112,SAS Nagar Village Bairampur , Teh. Mohali, Sec-112,SAS Nagar Village Bairtampur , Teh. Mohali","pin_code":"140307","website":"www.jubileegroup.in","registration_date":"14-Nov-2025","valid_upto":"30-Mar-2031"}'::jsonb;
  v_desc := 'Promoter: Jubilee Joy Homes LLP (Other than Individual). Address: Jubilee Twinto, Sec-112,SAS Nagar Village Bairampur , Teh. Mohali, Sec-112,SAS Nagar Village Bairtampur , Teh. Mohali. PIN: 140307. Valid upto: 30-Mar-2031';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL20-PC0389';
  v_meta := '{"district":"Fazilka","promoter":"Dreams Land Developers (Other than Individual)","address":"Village Badha, Ferozpur Road, Fazilka","pin_code":"152123","registration_date":"14-Nov-2025","valid_upto":"31-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: Dreams Land Developers (Other than Individual). Address: Village Badha, Ferozpur Road, Fazilka. PIN: 152123. Valid upto: 31-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1280';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"B N Builders And Promoters (Other than Individual)","address":"VILLAGE DHANONI, HADBAST NO. 36, TEHSIL: DERA BASSI","pin_code":"140507","registration_date":"14-Nov-2025","valid_upto":"03-Jul-2030"}'::jsonb;
  v_desc := 'Promoter: B N Builders And Promoters (Other than Individual). Address: VILLAGE DHANONI, HADBAST NO. 36, TEHSIL: DERA BASSI. PIN: 140507. Valid upto: 03-Jul-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR1274';
  v_meta := '{"district":"Bathinda","promoter":"Improvement Trust, Bathinda  (Other than Individual)","address":"Goniana Road , Bathinda","pin_code":"151001","registration_date":"14-Nov-2025","valid_upto":"01-Apr-2030"}'::jsonb;
  v_desc := 'Promoter: Improvement Trust, Bathinda  (Other than Individual). Address: Goniana Road , Bathinda. PIN: 151001. Valid upto: 01-Apr-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL19-PR1276';
  v_meta := '{"district":"Fazilka","promoter":"D.R. ENTERPRISES (Other than Individual)","address":"Old Fazilka Road ,, Abohar","pin_code":"152123","registration_date":"14-Nov-2025","valid_upto":"06-Jul-2030"}'::jsonb;
  v_desc := 'Promoter: D.R. ENTERPRISES (Other than Individual). Address: Old Fazilka Road ,, Abohar. PIN: 152123. Valid upto: 06-Jul-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR1120';
  v_meta := '{"district":"Patiala","promoter":"Rudra Land Promoters (Other than Individual)","address":"Village Jhill, H. B. No. 21, Tehsil and District Patiala","pin_code":"147004","registration_date":"26-Mar-2025","valid_upto":"31-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: Rudra Land Promoters (Other than Individual). Address: Village Jhill, H. B. No. 21, Tehsil and District Patiala. PIN: 147004. Valid upto: 31-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0918';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"VIPAN KUMAR BANSAL (Individual)","address":"Village Kishanpura , Zirakpur , Tehsil- Dera Bassi,","pin_code":"140603","registration_date":"02-Jul-2024","valid_upto":"14-Jun-2028"}'::jsonb;
  v_desc := 'Promoter: VIPAN KUMAR BANSAL (Individual). Address: Village Kishanpura , Zirakpur , Tehsil- Dera Bassi,. PIN: 140603. Valid upto: 14-Jun-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0795';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jubilee Joy Homes LLP (Other than Individual)","address":"Jubilee City Gardens, Vill. Chappar Chiri Khurd, H.B. No. 129, Sector 92-116","pin_code":"140308","website":"www.jubileegroup.in","registration_date":"18-May-2022","valid_upto":"31-Mar-2025"}'::jsonb;
  v_desc := 'Promoter: Jubilee Joy Homes LLP (Other than Individual). Address: Jubilee City Gardens, Vill. Chappar Chiri Khurd, H.B. No. 129, Sector 92-116. PIN: 140308. Valid upto: 31-Mar-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PC0390';
  v_meta := '{"district":"Bathinda","promoter":"Pushpa Group (Other than Individual)","address":"Village Behman Diwana, Ring Road","pin_code":"151001","registration_date":"28-Oct-2025","valid_upto":"16-Jun-2030"}'::jsonb;
  v_desc := 'Promoter: Pushpa Group (Other than Individual). Address: Village Behman Diwana, Ring Road. PIN: 151001. Valid upto: 16-Jun-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FGS17-PR1270';
  v_meta := '{"district":"Fatehgarh Sahib","promoter":"J.P.LAND PROMOTERS (Other than Individual)","address":"Harnam Nagar Sirhind","pin_code":"140406","registration_date":"28-Oct-2025","valid_upto":"10-Aug-2028"}'::jsonb;
  v_desc := 'Promoter: J.P.LAND PROMOTERS (Other than Individual). Address: Harnam Nagar Sirhind. PIN: 140406. Valid upto: 10-Aug-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-GSP27-PR1269';
  v_meta := '{"district":"Gurdaspur","promoter":"DREAMLAND DEVELOPERS (Other than Individual)","address":"VILLAGE AUJLA, (H. B. NO 340), BYE PASS, VILLAGE GURDASPUR (H. B. NO 377)","pin_code":"143506","registration_date":"28-Oct-2025","valid_upto":"21-Jul-2030"}'::jsonb;
  v_desc := 'Promoter: DREAMLAND DEVELOPERS (Other than Individual). Address: VILLAGE AUJLA, (H. B. NO 340), BYE PASS, VILLAGE GURDASPUR (H. B. NO 377). PIN: 143506. Valid upto: 21-Jul-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1266';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jubilee Joy Homes LLP (Other than Individual)","address":"Jubilee City Gardens, Sector 92- 116, Sector 92-116","pin_code":"140308","website":"www.jubileegroup.in","registration_date":"17-Oct-2025","valid_upto":"30-Mar-2027"}'::jsonb;
  v_desc := 'Promoter: Jubilee Joy Homes LLP (Other than Individual). Address: Jubilee City Gardens, Sector 92- 116, Sector 92-116. PIN: 140308. Valid upto: 30-Mar-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1263';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Dhillon and Virk Infrastructure LLP (Other than Individual)","address":"Village Dhanouni, HB No 08, teh Derabassi","pin_code":"140507","registration_date":"16-Oct-2025","valid_upto":"16-Jul-2030"}'::jsonb;
  v_desc := 'Promoter: Dhillon and Virk Infrastructure LLP (Other than Individual). Address: Village Dhanouni, HB No 08, teh Derabassi. PIN: 140507. Valid upto: 16-Jul-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PC0388';
  v_meta := '{"district":"Bathinda","promoter":"Bathinda Textile Market (Other than Individual)","address":"Village Patti Jhutti, Tehsil Bathinda","pin_code":"151001","registration_date":"17-Oct-2025","valid_upto":"20-Aug-2030"}'::jsonb;
  v_desc := 'Promoter: Bathinda Textile Market (Other than Individual). Address: Village Patti Jhutti, Tehsil Bathinda. PIN: 151001. Valid upto: 20-Aug-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MGA53-PC0387';
  v_meta := '{"district":"Moga","promoter":"Silky    (Individual)","address":"Village Dharamkot Shmali, khatoni no. 2552, Tehsil Dharamkot,","pin_code":"142042","registration_date":"17-Oct-2025","valid_upto":"16-Jan-2030"}'::jsonb;
  v_desc := 'Promoter: Silky    (Individual). Address: Village Dharamkot Shmali, khatoni no. 2552, Tehsil Dharamkot,. PIN: 142042. Valid upto: 16-Jan-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FDK12-PR1265';
  v_meta := '{"district":"Faridkot","promoter":"Deepy  Garg (Individual)","address":"Near Shyam Mandir, Tehsil Jaitu","pin_code":"151202","registration_date":"17-Oct-2025","valid_upto":"31-May-2030"}'::jsonb;
  v_desc := 'Promoter: Deepy  Garg (Individual). Address: Near Shyam Mandir, Tehsil Jaitu. PIN: 151202. Valid upto: 31-May-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL20-PR1268';
  v_meta := '{"district":"Fazilka","promoter":"Dreams Land Developers (Other than Individual)","address":"Village Badha, Ferozpur Road, Fazilka","pin_code":"152123","registration_date":"17-Oct-2025","valid_upto":"31-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: Dreams Land Developers (Other than Individual). Address: Village Badha, Ferozpur Road, Fazilka. PIN: 152123. Valid upto: 31-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1267';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gee Bee Eagles Private Limited (Other than Individual)","address":"Group Housing Chunk Site No. 01, Block-B, Ecocity-2, New Chandigarh","pin_code":"140901","registration_date":"16-Oct-2025","valid_upto":"03-Oct-2034"}'::jsonb;
  v_desc := 'Promoter: Gee Bee Eagles Private Limited (Other than Individual). Address: Group Housing Chunk Site No. 01, Block-B, Ecocity-2, New Chandigarh. PIN: 140901. Valid upto: 03-Oct-2034';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PR1262';
  v_meta := '{"district":"Barnala","promoter":"LPRS Developers (Other than Individual)","address":"Nanaksar Road, Village Handiaya-B, Hadbast No.58,","pin_code":"148107","registration_date":"16-Oct-2025","valid_upto":"20-May-2030"}'::jsonb;
  v_desc := 'Promoter: LPRS Developers (Other than Individual). Address: Nanaksar Road, Village Handiaya-B, Hadbast No.58,. PIN: 148107. Valid upto: 20-May-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PC0386';
  v_meta := '{"district":"Ludhiana","promoter":"Daljinder  Kaur (Individual)","address":"Village Nichi Mangli, H.B. No. 239, Tehsil Sahnewal","pin_code":"141120","registration_date":"16-Oct-2025","valid_upto":"24-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: Daljinder  Kaur (Individual). Address: Village Nichi Mangli, H.B. No. 239, Tehsil Sahnewal. PIN: 141120. Valid upto: 24-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL36-PR1261';
  v_meta := '{"district":"Jalandhar","promoter":"Nav Srijan (Other than Individual)","address":"Nurmahal, H.B No. 64, Tehsil Phillaur, Distt. Jalandhar","pin_code":"144039","registration_date":"16-Oct-2025","valid_upto":"06-Aug-2030"}'::jsonb;
  v_desc := 'Promoter: Nav Srijan (Other than Individual). Address: Nurmahal, H.B No. 64, Tehsil Phillaur, Distt. Jalandhar. PIN: 144039. Valid upto: 06-Aug-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FGS18-PC0382';
  v_meta := '{"district":"Fatehgarh Sahib","promoter":"Deep Builders and Developers (Other than Individual)","address":"SHIVALIK SQUARE  at Kharar- Ludhiana Road, Khamano kalan","pin_code":"141801","registration_date":"09-Oct-2025","valid_upto":"01-Aug-2029"}'::jsonb;
  v_desc := 'Promoter: Deep Builders and Developers (Other than Individual). Address: SHIVALIK SQUARE  at Kharar- Ludhiana Road, Khamano kalan. PIN: 141801. Valid upto: 01-Aug-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR77-PC0383';
  v_meta := '{"district":"Sangrur","promoter":"Mandeep Singh Turna (Individual)","address":"Village Dirba B, Hadbast No.120, Tehsil Dirba","pin_code":"148035","registration_date":"06-Oct-2025","valid_upto":"15-Apr-2030"}'::jsonb;
  v_desc := 'Promoter: Mandeep Singh Turna (Individual). Address: Village Dirba B, Hadbast No.120, Tehsil Dirba. PIN: 148035. Valid upto: 15-Apr-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1260';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),Punjab-141003","pin_code":"140901","registration_date":"06-Oct-2025","valid_upto":"11-Dec-2029"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),Punjab-141003. PIN: 140901. Valid upto: 11-Dec-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-HSP32-PR1255';
  v_meta := '{"district":"Hoshiarpur","promoter":"Universal Developers (Other than Individual)","address":"Village  Mehaildinpur Dalel (H.B. No.234), Tehsil Mukerian, District hoshiarpur","pin_code":"144214","registration_date":"06-Oct-2025","valid_upto":"09-Dec-2029"}'::jsonb;
  v_desc := 'Promoter: Universal Developers (Other than Individual). Address: Village  Mehaildinpur Dalel (H.B. No.234), Tehsil Mukerian, District hoshiarpur. PIN: 144214. Valid upto: 09-Dec-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR1259';
  v_meta := '{"district":"Ludhiana","promoter":"ELYSIAN HOMES (Other than Individual)","address":"Sangowal","pin_code":"141016","registration_date":"06-Oct-2025","valid_upto":"14-Jul-2030"}'::jsonb;
  v_desc := 'Promoter: ELYSIAN HOMES (Other than Individual). Address: Sangowal. PIN: 141016. Valid upto: 14-Jul-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MNS50-PC0384';
  v_meta := '{"district":"Mansa","promoter":"MG Realtors (Other than Individual)","address":"NM College Road, Mansa, Mansa","pin_code":"151505","registration_date":"06-Oct-2025","valid_upto":"28-Feb-2027"}'::jsonb;
  v_desc := 'Promoter: MG Realtors (Other than Individual). Address: NM College Road, Mansa, Mansa. PIN: 151505. Valid upto: 28-Feb-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-HSP31-PR1248';
  v_meta := '{"district":"Hoshiarpur","promoter":"KAMAL  GUPTA (Individual)","address":"PURANI BASSI ROAD, BAHADURPUR, H.B. NO 358","pin_code":"146001","registration_date":"03-Oct-2025","valid_upto":"22-Jul-2029"}'::jsonb;
  v_desc := 'Promoter: KAMAL  GUPTA (Individual). Address: PURANI BASSI ROAD, BAHADURPUR, H.B. NO 358. PIN: 146001. Valid upto: 22-Jul-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR1254';
  v_meta := '{"district":"Patiala","promoter":"Shalimar Infra (Other than Individual)","address":"Village Sanour, Tehsil & District Patiala","pin_code":"147103","registration_date":"06-Oct-2025","valid_upto":"16-Apr-2030"}'::jsonb;
  v_desc := 'Promoter: Shalimar Infra (Other than Individual). Address: Village Sanour, Tehsil & District Patiala. PIN: 147103. Valid upto: 16-Apr-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR1258';
  v_meta := '{"district":"Bathinda","promoter":"Surya Developers (Other than Individual)","address":"Raman Mandi","pin_code":"151302","registration_date":"06-Oct-2025","valid_upto":"30-Jun-2030"}'::jsonb;
  v_desc := 'Promoter: Surya Developers (Other than Individual). Address: Raman Mandi. PIN: 151302. Valid upto: 30-Jun-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1257';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Brick Builtwise LLP (Other than Individual)","address":"Village Mahiwala, Hadbast No. 05, tehsil Derabassi","pin_code":"140507","registration_date":"06-Oct-2025","valid_upto":"31-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: Brick Builtwise LLP (Other than Individual). Address: Village Mahiwala, Hadbast No. 05, tehsil Derabassi. PIN: 140507. Valid upto: 31-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR1256';
  v_meta := '{"district":"Patiala","promoter":"Seven Star Estates (Other than Individual)","address":"Village Sanour, Hadbast No. 71, Tehsil and District Patiala","pin_code":"147103","registration_date":"06-Oct-2025","valid_upto":"31-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: Seven Star Estates (Other than Individual). Address: Village Sanour, Hadbast No. 71, Tehsil and District Patiala. PIN: 147103. Valid upto: 31-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1252';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Singla Builders and promoters limited (Other than Individual)","address":"Village Santemajra HB No. 186, MC Kharar, Tehsil Kharar","pin_code":"140301","registration_date":"03-Oct-2025","valid_upto":"17-Aug-2030"}'::jsonb;
  v_desc := 'Promoter: Singla Builders and promoters limited (Other than Individual). Address: Village Santemajra HB No. 186, MC Kharar, Tehsil Kharar. PIN: 140301. Valid upto: 17-Aug-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SBS82-PC0385';
  v_meta := '{"district":"Shahid Bhagat Singh Nagar (Nawanshahr)","promoter":"ACE INFRA (Other than Individual)","address":"Village Behram (H.B.No.20), Tehsil Banga","pin_code":"144504","registration_date":"06-Oct-2025","valid_upto":"29-Jun-2030"}'::jsonb;
  v_desc := 'Promoter: ACE INFRA (Other than Individual). Address: Village Behram (H.B.No.20), Tehsil Banga. PIN: 144504. Valid upto: 29-Jun-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL65-PR1095';
  v_meta := '{"district":"Patiala","promoter":"Greenland Realcon Private Limited (Other than Individual)","address":"Village Alampur and Fatehpur Garhi, Banur Road","pin_code":"140417","registration_date":"07-Nov-2024","valid_upto":"04-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: Greenland Realcon Private Limited (Other than Individual). Address: Village Alampur and Fatehpur Garhi, Banur Road. PIN: 140417. Valid upto: 04-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PC0381';
  v_meta := '{"district":"Jalandhar","promoter":"Saffron Infraprojects India Limited (Other than Individual)","address":"Plot No. 181, Civil Lines","pin_code":"144001","registration_date":"01-Oct-2025","valid_upto":"20-Jun-2030"}'::jsonb;
  v_desc := 'Promoter: Saffron Infraprojects India Limited (Other than Individual). Address: Plot No. 181, Civil Lines. PIN: 144001. Valid upto: 20-Jun-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-HSP29-PC0378';
  v_meta := '{"district":"Hoshiarpur","promoter":"CROSSROADSDEVELOPERS (Other than Individual)","address":"Village Urmur, H.B.No.47, Tehsil Tanda","pin_code":"144204","registration_date":"01-Oct-2025","valid_upto":"24-Apr-2030"}'::jsonb;
  v_desc := 'Promoter: CROSSROADSDEVELOPERS (Other than Individual). Address: Village Urmur, H.B.No.47, Tehsil Tanda. PIN: 144204. Valid upto: 24-Apr-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL35-PR1253';
  v_meta := '{"district":"Jalandhar","promoter":"MUKESH   GUPTA (Individual)","address":"Vill. Nakodar, H.B.NO.31","pin_code":"144001","registration_date":"01-Oct-2025","valid_upto":"02-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: MUKESH   GUPTA (Individual). Address: Vill. Nakodar, H.B.NO.31. PIN: 144001. Valid upto: 02-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0379';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PR Developers (Other than Individual)","address":"NH 205,  CHANDIGARH-KURALI ROAD, DISTT.SAS NAGAR","pin_code":"140301","registration_date":"01-Oct-2025","valid_upto":"30-Jun-2030"}'::jsonb;
  v_desc := 'Promoter: PR Developers (Other than Individual). Address: NH 205,  CHANDIGARH-KURALI ROAD, DISTT.SAS NAGAR. PIN: 140301. Valid upto: 30-Jun-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR72-PR1250';
  v_meta := '{"district":"Sangrur","promoter":"JSN Land Promoters (Other than Individual)","address":"Village Bhawanigarh, Hadbast No. 40, Bhawanigarh,","pin_code":"148026","registration_date":"01-Oct-2025","valid_upto":"17-Feb-2030"}'::jsonb;
  v_desc := 'Promoter: JSN Land Promoters (Other than Individual). Address: Village Bhawanigarh, Hadbast No. 40, Bhawanigarh,. PIN: 148026. Valid upto: 17-Feb-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-RPR70-PR1249';
  v_meta := '{"district":"Rupnagar (Ropar)","promoter":"Emanatis Land Developers Private Limited (Other than Individual)","address":"Railon Road, Choti Haveli Road, Choti Haveli","pin_code":"140001","registration_date":"30-Sep-2025","valid_upto":"04-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: Emanatis Land Developers Private Limited (Other than Individual). Address: Railon Road, Choti Haveli Road, Choti Haveli. PIN: 140001. Valid upto: 04-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-RPR70-PC0380';
  v_meta := '{"district":"Rupnagar (Ropar)","promoter":"AGK INFRA (Other than Individual)","address":"Sadabart, Hadbast No.41,, Ropar","pin_code":"140001","registration_date":"30-Sep-2025","valid_upto":"07-May-2030"}'::jsonb;
  v_desc := 'Promoter: AGK INFRA (Other than Individual). Address: Sadabart, Hadbast No.41,, Ropar. PIN: 140001. Valid upto: 07-May-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL62-PI0008';
  v_meta := '{"district":"Patiala","promoter":"PUNJAB SMALL INDUSTRIES & EXPORT CORPORATION LTD. (Other than Individual)","address":"NABHA","pin_code":"147201","registration_date":"10-Dec-2019","valid_upto":"31-Mar-2020"}'::jsonb;
  v_desc := 'Promoter: PUNJAB SMALL INDUSTRIES & EXPORT CORPORATION LTD. (Other than Individual). Address: NABHA. PIN: 147201. Valid upto: 31-Mar-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0294';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Silver City Housing and Infrastructure Limited (Other than Individual)","address":"Village Bhankarpur, Mubarikpur Derabassi Road, Derabassi","pin_code":"140201","registration_date":"26-Feb-2018","valid_upto":"30-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: Silver City Housing and Infrastructure Limited (Other than Individual). Address: Village Bhankarpur, Mubarikpur Derabassi Road, Derabassi. PIN: 140201. Valid upto: 30-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0681';
  v_meta := '{"district":"Ludhiana","promoter":"OMAXE LIMITED (Other than Individual)","address":"Omaxe Royal Residency, Pakhowal Road,","pin_code":"142022","registration_date":"04-Jan-2021","valid_upto":"28-Jul-2025"}'::jsonb;
  v_desc := 'Promoter: OMAXE LIMITED (Other than Individual). Address: Omaxe Royal Residency, Pakhowal Road,. PIN: 142022. Valid upto: 28-Jul-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1246';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"One City Infrastructure Private Limited (Other than Individual)","address":"Village Dholl, One City Hamlet-, Sector 98","pin_code":"140501","registration_date":"09-Sep-2025","valid_upto":"31-Dec-2032"}'::jsonb;
  v_desc := 'Promoter: One City Infrastructure Private Limited (Other than Individual). Address: Village Dholl, One City Hamlet-, Sector 98. PIN: 140501. Valid upto: 31-Dec-2032';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL20-PR1244';
  v_meta := '{"district":"Fazilka","promoter":"Sandeep  Gilhotra (Individual)","address":"Village Sultanpura, Tehsil and Distt. Fazilka","pin_code":"152123","registration_date":"04-Sep-2025","valid_upto":"31-Mar-2027"}'::jsonb;
  v_desc := 'Promoter: Sandeep  Gilhotra (Individual). Address: Village Sultanpura, Tehsil and Distt. Fazilka. PIN: 152123. Valid upto: 31-Mar-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PR0948';
  v_meta := '{"district":"Amritsar","promoter":"G.G.H Hitech Realtors Pvt Ltd (Other than Individual)","address":"Dream City, Main Road G.T Road, Manawala, Amritsar","pin_code":"143001","registration_date":"04-Jun-2024","valid_upto":"30-Apr-2028"}'::jsonb;
  v_desc := 'Promoter: G.G.H Hitech Realtors Pvt Ltd (Other than Individual). Address: Dream City, Main Road G.T Road, Manawala, Amritsar. PIN: 143001. Valid upto: 30-Apr-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL19-PR0998';
  v_meta := '{"district":"Fazilka","promoter":"United Developers (Other than Individual)","address":"ABOHAR ROAD, FAZILKA, FAZILKA","pin_code":"152123","registration_date":"25-Jun-2024","valid_upto":"02-Oct-2028"}'::jsonb;
  v_desc := 'Promoter: United Developers (Other than Individual). Address: ABOHAR ROAD, FAZILKA, FAZILKA. PIN: 152123. Valid upto: 02-Oct-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MNS49-PR1003';
  v_meta := '{"district":"Mansa","promoter":"R D Developers (Other than Individual)","address":"Near New Town Budhlada, Old Gas Agency Godown Road, Hadbast No. 229, Budhlada","pin_code":"151502","registration_date":"16-Jul-2024","valid_upto":"10-Jan-2029"}'::jsonb;
  v_desc := 'Promoter: R D Developers (Other than Individual). Address: Near New Town Budhlada, Old Gas Agency Godown Road, Hadbast No. 229, Budhlada. PIN: 151502. Valid upto: 10-Jan-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0809';
  v_meta := '{"district":"Jalandhar","promoter":"Space developers (Other than Individual)","address":"village jamsher, H.B. No. 245, Tehsil Jalandhar-I, District Jalandhar","pin_code":"144020","registration_date":"27-Jun-2022","valid_upto":"13-Jan-2027"}'::jsonb;
  v_desc := 'Promoter: Space developers (Other than Individual). Address: village jamsher, H.B. No. 245, Tehsil Jalandhar-I, District Jalandhar. PIN: 144020. Valid upto: 13-Jan-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MKT56-PR1241';
  v_meta := '{"district":"Muktsar","promoter":"AAKAR INFRA (Other than Individual)","address":"PEORI ROAD, HADBAST NO. 7, TEHSIL GIDDERBAHA, DISTT.  SRI MUKTSAR SAHIB","pin_code":"152101","registration_date":"25-Aug-2025","valid_upto":"06-Oct-2029"}'::jsonb;
  v_desc := 'Promoter: AAKAR INFRA (Other than Individual). Address: PEORI ROAD, HADBAST NO. 7, TEHSIL GIDDERBAHA, DISTT.  SRI MUKTSAR SAHIB. PIN: 152101. Valid upto: 06-Oct-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-GSP27-PC0374';
  v_meta := '{"district":"Gurdaspur","promoter":"Sh. Jagmohan  Sharma (Individual)","address":"Village Talwara (H.B.NO.10), Tehsil - Sri Hargobindpur","pin_code":"143515","registration_date":"25-Aug-2025","valid_upto":"26-Jan-2030"}'::jsonb;
  v_desc := 'Promoter: Sh. Jagmohan  Sharma (Individual). Address: Village Talwara (H.B.NO.10), Tehsil - Sri Hargobindpur. PIN: 143515. Valid upto: 26-Jan-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PC0377';
  v_meta := '{"district":"Barnala","promoter":"Wonder Walk Real Estates Private Limited (Other than Individual)","address":"Village Handiaya, Bathinda Road, Barnala","pin_code":"148107","registration_date":"25-Aug-2025","valid_upto":"31-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: Wonder Walk Real Estates Private Limited (Other than Individual). Address: Village Handiaya, Bathinda Road, Barnala. PIN: 148107. Valid upto: 31-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL64-PC0375';
  v_meta := '{"district":"Patiala","promoter":"THE DEVELOPERS & PROMOTERS  (Other than Individual)","address":"Village Kahangarh Gharachon, Tehsil Patran, Distt. Patiala","pin_code":"147105","registration_date":"27-Aug-2025","valid_upto":"25-Oct-2028"}'::jsonb;
  v_desc := 'Promoter: THE DEVELOPERS & PROMOTERS  (Other than Individual). Address: Village Kahangarh Gharachon, Tehsil Patran, Distt. Patiala. PIN: 147105. Valid upto: 25-Oct-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL19-PC0376';
  v_meta := '{"district":"Fazilka","promoter":"Ganpati Developers  (Other than Individual)","address":"Khandhwala Road Byepass To Hanumangarh Road Byepass, Abohar","pin_code":"152116","registration_date":"26-Aug-2025","valid_upto":"09-Apr-2030"}'::jsonb;
  v_desc := 'Promoter: Ganpati Developers  (Other than Individual). Address: Khandhwala Road Byepass To Hanumangarh Road Byepass, Abohar. PIN: 152116. Valid upto: 09-Apr-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL66-PR1239';
  v_meta := '{"district":"Patiala","promoter":"Innovative Land Promoters (Other than Individual)","address":"Village Malkana H.B.No. 84, Tehsil Samana","pin_code":"147101","registration_date":"25-Aug-2025","valid_upto":"24-Apr-2030"}'::jsonb;
  v_desc := 'Promoter: Innovative Land Promoters (Other than Individual). Address: Village Malkana H.B.No. 84, Tehsil Samana. PIN: 147101. Valid upto: 24-Apr-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0910';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KCB INFRA (Other than Individual)","address":"HLP Palmillas Village Ramgarh Bhudda Under M.C., Zirakpur S.A.S. Nagar, Mohali","pin_code":"140603","registration_date":"03-May-2024","valid_upto":"01-Jun-2028"}'::jsonb;
  v_desc := 'Promoter: KCB INFRA (Other than Individual). Address: HLP Palmillas Village Ramgarh Bhudda Under M.C., Zirakpur S.A.S. Nagar, Mohali. PIN: 140603. Valid upto: 01-Jun-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0962';
  v_meta := '{"district":"Jalandhar","promoter":"Mexmon Global Developers LLP (Other than Individual)","address":"Mexmon Dreams,, Village Qadianwali, 66 Ft. Road","pin_code":"144022","registration_date":"11-Jun-2024","valid_upto":"31-Mar-2027"}'::jsonb;
  v_desc := 'Promoter: Mexmon Global Developers LLP (Other than Individual). Address: Mexmon Dreams,, Village Qadianwali, 66 Ft. Road. PIN: 144022. Valid upto: 31-Mar-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0594';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Mohali Royal Towers (Other than Individual)","address":"Group housing 2, preet city, sector 86","pin_code":"140308","website":"http://mohaliroyaltowers.co.in/","registration_date":"17-Feb-2020","valid_upto":"31-Dec-2024"}'::jsonb;
  v_desc := 'Promoter: Mohali Royal Towers (Other than Individual). Address: Group housing 2, preet city, sector 86. PIN: 140308. Valid upto: 31-Dec-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0537';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Nature Health Farms Private Limited (Other than Individual)","address":"Village Manakpur Sharif, Sub Division Kharar","pin_code":"140110","registration_date":"25-Oct-2019","valid_upto":"31-Jul-2024"}'::jsonb;
  v_desc := 'Promoter: Nature Health Farms Private Limited (Other than Individual). Address: Village Manakpur Sharif, Sub Division Kharar. PIN: 140110. Valid upto: 31-Jul-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT40-PC0298';
  v_meta := '{"district":"Kapurthala","promoter":"Sunshine Builders (Other than Individual)","address":"Village Phagwara Sharki, H.B. No. 73","pin_code":"144401","registration_date":"24-Mar-2025","valid_upto":"18-Jul-2029"}'::jsonb;
  v_desc := 'Promoter: Sunshine Builders (Other than Individual). Address: Village Phagwara Sharki, H.B. No. 73. PIN: 144401. Valid upto: 18-Jul-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0094';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Home and Land Planners (Other than Individual)","address":"Zirakpur Patiala Highway Zirakpur","pin_code":"140603","registration_date":"14-Jun-2019","valid_upto":"30-Jun-2024"}'::jsonb;
  v_desc := 'Promoter: Home and Land Planners (Other than Individual). Address: Zirakpur Patiala Highway Zirakpur. PIN: 140603. Valid upto: 30-Jun-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR0964';
  v_meta := '{"district":"Patiala","promoter":"Tanveer Real Estate and Construction (Other than Individual)","address":"Back Side Urban Estate Phase - 3, Village Deelwal Hadbast No. 75","pin_code":"147001","registration_date":"11-Jun-2024","valid_upto":"25-Mar-2026"}'::jsonb;
  v_desc := 'Promoter: Tanveer Real Estate and Construction (Other than Individual). Address: Back Side Urban Estate Phase - 3, Village Deelwal Hadbast No. 75. PIN: 147001. Valid upto: 25-Mar-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PM0170';
  v_meta := '{"district":"Bathinda","promoter":"Pioneer Associates (Other than Individual)","address":"Village Gurusar Sainewala, H.B. No. 92, Tehsil Sangat","pin_code":"151001","registration_date":"20-Jun-2024","valid_upto":"03-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: Pioneer Associates (Other than Individual). Address: Village Gurusar Sainewala, H.B. No. 92, Tehsil Sangat. PIN: 151001. Valid upto: 03-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1025';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TRICITY BUILDCON (Other than Individual)","address":"VILLAGE MAHIWALA, HADBAST NO. 05","pin_code":"140507","registration_date":"17-Jul-2024","valid_upto":"20-May-2029"}'::jsonb;
  v_desc := 'Promoter: TRICITY BUILDCON (Other than Individual). Address: VILLAGE MAHIWALA, HADBAST NO. 05. PIN: 140507. Valid upto: 20-May-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1237';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PREMIER REALTY (Other than Individual)","address":"VILLAGE BANUR, HADBAST NO .280, SUB- TEHSIL BANUR, SUB- TEHSIL BANUR","pin_code":"140601","registration_date":"20-Aug-2025","valid_upto":"29-Jan-2028"}'::jsonb;
  v_desc := 'Promoter: PREMIER REALTY (Other than Individual). Address: VILLAGE BANUR, HADBAST NO .280, SUB- TEHSIL BANUR, SUB- TEHSIL BANUR. PIN: 140601. Valid upto: 29-Jan-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FGS17-PI0030';
  v_meta := '{"district":"Fatehgarh Sahib","promoter":"Dolphin Mercantile Private Limited (Other than Individual)","address":"VILL JIWANPURA (H.B. NO. 265), TEHSIL & DISTT FATEHGARH SAHIB","pin_code":"140407","registration_date":"20-Aug-2025","valid_upto":"31-Mar-2028"}'::jsonb;
  v_desc := 'Promoter: Dolphin Mercantile Private Limited (Other than Individual). Address: VILL JIWANPURA (H.B. NO. 265), TEHSIL & DISTT FATEHGARH SAHIB. PIN: 140407. Valid upto: 31-Mar-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL65-PC0373';
  v_meta := '{"district":"Patiala","promoter":"SCG Developers (Other than Individual)","address":"Village Neelpur, H. B. No. 71, Tehsil Rajpura","pin_code":"140401","registration_date":"20-Aug-2025","valid_upto":"17-Jun-2030"}'::jsonb;
  v_desc := 'Promoter: SCG Developers (Other than Individual). Address: Village Neelpur, H. B. No. 71, Tehsil Rajpura. PIN: 140401. Valid upto: 17-Jun-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0372';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Dahra Megatowns Private Limited (Other than Individual)","address":"Village Devinagar Hadbast No. 18, Tehsil  Derabassi","pin_code":"140507","registration_date":"20-Aug-2025","valid_upto":"18-Jun-2030"}'::jsonb;
  v_desc := 'Promoter: Dahra Megatowns Private Limited (Other than Individual). Address: Village Devinagar Hadbast No. 18, Tehsil  Derabassi. PIN: 140507. Valid upto: 18-Jun-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1053';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gul-E-Punjab developers LLP (Other than Individual)","address":"Village Dyalpura(Hadbast no 289) Under MC Zirakpur, distt. S.A.S Nagar Mohali(P.B)","pin_code":"140603","registration_date":"29-Aug-2024","valid_upto":"31-May-2029"}'::jsonb;
  v_desc := 'Promoter: Gul-E-Punjab developers LLP (Other than Individual). Address: Village Dyalpura(Hadbast no 289) Under MC Zirakpur, distt. S.A.S Nagar Mohali(P.B). PIN: 140603. Valid upto: 31-May-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR03-PC0369';
  v_meta := '{"district":"Amritsar","promoter":"DD TOWERS PVT. LTD. (Other than Individual)","address":"Village Sichander, H.B No. 346,, Tehsil Amritsar II","pin_code":"143501","registration_date":"05-Aug-2025","valid_upto":"27-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: DD TOWERS PVT. LTD. (Other than Individual). Address: Village Sichander, H.B No. 346,, Tehsil Amritsar II. PIN: 143501. Valid upto: 27-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH43-PR1235';
  v_meta := '{"district":"Ludhiana","promoter":"Gurpreet  Singh Shergill (Individual)","address":"Village Bhattian (H.B No. 328), Tehsil Khanna","pin_code":"141008","registration_date":"05-Aug-2025","valid_upto":"02-Apr-2029"}'::jsonb;
  v_desc := 'Promoter: Gurpreet  Singh Shergill (Individual). Address: Village Bhattian (H.B No. 328), Tehsil Khanna. PIN: 141008. Valid upto: 02-Apr-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0370';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),Punjab-141003","pin_code":"140901","registration_date":"05-Aug-2025","valid_upto":"11-Dec-2029"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh Developers Pvt Ltd,Kharar, SAS Nagar(Mohali),Punjab-141003. PIN: 140901. Valid upto: 11-Dec-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-GSP27-PC0368';
  v_meta := '{"district":"Gurdaspur","promoter":"Sachidanand construction & developers (Other than Individual)","address":"Village Aujla HB no 340, NH54 Road Gurdaspur","pin_code":"143521","registration_date":"05-Aug-2025","valid_upto":"01-May-2030"}'::jsonb;
  v_desc := 'Promoter: Sachidanand construction & developers (Other than Individual). Address: Village Aujla HB no 340, NH54 Road Gurdaspur. PIN: 143521. Valid upto: 01-May-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0371';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Puma Realtors Private Limited (Other than Individual)","address":"Village Sambhalki, HB No. 292, Sector 86","pin_code":"140306","registration_date":"05-Aug-2025","valid_upto":"31-Jul-2030"}'::jsonb;
  v_desc := 'Promoter: Puma Realtors Private Limited (Other than Individual). Address: Village Sambhalki, HB No. 292, Sector 86. PIN: 140306. Valid upto: 31-Jul-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FDK12-PI0029';
  v_meta := '{"district":"Faridkot","promoter":"Punjab Small Industries and Export Corporation Limited (Other than Individual)","address":"FARIDKOT","pin_code":"151203","registration_date":"01-Aug-2025","valid_upto":"30-Jun-2030"}'::jsonb;
  v_desc := 'Promoter: Punjab Small Industries and Export Corporation Limited (Other than Individual). Address: FARIDKOT. PIN: 151203. Valid upto: 30-Jun-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1222';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SK BUILDERS (Other than Individual)","address":"Village Kaulimajra Llaru","pin_code":"140501","registration_date":"29-Jul-2025","valid_upto":"11-Jan-2029"}'::jsonb;
  v_desc := 'Promoter: SK BUILDERS (Other than Individual). Address: Village Kaulimajra Llaru. PIN: 140501. Valid upto: 11-Jan-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH42-PC0145';
  v_meta := '{"district":"Ludhiana","promoter":"Pure Infratech (Other than Individual)","address":"AT VARDHMAN PARK CHANDIAGRH ROAD LUDHIANA","pin_code":"141123","registration_date":"23-Mar-2021","valid_upto":"24-Sep-2025"}'::jsonb;
  v_desc := 'Promoter: Pure Infratech (Other than Individual). Address: AT VARDHMAN PARK CHANDIAGRH ROAD LUDHIANA. PIN: 141123. Valid upto: 24-Sep-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR0554';
  v_meta := '{"district":"Patiala","promoter":"ABHISHEK COLONIZERS PVT LTD (Other than Individual)","address":"Village Kalwa/ Kasyan","pin_code":"147001","registration_date":"10-Dec-2019","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: ABHISHEK COLONIZERS PVT LTD (Other than Individual). Address: Village Kalwa/ Kasyan. PIN: 147001. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR0558';
  v_meta := '{"district":"Patiala","promoter":"CENTURY COLONISERS PRIVATE LTD (Other than Individual)","address":"Village Kalwa, Kasyana, Patiala","pin_code":"147001","registration_date":"16-Dec-2019","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: CENTURY COLONISERS PRIVATE LTD (Other than Individual). Address: Village Kalwa, Kasyana, Patiala. PIN: 147001. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PM0145';
  v_meta := '{"district":"Patiala","promoter":"Abhishek Colonisers  Pvt Ltd (Other than Individual)","address":"Village- Kalwa","pin_code":"147001","registration_date":"09-Aug-2019","valid_upto":"30-Jun-2022"}'::jsonb;
  v_desc := 'Promoter: Abhishek Colonisers  Pvt Ltd (Other than Individual). Address: Village- Kalwa. PIN: 147001. Valid upto: 30-Jun-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR0547';
  v_meta := '{"district":"Patiala","promoter":"Century Colonizers Pvt Ltd (Other than Individual)","address":"Village Kalwa","pin_code":"147001","registration_date":"27-Nov-2019","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: Century Colonizers Pvt Ltd (Other than Individual). Address: Village Kalwa. PIN: 147001. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-GSP25-PC0366';
  v_meta := '{"district":"Gurdaspur","promoter":"Sh. Sahiljit  Singh (Individual)","address":"Village Shahpur (H.B NO.587, NH-54 Road","pin_code":"143521","registration_date":"21-Jul-2025","valid_upto":"31-Jul-2029"}'::jsonb;
  v_desc := 'Promoter: Sh. Sahiljit  Singh (Individual). Address: Village Shahpur (H.B NO.587, NH-54 Road. PIN: 143521. Valid upto: 31-Jul-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SBS84-PR1234';
  v_meta := '{"district":"Shahid Bhagat Singh Nagar (Nawanshahr)","promoter":"Bhupindra Estate (Other than Individual)","address":"Barnala Kalan 1&2, Tehsil & District SBS Nagar, H.B No. 135","pin_code":"144516","registration_date":"21-Jul-2025","valid_upto":"16-Oct-2028"}'::jsonb;
  v_desc := 'Promoter: Bhupindra Estate (Other than Individual). Address: Barnala Kalan 1&2, Tehsil & District SBS Nagar, H.B No. 135. PIN: 144516. Valid upto: 16-Oct-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR78-PC0365';
  v_meta := '{"district":"Sangrur","promoter":"BDesk Private Limited  (Other than Individual)","address":"VILLAGE SUNAM, H.B. 28, TEHSIL SUNAM, DISTT SANGRUR","pin_code":"148028","registration_date":"21-Jul-2025","valid_upto":"02-Jun-2030"}'::jsonb;
  v_desc := 'Promoter: BDesk Private Limited  (Other than Individual). Address: VILLAGE SUNAM, H.B. 28, TEHSIL SUNAM, DISTT SANGRUR. PIN: 148028. Valid upto: 02-Jun-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1232';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TRUST INFRA (Other than Individual)","address":"Village Ramgarh Bhudda, Zirakpur","pin_code":"140603","registration_date":"21-Jul-2025","valid_upto":"15-May-2030"}'::jsonb;
  v_desc := 'Promoter: TRUST INFRA (Other than Individual). Address: Village Ramgarh Bhudda, Zirakpur. PIN: 140603. Valid upto: 15-May-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH43-PR1231';
  v_meta := '{"district":"Ludhiana","promoter":"Pawan   Makol (Individual)","address":"inside Municipal Council Limits of Khanna ,Ludhiana,","pin_code":"141401","registration_date":"21-Jul-2025","valid_upto":"04-Dec-2029"}'::jsonb;
  v_desc := 'Promoter: Pawan   Makol (Individual). Address: inside Municipal Council Limits of Khanna ,Ludhiana,. PIN: 141401. Valid upto: 04-Dec-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MNS49-PR1230';
  v_meta := '{"district":"Mansa","promoter":"S. K. REAL ESTATE (Other than Individual)","address":"VILL BHIKHI, TEH MANSA","pin_code":"151504","registration_date":"15-Jul-2025","valid_upto":"20-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: S. K. REAL ESTATE (Other than Individual). Address: VILL BHIKHI, TEH MANSA. PIN: 151504. Valid upto: 20-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR77-PC0364';
  v_meta := '{"district":"Sangrur","promoter":"KAT BUILDERS LLP (Other than Individual)","address":"Village Benra B , H.B No. 95 in the revenue Tehsil Dhuri , Dist. Sangrur, Punjab","pin_code":"148024","registration_date":"15-Jul-2025","valid_upto":"01-Jun-2030"}'::jsonb;
  v_desc := 'Promoter: KAT BUILDERS LLP (Other than Individual). Address: Village Benra B , H.B No. 95 in the revenue Tehsil Dhuri , Dist. Sangrur, Punjab. PIN: 148024. Valid upto: 01-Jun-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR1223';
  v_meta := '{"district":"Ludhiana","promoter":"EXOTIC COMMERCIAL PRIVATE LIMITED (Other than Individual)","address":"Ramghar, Sahnewal, Ludhiana","pin_code":"141120","registration_date":"11-Jul-2025","valid_upto":"25-May-2025"}'::jsonb;
  v_desc := 'Promoter: EXOTIC COMMERCIAL PRIVATE LIMITED (Other than Individual). Address: Ramghar, Sahnewal, Ludhiana. PIN: 141120. Valid upto: 25-May-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR1225';
  v_meta := '{"district":"Jalandhar","promoter":"AGI Infra Limited (Other than Individual)","address":"Village Pholriwal, H.B. No. 252","pin_code":"144022","website":"www.agiinfra.com","registration_date":"11-Jul-2025","valid_upto":"27-Mar-2030"}'::jsonb;
  v_desc := 'Promoter: AGI Infra Limited (Other than Individual). Address: Village Pholriwal, H.B. No. 252. PIN: 144022. Valid upto: 27-Mar-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1224';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Singla Builders and promoters limited (Other than Individual)","address":"Village Madhopur, Tehsil Derabassi","pin_code":"140507","registration_date":"15-Jul-2025","valid_upto":"01-Jun-2030"}'::jsonb;
  v_desc := 'Promoter: Singla Builders and promoters limited (Other than Individual). Address: Village Madhopur, Tehsil Derabassi. PIN: 140507. Valid upto: 01-Jun-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1229';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GP DARPAN PROPERTY LLP (Other than Individual)","address":"Village Rouni, hadbast no 14","pin_code":"140507","registration_date":"15-Jul-2025","valid_upto":"24-Apr-2030"}'::jsonb;
  v_desc := 'Promoter: GP DARPAN PROPERTY LLP (Other than Individual). Address: Village Rouni, hadbast no 14. PIN: 140507. Valid upto: 24-Apr-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  RAISE NOTICE 'Part 2: updated % projects', v_updated;
END $$;