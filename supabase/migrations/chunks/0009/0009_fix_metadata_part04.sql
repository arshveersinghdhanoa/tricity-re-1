-- 0009_fix_metadata_part04.sql
-- Projects 601 to 800
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

  v_rera := 'PBRERA-SAS79-PR1085';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Alaknanda Land and Promoters (Other than Individual)","address":"HADBAST NO.43, NAGLA ROAD , VILLAGE SINGHPURA, ZIRAKPUR","pin_code":"140603","registration_date":"30-Sep-2024","valid_upto":"12-Oct-2028"}'::jsonb;
  v_desc := 'Promoter: Alaknanda Land and Promoters (Other than Individual). Address: HADBAST NO.43, NAGLA ROAD , VILLAGE SINGHPURA, ZIRAKPUR. PIN: 140603. Valid upto: 12-Oct-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH42-PC0286';
  v_meta := '{"district":"Ludhiana","promoter":"NEW FATEHGARH SAHIB SIRHIND BUS TRANSPORT PVT. LTD. (Other than Individual)","address":"Village Khanna Kalan, Teshil Khanaa","pin_code":"141012","registration_date":"30-Sep-2024","valid_upto":"20-Feb-2029"}'::jsonb;
  v_desc := 'Promoter: NEW FATEHGARH SAHIB SIRHIND BUS TRANSPORT PVT. LTD. (Other than Individual). Address: Village Khanna Kalan, Teshil Khanaa. PIN: 141012. Valid upto: 20-Feb-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PI0027';
  v_meta := '{"district":"Ludhiana","promoter":"JASWINDER KAUR AHUJA (Individual)","address":"Village Karabara, Hadbast No. 161","pin_code":"141008","registration_date":"30-Sep-2024","valid_upto":"28-Jun-2029"}'::jsonb;
  v_desc := 'Promoter: JASWINDER KAUR AHUJA (Individual). Address: Village Karabara, Hadbast No. 161. PIN: 141008. Valid upto: 28-Jun-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL19-PC0287';
  v_meta := '{"district":"Fazilka","promoter":"EMESCO REALITY  (Other than Individual)","address":"Khandwala Road, Abohar","pin_code":"152116","registration_date":"30-Sep-2024","valid_upto":"30-Jan-2029"}'::jsonb;
  v_desc := 'Promoter: EMESCO REALITY  (Other than Individual). Address: Khandwala Road, Abohar. PIN: 152116. Valid upto: 30-Jan-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR77-PC0283';
  v_meta := '{"district":"Sangrur","promoter":"RAMA BUILDERS (Other than Individual)","address":"VILLAGE SANGRUR, HADBAST 23, TEHSIL SANGRUR","pin_code":"148001","registration_date":"27-Sep-2024","valid_upto":"31-Jul-2029"}'::jsonb;
  v_desc := 'Promoter: RAMA BUILDERS (Other than Individual). Address: VILLAGE SANGRUR, HADBAST 23, TEHSIL SANGRUR. PIN: 148001. Valid upto: 31-Jul-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0848';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KG Enterprises (Other than Individual)","address":"Village Bhankharpur, Ambala Chandigarh Higway, Zirakpur","pin_code":"140603","registration_date":"24-Apr-2023","valid_upto":"31-Oct-2027"}'::jsonb;
  v_desc := 'Promoter: KG Enterprises (Other than Individual). Address: Village Bhankharpur, Ambala Chandigarh Higway, Zirakpur. PIN: 140603. Valid upto: 31-Oct-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1079';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"HLP INFRATECH LLP (Other than Individual)","address":"Village Ramgarh Bhudha, zirkapur","pin_code":"140603","registration_date":"26-Sep-2024","valid_upto":"01-Sep-2029"}'::jsonb;
  v_desc := 'Promoter: HLP INFRATECH LLP (Other than Individual). Address: Village Ramgarh Bhudha, zirkapur. PIN: 140603. Valid upto: 01-Sep-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0280';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sandeep   Poddar (Individual)","address":"Village Peermuchalla, HB No 53, Zirakpur","pin_code":"140603","registration_date":"25-Sep-2024","valid_upto":"05-Aug-2029"}'::jsonb;
  v_desc := 'Promoter: Sandeep   Poddar (Individual). Address: Village Peermuchalla, HB No 53, Zirakpur. PIN: 140603. Valid upto: 05-Aug-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1069';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jubilee Joy Homes LLP (Other than Individual)","address":"Village Daun","pin_code":"140308","website":"www.jubileegroup.in","registration_date":"20-Sep-2024","valid_upto":"31-Aug-2027"}'::jsonb;
  v_desc := 'Promoter: Jubilee Joy Homes LLP (Other than Individual). Address: Village Daun. PIN: 140308. Valid upto: 31-Aug-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR1013';
  v_meta := '{"district":"Jalandhar","promoter":"MEXMON INFRASTRUCTURE LLP (Other than Individual)","address":"H.B. No 301, Village Kingra, Tehsil & Distt - Jalandhar","pin_code":"144008","registration_date":"24-Sep-2024","valid_upto":"09-Jun-2028"}'::jsonb;
  v_desc := 'Promoter: MEXMON INFRASTRUCTURE LLP (Other than Individual). Address: H.B. No 301, Village Kingra, Tehsil & Distt - Jalandhar. PIN: 144008. Valid upto: 09-Jun-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL62-PR1071';
  v_meta := '{"district":"Patiala","promoter":"JINDAL BUILDERS (Other than Individual)","address":"HARBAST NO 204, VILLAGE NABHA, NABHA","pin_code":"147201","registration_date":"24-Sep-2024","valid_upto":"31-Mar-2028"}'::jsonb;
  v_desc := 'Promoter: JINDAL BUILDERS (Other than Individual). Address: HARBAST NO 204, VILLAGE NABHA, NABHA. PIN: 147201. Valid upto: 31-Mar-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PM0171';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MOTIA BUILDERS (Other than Individual)","address":"Village Gulabgarh, HB No 9, Tehsil Dera Bassi","pin_code":"140507","registration_date":"23-Sep-2024","valid_upto":"30-Jun-2029"}'::jsonb;
  v_desc := 'Promoter: MOTIA BUILDERS (Other than Individual). Address: Village Gulabgarh, HB No 9, Tehsil Dera Bassi. PIN: 140507. Valid upto: 30-Jun-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR1070';
  v_meta := '{"district":"Bathinda","promoter":"RS REALINFRA PRIVATE LIMITED (Other than Individual)","address":"VILLAGE DOOMWALI, TEHSIL SANGAT","pin_code":"151401","registration_date":"19-Sep-2024","valid_upto":"31-Jul-2027"}'::jsonb;
  v_desc := 'Promoter: RS REALINFRA PRIVATE LIMITED (Other than Individual). Address: VILLAGE DOOMWALI, TEHSIL SANGAT. PIN: 151401. Valid upto: 31-Jul-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PR1066';
  v_meta := '{"district":"Amritsar","promoter":"A.V. BUILDERS (Other than Individual)","address":"Village Sohian Khurd, HB No 288, Tehsil Amritsar","pin_code":"143001","registration_date":"13-Sep-2024","valid_upto":"18-Jul-2029"}'::jsonb;
  v_desc := 'Promoter: A.V. BUILDERS (Other than Individual). Address: Village Sohian Khurd, HB No 288, Tehsil Amritsar. PIN: 143001. Valid upto: 18-Jul-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1068';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Edmond Capital Ventures  (Other than Individual)","address":"Village Padiala, HB no. 379, Kurali, Tehsil Kharar, SAS Nagar","pin_code":"140103","registration_date":"13-Sep-2024","valid_upto":"04-Jul-2029"}'::jsonb;
  v_desc := 'Promoter: Edmond Capital Ventures  (Other than Individual). Address: Village Padiala, HB no. 379, Kurali, Tehsil Kharar, SAS Nagar. PIN: 140103. Valid upto: 04-Jul-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0278';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Shiva S S Strips Private Limited (Other than Individual)","address":"Village Zirakpur, Hadbast No. 235, Within MC Zirakpur, Sub Tehsil Zirakpur","pin_code":"140603","registration_date":"12-Sep-2024","valid_upto":"23-Jun-2029"}'::jsonb;
  v_desc := 'Promoter: Shiva S S Strips Private Limited (Other than Individual). Address: Village Zirakpur, Hadbast No. 235, Within MC Zirakpur, Sub Tehsil Zirakpur. PIN: 140603. Valid upto: 23-Jun-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1061';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CREDO ASSETS PRIVATE LIMITED (Other than Individual)","address":"Village  Sante Majra, HB No 186, Tehsil Kharar","pin_code":"140307","registration_date":"11-Sep-2024","valid_upto":"15-Jul-2031"}'::jsonb;
  v_desc := 'Promoter: CREDO ASSETS PRIVATE LIMITED (Other than Individual). Address: Village  Sante Majra, HB No 186, Tehsil Kharar. PIN: 140307. Valid upto: 15-Jul-2031';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR1062';
  v_meta := '{"district":"Bathinda","promoter":"Ganpati Builders (Other than Individual)","address":"Village Rampura Phul, HB – 072, Tehsil Rampura","pin_code":"151103","registration_date":"11-Sep-2024","valid_upto":"22-Feb-2029"}'::jsonb;
  v_desc := 'Promoter: Ganpati Builders (Other than Individual). Address: Village Rampura Phul, HB – 072, Tehsil Rampura. PIN: 151103. Valid upto: 22-Feb-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1059';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KG Enterprises (Other than Individual)","address":"High Ground Road, Opposite Apple Resort, Village Nabha, Zirakpur","pin_code":"140603","registration_date":"11-Sep-2024","valid_upto":"30-Apr-2028"}'::jsonb;
  v_desc := 'Promoter: KG Enterprises (Other than Individual). Address: High Ground Road, Opposite Apple Resort, Village Nabha, Zirakpur. PIN: 140603. Valid upto: 30-Apr-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0276';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Solty Infra (Other than Individual)","address":"Village Tangori, Tehsil Mohali","pin_code":"140306","registration_date":"11-Sep-2024","valid_upto":"01-Aug-2029"}'::jsonb;
  v_desc := 'Promoter: Solty Infra (Other than Individual). Address: Village Tangori, Tehsil Mohali. PIN: 140306. Valid upto: 01-Aug-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL34-PR1064';
  v_meta := '{"district":"Jalandhar","promoter":"Dream Town Land Developers (Other than Individual)","address":"Village Chohak, H.B. No. 218, Tehsil and District Jalandhar","pin_code":"144007","registration_date":"11-Sep-2024","valid_upto":"18-Jan-2029"}'::jsonb;
  v_desc := 'Promoter: Dream Town Land Developers (Other than Individual). Address: Village Chohak, H.B. No. 218, Tehsil and District Jalandhar. PIN: 144007. Valid upto: 18-Jan-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PC0275';
  v_meta := '{"district":"Bathinda","promoter":"MAA GANGA DEVELPORS (Other than Individual)","address":"Opposite Green City Square, Dabwali Road, Bathinda","pin_code":"151001","registration_date":"11-Sep-2024","valid_upto":"02-May-2029"}'::jsonb;
  v_desc := 'Promoter: MAA GANGA DEVELPORS (Other than Individual). Address: Opposite Green City Square, Dabwali Road, Bathinda. PIN: 151001. Valid upto: 02-May-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZR22-PR1060';
  v_meta := '{"district":"Firozpur","promoter":"EVERGREEN DEVELOPERS (Other than Individual)","address":"Village Satyewala, Hadbast No. 114","pin_code":"154002","registration_date":"11-Sep-2024","valid_upto":"05-Nov-2028"}'::jsonb;
  v_desc := 'Promoter: EVERGREEN DEVELOPERS (Other than Individual). Address: Village Satyewala, Hadbast No. 114. PIN: 154002. Valid upto: 05-Nov-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1049';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ESSEL INFRA LLP (Other than Individual)","address":"Suncity Ultima, Village Gazipur, Hadbast No. 50, Zirakpur,","pin_code":"140507","website":"https://www.suncityprojects.com","registration_date":"28-Aug-2024","valid_upto":"23-Jul-2031"}'::jsonb;
  v_desc := 'Promoter: ESSEL INFRA LLP (Other than Individual). Address: Suncity Ultima, Village Gazipur, Hadbast No. 50, Zirakpur,. PIN: 140507. Valid upto: 23-Jul-2031';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL64-PR1054';
  v_meta := '{"district":"Patiala","promoter":"Parmod Kumar And Others (Other than Individual)","address":"H.B No. 176, Village Patran,, Tehsil - Patran","pin_code":"147105","registration_date":"30-Aug-2024","valid_upto":"10-Jun-2029"}'::jsonb;
  v_desc := 'Promoter: Parmod Kumar And Others (Other than Individual). Address: H.B No. 176, Village Patran,, Tehsil - Patran. PIN: 147105. Valid upto: 10-Jun-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR1052';
  v_meta := '{"district":"Jalandhar","promoter":"Dream Home Colonisers & Developers (Other than Individual)","address":"Village Sofi Pind, (H.B.No.231)","pin_code":"144024","registration_date":"30-Aug-2024","valid_upto":"28-Aug-2028"}'::jsonb;
  v_desc := 'Promoter: Dream Home Colonisers & Developers (Other than Individual). Address: Village Sofi Pind, (H.B.No.231). PIN: 144024. Valid upto: 28-Aug-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL19-PR1051';
  v_meta := '{"district":"Fazilka","promoter":"Sunray Cotspin Private Limited (Other than Individual)","address":"Old Fazilka Road, Abohar","pin_code":"152116","registration_date":"29-Aug-2024","valid_upto":"01-Jan-2028"}'::jsonb;
  v_desc := 'Promoter: Sunray Cotspin Private Limited (Other than Individual). Address: Old Fazilka Road, Abohar. PIN: 152116. Valid upto: 01-Jan-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1057';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ATLANTIS (Other than Individual)","address":"VILLAGE - NABHA HIGH GROUND ROAD, HB No 290, SUB TEHSIL ZIRAKPUR","pin_code":"140603","registration_date":"03-Sep-2024","valid_upto":"31-Dec-2028"}'::jsonb;
  v_desc := 'Promoter: ATLANTIS (Other than Individual). Address: VILLAGE - NABHA HIGH GROUND ROAD, HB No 290, SUB TEHSIL ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0273';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jubilee Joy Homes LLP (Other than Individual)","address":"Jubilee Westgrove , Village Bairampur, Sector-112","pin_code":"140307","website":"www.jubileegroup.in","registration_date":"30-Aug-2024","valid_upto":"30-Jun-2027"}'::jsonb;
  v_desc := 'Promoter: Jubilee Joy Homes LLP (Other than Individual). Address: Jubilee Westgrove , Village Bairampur, Sector-112. PIN: 140307. Valid upto: 30-Jun-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PI0026';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"NEXXON INDUSTRIAL CITY  (Other than Individual)","address":"Village Tofanpur, Lalru, HB No 206, Tehsil Derabassi.","pin_code":"140501","registration_date":"21-Aug-2024","valid_upto":"22-Jul-2029"}'::jsonb;
  v_desc := 'Promoter: NEXXON INDUSTRIAL CITY  (Other than Individual). Address: Village Tofanpur, Lalru, HB No 206, Tehsil Derabassi.. PIN: 140501. Valid upto: 22-Jul-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1055';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ALTUS SPACE BUILDERS PRIVATE LIMITED (Other than Individual)","address":"SECTOR 14, NEW CHANDIGARH","pin_code":"140901","registration_date":"30-Aug-2024","valid_upto":"07-Jun-2029"}'::jsonb;
  v_desc := 'Promoter: ALTUS SPACE BUILDERS PRIVATE LIMITED (Other than Individual). Address: SECTOR 14, NEW CHANDIGARH. PIN: 140901. Valid upto: 07-Jun-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR1046';
  v_meta := '{"district":"Ludhiana","promoter":"MEADOWS BUILDSYS LLP (Other than Individual)","address":"Village Malakpur, Ludhiana West","pin_code":"142027","registration_date":"21-Aug-2024","valid_upto":"27-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: MEADOWS BUILDSYS LLP (Other than Individual). Address: Village Malakpur, Ludhiana West. PIN: 142027. Valid upto: 27-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0270';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SRV Infrastructure (Other than Individual)","address":"Village Padiala, Ward no 9 Kurali, Tehsil kharar","pin_code":"140103","registration_date":"21-Aug-2024","valid_upto":"12-Jun-2029"}'::jsonb;
  v_desc := 'Promoter: SRV Infrastructure (Other than Individual). Address: Village Padiala, Ward no 9 Kurali, Tehsil kharar. PIN: 140103. Valid upto: 12-Jun-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0272';
  v_meta := '{"district":"Ludhiana","promoter":"Umbera Group (Other than Individual)","address":"Village Dakha-1(H.B. No. 142), Tehsil Mullanpur Dakha","pin_code":"141102","registration_date":"23-Aug-2024","valid_upto":"29-Jan-2029"}'::jsonb;
  v_desc := 'Promoter: Umbera Group (Other than Individual). Address: Village Dakha-1(H.B. No. 142), Tehsil Mullanpur Dakha. PIN: 141102. Valid upto: 29-Jan-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR1048';
  v_meta := '{"district":"Ludhiana","promoter":"JANDU LAND DEVELOPERS PRIVATE LIMITED (Other than Individual)","address":"Village Balloke","pin_code":"141001","registration_date":"23-Aug-2024","valid_upto":"13-Dec-2028"}'::jsonb;
  v_desc := 'Promoter: JANDU LAND DEVELOPERS PRIVATE LIMITED (Other than Individual). Address: Village Balloke. PIN: 141001. Valid upto: 13-Dec-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1050';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"VIBRANT HEIGHTS PRIVATE LIMITED (Other than Individual)","address":"Village Banur, HB No 280, Tehsil Banur","pin_code":"140601","registration_date":"23-Aug-2024","valid_upto":"19-May-2031"}'::jsonb;
  v_desc := 'Promoter: VIBRANT HEIGHTS PRIVATE LIMITED (Other than Individual). Address: Village Banur, HB No 280, Tehsil Banur. PIN: 140601. Valid upto: 19-May-2031';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SBS83-PC0271';
  v_meta := '{"district":"Shahid Bhagat Singh Nagar (Nawanshahr)","promoter":"LEADER INFRASTRUCTURES PRIVATE LIMITED (Other than Individual)","address":"Village Banga (Mukandpur Road), HB No 82, Tehsil Banga","pin_code":"144505","registration_date":"23-Aug-2024","valid_upto":"18-Oct-2026"}'::jsonb;
  v_desc := 'Promoter: LEADER INFRASTRUCTURES PRIVATE LIMITED (Other than Individual). Address: Village Banga (Mukandpur Road), HB No 82, Tehsil Banga. PIN: 144505. Valid upto: 18-Oct-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL19-PR1011';
  v_meta := '{"district":"Fazilka","promoter":"Fazilka Developers (Other than Individual)","address":"Dera Sacha Sauda Road, Near Radha Soami Satsang Bhawan No 3,, Village Painchanwali","pin_code":"152123","registration_date":"08-Aug-2024","valid_upto":"31-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: Fazilka Developers (Other than Individual). Address: Dera Sacha Sauda Road, Near Radha Soami Satsang Bhawan No 3,, Village Painchanwali. PIN: 152123. Valid upto: 31-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0269';
  v_meta := '{"district":"Ludhiana","promoter":"VISHESH INFRATECH INDIA PRIVATE LIMITED (Other than Individual)","address":"Sidhwan Canal Road, village Jhamat","pin_code":"142027","registration_date":"20-Aug-2024","valid_upto":"31-Dec-2028"}'::jsonb;
  v_desc := 'Promoter: VISHESH INFRATECH INDIA PRIVATE LIMITED (Other than Individual). Address: Sidhwan Canal Road, village Jhamat. PIN: 142027. Valid upto: 31-Dec-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR1045';
  v_meta := '{"district":"Ludhiana","promoter":"Deepak  Kumar Garg (Individual)","address":"VVillage Talwara, HB No 149, Tehsil & District Ludhiana","pin_code":"141012","registration_date":"13-Aug-2024","valid_upto":"31-Mar-2026"}'::jsonb;
  v_desc := 'Promoter: Deepak  Kumar Garg (Individual). Address: VVillage Talwara, HB No 149, Tehsil & District Ludhiana. PIN: 141012. Valid upto: 31-Mar-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1038';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CHETAK BUILDERS AND COLONIZERS (Other than Individual)","address":"Vill. Gulabgarh, Hadbast No. 09, Dera Bassi","pin_code":"140507","registration_date":"06-Aug-2024","valid_upto":"31-Mar-2026"}'::jsonb;
  v_desc := 'Promoter: CHETAK BUILDERS AND COLONIZERS (Other than Individual). Address: Vill. Gulabgarh, Hadbast No. 09, Dera Bassi. PIN: 140507. Valid upto: 31-Mar-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR1044';
  v_meta := '{"district":"Bathinda","promoter":"Friends Builders (Other than Individual)","address":"St No:3, Arjan Nagar, Paras Ram Nagar","pin_code":"151001","registration_date":"09-Aug-2024","valid_upto":"04-Jun-2029"}'::jsonb;
  v_desc := 'Promoter: Friends Builders (Other than Individual). Address: St No:3, Arjan Nagar, Paras Ram Nagar. PIN: 151001. Valid upto: 04-Jun-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR1040';
  v_meta := '{"district":"Jalandhar","promoter":"Richmond Developers (Other than Individual)","address":"Village Alipur, HB.No 294","pin_code":"144003","registration_date":"09-Aug-2024","valid_upto":"31-Dec-2026"}'::jsonb;
  v_desc := 'Promoter: Richmond Developers (Other than Individual). Address: Village Alipur, HB.No 294. PIN: 144003. Valid upto: 31-Dec-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL20-PR1010';
  v_meta := '{"district":"Fazilka","promoter":"Sandeep  Gilhotra (Individual)","address":"Salemshah Road, Opposite MR Enclave, Village Sultanpura","pin_code":"152123","registration_date":"09-Aug-2024","valid_upto":"09-Jun-2025"}'::jsonb;
  v_desc := 'Promoter: Sandeep  Gilhotra (Individual). Address: Salemshah Road, Opposite MR Enclave, Village Sultanpura. PIN: 152123. Valid upto: 09-Jun-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL20-PM0173';
  v_meta := '{"district":"Fazilka","promoter":"PRIME DEVELOPERS (Other than Individual)","address":"CANTT ROAD, FAZILKA","pin_code":"152123","registration_date":"08-Aug-2024","valid_upto":"02-Oct-2028"}'::jsonb;
  v_desc := 'Promoter: PRIME DEVELOPERS (Other than Individual). Address: CANTT ROAD, FAZILKA. PIN: 152123. Valid upto: 02-Oct-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH48-PC0268';
  v_meta := '{"district":"Ludhiana","promoter":"S.R. DEVELOPERS AND COLONISERS PRIVATE LIMITED (Other than Individual)","address":"Village Bondli, Tehsil Samrala","pin_code":"141114","registration_date":"08-Aug-2024","valid_upto":"27-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: S.R. DEVELOPERS AND COLONISERS PRIVATE LIMITED (Other than Individual). Address: Village Bondli, Tehsil Samrala. PIN: 141114. Valid upto: 27-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL65-PI0025';
  v_meta := '{"district":"Patiala","promoter":"Mahakali Elevation Estates Private Limited (Other than Individual)","address":"Hadbast No. 144, Mehmadpur, NH1, Rajpura - Ambala Road","pin_code":"140417","registration_date":"08-Aug-2024","valid_upto":"15-Apr-2029"}'::jsonb;
  v_desc := 'Promoter: Mahakali Elevation Estates Private Limited (Other than Individual). Address: Hadbast No. 144, Mehmadpur, NH1, Rajpura - Ambala Road. PIN: 140417. Valid upto: 15-Apr-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0267';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SBP Township Private Limited (Other than Individual)","address":"Village Nabha, H.B No.  Sub Tehsil Zirakpur, District SAS Nagar","pin_code":"140308","registration_date":"08-Aug-2024","valid_upto":"30-May-2029"}'::jsonb;
  v_desc := 'Promoter: SBP Township Private Limited (Other than Individual). Address: Village Nabha, H.B No.  Sub Tehsil Zirakpur, District SAS Nagar. PIN: 140308. Valid upto: 30-May-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1042';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PUMA REALTORS PRIVATE LIMITED (Other than Individual)","address":"Sector-105, Mohali, SAS Nagar","pin_code":"140308","registration_date":"08-Aug-2024","valid_upto":"31-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: PUMA REALTORS PRIVATE LIMITED (Other than Individual). Address: Sector-105, Mohali, SAS Nagar. PIN: 140308. Valid upto: 31-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR73-PR0984';
  v_meta := '{"district":"Sangrur","promoter":"KATBUILDERS LLP (Other than Individual)","address":"Village Dhuri, H.B No. 94 in revenue Tehsil Dhuri, Dist. Sangrur","pin_code":"148024","registration_date":"14-Jun-2024","valid_upto":"03-Sep-2028"}'::jsonb;
  v_desc := 'Promoter: KATBUILDERS LLP (Other than Individual). Address: Village Dhuri, H.B No. 94 in revenue Tehsil Dhuri, Dist. Sangrur. PIN: 148024. Valid upto: 03-Sep-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0969';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ANANTHAM INFCON (Other than Individual)","address":"WHITE CITY, VILLAGE KAILON, SECTOR 114","pin_code":"140307","registration_date":"14-Jun-2024","valid_upto":"01-Jul-2028"}'::jsonb;
  v_desc := 'Promoter: ANANTHAM INFCON (Other than Individual). Address: WHITE CITY, VILLAGE KAILON, SECTOR 114. PIN: 140307. Valid upto: 01-Jul-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR73-PR0982';
  v_meta := '{"district":"Sangrur","promoter":"SUNRISE BUILDERS (Other than Individual)","address":"VILLAGE DAULATPUR, HB NO. 64, TESH DHURI,DIST SANGRUR","pin_code":"148024","registration_date":"14-Jun-2024","valid_upto":"01-Feb-2029"}'::jsonb;
  v_desc := 'Promoter: SUNRISE BUILDERS (Other than Individual). Address: VILLAGE DAULATPUR, HB NO. 64, TESH DHURI,DIST SANGRUR. PIN: 148024. Valid upto: 01-Feb-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PR0981';
  v_meta := '{"district":"Barnala","promoter":"SALDHA LAND DEVELOPERS (Other than Individual)","address":"VILLAGE HANDIAYA B`, HADBAST NO. 58,BARNALA","pin_code":"148101","registration_date":"14-Jun-2024","valid_upto":"01-Nov-2028"}'::jsonb;
  v_desc := 'Promoter: SALDHA LAND DEVELOPERS (Other than Individual). Address: VILLAGE HANDIAYA B`, HADBAST NO. 58,BARNALA. PIN: 148101. Valid upto: 01-Nov-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0238';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KLG Infra (Other than Individual)","address":"Commercial Chunk Site No. Pocket 2, Block-F, Aero City","pin_code":"140603","registration_date":"11-Jun-2024","valid_upto":"10-Feb-2029"}'::jsonb;
  v_desc := 'Promoter: KLG Infra (Other than Individual). Address: Commercial Chunk Site No. Pocket 2, Block-F, Aero City. PIN: 140603. Valid upto: 10-Feb-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR1007';
  v_meta := '{"district":"Ludhiana","promoter":"OMAXE LIMITED (Other than Individual)","address":"Duplex Floors Ludhiana, Pakhowal Road, Ludhiana","pin_code":"142022","website":"www.omaxe.com","registration_date":"18-Jul-2024","valid_upto":"31-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: OMAXE LIMITED (Other than Individual). Address: Duplex Floors Ludhiana, Pakhowal Road, Ludhiana. PIN: 142022. Valid upto: 31-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1028';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Roop  Singh (Individual)","address":"Ballopur Road, Village Lalru, Tehsil Derabassi","pin_code":"140501","registration_date":"18-Jul-2024","valid_upto":"30-May-2028"}'::jsonb;
  v_desc := 'Promoter: Roop  Singh (Individual). Address: Ballopur Road, Village Lalru, Tehsil Derabassi. PIN: 140501. Valid upto: 30-May-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0266';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sabharwal Land Promoters Private Limited (Other than Individual)","address":"Village Bhabat, H.B. No. 234, within M.C. Zirakpur","pin_code":"140603","registration_date":"24-Jul-2024","valid_upto":"16-May-2029"}'::jsonb;
  v_desc := 'Promoter: Sabharwal Land Promoters Private Limited (Other than Individual). Address: Village Bhabat, H.B. No. 234, within M.C. Zirakpur. PIN: 140603. Valid upto: 16-May-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0826';
  v_meta := '{"district":"Ludhiana","promoter":"AGI INFRA LIMITED (Other than Individual)","address":"Village Daad (H.B.No.279), Pakhowal Road, Tehsil Ludhiana West","pin_code":"141012","website":"www.agiinfra.com","registration_date":"26-Oct-2022","valid_upto":"29-Mar-2027"}'::jsonb;
  v_desc := 'Promoter: AGI INFRA LIMITED (Other than Individual). Address: Village Daad (H.B.No.279), Pakhowal Road, Tehsil Ludhiana West. PIN: 141012. Valid upto: 29-Mar-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-GSP27-PR0977';
  v_meta := '{"district":"Gurdaspur","promoter":"Gurmukh  Singh (Individual)","address":"Village Haripur, H.B No.306","pin_code":"143531","registration_date":"21-Jun-2024","valid_upto":"31-Dec-2028"}'::jsonb;
  v_desc := 'Promoter: Gurmukh  Singh (Individual). Address: Village Haripur, H.B No.306. PIN: 143531. Valid upto: 31-Dec-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR73-PR0937';
  v_meta := '{"district":"Sangrur","promoter":"Ekta Real Estate Developers (Other than Individual)","address":"Village Khai, Hadbast No. 65 tehsil Lehra, Distt. Sangrur","pin_code":"148031","registration_date":"03-May-2024","valid_upto":"16-Apr-2027"}'::jsonb;
  v_desc := 'Promoter: Ekta Real Estate Developers (Other than Individual). Address: Village Khai, Hadbast No. 65 tehsil Lehra, Distt. Sangrur. PIN: 148031. Valid upto: 16-Apr-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0249';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CHANDIGARH COLONISERS PRIVATE LIMITED (Other than Individual)","address":"H.B NO. 54 VILLAGE KISHANPURA,, ZIRAKPUR, DISTT SAS NAGAR","pin_code":"140603","registration_date":"21-Jun-2024","valid_upto":"13-Feb-2028"}'::jsonb;
  v_desc := 'Promoter: CHANDIGARH COLONISERS PRIVATE LIMITED (Other than Individual). Address: H.B NO. 54 VILLAGE KISHANPURA,, ZIRAKPUR, DISTT SAS NAGAR. PIN: 140603. Valid upto: 13-Feb-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR0973';
  v_meta := '{"district":"Ludhiana","promoter":"Anand Enclave Developers Pvt. Ltd. (Other than Individual)","address":"Village Lalton Kalan-I","pin_code":"142022","registration_date":"13-Jun-2024","valid_upto":"31-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: Anand Enclave Developers Pvt. Ltd. (Other than Individual). Address: Village Lalton Kalan-I. PIN: 142022. Valid upto: 31-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FGS18-PC0248';
  v_meta := '{"district":"Fatehgarh Sahib","promoter":"Guru Nanak Realtors (Other than Individual)","address":"Village Pohlo Majra, Tehsil Khamanon , Distt. Fatehgarh Sahib","pin_code":"140308","registration_date":"20-Jun-2024","valid_upto":"19-Dec-2028"}'::jsonb;
  v_desc := 'Promoter: Guru Nanak Realtors (Other than Individual). Address: Village Pohlo Majra, Tehsil Khamanon , Distt. Fatehgarh Sahib. PIN: 140308. Valid upto: 19-Dec-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0979';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Summerset Buildcon Private Limited  (Other than Individual)","address":"City of Dreams 4, Sante Majra, H.B No 186, Kharar, Punjab","pin_code":"140301","registration_date":"13-Jun-2024","valid_upto":"10-Aug-2027"}'::jsonb;
  v_desc := 'Promoter: Summerset Buildcon Private Limited  (Other than Individual). Address: City of Dreams 4, Sante Majra, H.B No 186, Kharar, Punjab. PIN: 140301. Valid upto: 10-Aug-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0975';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GURPREET  SINGH (Individual)","address":"PR TOWN,TRIBUNE COLONY ROAD ,BALTANA,MOUJA-BALTANA,TEHSIL ZIRAKPUR,SAS NAGAR, SAME","pin_code":"140603","registration_date":"13-Jun-2024","valid_upto":"12-Oct-2028"}'::jsonb;
  v_desc := 'Promoter: GURPREET  SINGH (Individual). Address: PR TOWN,TRIBUNE COLONY ROAD ,BALTANA,MOUJA-BALTANA,TEHSIL ZIRAKPUR,SAS NAGAR, SAME. PIN: 140603. Valid upto: 12-Oct-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MGA54-PR1030';
  v_meta := '{"district":"Moga","promoter":"Divya Real Estates (Other than Individual)","address":"Baghapurana Moga Road, SH-16, Village Gill, Tehsil Baghapurana","pin_code":"142038","registration_date":"24-Jul-2024","valid_upto":"31-Jan-2029"}'::jsonb;
  v_desc := 'Promoter: Divya Real Estates (Other than Individual). Address: Baghapurana Moga Road, SH-16, Village Gill, Tehsil Baghapurana. PIN: 142038. Valid upto: 31-Jan-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FGS16-PC0263';
  v_meta := '{"district":"Fatehgarh Sahib","promoter":"SANT ENCLAVE (Other than Individual)","address":"VILLAGE CHUNNI KALAN, (H.B. NO. 62) TEHSIL BASSI PATHANA","pin_code":"140406","registration_date":"24-Jul-2024","valid_upto":"16-Nov-2028"}'::jsonb;
  v_desc := 'Promoter: SANT ENCLAVE (Other than Individual). Address: VILLAGE CHUNNI KALAN, (H.B. NO. 62) TEHSIL BASSI PATHANA. PIN: 140406. Valid upto: 16-Nov-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH42-PC0261';
  v_meta := '{"district":"Ludhiana","promoter":"RIPSS INFRASTRUCTURE PVT LTD (Other than Individual)","address":"Village Malakpur HB no. 147 Tehsil & District Ludhiana","pin_code":"142027","registration_date":"19-Jul-2024","valid_upto":"27-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: RIPSS INFRASTRUCTURE PVT LTD (Other than Individual). Address: Village Malakpur HB no. 147 Tehsil & District Ludhiana. PIN: 142027. Valid upto: 27-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1034';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SATISH ESTATE PRIVATE LIMITED (Other than Individual)","address":"HADBAST NO. 05, VILLAGE MAHIWALA","pin_code":"140507","registration_date":"19-Jul-2024","valid_upto":"23-Apr-2029"}'::jsonb;
  v_desc := 'Promoter: SATISH ESTATE PRIVATE LIMITED (Other than Individual). Address: HADBAST NO. 05, VILLAGE MAHIWALA. PIN: 140507. Valid upto: 23-Apr-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MGA54-PR1035';
  v_meta := '{"district":"Moga","promoter":"HEMCHE DEVELOPERS LLP (Other than Individual)","address":"NEAR GURUDWARA DERA BABA MAL SINGH, OLD GHAL KALAN ROAD, MOGA","pin_code":"142001","registration_date":"19-Jul-2024","valid_upto":"01-Feb-2029"}'::jsonb;
  v_desc := 'Promoter: HEMCHE DEVELOPERS LLP (Other than Individual). Address: NEAR GURUDWARA DERA BABA MAL SINGH, OLD GHAL KALAN ROAD, MOGA. PIN: 142001. Valid upto: 01-Feb-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR1032';
  v_meta := '{"district":"Bathinda","promoter":"Homeland Enclave  (Other than Individual)","address":"Homeland Enclave, Goninan Road , Bathinda","pin_code":"151001","registration_date":"19-Jul-2024","valid_upto":"09-Jun-2028"}'::jsonb;
  v_desc := 'Promoter: Homeland Enclave  (Other than Individual). Address: Homeland Enclave, Goninan Road , Bathinda. PIN: 151001. Valid upto: 09-Jun-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PC0236';
  v_meta := '{"district":"Barnala","promoter":"B R DEVELOPERS (Other than Individual)","address":"BARNALA BATHINDA ROAD VPO HANDIAYA","pin_code":"148107","registration_date":"11-Jun-2024","valid_upto":"12-Mar-2028"}'::jsonb;
  v_desc := 'Promoter: B R DEVELOPERS (Other than Individual). Address: BARNALA BATHINDA ROAD VPO HANDIAYA. PIN: 148107. Valid upto: 12-Mar-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0234';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KDM REALTORS (Other than Individual)","address":"VILL. RAMGARH BHUDDA,, TEH. ZIRAKPUR,","pin_code":"140603","registration_date":"11-Jun-2024","valid_upto":"17-Jan-2028"}'::jsonb;
  v_desc := 'Promoter: KDM REALTORS (Other than Individual). Address: VILL. RAMGARH BHUDDA,, TEH. ZIRAKPUR,. PIN: 140603. Valid upto: 17-Jan-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR1033';
  v_meta := '{"district":"Bathinda","promoter":"SURYA BUILD INNOVATORS (Other than Individual)","address":"near aroma marriage palace","pin_code":"151001","registration_date":"19-Jul-2024","valid_upto":"04-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: SURYA BUILD INNOVATORS (Other than Individual). Address: near aroma marriage palace. PIN: 151001. Valid upto: 04-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZR22-PC0264';
  v_meta := '{"district":"Firozpur","promoter":"Chhabeella Emporio Plaza (Other than Individual)","address":"Village Satyewala H. B No. 114, Tehsil & Distt. Ferozpur","pin_code":"152001","registration_date":"22-Jul-2024","valid_upto":"30-Jan-2029"}'::jsonb;
  v_desc := 'Promoter: Chhabeella Emporio Plaza (Other than Individual). Address: Village Satyewala H. B No. 114, Tehsil & Distt. Ferozpur. PIN: 152001. Valid upto: 30-Jan-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0103';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"BEE GEE BUILTECH (Other than Individual)","address":"SECTOR-126, VILLAGE DESUMAJRA, KHARAR, MOHALI","pin_code":"140301","website":"beegeebuildtech.com","registration_date":"19-Sep-2017","valid_upto":"31-Dec-2026"}'::jsonb;
  v_desc := 'Promoter: BEE GEE BUILTECH (Other than Individual). Address: SECTOR-126, VILLAGE DESUMAJRA, KHARAR, MOHALI. PIN: 140301. Valid upto: 31-Dec-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0974';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"NEXXON INDUSTRIAL CITY  (Other than Individual)","address":"VILLAGE KAULI MAZRA, LALRU, TEHSIL DERABASSI","pin_code":"140501","registration_date":"19-Jun-2024","valid_upto":"22-Oct-2028"}'::jsonb;
  v_desc := 'Promoter: NEXXON INDUSTRIAL CITY  (Other than Individual). Address: VILLAGE KAULI MAZRA, LALRU, TEHSIL DERABASSI. PIN: 140501. Valid upto: 22-Oct-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1029';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"RS ENTERPRISES (Other than Individual)","address":"Hadbast No. 280, Village Banur","pin_code":"140601","registration_date":"17-Jul-2024","valid_upto":"30-May-2029"}'::jsonb;
  v_desc := 'Promoter: RS ENTERPRISES (Other than Individual). Address: Hadbast No. 280, Village Banur. PIN: 140601. Valid upto: 30-May-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0259';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SABHYA INFRASTRUCTURE LIMITED (Other than Individual)","address":"VILLAGE BISHANPURA, HB No 44, ZIRAKPUR","pin_code":"140603","registration_date":"17-Jul-2024","valid_upto":"17-Jul-2028"}'::jsonb;
  v_desc := 'Promoter: SABHYA INFRASTRUCTURE LIMITED (Other than Individual). Address: VILLAGE BISHANPURA, HB No 44, ZIRAKPUR. PIN: 140603. Valid upto: 17-Jul-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT39-PC0256';
  v_meta := '{"district":"Kapurthala","promoter":"Saffron Infraprojects India Limited (Other than Individual)","address":"Village Wadala Kalan, H.B. No. 193","pin_code":"144603","registration_date":"17-Jul-2024","valid_upto":"04-Apr-2029"}'::jsonb;
  v_desc := 'Promoter: Saffron Infraprojects India Limited (Other than Individual). Address: Village Wadala Kalan, H.B. No. 193. PIN: 144603. Valid upto: 04-Apr-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR1002';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe, New Chandigarh, Mullanpur","pin_code":"141003","website":"www.omaxe.com","registration_date":"18-Jul-2024","valid_upto":"30-Apr-2029"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe, New Chandigarh, Mullanpur. PIN: 141003. Valid upto: 30-Apr-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR1004';
  v_meta := '{"district":"Ludhiana","promoter":"OMAXE LIMITED (Other than Individual)","address":"The Palace  Omaxe Royal Residency,, Pakhowal Road, Ludhiana","pin_code":"142022","website":"www.omaxe.com","registration_date":"18-Jul-2024","valid_upto":"31-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: OMAXE LIMITED (Other than Individual). Address: The Palace  Omaxe Royal Residency,, Pakhowal Road, Ludhiana. PIN: 142022. Valid upto: 31-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH42-PR1027';
  v_meta := '{"district":"Ludhiana","promoter":"Ayali Developers & Colonisers Pvt. Ltd (Other than Individual)","address":"Village Birmi Hb No. 146 Mullanpur dakha, distt. Ludhiana","pin_code":"141102","registration_date":"17-Jul-2024","valid_upto":"11-Dec-2028"}'::jsonb;
  v_desc := 'Promoter: Ayali Developers & Colonisers Pvt. Ltd (Other than Individual). Address: Village Birmi Hb No. 146 Mullanpur dakha, distt. Ludhiana. PIN: 141102. Valid upto: 11-Dec-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL35-PR1005';
  v_meta := '{"district":"Jalandhar","promoter":"Highlander Estate Developers & Builders (Other than Individual)","address":"Village Khurampur(H.B. No. 51), Village Shahpur(H.B. No. 50), Tehsil Nakodar(Mehatpur)","pin_code":"144041","registration_date":"16-Jul-2024","valid_upto":"12-Feb-2029"}'::jsonb;
  v_desc := 'Promoter: Highlander Estate Developers & Builders (Other than Individual). Address: Village Khurampur(H.B. No. 51), Village Shahpur(H.B. No. 50), Tehsil Nakodar(Mehatpur). PIN: 144041. Valid upto: 12-Feb-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL20-PR1015';
  v_meta := '{"district":"Fazilka","promoter":"Kartikay  Sawansukha (Individual)","address":"Near Royal City, Resident Colony, Village Rampura","pin_code":"152123","registration_date":"15-Jul-2024","valid_upto":"30-Apr-2029"}'::jsonb;
  v_desc := 'Promoter: Kartikay  Sawansukha (Individual). Address: Near Royal City, Resident Colony, Village Rampura. PIN: 152123. Valid upto: 30-Apr-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1006';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AG Realty (Other than Individual)","address":"Sector 66-A , SAS Nagar","pin_code":"160059","registration_date":"16-Jul-2024","valid_upto":"30-Dec-2030"}'::jsonb;
  v_desc := 'Promoter: AG Realty (Other than Individual). Address: Sector 66-A , SAS Nagar. PIN: 160059. Valid upto: 30-Dec-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR1019';
  v_meta := '{"district":"Bathinda","promoter":"Arjun Prime Builders and Promoters (Other than Individual)","address":"Arjun enclave , Multiana Road","pin_code":"151001","registration_date":"16-Jul-2024","valid_upto":"01-Apr-2029"}'::jsonb;
  v_desc := 'Promoter: Arjun Prime Builders and Promoters (Other than Individual). Address: Arjun enclave , Multiana Road. PIN: 151001. Valid upto: 01-Apr-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH48-PC0258';
  v_meta := '{"district":"Ludhiana","promoter":"INDERJIT   SINGH (Individual)","address":"VILLAGE BONDLI (HADBAST NO. 107), TEHSIL SAMRALA","pin_code":"141114","registration_date":"16-Jul-2024","valid_upto":"18-Jan-2029"}'::jsonb;
  v_desc := 'Promoter: INDERJIT   SINGH (Individual). Address: VILLAGE BONDLI (HADBAST NO. 107), TEHSIL SAMRALA. PIN: 141114. Valid upto: 18-Jan-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR1022';
  v_meta := '{"district":"Ludhiana","promoter":"LUDHIANA GREEN LAND DEVELOPERS LLP (Other than Individual)","address":"Villages Threeke and Jhande, Ludhiana West","pin_code":"141008","registration_date":"16-Jul-2024","valid_upto":"13-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: LUDHIANA GREEN LAND DEVELOPERS LLP (Other than Individual). Address: Villages Threeke and Jhande, Ludhiana West. PIN: 141008. Valid upto: 13-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL20-PR1024';
  v_meta := '{"district":"Fazilka","promoter":"Aashiyana Enclave (Other than Individual)","address":"Dera Sacha Sauda Road, Near Radha Soami Satsang Bhawan No. 3, Village Painchanwali","pin_code":"152123","registration_date":"16-Jul-2024","valid_upto":"31-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: Aashiyana Enclave (Other than Individual). Address: Dera Sacha Sauda Road, Near Radha Soami Satsang Bhawan No. 3, Village Painchanwali. PIN: 152123. Valid upto: 31-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PM0172';
  v_meta := '{"district":"Barnala","promoter":"SHREE BALAJI DEVELOPERS (Other than Individual)","address":"Hadbast no -64, Village Tapa -A,, Tehsil Tapa","pin_code":"148108","registration_date":"16-Jul-2024","valid_upto":"20-Jul-2028"}'::jsonb;
  v_desc := 'Promoter: SHREE BALAJI DEVELOPERS (Other than Individual). Address: Hadbast no -64, Village Tapa -A,, Tehsil Tapa. PIN: 148108. Valid upto: 20-Jul-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1016';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SRI SAI LAND BUILDERS AND DEVELOPERS LLP (Other than Individual)","address":"Aero Business Park, Village Manakpur kallar","pin_code":"140306","registration_date":"16-Jul-2024","valid_upto":"30-May-2029"}'::jsonb;
  v_desc := 'Promoter: SRI SAI LAND BUILDERS AND DEVELOPERS LLP (Other than Individual). Address: Aero Business Park, Village Manakpur kallar. PIN: 140306. Valid upto: 30-May-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR1020';
  v_meta := '{"district":"Patiala","promoter":"Metro Developers And Builders (Other than Individual)","address":"Village Bakshiwala (H.B No. 353), Teh & Dist. Patiala","pin_code":"147001","registration_date":"16-Jul-2024","valid_upto":"27-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: Metro Developers And Builders (Other than Individual). Address: Village Bakshiwala (H.B No. 353), Teh & Dist. Patiala. PIN: 147001. Valid upto: 27-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH43-PC0250';
  v_meta := '{"district":"Ludhiana","promoter":"Janta Builders (Other than Individual)","address":"Central Plaza Khana, Adjoining Sai Mandir, Khanna-Amloh Road,, Village Galwadi, Khanna","pin_code":"141401","registration_date":"20-Jun-2024","valid_upto":"27-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: Janta Builders (Other than Individual). Address: Central Plaza Khana, Adjoining Sai Mandir, Khanna-Amloh Road,, Village Galwadi, Khanna. PIN: 141401. Valid upto: 27-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL19-PR1014';
  v_meta := '{"district":"Fazilka","promoter":"EMESCO REALITY  (Other than Individual)","address":"Gurdyal Nagar, Sitto Road,, Abohar","pin_code":"152116","registration_date":"16-Jul-2024","valid_upto":"25-Apr-2028"}'::jsonb;
  v_desc := 'Promoter: EMESCO REALITY  (Other than Individual). Address: Gurdyal Nagar, Sitto Road,, Abohar. PIN: 152116. Valid upto: 25-Apr-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR1009';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"WAVE ESTATE, sector-85","pin_code":"143308","registration_date":"16-Jul-2024","valid_upto":"31-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: WAVE ESTATE, sector-85. PIN: 143308. Valid upto: 31-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0243';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Manish  Bansal (Individual)","address":"VILL JANDPUR, HARBAST NO 28, TEHSIL KHARAR","pin_code":"140301","registration_date":"12-Jun-2024","valid_upto":"21-Feb-2029"}'::jsonb;
  v_desc := 'Promoter: Manish  Bansal (Individual). Address: VILL JANDPUR, HARBAST NO 28, TEHSIL KHARAR. PIN: 140301. Valid upto: 21-Feb-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0255';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ALTUS SPACE BUILDERS PRIVATE LIMITED (Other than Individual)","address":"SECTOR 15, VILLAGE SAINIMAJRA","pin_code":"140901","registration_date":"15-Jul-2024","valid_upto":"07-Jun-2029"}'::jsonb;
  v_desc := 'Promoter: ALTUS SPACE BUILDERS PRIVATE LIMITED (Other than Individual). Address: SECTOR 15, VILLAGE SAINIMAJRA. PIN: 140901. Valid upto: 07-Jun-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR1001';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Manglam Infra  (Other than Individual)","address":"VILLAGE DYALPURA, MC ZIRAKPUR","pin_code":"140603","registration_date":"02-Jul-2024","valid_upto":"31-Dec-2028"}'::jsonb;
  v_desc := 'Promoter: Manglam Infra  (Other than Individual). Address: VILLAGE DYALPURA, MC ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0163';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"N K SHARMA ENTERPRISES PVT LTD (Other than Individual)","address":"GAZIPUR ROAD, ZIRAKPUR","pin_code":"140603","registration_date":"27-Oct-2017","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: N K SHARMA ENTERPRISES PVT LTD (Other than Individual). Address: GAZIPUR ROAD, ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR0965';
  v_meta := '{"district":"Bathinda","promoter":"Dost Developers and colonizers LLP (Other than Individual)","address":"Ring Road ,","pin_code":"151001","registration_date":"12-Jun-2024","valid_upto":"01-Apr-2028"}'::jsonb;
  v_desc := 'Promoter: Dost Developers and colonizers LLP (Other than Individual). Address: Ring Road ,. PIN: 151001. Valid upto: 01-Apr-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT39-PR1000';
  v_meta := '{"district":"Kapurthala","promoter":"KIRAT LAND DEVELOPERS (Other than Individual)","address":"Kirat Enclave, Village Kapurthala West","pin_code":"144601","registration_date":"03-Jul-2024","valid_upto":"19-Dec-2027"}'::jsonb;
  v_desc := 'Promoter: KIRAT LAND DEVELOPERS (Other than Individual). Address: Kirat Enclave, Village Kapurthala West. PIN: 144601. Valid upto: 19-Dec-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PC0254';
  v_meta := '{"district":"Bathinda","promoter":"PADMA DEVELOPERS (Other than Individual)","address":"DABWALI ROAD, NEAR AIIMS HOSPITAL","pin_code":"151001","registration_date":"08-Jul-2024","valid_upto":"31-Jan-2026"}'::jsonb;
  v_desc := 'Promoter: PADMA DEVELOPERS (Other than Individual). Address: DABWALI ROAD, NEAR AIIMS HOSPITAL. PIN: 151001. Valid upto: 31-Jan-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR0987';
  v_meta := '{"district":"Bathinda","promoter":"Aggarwal Builders & Promoters (Other than Individual)","address":"Ring Road 2","pin_code":"151001","registration_date":"18-Jun-2024","valid_upto":"05-Sep-2028"}'::jsonb;
  v_desc := 'Promoter: Aggarwal Builders & Promoters (Other than Individual). Address: Ring Road 2. PIN: 151001. Valid upto: 05-Sep-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0996';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ABS Infra Developers (Other than Individual)","address":"Village Singhpura,HB No 43 Zirakpur, Dist SAS Nagar","pin_code":"140063","registration_date":"01-Jul-2024","valid_upto":"04-Jan-2029"}'::jsonb;
  v_desc := 'Promoter: ABS Infra Developers (Other than Individual). Address: Village Singhpura,HB No 43 Zirakpur, Dist SAS Nagar. PIN: 140063. Valid upto: 04-Jan-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PC0252';
  v_meta := '{"district":"Bathinda","promoter":"PREMIERE INFRA HOMES LLP (Other than Individual)","address":"BHUCHO MANDI (BHUCHO KALAN)","pin_code":"151101","registration_date":"01-Jul-2024","valid_upto":"29-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: PREMIERE INFRA HOMES LLP (Other than Individual). Address: BHUCHO MANDI (BHUCHO KALAN). PIN: 151101. Valid upto: 29-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0976';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KRISHNA BUILDERS (Other than Individual)","address":"VILLAGE : NABHA HIGH GROUND ROAD, ZIRAKPUR","pin_code":"140603","registration_date":"12-Jun-2024","valid_upto":"31-Dec-2028"}'::jsonb;
  v_desc := 'Promoter: KRISHNA BUILDERS (Other than Individual). Address: VILLAGE : NABHA HIGH GROUND ROAD, ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR0972';
  v_meta := '{"district":"Ludhiana","promoter":"Vadhera Apartments Private Limited (Other than Individual)","address":"H.B No. 153, Village Ayali Khurd, Hambran Road, Tehsil & Distt ludhiana","pin_code":"141001","registration_date":"02-Jul-2024","valid_upto":"30-Sep-2028"}'::jsonb;
  v_desc := 'Promoter: Vadhera Apartments Private Limited (Other than Individual). Address: H.B No. 153, Village Ayali Khurd, Hambran Road, Tehsil & Distt ludhiana. PIN: 141001. Valid upto: 30-Sep-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR73-PC0253';
  v_meta := '{"district":"Sangrur","promoter":"PVS Builders and Colonizers Pvt. Ltd. (Other than Individual)","address":"Pawan Enclave, Dhuri Road, Malerkotla","pin_code":"148023","registration_date":"02-Jul-2024","valid_upto":"31-Mar-2027"}'::jsonb;
  v_desc := 'Promoter: PVS Builders and Colonizers Pvt. Ltd. (Other than Individual). Address: Pawan Enclave, Dhuri Road, Malerkotla. PIN: 148023. Valid upto: 31-Mar-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0978';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Manglam Infra  (Other than Individual)","address":"Village Dayalpura MC Zirakpur","pin_code":"140603","registration_date":"13-Jun-2024","valid_upto":"31-Jan-2028"}'::jsonb;
  v_desc := 'Promoter: Manglam Infra  (Other than Individual). Address: Village Dayalpura MC Zirakpur. PIN: 140603. Valid upto: 31-Jan-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL65-PI0023';
  v_meta := '{"district":"Patiala","promoter":"ANM BUILDERS LLP (Other than Individual)","address":"Village Tepla, Tehsil Rajpura, Distt. Patiala","pin_code":"140417","registration_date":"13-Jun-2024","valid_upto":"31-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: ANM BUILDERS LLP (Other than Individual). Address: Village Tepla, Tehsil Rajpura, Distt. Patiala. PIN: 140417. Valid upto: 31-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MNS49-PR0970';
  v_meta := '{"district":"Mansa","promoter":"Aggarwal Enclave (Other than Individual)","address":"Bhikhi Road Budhlada, Budhlada","pin_code":"151502","registration_date":"13-Jun-2024","valid_upto":"28-Jan-2029"}'::jsonb;
  v_desc := 'Promoter: Aggarwal Enclave (Other than Individual). Address: Bhikhi Road Budhlada, Budhlada. PIN: 151502. Valid upto: 28-Jan-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR0997';
  v_meta := '{"district":"Bathinda","promoter":"Shri Krishna Developers (Other than Individual)","address":"Near Virat Green Colony, Multana Road Bathinda,","pin_code":"151001","registration_date":"01-Jul-2024","valid_upto":"01-Feb-2027"}'::jsonb;
  v_desc := 'Promoter: Shri Krishna Developers (Other than Individual). Address: Near Virat Green Colony, Multana Road Bathinda,. PIN: 151001. Valid upto: 01-Feb-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MKT57-PR0961';
  v_meta := '{"district":"Muktsar","promoter":"SHIVA DEVELOPERS (Other than Individual)","address":"SHEKHU ROAD, NEAR GURU TEG BAHADUR SCHOOL","pin_code":"152107","registration_date":"01-Jul-2024","valid_upto":"05-Jul-2028"}'::jsonb;
  v_desc := 'Promoter: SHIVA DEVELOPERS (Other than Individual). Address: SHEKHU ROAD, NEAR GURU TEG BAHADUR SCHOOL. PIN: 152107. Valid upto: 05-Jul-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0239';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"G&G BUILDERS & PROMOTERS (Other than Individual)","address":"VILLAGE DHAKOLI, ZIRAKPUR","pin_code":"160104","registration_date":"11-Jun-2024","valid_upto":"30-Jun-2027"}'::jsonb;
  v_desc := 'Promoter: G&G BUILDERS & PROMOTERS (Other than Individual). Address: VILLAGE DHAKOLI, ZIRAKPUR. PIN: 160104. Valid upto: 30-Jun-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PR0956';
  v_meta := '{"district":"Barnala","promoter":"BARNALA LAND PROMOTERS (Other than Individual)","address":"Village Patti Sekhwan Hadbast No. 42, Sub Tehsil of Barnala Distt Barnala","pin_code":"148101","registration_date":"11-Jun-2024","valid_upto":"03-Oct-2028"}'::jsonb;
  v_desc := 'Promoter: BARNALA LAND PROMOTERS (Other than Individual). Address: Village Patti Sekhwan Hadbast No. 42, Sub Tehsil of Barnala Distt Barnala. PIN: 148101. Valid upto: 03-Oct-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PC0247';
  v_meta := '{"district":"Bathinda","promoter":"Pioneer Developers (Other than Individual)","address":"Adjoining D-Mart, Mansa Road","pin_code":"151001","registration_date":"21-Jun-2024","valid_upto":"14-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: Pioneer Developers (Other than Individual). Address: Adjoining D-Mart, Mansa Road. PIN: 151001. Valid upto: 14-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0993';
  v_meta := '{"district":"Ludhiana","promoter":"SBP HOUSING PRIVATE LIMITED (Other than Individual)","address":"Village Birmi, Tehsil Mullanpur Dakha","pin_code":"141102","registration_date":"24-Jun-2024","valid_upto":"27-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: SBP HOUSING PRIVATE LIMITED (Other than Individual). Address: Village Birmi, Tehsil Mullanpur Dakha. PIN: 141102. Valid upto: 27-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0990';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"LUXE LANES DEVELOPERS (Other than Individual)","address":"VILLAGE NABHA, ZIRAKPUR","pin_code":"140603","registration_date":"24-Jun-2024","valid_upto":"11-Feb-2029"}'::jsonb;
  v_desc := 'Promoter: LUXE LANES DEVELOPERS (Other than Individual). Address: VILLAGE NABHA, ZIRAKPUR. PIN: 140603. Valid upto: 11-Feb-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0995';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Unistar Builders Pvt Ltd (Other than Individual)","address":"Site No. 4, GH, Sector 90-91(JLPL)","pin_code":"140307","website":"www.jubileegroup.in","registration_date":"21-Jun-2024","valid_upto":"31-Dec-2028"}'::jsonb;
  v_desc := 'Promoter: Unistar Builders Pvt Ltd (Other than Individual). Address: Site No. 4, GH, Sector 90-91(JLPL). PIN: 140307. Valid upto: 31-Dec-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0999';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sbp shinestar private limited (Other than Individual)","address":"Village dyalpura, Hadbast no. 289 Sub tehsil Zirakpur","pin_code":"140603","registration_date":"21-Jun-2024","valid_upto":"31-Jan-2031"}'::jsonb;
  v_desc := 'Promoter: Sbp shinestar private limited (Other than Individual). Address: Village dyalpura, Hadbast no. 289 Sub tehsil Zirakpur. PIN: 140603. Valid upto: 31-Jan-2031';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PC0231';
  v_meta := '{"district":"Patiala","promoter":"JSG ROYAL INFRA LLP (Other than Individual)","address":"VILLAGE MULTANPUR (H B NO 103), TEHSIL RAJPURA","pin_code":"140401","registration_date":"11-Jun-2024","valid_upto":"01-Oct-2028"}'::jsonb;
  v_desc := 'Promoter: JSG ROYAL INFRA LLP (Other than Individual). Address: VILLAGE MULTANPUR (H B NO 103), TEHSIL RAJPURA. PIN: 140401. Valid upto: 01-Oct-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PC0246';
  v_meta := '{"district":"Barnala","promoter":"TRUE PROMOTERS AND DEVELOPERS (Other than Individual)","address":"VILLAGE HANDIAYA B, HADBAST NUMBER 58 ,BARNALA","pin_code":"148101","registration_date":"13-Jun-2024","valid_upto":"01-Jan-2028"}'::jsonb;
  v_desc := 'Promoter: TRUE PROMOTERS AND DEVELOPERS (Other than Individual). Address: VILLAGE HANDIAYA B, HADBAST NUMBER 58 ,BARNALA. PIN: 148101. Valid upto: 01-Jan-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0971';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Manglam Infra  (Other than Individual)","address":"HB No. 289, Village Dayalpura, Zirakpur","pin_code":"140603","registration_date":"13-Jun-2024","valid_upto":"31-Jan-2028"}'::jsonb;
  v_desc := 'Promoter: Manglam Infra  (Other than Individual). Address: HB No. 289, Village Dayalpura, Zirakpur. PIN: 140603. Valid upto: 31-Jan-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0988';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AMARJIT  SINGH (Individual)","address":"VILLAGE SHEKHPURA KHURD TESIL DERABASSI SAS NAGAR","pin_code":"140507","registration_date":"21-Jun-2024","valid_upto":"17-Sep-2028"}'::jsonb;
  v_desc := 'Promoter: AMARJIT  SINGH (Individual). Address: VILLAGE SHEKHPURA KHURD TESIL DERABASSI SAS NAGAR. PIN: 140507. Valid upto: 17-Sep-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0242';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"BANSAL INFRATECH (Other than Individual)","address":"VILL KHANPUR, HADBAST NO 183,, TEHSIL KHARAR","pin_code":"140603","registration_date":"18-Jun-2024","valid_upto":"10-Jan-2029"}'::jsonb;
  v_desc := 'Promoter: BANSAL INFRATECH (Other than Individual). Address: VILL KHANPUR, HADBAST NO 183,, TEHSIL KHARAR. PIN: 140603. Valid upto: 10-Jan-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR76-PC0241';
  v_meta := '{"district":"Sangrur","promoter":"Sh. Mandeep  Singh Turna (Individual)","address":"Hadbast No. 129, Village Khanauri Kalan, Tehsil Moonak","pin_code":"148027","registration_date":"18-Jun-2024","valid_upto":"31-Dec-2027"}'::jsonb;
  v_desc := 'Promoter: Sh. Mandeep  Singh Turna (Individual). Address: Hadbast No. 129, Village Khanauri Kalan, Tehsil Moonak. PIN: 148027. Valid upto: 31-Dec-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL19-PR0992';
  v_meta := '{"district":"Fazilka","promoter":"Ganpati Developers  (Other than Individual)","address":"Khandhwala Road Byepass To Hanumangarh Road Byepass, Abohar","pin_code":"152116","registration_date":"19-Jun-2024","valid_upto":"14-Jan-2029"}'::jsonb;
  v_desc := 'Promoter: Ganpati Developers  (Other than Individual). Address: Khandhwala Road Byepass To Hanumangarh Road Byepass, Abohar. PIN: 152116. Valid upto: 14-Jan-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0968';
  v_meta := '{"district":"Ludhiana","promoter":"ELDECO MAKSAD PROPERTIES LIMITED (Other than Individual)","address":"VIVIANA PROJECT, Village Lalton Kalan 1& 2","pin_code":"142022","website":"www.eldecogroup.com","registration_date":"20-Jun-2024","valid_upto":"29-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: ELDECO MAKSAD PROPERTIES LIMITED (Other than Individual). Address: VIVIANA PROJECT, Village Lalton Kalan 1& 2. PIN: 142022. Valid upto: 29-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0986';
  v_meta := '{"district":"Patiala","promoter":"Vistara Buildtech (Other than Individual)","address":"Village Karala, Tehsil Banur & Dist. SAS Nagar, Punjab","pin_code":"140601","registration_date":"14-Jun-2024","valid_upto":"30-Jan-2029"}'::jsonb;
  v_desc := 'Promoter: Vistara Buildtech (Other than Individual). Address: Village Karala, Tehsil Banur & Dist. SAS Nagar, Punjab. PIN: 140601. Valid upto: 30-Jan-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0245';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Village Sainimajra, Tehsil Kharar","pin_code":"140301","website":"www.omaxe.com","registration_date":"13-Jun-2024","valid_upto":"09-Apr-2029"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Village Sainimajra, Tehsil Kharar. PIN: 140301. Valid upto: 09-Apr-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0233';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"RIPSS INFRASTRUCTURE PVT LTD (Other than Individual)","address":"Sector 66-A , SAS Nagar","pin_code":"160062","registration_date":"07-Jun-2024","valid_upto":"08-Mar-2028"}'::jsonb;
  v_desc := 'Promoter: RIPSS INFRASTRUCTURE PVT LTD (Other than Individual). Address: Sector 66-A , SAS Nagar. PIN: 160062. Valid upto: 08-Mar-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0959';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Velora Infratech (Other than Individual)","address":"Village Banur, Hadbast No. 280,, Tehsil Banur, Distt. S.AS. Nagar, Mohali","pin_code":"140601","registration_date":"07-Jun-2024","valid_upto":"05-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: Velora Infratech (Other than Individual). Address: Village Banur, Hadbast No. 280,, Tehsil Banur, Distt. S.AS. Nagar, Mohali. PIN: 140601. Valid upto: 05-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0244';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"DLF Home Developers Limited (Other than Individual)","address":"Hyde Park Estate, New Chandigarh, Mullanpur","pin_code":"140901","registration_date":"12-Jun-2024","valid_upto":"30-Sep-2026"}'::jsonb;
  v_desc := 'Promoter: DLF Home Developers Limited (Other than Individual). Address: Hyde Park Estate, New Chandigarh, Mullanpur. PIN: 140901. Valid upto: 30-Sep-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0950';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"THE FIRE STONE ASSETS  (Other than Individual)","address":"VILLAGE BANUR, HADBAST NO. 280, DISTT SAS NAGAR MOHALI","pin_code":"140601","registration_date":"11-Jun-2024","valid_upto":"24-Jan-2029"}'::jsonb;
  v_desc := 'Promoter: THE FIRE STONE ASSETS  (Other than Individual). Address: VILLAGE BANUR, HADBAST NO. 280, DISTT SAS NAGAR MOHALI. PIN: 140601. Valid upto: 24-Jan-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR75-PC0235';
  v_meta := '{"district":"Sangrur","promoter":"We Five Land Developers (Other than Individual)","address":"VILLAGE SEKHOPUR SANGRAM, DHURI ROAD MALERKOTLA","pin_code":"148023","registration_date":"11-Jun-2024","valid_upto":"31-Dec-2025"}'::jsonb;
  v_desc := 'Promoter: We Five Land Developers (Other than Individual). Address: VILLAGE SEKHOPUR SANGRAM, DHURI ROAD MALERKOTLA. PIN: 148023. Valid upto: 31-Dec-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PC0237';
  v_meta := '{"district":"Bathinda","promoter":"Sheesh Mahal Developers Ltd (Other than Individual)","address":"Dabwali Road, Bathinda,, Punjab","pin_code":"151001","registration_date":"11-Jun-2024"}'::jsonb;
  v_desc := 'Promoter: Sheesh Mahal Developers Ltd (Other than Individual). Address: Dabwali Road, Bathinda,, Punjab. PIN: 151001';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0966';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"N K SHARMA ENTERPRISES PVT LTD (Other than Individual)","address":"Village Gazipur, Zirakpur, Zirakpur","pin_code":"140603","registration_date":"12-Jun-2024","valid_upto":"30-Sep-2028"}'::jsonb;
  v_desc := 'Promoter: N K SHARMA ENTERPRISES PVT LTD (Other than Individual). Address: Village Gazipur, Zirakpur, Zirakpur. PIN: 140603. Valid upto: 30-Sep-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0232';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"VSS Infra Developers (Other than Individual)","address":"VILLAGE BHANKHARPUR, TEH DERABASSI","pin_code":"140201","registration_date":"07-Jun-2024","valid_upto":"17-Aug-2028"}'::jsonb;
  v_desc := 'Promoter: VSS Infra Developers (Other than Individual). Address: VILLAGE BHANKHARPUR, TEH DERABASSI. PIN: 140201. Valid upto: 17-Aug-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0957';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PUMA REALTORS PRIVATE LIMITED (Other than Individual)","address":"Sector 99,, District SAS Nagar(Mohali),","pin_code":"140306","website":"www.onecity.in","registration_date":"07-Jun-2024"}'::jsonb;
  v_desc := 'Promoter: PUMA REALTORS PRIVATE LIMITED (Other than Individual). Address: Sector 99,, District SAS Nagar(Mohali),. PIN: 140306';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0958';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PUMA REALTORS PRIVATE LIMITED (Other than Individual)","address":"Sector 98,, District SAS Nagar(Mohali),","pin_code":"140308","website":"www.onecity.in","registration_date":"07-Jun-2024"}'::jsonb;
  v_desc := 'Promoter: PUMA REALTORS PRIVATE LIMITED (Other than Individual). Address: Sector 98,, District SAS Nagar(Mohali),. PIN: 140308';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT40-PR0963';
  v_meta := '{"district":"Kapurthala","promoter":"GURU AMAR DASS ESTATES (Other than Individual)","address":"Village Maheru H.B.No.84, Tehsil Phagwara","pin_code":"144411","registration_date":"12-Jun-2024","valid_upto":"20-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: GURU AMAR DASS ESTATES (Other than Individual). Address: Village Maheru H.B.No.84, Tehsil Phagwara. PIN: 144411. Valid upto: 20-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0159';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"VN SHARMA BUILDERS PVRIVATE LIMITED (Other than Individual)","address":"VIP ROAD, ZIRAKPUR","pin_code":"140603","registration_date":"16-Oct-2017","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: VN SHARMA BUILDERS PVRIVATE LIMITED (Other than Individual). Address: VIP ROAD, ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR0980';
  v_meta := '{"district":"Bathinda","promoter":"VRC THAKUR DEVELOPERS PRIVATE LIMITED (Other than Individual)","address":"Dabwali Road, Bathinda","pin_code":"151001","registration_date":"12-Jun-2024","valid_upto":"20-Oct-2026"}'::jsonb;
  v_desc := 'Promoter: VRC THAKUR DEVELOPERS PRIVATE LIMITED (Other than Individual). Address: Dabwali Road, Bathinda. PIN: 151001. Valid upto: 20-Oct-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PM0169';
  v_meta := '{"district":"Jalandhar","promoter":"United Builders (Other than Individual)","address":"Mexmon Palm City, Village Qadianwali, 66Ft. Road","pin_code":"144020","registration_date":"07-Jun-2024","valid_upto":"31-Aug-2028"}'::jsonb;
  v_desc := 'Promoter: United Builders (Other than Individual). Address: Mexmon Palm City, Village Qadianwali, 66Ft. Road. PIN: 144020. Valid upto: 31-Aug-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR0955';
  v_meta := '{"district":"Bathinda","promoter":"Paris Infra (Other than Individual)","address":"Village Patti Jhutti, Ring Road Phase 2, H.B No. 70, Distt. Bathinda","pin_code":"151001","registration_date":"06-Jun-2024","valid_upto":"13-Sep-2028"}'::jsonb;
  v_desc := 'Promoter: Paris Infra (Other than Individual). Address: Village Patti Jhutti, Ring Road Phase 2, H.B No. 70, Distt. Bathinda. PIN: 151001. Valid upto: 13-Sep-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PR0947';
  v_meta := '{"district":"Barnala","promoter":"GANPATI BUILDERS AND DEVELOPERS  (Other than Individual)","address":"OPP.D-MART,, HANDIAYA ROAD","pin_code":"148101","registration_date":"04-Jun-2024","valid_upto":"25-Sep-2027"}'::jsonb;
  v_desc := 'Promoter: GANPATI BUILDERS AND DEVELOPERS  (Other than Individual). Address: OPP.D-MART,, HANDIAYA ROAD. PIN: 148101. Valid upto: 25-Sep-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0225';
  v_meta := '{"district":"Ludhiana","promoter":"Vadhera Apartments Private Limited (Other than Individual)","address":"Village Ayali Khurd, H.B. No. 153,","pin_code":"142027","registration_date":"04-Jun-2024","valid_upto":"27-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: Vadhera Apartments Private Limited (Other than Individual). Address: Village Ayali Khurd, H.B. No. 153,. PIN: 142027. Valid upto: 27-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0941';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MU BUILDERS AND PROMOTERS (Other than Individual)","address":"VILLAGE RAMGARH BHUDA, ZIRAKPUR","pin_code":"140603","registration_date":"30-May-2024","valid_upto":"11-Sep-2028"}'::jsonb;
  v_desc := 'Promoter: MU BUILDERS AND PROMOTERS (Other than Individual). Address: VILLAGE RAMGARH BHUDA, ZIRAKPUR. PIN: 140603. Valid upto: 11-Sep-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0946';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"BJBF DEVELOPERS & BUILDERS PVT LTD (Other than Individual)","address":"At village Santemajra, hadbast no. 186","pin_code":"140307","registration_date":"03-Jun-2024","valid_upto":"13-Dec-2028"}'::jsonb;
  v_desc := 'Promoter: BJBF DEVELOPERS & BUILDERS PVT LTD (Other than Individual). Address: At village Santemajra, hadbast no. 186. PIN: 140307. Valid upto: 13-Dec-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0954';
  v_meta := '{"district":"Ludhiana","promoter":"RIPSS INFRASTRUCTURE PVT LTD (Other than Individual)","address":"VILLAGE BHATTIAN (HADBAST NO. 89), VILLAGE RAJPURA URF HUSAINPURA (HADBAST NO. 99),, VILLAGE KADIAN (HADBAST NO. 91)","pin_code":"143517","registration_date":"06-Jun-2024","valid_upto":"24-Nov-2028"}'::jsonb;
  v_desc := 'Promoter: RIPSS INFRASTRUCTURE PVT LTD (Other than Individual). Address: VILLAGE BHATTIAN (HADBAST NO. 89), VILLAGE RAJPURA URF HUSAINPURA (HADBAST NO. 99),, VILLAGE KADIAN (HADBAST NO. 91). PIN: 143517. Valid upto: 24-Nov-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0229';
  v_meta := '{"district":"Ludhiana","promoter":"Rauni Developers Private Limited (Other than Individual)","address":"Urban Estate, Phase I, Opp. Labour Colony, Dugri Road","pin_code":"141002","registration_date":"06-Jun-2024","valid_upto":"30-Dec-2027"}'::jsonb;
  v_desc := 'Promoter: Rauni Developers Private Limited (Other than Individual). Address: Urban Estate, Phase I, Opp. Labour Colony, Dugri Road. PIN: 141002. Valid upto: 30-Dec-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0952';
  v_meta := '{"district":"Jalandhar","promoter":"SOHANA RESIDENCY (Other than Individual)","address":"VILLAGE PHOLRIWAL, HB NO. 252 TEHSIL JALANDHAR","pin_code":"144022","registration_date":"06-May-2024","valid_upto":"19-Aug-2028"}'::jsonb;
  v_desc := 'Promoter: SOHANA RESIDENCY (Other than Individual). Address: VILLAGE PHOLRIWAL, HB NO. 252 TEHSIL JALANDHAR. PIN: 144022. Valid upto: 19-Aug-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT40-PR0951';
  v_meta := '{"district":"Kapurthala","promoter":"AGI INFRA LIMITED (Other than Individual)","address":"Village Khazurla (H.B.NO.82)","pin_code":"144411","website":"www.agiinfra.com","registration_date":"06-Jun-2024","valid_upto":"27-Mar-2027"}'::jsonb;
  v_desc := 'Promoter: AGI INFRA LIMITED (Other than Individual). Address: Village Khazurla (H.B.NO.82). PIN: 144411. Valid upto: 27-Mar-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT40-PC0228';
  v_meta := '{"district":"Kapurthala","promoter":"Amico Builders & Developers (Other than Individual)","address":"Village Chaheru, H.B.No.83, Tehsil Phagwara","pin_code":"144411","registration_date":"03-Jun-2024","valid_upto":"08-Aug-2028"}'::jsonb;
  v_desc := 'Promoter: Amico Builders & Developers (Other than Individual). Address: Village Chaheru, H.B.No.83, Tehsil Phagwara. PIN: 144411. Valid upto: 08-Aug-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0226';
  v_meta := '{"district":"Ludhiana","promoter":"Western Living Private Limited (Other than Individual)","address":"Village Malakpur, Ludhiana West","pin_code":"142027","registration_date":"31-May-2024","valid_upto":"30-Oct-2028"}'::jsonb;
  v_desc := 'Promoter: Western Living Private Limited (Other than Individual). Address: Village Malakpur, Ludhiana West. PIN: 142027. Valid upto: 30-Oct-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR03-PR0945';
  v_meta := '{"district":"Amritsar","promoter":"DREAM COUNTY HOMES & VILLAS LLP (Other than Individual)","address":"New City Center, Opp Hotel Taj Swarna, NEAR TRILIUM MALL,  Amritsar","pin_code":"143001","registration_date":"30-May-2024","valid_upto":"05-Apr-2028"}'::jsonb;
  v_desc := 'Promoter: DREAM COUNTY HOMES & VILLAS LLP (Other than Individual). Address: New City Center, Opp Hotel Taj Swarna, NEAR TRILIUM MALL,  Amritsar. PIN: 143001. Valid upto: 05-Apr-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR0943';
  v_meta := '{"district":"Ludhiana","promoter":"MAVEN ENCLAVE (Other than Individual)","address":"VILLAGE ALAMGIR, HADBAST NO 273,, TEHSIL LUDHIANA SOUTH","pin_code":"141116","registration_date":"30-May-2024","valid_upto":"14-Aug-2028"}'::jsonb;
  v_desc := 'Promoter: MAVEN ENCLAVE (Other than Individual). Address: VILLAGE ALAMGIR, HADBAST NO 273,, TEHSIL LUDHIANA SOUTH. PIN: 141116. Valid upto: 14-Aug-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0940';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"S7 HOLDINGS (Other than Individual)","address":"Mianpur Changar, Tehsil Kharar","pin_code":"140109","registration_date":"30-May-2024","valid_upto":"14-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: S7 HOLDINGS (Other than Individual). Address: Mianpur Changar, Tehsil Kharar. PIN: 140109. Valid upto: 14-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL20-PR0944';
  v_meta := '{"district":"Fazilka","promoter":"Prestige Developers (Other than Individual)","address":"Fazilka-Jalalabad Road, Near Orbit Palace","pin_code":"152024","registration_date":"30-May-2024","valid_upto":"31-Dec-2027"}'::jsonb;
  v_desc := 'Promoter: Prestige Developers (Other than Individual). Address: Fazilka-Jalalabad Road, Near Orbit Palace. PIN: 152024. Valid upto: 31-Dec-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL62-PI0018';
  v_meta := '{"district":"Patiala","promoter":"Ashok  Kumar (Individual)","address":"Nabha Industrial Zone, Village Rohti Khas & Rohti Chhanna, Nabha","pin_code":"147201","registration_date":"28-May-2024","valid_upto":"13-Feb-2027"}'::jsonb;
  v_desc := 'Promoter: Ashok  Kumar (Individual). Address: Nabha Industrial Zone, Village Rohti Khas & Rohti Chhanna, Nabha. PIN: 147201. Valid upto: 13-Feb-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR73-PC0224';
  v_meta := '{"district":"Sangrur","promoter":"SHRIH PLAZA CITY CENTER LLP (Other than Individual)","address":"Village Dhuri, Hudbust no 94, Mk Road, Dhuri","pin_code":"148024","registration_date":"27-May-2024","valid_upto":"24-Apr-2029"}'::jsonb;
  v_desc := 'Promoter: SHRIH PLAZA CITY CENTER LLP (Other than Individual). Address: Village Dhuri, Hudbust no 94, Mk Road, Dhuri. PIN: 148024. Valid upto: 24-Apr-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL19-PR0939';
  v_meta := '{"district":"Fazilka","promoter":"D.R. ENTERPRISES (Other than Individual)","address":"Old Fazilka Road, Abohar","pin_code":"152123","registration_date":"20-May-2024","valid_upto":"30-Jan-2029"}'::jsonb;
  v_desc := 'Promoter: D.R. ENTERPRISES (Other than Individual). Address: Old Fazilka Road, Abohar. PIN: 152123. Valid upto: 30-Jan-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PC0214';
  v_meta := '{"district":"Jalandhar","promoter":"Mexmon Global Developers LLP (Other than Individual)","address":"Mexmon Highstreet, 66 Ft. Road, Vill. Qadianwali","pin_code":"144020","registration_date":"15-May-2024","valid_upto":"28-Aug-2028"}'::jsonb;
  v_desc := 'Promoter: Mexmon Global Developers LLP (Other than Individual). Address: Mexmon Highstreet, 66 Ft. Road, Vill. Qadianwali. PIN: 144020. Valid upto: 28-Aug-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0218';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Mittaso Projects Private Limited  (Other than Individual)","address":"CHANDIGARH AMBALA HIGHWAY, ZIRAKPUR","pin_code":"140603","registration_date":"09-May-2024","valid_upto":"11-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: Mittaso Projects Private Limited  (Other than Individual). Address: CHANDIGARH AMBALA HIGHWAY, ZIRAKPUR. PIN: 140603. Valid upto: 11-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0215';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sidhi Vinayak Infra (Other than Individual)","address":"VILLAGE SANTE MAJRA, KHARAR LANDHRA ROAD","pin_code":"140307","registration_date":"13-May-2024","valid_upto":"30-Nov-2028"}'::jsonb;
  v_desc := 'Promoter: Sidhi Vinayak Infra (Other than Individual). Address: VILLAGE SANTE MAJRA, KHARAR LANDHRA ROAD. PIN: 140307. Valid upto: 30-Nov-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0219';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"SECTOR 118 TDI CITY, SAS NAGAR MOHALI","pin_code":"140301","registration_date":"09-May-2024","valid_upto":"31-Dec-2027"}'::jsonb;
  v_desc := 'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: SECTOR 118 TDI CITY, SAS NAGAR MOHALI. PIN: 140301. Valid upto: 31-Dec-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0222';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"SECTOR 117 TDI CITY, SAS NAGAR","pin_code":"140301","registration_date":"09-May-2024","valid_upto":"31-Dec-2025"}'::jsonb;
  v_desc := 'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: SECTOR 117 TDI CITY, SAS NAGAR. PIN: 140301. Valid upto: 31-Dec-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0221';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"SECTOR 118 TDI CITY, SAS NAGAR MOHALI","pin_code":"140301","registration_date":"09-May-2024","valid_upto":"31-Dec-2025"}'::jsonb;
  v_desc := 'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: SECTOR 118 TDI CITY, SAS NAGAR MOHALI. PIN: 140301. Valid upto: 31-Dec-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0220';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"SECTOR 117 TDI CITY, SAS NAGAR","pin_code":"140301","registration_date":"09-May-2024","valid_upto":"31-Dec-2025"}'::jsonb;
  v_desc := 'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: SECTOR 117 TDI CITY, SAS NAGAR. PIN: 140301. Valid upto: 31-Dec-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0938';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"SECTOR 118 TDI CITY","pin_code":"140301","registration_date":"09-May-2024","valid_upto":"31-Dec-2025"}'::jsonb;
  v_desc := 'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: SECTOR 118 TDI CITY. PIN: 140301. Valid upto: 31-Dec-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL34-PR0933';
  v_meta := '{"district":"Jalandhar","promoter":"Harveen  Kaur (Individual)","address":"Village Wadala H.B.No.281, Tehsil Jalandhar-2","pin_code":"144003","registration_date":"09-May-2024","valid_upto":"21-Sep-2028"}'::jsonb;
  v_desc := 'Promoter: Harveen  Kaur (Individual). Address: Village Wadala H.B.No.281, Tehsil Jalandhar-2. PIN: 144003. Valid upto: 21-Sep-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0223';
  v_meta := '{"district":"Ludhiana","promoter":"TAMPRA INFRATECH PRIVATE LIMITED (Other than Individual)","address":"Mullanpur Dakha, GT Road","pin_code":"141101","registration_date":"09-May-2024","valid_upto":"31-May-2028"}'::jsonb;
  v_desc := 'Promoter: TAMPRA INFRATECH PRIVATE LIMITED (Other than Individual). Address: Mullanpur Dakha, GT Road. PIN: 141101. Valid upto: 31-May-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0931';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"HIGHLAND PARK HOMES (Other than Individual)","address":"HADBAST NO.234, VILLAGE BHABAT , ZIRAKPUR","pin_code":"140603","registration_date":"09-May-2024","valid_upto":"02-Jan-2026"}'::jsonb;
  v_desc := 'Promoter: HIGHLAND PARK HOMES (Other than Individual). Address: HADBAST NO.234, VILLAGE BHABAT , ZIRAKPUR. PIN: 140603. Valid upto: 02-Jan-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MKT56-PR0932';
  v_meta := '{"district":"Muktsar","promoter":"SNOW PALM INFRASTRUCTURE LLP (Other than Individual)","address":"Village Gidderbaha, Distt. Sh. Muktsar Sahib","pin_code":"152101","registration_date":"09-May-2024","valid_upto":"13-Sep-2028"}'::jsonb;
  v_desc := 'Promoter: SNOW PALM INFRASTRUCTURE LLP (Other than Individual). Address: Village Gidderbaha, Distt. Sh. Muktsar Sahib. PIN: 152101. Valid upto: 13-Sep-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PR0936';
  v_meta := '{"district":"Barnala","promoter":"Radhey Developers (Other than Individual)","address":"opp. Gurkirpa Automobiles. Dhanaula Road","pin_code":"148101","registration_date":"09-May-2024","valid_upto":"31-Dec-2027"}'::jsonb;
  v_desc := 'Promoter: Radhey Developers (Other than Individual). Address: opp. Gurkirpa Automobiles. Dhanaula Road. PIN: 148101. Valid upto: 31-Dec-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PI0021';
  v_meta := '{"district":"Bathinda","promoter":"SHIVA DEVELOPERS (Other than Individual)","address":"Village Behman Deewana, Malaut Road","pin_code":"151001","registration_date":"07-May-2024","valid_upto":"23-Jul-2028"}'::jsonb;
  v_desc := 'Promoter: SHIVA DEVELOPERS (Other than Individual). Address: Village Behman Deewana, Malaut Road. PIN: 151001. Valid upto: 23-Jul-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR73-PR0935';
  v_meta := '{"district":"Sangrur","promoter":"SUNRISE BUILDERS (Other than Individual)","address":"VILL BARDWAL HB NO 92, TEH DHURI","pin_code":"148024","registration_date":"07-May-2024","valid_upto":"01-Dec-2027"}'::jsonb;
  v_desc := 'Promoter: SUNRISE BUILDERS (Other than Individual). Address: VILL BARDWAL HB NO 92, TEH DHURI. PIN: 148024. Valid upto: 01-Dec-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PC0217';
  v_meta := '{"district":"Bathinda","promoter":"Prime Land Promoters (Other than Individual)","address":"NEAR KISAN CHOWNK, RING ROAD, MULTANIA ROAD, BATHINDA","pin_code":"151001","registration_date":"07-May-2024","valid_upto":"20-Oct-2025"}'::jsonb;
  v_desc := 'Promoter: Prime Land Promoters (Other than Individual). Address: NEAR KISAN CHOWNK, RING ROAD, MULTANIA ROAD, BATHINDA. PIN: 151001. Valid upto: 20-Oct-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH42-PR0919';
  v_meta := '{"district":"Ludhiana","promoter":"SHINE HOMES (Other than Individual)","address":"VILLAGE SANGOWAL HADBAST NO. 257, TEH. & DISTT. LUDHIANA","pin_code":"141122","registration_date":"07-May-2024","valid_upto":"13-Oct-2028"}'::jsonb;
  v_desc := 'Promoter: SHINE HOMES (Other than Individual). Address: VILLAGE SANGOWAL HADBAST NO. 257, TEH. & DISTT. LUDHIANA. PIN: 141122. Valid upto: 13-Oct-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0926';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sarayu Construction (Other than Individual)","address":"Village Dyalpura and Nabha, MC Zirakpur","pin_code":"140603","registration_date":"06-May-2024","valid_upto":"30-Apr-2026"}'::jsonb;
  v_desc := 'Promoter: Sarayu Construction (Other than Individual). Address: Village Dyalpura and Nabha, MC Zirakpur. PIN: 140603. Valid upto: 30-Apr-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL66-PC0213';
  v_meta := '{"district":"Patiala","promoter":"A-ONE DEVELOPERS (Other than Individual)","address":"SAMANA PATIALA ROAD, SAMANA DISTRICT PATIALA","pin_code":"147101","registration_date":"06-May-2024","valid_upto":"13-Mar-2028"}'::jsonb;
  v_desc := 'Promoter: A-ONE DEVELOPERS (Other than Individual). Address: SAMANA PATIALA ROAD, SAMANA DISTRICT PATIALA. PIN: 147101. Valid upto: 13-Mar-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0209';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"REKHA  RANI (Individual)","address":"VILLAGE RADIALA, TEHSIL KHARAR,","pin_code":"140301","registration_date":"06-May-2024","valid_upto":"09-Jun-2028"}'::jsonb;
  v_desc := 'Promoter: REKHA  RANI (Individual). Address: VILLAGE RADIALA, TEHSIL KHARAR,. PIN: 140301. Valid upto: 09-Jun-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0206';
  v_meta := '{"district":"Ludhiana","promoter":"Mohinder Paul  Singh (Individual)","address":"VILLAGE BAREWAL AWANA","pin_code":"141012","registration_date":"03-May-2024","valid_upto":"30-Oct-2028"}'::jsonb;
  v_desc := 'Promoter: Mohinder Paul  Singh (Individual). Address: VILLAGE BAREWAL AWANA. PIN: 141012. Valid upto: 30-Oct-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0925';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"DEN ART INFRA PVT. LTD. (Other than Individual)","address":"Village Santemajra, Sector 116, Tehsil Kharar","pin_code":"140301","registration_date":"06-May-2024","valid_upto":"25-May-2028"}'::jsonb;
  v_desc := 'Promoter: DEN ART INFRA PVT. LTD. (Other than Individual). Address: Village Santemajra, Sector 116, Tehsil Kharar. PIN: 140301. Valid upto: 25-May-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT40-PR0920';
  v_meta := '{"district":"Kapurthala","promoter":"GILLSONS CONSTRUCTIONS LIMITED (Other than Individual)","address":"Gilco Greens Extension, Hoshiarpur Road","pin_code":"144401","registration_date":"06-May-2024","valid_upto":"28-Mar-2028"}'::jsonb;
  v_desc := 'Promoter: GILLSONS CONSTRUCTIONS LIMITED (Other than Individual). Address: Gilco Greens Extension, Hoshiarpur Road. PIN: 144401. Valid upto: 28-Mar-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR0916';
  v_meta := '{"district":"Ludhiana","promoter":"ELDECO MAKSAD PROPERTIES LIMITED (Other than Individual)","address":"Village Lalton kalan 1&2 Hadbast No 291","pin_code":"142022","registration_date":"06-May-2024","valid_upto":"31-May-2026"}'::jsonb;
  v_desc := 'Promoter: ELDECO MAKSAD PROPERTIES LIMITED (Other than Individual). Address: Village Lalton kalan 1&2 Hadbast No 291. PIN: 142022. Valid upto: 31-May-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH46-PC0216';
  v_meta := '{"district":"Ludhiana","promoter":"HAVENLEY DEVELOPERS (Other than Individual)","address":"Village Kaddon, HB.No. 246, Malipur, HB.No. 247, Haraichan, HB.No. 248, Tehsil Payal","pin_code":"141421","website":"www.havenleydevelopers.com","registration_date":"06-May-2024","valid_upto":"21-Dec-2028"}'::jsonb;
  v_desc := 'Promoter: HAVENLEY DEVELOPERS (Other than Individual). Address: Village Kaddon, HB.No. 246, Malipur, HB.No. 247, Haraichan, HB.No. 248, Tehsil Payal. PIN: 141421. Valid upto: 21-Dec-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0921';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Pavitra Homes (Other than Individual)","address":"Pavitra Luxury Residences, Nabha, Zirakpur, near SAI Stadium","pin_code":"140603","registration_date":"06-May-2024","valid_upto":"30-Sep-2031"}'::jsonb;
  v_desc := 'Promoter: Pavitra Homes (Other than Individual). Address: Pavitra Luxury Residences, Nabha, Zirakpur, near SAI Stadium. PIN: 140603. Valid upto: 30-Sep-2031';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PC0212';
  v_meta := '{"district":"Patiala","promoter":"NAGPAL LIFESTYLE COMPANY (Other than Individual)","address":"Village Chuharpur Marasian, HB No. 44","pin_code":"147001","registration_date":"06-May-2024","valid_upto":"31-Dec-2026"}'::jsonb;
  v_desc := 'Promoter: NAGPAL LIFESTYLE COMPANY (Other than Individual). Address: Village Chuharpur Marasian, HB No. 44. PIN: 147001. Valid upto: 31-Dec-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0210';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"RGI INFRA (Other than Individual)","address":"M/s. RGI Infra, Block-H, Airport Road, Aerocity,S.A.S Nagar, Mohali","pin_code":"140306","registration_date":"06-May-2024","valid_upto":"31-Dec-2030"}'::jsonb;
  v_desc := 'Promoter: RGI INFRA (Other than Individual). Address: M/s. RGI Infra, Block-H, Airport Road, Aerocity,S.A.S Nagar, Mohali. PIN: 140306. Valid upto: 31-Dec-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PC0211';
  v_meta := '{"district":"Barnala","promoter":"BRH EATON PRIVATE LIMITED (Other than Individual)","address":"VILLAGE HANDIAYA-D (H.B NO.58)","pin_code":"148107","registration_date":"06-May-2024","valid_upto":"08-Jun-2028"}'::jsonb;
  v_desc := 'Promoter: BRH EATON PRIVATE LIMITED (Other than Individual). Address: VILLAGE HANDIAYA-D (H.B NO.58). PIN: 148107. Valid upto: 08-Jun-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0917';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MOTIA GRAND LLP (Other than Individual)","address":"Village Madhopur, H.B.No. 11, DERABASSI BARWALA ROAD","pin_code":"140507","registration_date":"06-May-2024","valid_upto":"23-May-2028"}'::jsonb;
  v_desc := 'Promoter: MOTIA GRAND LLP (Other than Individual). Address: Village Madhopur, H.B.No. 11, DERABASSI BARWALA ROAD. PIN: 140507. Valid upto: 23-May-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0927';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MRLK Builders and Promoters Pvt. Ltd (Other than Individual)","address":"Hadbast No. 77, Village, Radiala","pin_code":"140301","registration_date":"06-May-2024","valid_upto":"24-Jan-2029"}'::jsonb;
  v_desc := 'Promoter: MRLK Builders and Promoters Pvt. Ltd (Other than Individual). Address: Hadbast No. 77, Village, Radiala. PIN: 140301. Valid upto: 24-Jan-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL64-PR0924';
  v_meta := '{"district":"Patiala","promoter":"SUNRIZE COLONIZERS (Other than Individual)","address":"VILLAGE KAHANGARH GHARCHO, HADBAST NO. 175","pin_code":"147105","registration_date":"06-May-2024","valid_upto":"31-May-2026"}'::jsonb;
  v_desc := 'Promoter: SUNRIZE COLONIZERS (Other than Individual). Address: VILLAGE KAHANGARH GHARCHO, HADBAST NO. 175. PIN: 147105. Valid upto: 31-May-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0923';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Garg Realty Infra Promoters LLP (Other than Individual)","address":"Village Peer Muhhalla, MC ZIRAKPUR","pin_code":"160104","registration_date":"06-May-2024","valid_upto":"23-Mar-2027"}'::jsonb;
  v_desc := 'Promoter: Garg Realty Infra Promoters LLP (Other than Individual). Address: Village Peer Muhhalla, MC ZIRAKPUR. PIN: 160104. Valid upto: 23-Mar-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MGA54-PC0208';
  v_meta := '{"district":"Moga","promoter":"HG EATON SHOPPING COMPLEX (Other than Individual)","address":"NEAR NEELAM NOVA CINEMAS AT NH-5, LUDHIANA-FEROZPUR ROAD,MOGA","pin_code":"142001","registration_date":"06-May-2024","valid_upto":"04-Jul-2027"}'::jsonb;
  v_desc := 'Promoter: HG EATON SHOPPING COMPLEX (Other than Individual). Address: NEAR NEELAM NOVA CINEMAS AT NH-5, LUDHIANA-FEROZPUR ROAD,MOGA. PIN: 142001. Valid upto: 04-Jul-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PR0922';
  v_meta := '{"district":"Barnala","promoter":"Barnala Builders & Developers Pvt. Ltd. (Other than Individual)","address":"DHANAULA ROAD","pin_code":"148101","registration_date":"06-May-2024","valid_upto":"24-Apr-2026"}'::jsonb;
  v_desc := 'Promoter: Barnala Builders & Developers Pvt. Ltd. (Other than Individual). Address: DHANAULA ROAD. PIN: 148101. Valid upto: 24-Apr-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PR0929';
  v_meta := '{"district":"Amritsar","promoter":"Impact Sare Magnum Townships  Private Limited  (Other than Individual)","address":"Vill- Vallah, GT Road Bye Pass","pin_code":"143501","registration_date":"06-May-2024","valid_upto":"31-Aug-2028"}'::jsonb;
  v_desc := 'Promoter: Impact Sare Magnum Townships  Private Limited  (Other than Individual). Address: Vill- Vallah, GT Road Bye Pass. PIN: 143501. Valid upto: 31-Aug-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PI0019';
  v_meta := '{"district":"Ludhiana","promoter":"Nahar Industrial Enterprises Ltd (Other than Individual)","address":"Village Bholapur, Mundian Khurd & Mangli Nichi, Dist. Ludhiana","pin_code":"141001","registration_date":"02-May-2024","valid_upto":"04-May-2027"}'::jsonb;
  v_desc := 'Promoter: Nahar Industrial Enterprises Ltd (Other than Individual). Address: Village Bholapur, Mundian Khurd & Mangli Nichi, Dist. Ludhiana. PIN: 141001. Valid upto: 04-May-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  RAISE NOTICE 'Part 4: updated % projects', v_updated;
END $$;