-- 0009_fix_metadata_part09.sql
-- Projects 1601 to 1800
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

  v_rera := 'PBRERA-GSP25-PM0007';
  v_meta := '{"district":"Gurdaspur","promoter":"PUDA (Other than Individual)","address":"JALANDHAR BATALA, BYEPASS","pin_code":"143505","registration_date":"18-Oct-2017","valid_upto":"31-Jul-2018"}'::jsonb;
  v_desc := 'Promoter: PUDA (Other than Individual). Address: JALANDHAR BATALA, BYEPASS. PIN: 143505. Valid upto: 31-Jul-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PM0011';
  v_meta := '{"district":"Amritsar","promoter":"PUDA (Other than Individual)","address":"CANAL COLONY, OPP. GOVT GIRLS COLLEGE","pin_code":"143001","registration_date":"30-Oct-2017","valid_upto":"30-Jun-2017"}'::jsonb;
  v_desc := 'Promoter: PUDA (Other than Individual). Address: CANAL COLONY, OPP. GOVT GIRLS COLLEGE. PIN: 143001. Valid upto: 30-Jun-2017';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0005';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"20-Sep-2017","valid_upto":"31-Jul-2019"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 31-Jul-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PM0004';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"Falcon View Apartments Phase-2, Sector-66A,","pin_code":"140306","website":"www.janta@jantahousing.com","registration_date":"19-Sep-2017","valid_upto":"30-Jun-2018"}'::jsonb;
  v_desc := 'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: Falcon View Apartments Phase-2, Sector-66A,. PIN: 140306. Valid upto: 30-Jun-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PM0002';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"Falcon View Phase-3, Tower-I & J, Sector-66A","pin_code":"140306","website":"www.janta@jantahousing.com","registration_date":"19-Sep-2017","valid_upto":"31-Mar-2019"}'::jsonb;
  v_desc := 'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: Falcon View Phase-3, Tower-I & J, Sector-66A. PIN: 140306. Valid upto: 31-Mar-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0004';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"06-Sep-2017","valid_upto":"31-Jan-2020"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 31-Jan-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0526';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Allwin Infrastructure Limited (Other than Individual)","address":"Village Singhpura, International Airport Road, PR-07, Zirakpur","pin_code":"140603","registration_date":"01-Oct-2019","valid_upto":"04-Aug-2024"}'::jsonb;
  v_desc := 'Promoter: Allwin Infrastructure Limited (Other than Individual). Address: Village Singhpura, International Airport Road, PR-07, Zirakpur. PIN: 140603. Valid upto: 04-Aug-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0162';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Aura Buildtech Pvt. Ltd. (Other than Individual)","address":"VILLAGE NABHA, HIGH LAND MARG, ZIRAKPUR","pin_code":"140603","registration_date":"01-Oct-2021","valid_upto":"31-Dec-2024"}'::jsonb;
  v_desc := 'Promoter: Aura Buildtech Pvt. Ltd. (Other than Individual). Address: VILLAGE NABHA, HIGH LAND MARG, ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0747';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Nanak Sai Promoters and Builders Prop. Vikas Malhotra (Other than Individual)","address":"Village Chhaju Majra, H.B. No. 33, Kharar, District SAS Nagar","pin_code":"140301","registration_date":"01-Oct-2021","valid_upto":"30-Jun-2024"}'::jsonb;
  v_desc := 'Promoter: Nanak Sai Promoters and Builders Prop. Vikas Malhotra (Other than Individual). Address: Village Chhaju Majra, H.B. No. 33, Kharar, District SAS Nagar. PIN: 140301. Valid upto: 30-Jun-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0160';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"R S Promoters (Other than Individual)","address":"Peer Muchalla, MC Zirakpur","pin_code":"140603","registration_date":"01-Oct-2021","valid_upto":"30-May-2022"}'::jsonb;
  v_desc := 'Promoter: R S Promoters (Other than Individual). Address: Peer Muchalla, MC Zirakpur. PIN: 140603. Valid upto: 30-May-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0668';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"East Avenue Infracon Pvt. Ltd. (Other than Individual)","address":"Khanpur, Kharar, Kharar-Kurali Highway (NH205)","pin_code":"140301","website":"www.visionindiagroup.com","registration_date":"04-Dec-2020","valid_upto":"15-Oct-2025"}'::jsonb;
  v_desc := 'Promoter: East Avenue Infracon Pvt. Ltd. (Other than Individual). Address: Khanpur, Kharar, Kharar-Kurali Highway (NH205). PIN: 140301. Valid upto: 15-Oct-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0746';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"DB FARMS Private Limited (Other than Individual)","address":"Village Bhagomajra, HB No. 75, Kharar","pin_code":"140307","registration_date":"13-Sep-2021","valid_upto":"31-Mar-2026"}'::jsonb;
  v_desc := 'Promoter: DB FARMS Private Limited (Other than Individual). Address: Village Bhagomajra, HB No. 75, Kharar. PIN: 140307. Valid upto: 31-Mar-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0745';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jarnail Real Estate Private Limited (Other than Individual)","address":"Village Bhabat, H.B. No. 234, Zirakpur","pin_code":"140603","registration_date":"13-Sep-2021","valid_upto":"31-Dec-2024"}'::jsonb;
  v_desc := 'Promoter: Jarnail Real Estate Private Limited (Other than Individual). Address: Village Bhabat, H.B. No. 234, Zirakpur. PIN: 140603. Valid upto: 31-Dec-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0405';
  v_meta := '{"district":"Jalandhar","promoter":"AGI INFRA LIMITED (Other than Individual)","address":"VILLAGE PHOLRIWAL","pin_code":"144022","website":"www.agiinfra.com","registration_date":"09-Jan-2019","valid_upto":"31-Mar-2021"}'::jsonb;
  v_desc := 'Promoter: AGI INFRA LIMITED (Other than Individual). Address: VILLAGE PHOLRIWAL. PIN: 144022. Valid upto: 31-Mar-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0678';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Green Valley Builders (Other than Individual)","address":"VILLAGE SINGHPURA, H.B. No. 43, Zirakpur","pin_code":"140103","registration_date":"28-Dec-2020","valid_upto":"30-Jun-2022"}'::jsonb;
  v_desc := 'Promoter: Green Valley Builders (Other than Individual). Address: VILLAGE SINGHPURA, H.B. No. 43, Zirakpur. PIN: 140103. Valid upto: 30-Jun-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0741';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GHB Abodes (Other than Individual)","address":"Village Dyalpura and Nabha, MC Zirakpur","pin_code":"140603","registration_date":"02-Sep-2021","valid_upto":"30-Jun-2024"}'::jsonb;
  v_desc := 'Promoter: GHB Abodes (Other than Individual). Address: Village Dyalpura and Nabha, MC Zirakpur. PIN: 140603. Valid upto: 30-Jun-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0739';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KCB INFRA (Other than Individual)","address":"Village Dayalpura & Nabha, MC Zirakpur, SAS Nagar, Punjab","pin_code":"140603","registration_date":"02-Sep-2021","valid_upto":"31-May-2024"}'::jsonb;
  v_desc := 'Promoter: KCB INFRA (Other than Individual). Address: Village Dayalpura & Nabha, MC Zirakpur, SAS Nagar, Punjab. PIN: 140603. Valid upto: 31-May-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0740';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Nirmaan Builder & Promoters (Other than Individual)","address":"Village Dyalpura and Nabha, MC Zirakpur","pin_code":"140603","registration_date":"02-Sep-2021","valid_upto":"31-Mar-2024"}'::jsonb;
  v_desc := 'Promoter: Nirmaan Builder & Promoters (Other than Individual). Address: Village Dyalpura and Nabha, MC Zirakpur. PIN: 140603. Valid upto: 31-Mar-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0742';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Canyon Buildtech  (Other than Individual)","address":"Village Dyalpura and Nabha, MC Zirakpur","pin_code":"140603","registration_date":"02-Sep-2021","valid_upto":"31-Mar-2024"}'::jsonb;
  v_desc := 'Promoter: Canyon Buildtech  (Other than Individual). Address: Village Dyalpura and Nabha, MC Zirakpur. PIN: 140603. Valid upto: 31-Mar-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0743';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Exotic Builders & Developers (Other than Individual)","address":"Hadbast No 54, Village Kishanpura, MC Zirakpur","pin_code":"140603","registration_date":"02-Sep-2021","valid_upto":"31-Mar-2025"}'::jsonb;
  v_desc := 'Promoter: Exotic Builders & Developers (Other than Individual). Address: Hadbast No 54, Village Kishanpura, MC Zirakpur. PIN: 140603. Valid upto: 31-Mar-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0689';
  v_meta := '{"district":"Jalandhar","promoter":"AGI INFRA LIMITED (Other than Individual)","address":"VILLAGE PHOLRIWAL, H.B.No.252","pin_code":"144022","website":"www.agiinfra.com","registration_date":"29-Jan-2021","valid_upto":"14-Jun-2025"}'::jsonb;
  v_desc := 'Promoter: AGI INFRA LIMITED (Other than Individual). Address: VILLAGE PHOLRIWAL, H.B.No.252. PIN: 144022. Valid upto: 14-Jun-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0735';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gurmel   Singh (Individual)","address":"H. B. No. 42, VillageRamgarh Bhudda, Sub Tehsil Zirakpur, District S.A.S. Nagar","pin_code":"140603","registration_date":"27-Aug-2021","valid_upto":"30-Jun-2024"}'::jsonb;
  v_desc := 'Promoter: Gurmel   Singh (Individual). Address: H. B. No. 42, VillageRamgarh Bhudda, Sub Tehsil Zirakpur, District S.A.S. Nagar. PIN: 140603. Valid upto: 30-Jun-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0730';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ARPAN DEVCON PRIVATE LIMITED (Other than Individual)","address":"Mubarakpur to Derabassi Road, Ward No. 4, Sector 5, Monja-Bhankharpur and Mirpur, MC Derabassi","pin_code":"140201","registration_date":"19-Aug-2021","valid_upto":"31-Mar-2022"}'::jsonb;
  v_desc := 'Promoter: ARPAN DEVCON PRIVATE LIMITED (Other than Individual). Address: Mubarakpur to Derabassi Road, Ward No. 4, Sector 5, Monja-Bhankharpur and Mirpur, MC Derabassi. PIN: 140201. Valid upto: 31-Mar-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0157';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Unicity Projects (Other than Individual)","address":"Uncity Business Park Dhakauli Zirakpur","pin_code":"140603","registration_date":"19-Aug-2021","valid_upto":"18-Aug-2025"}'::jsonb;
  v_desc := 'Promoter: Unicity Projects (Other than Individual). Address: Uncity Business Park Dhakauli Zirakpur. PIN: 140603. Valid upto: 18-Aug-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0736';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"East Avenue Infracon Pvt. Ltd. (Other than Individual)","address":"Rakba Khanpur, Tehsil Kharar, Had bast No 183, MC Kharar","pin_code":"140301","registration_date":"19-Aug-2021","valid_upto":"14-Apr-2025"}'::jsonb;
  v_desc := 'Promoter: East Avenue Infracon Pvt. Ltd. (Other than Individual). Address: Rakba Khanpur, Tehsil Kharar, Had bast No 183, MC Kharar. PIN: 140301. Valid upto: 14-Apr-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MKT58-PR0732';
  v_meta := '{"district":"Muktsar","promoter":"Bhagwati Cotton Company (Other than Individual)","address":"Green CIty, Jalalabad Road Shri Muktsar Sahib","pin_code":"152026","registration_date":"19-Aug-2021","valid_upto":"31-Dec-2025"}'::jsonb;
  v_desc := 'Promoter: Bhagwati Cotton Company (Other than Individual). Address: Green CIty, Jalalabad Road Shri Muktsar Sahib. PIN: 152026. Valid upto: 31-Dec-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0731';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Joga   Singh (Individual)","address":"Sector 127, Vill. Chajju Majra, Nigger Road, Tehsil Kharar","pin_code":"140307","registration_date":"19-Aug-2021","valid_upto":"08-Jan-2025"}'::jsonb;
  v_desc := 'Promoter: Joga   Singh (Individual). Address: Sector 127, Vill. Chajju Majra, Nigger Road, Tehsil Kharar. PIN: 140307. Valid upto: 08-Jan-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0156';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Allwin Infrastructure Ltd. (Other than Individual)","address":"Vill. Singhpura, MC Zirakpur, SAS Nagar","pin_code":"140603","website":"www.allwininfra.com","registration_date":"19-Aug-2021","valid_upto":"22-Jan-2029"}'::jsonb;
  v_desc := 'Promoter: Allwin Infrastructure Ltd. (Other than Individual). Address: Vill. Singhpura, MC Zirakpur, SAS Nagar. PIN: 140603. Valid upto: 22-Jan-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-GSP27-PR0737';
  v_meta := '{"district":"Gurdaspur","promoter":"SRI NANGALI ASSOCIATES (Other than Individual)","address":"Village Nabipur & Babri, Tehsil & District Gurdaspur","pin_code":"143521","registration_date":"19-Aug-2021","valid_upto":"30-Mar-2026"}'::jsonb;
  v_desc := 'Promoter: SRI NANGALI ASSOCIATES (Other than Individual). Address: Village Nabipur & Babri, Tehsil & District Gurdaspur. PIN: 143521. Valid upto: 30-Mar-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI10-PR0733';
  v_meta := '{"district":"Bathinda","promoter":"Royal Green City (Other than Individual)","address":"Bathinda Barnala Road, Rampura Phul","pin_code":"151103","registration_date":"19-Aug-2021","valid_upto":"31-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: Royal Green City (Other than Individual). Address: Bathinda Barnala Road, Rampura Phul. PIN: 151103. Valid upto: 31-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0734';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Metro Developers (Other than Individual)","address":"Village Nabha, Zirakpur, Tehsil Dera Bassi, Mohali, SAS Nagar","pin_code":"140603","registration_date":"19-Aug-2021","valid_upto":"19-Jul-2025"}'::jsonb;
  v_desc := 'Promoter: Metro Developers (Other than Individual). Address: Village Nabha, Zirakpur, Tehsil Dera Bassi, Mohali, SAS Nagar. PIN: 140603. Valid upto: 19-Jul-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0540';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SHIVA DEVELOPERS (Other than Individual)","address":"High Ground Road, Village Nabha, M.C. Zirakpur","pin_code":"140603","registration_date":"31-Oct-2019","valid_upto":"30-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: SHIVA DEVELOPERS (Other than Individual). Address: High Ground Road, Village Nabha, M.C. Zirakpur. PIN: 140603. Valid upto: 30-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0706';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Aura Builders and Developers (Other than Individual)","address":"Village Nabha, MC Zirakpur","pin_code":"147201","registration_date":"10-May-2021","valid_upto":"31-Dec-2025"}'::jsonb;
  v_desc := 'Promoter: Aura Builders and Developers (Other than Individual). Address: Village Nabha, MC Zirakpur. PIN: 147201. Valid upto: 31-Dec-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-GSP25-PM0008';
  v_meta := '{"district":"Gurdaspur","promoter":"PUDA (Other than Individual)","address":"urban estate gurdaspur","pin_code":"143521","registration_date":"23-Oct-2017","valid_upto":"30-Jun-2017"}'::jsonb;
  v_desc := 'Promoter: PUDA (Other than Individual). Address: urban estate gurdaspur. PIN: 143521. Valid upto: 30-Jun-2017';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0005';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"J S J Builders Pvt Ltd (Other than Individual)","address":"SHOP NO 1-3 JOSAN HEIGHTS, SECTOR 126 VILLAGE CHAJJU MAJRA","pin_code":"140307","website":"www.jsjbuilders.in","registration_date":"01-Sep-2017","valid_upto":"25-Jul-2032"}'::jsonb;
  v_desc := 'Promoter: J S J Builders Pvt Ltd (Other than Individual). Address: SHOP NO 1-3 JOSAN HEIGHTS, SECTOR 126 VILLAGE CHAJJU MAJRA. PIN: 140307. Valid upto: 25-Jul-2032';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0008';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"East Avenue Infracon Pvt. Ltd. (Other than Individual)","address":"Village Khanpur,, NH-21, Kharar Ropar Road,","pin_code":"140301","website":"www.visionindiagroup.com","registration_date":"01-Sep-2017","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: East Avenue Infracon Pvt. Ltd. (Other than Individual). Address: Village Khanpur,, NH-21, Kharar Ropar Road,. PIN: 140301. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0009';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"20-Sep-2017","valid_upto":"31-Jul-2019"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 31-Jul-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI04-PR0724';
  v_meta := '{"district":"Bathinda","promoter":"Ashok   Kumar (Individual)","address":"Multaina Road, Tehsil & District Bathinda","pin_code":"151201","registration_date":"28-Jul-2021","valid_upto":"07-Oct-2023"}'::jsonb;
  v_desc := 'Promoter: Ashok   Kumar (Individual). Address: Multaina Road, Tehsil & District Bathinda. PIN: 151201. Valid upto: 07-Oct-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0725';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GK AEROVIEW APARTMENTS (Other than Individual)","address":"Vill. Dyalpura, H.B. No. 289, Tehsil Zirakpur","pin_code":"140603","registration_date":"26-Jul-2021","valid_upto":"05-Jun-2024"}'::jsonb;
  v_desc := 'Promoter: GK AEROVIEW APARTMENTS (Other than Individual). Address: Vill. Dyalpura, H.B. No. 289, Tehsil Zirakpur. PIN: 140603. Valid upto: 05-Jun-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0152';
  v_meta := '{"district":"Ludhiana","promoter":"Home Life  Buildcon Private Limited (Other than Individual)","address":"Village Ayali Kalan, H.B. No. 155, Tehsil and District Ludhiana","pin_code":"141012","registration_date":"26-Jul-2021","valid_upto":"31-Mar-2025"}'::jsonb;
  v_desc := 'Promoter: Home Life  Buildcon Private Limited (Other than Individual). Address: Village Ayali Kalan, H.B. No. 155, Tehsil and District Ludhiana. PIN: 141012. Valid upto: 31-Mar-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0726';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Balaji Developers (Other than Individual)","address":"VILLAGE CHANALON, HADBDAST NO. 110, KURALI, SAS NAGAR","pin_code":"140103","registration_date":"26-Jul-2021","valid_upto":"31-Dec-2026"}'::jsonb;
  v_desc := 'Promoter: Balaji Developers (Other than Individual). Address: VILLAGE CHANALON, HADBDAST NO. 110, KURALI, SAS NAGAR. PIN: 140103. Valid upto: 31-Dec-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0727';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MANGLAM INFRA (Other than Individual)","address":"HB NO. 289, VILLAGE DYALPURA, MC ZIRAKPUR, PUNJAB","pin_code":"140603","registration_date":"26-Jul-2021","valid_upto":"30-May-2026"}'::jsonb;
  v_desc := 'Promoter: MANGLAM INFRA (Other than Individual). Address: HB NO. 289, VILLAGE DYALPURA, MC ZIRAKPUR, PUNJAB. PIN: 140603. Valid upto: 30-May-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0153';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Silver City Housing and Infrastructure Limited (Other than Individual)","address":"H.B. NO. 236 VILLAGE BHANKHARPUR, SUB TEHSIL ZIRAKPUR, DISTRICT SAS NAGAR","pin_code":"140201","registration_date":"26-Jul-2021","valid_upto":"30-Jun-2024"}'::jsonb;
  v_desc := 'Promoter: Silver City Housing and Infrastructure Limited (Other than Individual). Address: H.B. NO. 236 VILLAGE BHANKHARPUR, SUB TEHSIL ZIRAKPUR, DISTRICT SAS NAGAR. PIN: 140201. Valid upto: 30-Jun-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0723';
  v_meta := '{"district":"Jalandhar","promoter":"Harmol   Singh (Individual)","address":"Village Usmanpur, Pholriwal Road, Tehsil and District Jallandhar","pin_code":"144026","registration_date":"08-Jul-2021","valid_upto":"30-Nov-2024"}'::jsonb;
  v_desc := 'Promoter: Harmol   Singh (Individual). Address: Village Usmanpur, Pholriwal Road, Tehsil and District Jallandhar. PIN: 144026. Valid upto: 30-Nov-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0722';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MANNAT MAPLE REALTORS AND BUILDERS (Other than Individual)","address":"HB No. 289, VILLAGE DYALPURA, SUB TEHSIL, ZIRAKPUR","pin_code":"140603","registration_date":"08-Jul-2021","valid_upto":"24-Jan-2024"}'::jsonb;
  v_desc := 'Promoter: MANNAT MAPLE REALTORS AND BUILDERS (Other than Individual). Address: HB No. 289, VILLAGE DYALPURA, SUB TEHSIL, ZIRAKPUR. PIN: 140603. Valid upto: 24-Jan-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0721';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"INVESTOR STUDIO (Other than Individual)","address":"H. B. No. 289 Village Diyalpura,Sub Tehsil Zirakpur, District S.A.S. Nagar","pin_code":"140603","registration_date":"08-Jul-2021","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: INVESTOR STUDIO (Other than Individual). Address: H. B. No. 289 Village Diyalpura,Sub Tehsil Zirakpur, District S.A.S. Nagar. PIN: 140603. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR0449';
  v_meta := '{"district":"Ludhiana","promoter":"Finton Homes (Other than Individual)","address":"Hampton Court Business  Park, NH-95, Chandigarh Road,","pin_code":"141123","website":"www.hhomes.in","registration_date":"18-Apr-2019","valid_upto":"31-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: Finton Homes (Other than Individual). Address: Hampton Court Business  Park, NH-95, Chandigarh Road,. PIN: 141123. Valid upto: 31-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0720';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"GOLF LINK (RESIDENTIAL PROJECT), SECTOR 118 TDI CITY-I","pin_code":"140301","registration_date":"15-Jun-2021","valid_upto":"31-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: GOLF LINK (RESIDENTIAL PROJECT), SECTOR 118 TDI CITY-I. PIN: 140301. Valid upto: 31-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0150';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"SOUTH EXTESNION-II SECTOR 117, SCO 144-145 SECTOR 117 200 FEET  INTERNATIONAL AIRPORT ROAD TDI CITY","pin_code":"140301","registration_date":"15-Jun-2021","valid_upto":"31-Mar-2025"}'::jsonb;
  v_desc := 'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: SOUTH EXTESNION-II SECTOR 117, SCO 144-145 SECTOR 117 200 FEET  INTERNATIONAL AIRPORT ROAD TDI CITY. PIN: 140301. Valid upto: 31-Mar-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0716';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"CHIRTAKOOT RESIDENTIAL PLOTS, SECTOR 92 TDI CITY I SAS NAGAR","pin_code":"140301","registration_date":"11-Jun-2021","valid_upto":"31-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: CHIRTAKOOT RESIDENTIAL PLOTS, SECTOR 92 TDI CITY I SAS NAGAR. PIN: 140301. Valid upto: 31-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0719';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Metro Developers (Other than Individual)","address":"V.I.P Road Bishanpura, Near Jai Puria, Zirakpur, S.A.S Nagar, Mohali.","pin_code":"140603","registration_date":"11-Jun-2021","valid_upto":"31-Mar-2025"}'::jsonb;
  v_desc := 'Promoter: Metro Developers (Other than Individual). Address: V.I.P Road Bishanpura, Near Jai Puria, Zirakpur, S.A.S Nagar, Mohali.. PIN: 140603. Valid upto: 31-Mar-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0717';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"CONNAUGHT PLOTS, SECTOR 74A  TDI CITY I SAS NAGAR","pin_code":"140301","registration_date":"11-Jun-2021","valid_upto":"31-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: CONNAUGHT PLOTS, SECTOR 74A  TDI CITY I SAS NAGAR. PIN: 140301. Valid upto: 31-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0718';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SAV Infosystems L.L.P. (Other than Individual)","address":"Village Baltana , Hadbast No-47 under Mc Zirakpur","pin_code":"140604","registration_date":"11-Jun-2021","valid_upto":"31-Mar-2026"}'::jsonb;
  v_desc := 'Promoter: SAV Infosystems L.L.P. (Other than Individual). Address: Village Baltana , Hadbast No-47 under Mc Zirakpur. PIN: 140604. Valid upto: 31-Mar-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0708';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SU Ventures (Other than Individual)","address":"ACME TOWER,, village  Khanpur","pin_code":"140301","registration_date":"25-May-2021","valid_upto":"25-Jan-2024"}'::jsonb;
  v_desc := 'Promoter: SU Ventures (Other than Individual). Address: ACME TOWER,, village  Khanpur. PIN: 140301. Valid upto: 25-Jan-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0712';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"RAM NATH AGGARWAL BUILDERS PVT LTD (Other than Individual)","address":"High Tech City, Village Chhat, Zirakpur","pin_code":"140603","registration_date":"03-Jun-2021","valid_upto":"31-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: RAM NATH AGGARWAL BUILDERS PVT LTD (Other than Individual). Address: High Tech City, Village Chhat, Zirakpur. PIN: 140603. Valid upto: 31-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0709';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Shivjot Realty (Other than Individual)","address":"Village Mubarikpur","pin_code":"140603","registration_date":"03-Jun-2021","valid_upto":"21-Jan-2025"}'::jsonb;
  v_desc := 'Promoter: Shivjot Realty (Other than Individual). Address: Village Mubarikpur. PIN: 140603. Valid upto: 21-Jan-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL65-PI0013';
  v_meta := '{"district":"Patiala","promoter":"SIEL INDUSTRIAL ESTATE LTD (Other than Individual)","address":"Rajpura","pin_code":"140401","registration_date":"02-Jun-2021","valid_upto":"12-Sep-2023"}'::jsonb;
  v_desc := 'Promoter: SIEL INDUSTRIAL ESTATE LTD (Other than Individual). Address: Rajpura. PIN: 140401. Valid upto: 12-Sep-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT40-PR0714';
  v_meta := '{"district":"Kapurthala","promoter":"Improvement Trust Phagwara  (Other than Individual)","address":"Khothran Road, phagwara","pin_code":"144401","registration_date":"02-Jun-2021","valid_upto":"24-Oct-2023"}'::jsonb;
  v_desc := 'Promoter: Improvement Trust Phagwara  (Other than Individual). Address: Khothran Road, phagwara. PIN: 144401. Valid upto: 24-Oct-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0710';
  v_meta := '{"district":"Ludhiana","promoter":"Nevada Housing LLP (Other than Individual)","address":"Village Balloke, Ludhiana","pin_code":"141001","registration_date":"02-Jun-2021","valid_upto":"30-Jun-2026"}'::jsonb;
  v_desc := 'Promoter: Nevada Housing LLP (Other than Individual). Address: Village Balloke, Ludhiana. PIN: 141001. Valid upto: 30-Jun-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PC0148';
  v_meta := '{"district":"Patiala","promoter":"Mata Brijeshwari Devi Infrastructure (Other than Individual)","address":"infront of Hyundai Showroom Near ITBP Complex, Patiala Rajpura Road, Patiala","pin_code":"147001","registration_date":"25-May-2021","valid_upto":"31-Jan-2020"}'::jsonb;
  v_desc := 'Promoter: Mata Brijeshwari Devi Infrastructure (Other than Individual). Address: infront of Hyundai Showroom Near ITBP Complex, Patiala Rajpura Road, Patiala. PIN: 147001. Valid upto: 31-Jan-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0147';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ICON GROUP  (Other than Individual)","address":"Sector 62, SAS Nagar (Mohali), Sector 34 C, Chandigarh.","pin_code":"160062","registration_date":"19-May-2021","valid_upto":"31-Dec-2026"}'::jsonb;
  v_desc := 'Promoter: ICON GROUP  (Other than Individual). Address: Sector 62, SAS Nagar (Mohali), Sector 34 C, Chandigarh.. PIN: 160062. Valid upto: 31-Dec-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0707';
  v_meta := '{"district":"Ludhiana","promoter":"DAMINI RESORTS & BUILDERS PVT. LTD. (Other than Individual)","address":"VILLAGE THAKKARWAL","pin_code":"141013","registration_date":"13-May-2021","valid_upto":"31-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: DAMINI RESORTS & BUILDERS PVT. LTD. (Other than Individual). Address: VILLAGE THAKKARWAL. PIN: 141013. Valid upto: 31-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT39-PR0705';
  v_meta := '{"district":"Kapurthala","promoter":"Grover Builders (Other than Individual)","address":"Village Noorpur Dona (H.B.No.144)","pin_code":"144601","registration_date":"10-May-2021","valid_upto":"20-Oct-2021"}'::jsonb;
  v_desc := 'Promoter: Grover Builders (Other than Individual). Address: Village Noorpur Dona (H.B.No.144). PIN: 144601. Valid upto: 20-Oct-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT40-PC0146';
  v_meta := '{"district":"Kapurthala","promoter":"Guru Nanak Builders (Other than Individual)","address":"Village Maheru, H.B. No. 84, Tehsil Phagwara , Kapurthala, Punjab, Village Maheru, H.B. No. 84, Tehsil Phagwara , Kapurthala, Punjab","pin_code":"144401","registration_date":"10-May-2021","valid_upto":"31-Mar-2026"}'::jsonb;
  v_desc := 'Promoter: Guru Nanak Builders (Other than Individual). Address: Village Maheru, H.B. No. 84, Tehsil Phagwara , Kapurthala, Punjab, Village Maheru, H.B. No. 84, Tehsil Phagwara , Kapurthala, Punjab. PIN: 144401. Valid upto: 31-Mar-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0704';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Pinnacle builders & engineers private limited (Other than Individual)","address":"Hadbast No.53, Village Peer Muchalla","pin_code":"134117","registration_date":"10-May-2021","valid_upto":"15-Feb-2026"}'::jsonb;
  v_desc := 'Promoter: Pinnacle builders & engineers private limited (Other than Individual). Address: Hadbast No.53, Village Peer Muchalla. PIN: 134117. Valid upto: 15-Feb-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PM0161';
  v_meta := '{"district":"Jalandhar","promoter":"Improvement Trust Kartarpur (Other than Individual)","address":"Kartarpur, Kishangarh Road, Kartarpur, Kartarpur","pin_code":"144301","registration_date":"10-May-2021","valid_upto":"31-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: Improvement Trust Kartarpur (Other than Individual). Address: Kartarpur, Kishangarh Road, Kartarpur, Kartarpur. PIN: 144301. Valid upto: 31-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0451';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MB Infrabuild Private Limited (Other than Individual)","address":"Beverly Golf Avenue, Golf Range, SAS Nagar, Sector-65","pin_code":"160062","website":"www.beverlygolfavenue.com","registration_date":"23-Apr-2019","valid_upto":"31-Jul-2023"}'::jsonb;
  v_desc := 'Promoter: MB Infrabuild Private Limited (Other than Individual). Address: Beverly Golf Avenue, Golf Range, SAS Nagar, Sector-65. PIN: 160062. Valid upto: 31-Jul-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PM0140';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ROYALE ESTATE AFFORDABLE HOUSING (Other than Individual)","address":"ZIRAKPUR-PATIALA HIGHWAY,ADJOINING CHANDIGARH ROYALE CITY, VILLAGE KARALA","pin_code":"140603","registration_date":"18-Mar-2019","valid_upto":"21-Mar-2022"}'::jsonb;
  v_desc := 'Promoter: ROYALE ESTATE AFFORDABLE HOUSING (Other than Individual). Address: ZIRAKPUR-PATIALA HIGHWAY,ADJOINING CHANDIGARH ROYALE CITY, VILLAGE KARALA. PIN: 140603. Valid upto: 21-Mar-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL34-PR0702';
  v_meta := '{"district":"Jalandhar","promoter":"PPR INFRASTRUCTURE LIMITED (Other than Individual)","address":"VILLAGE WARIANA","pin_code":"144021","registration_date":"16-Apr-2021","valid_upto":"31-Oct-2023"}'::jsonb;
  v_desc := 'Promoter: PPR INFRASTRUCTURE LIMITED (Other than Individual). Address: VILLAGE WARIANA. PIN: 144021. Valid upto: 31-Oct-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH48-PR0699';
  v_meta := '{"district":"Ludhiana","promoter":"DYNAMIC INFRADEVELOPERS PRIVATE LIMITED (Other than Individual)","address":"VILLAGE DEHROR, DEHLON ROAD","pin_code":"141418","registration_date":"24-Mar-2021","valid_upto":"23-Mar-2022"}'::jsonb;
  v_desc := 'Promoter: DYNAMIC INFRADEVELOPERS PRIVATE LIMITED (Other than Individual). Address: VILLAGE DEHROR, DEHLON ROAD. PIN: 141418. Valid upto: 23-Mar-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PM0160';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"JMR city (Other than Individual)","address":"Erealto Tech City, Haibatpur Road, Mubarkpur Derabassi(H.B no 357), SAS Nagar Mohali, Punjab","pin_code":"140507","registration_date":"23-Mar-2021","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: JMR city (Other than Individual). Address: Erealto Tech City, Haibatpur Road, Mubarkpur Derabassi(H.B no 357), SAS Nagar Mohali, Punjab. PIN: 140507. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0698';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AVENUE BUILDERS AND PROMOTORS (Other than Individual)","address":"Block -F2, wave Estate, Sector -85","pin_code":"140308","website":"www.theparadiseindia.com/","registration_date":"23-Mar-2021","valid_upto":"31-Oct-2025"}'::jsonb;
  v_desc := 'Promoter: AVENUE BUILDERS AND PROMOTORS (Other than Individual). Address: Block -F2, wave Estate, Sector -85. PIN: 140308. Valid upto: 31-Oct-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZR22-PR0700';
  v_meta := '{"district":"Firozpur","promoter":"Shree Gordhan Overseas Pvt Ltd (Other than Individual)","address":"Abohar","pin_code":"140001","registration_date":"23-Mar-2021","valid_upto":"31-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: Shree Gordhan Overseas Pvt Ltd (Other than Individual). Address: Abohar. PIN: 140001. Valid upto: 31-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0144';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Hare Krishna Buildtech (Other than Individual)","address":"Village Ramgarh Bhudda","pin_code":"141603","registration_date":"10-Mar-2021","valid_upto":"31-Mar-2025"}'::jsonb;
  v_desc := 'Promoter: Hare Krishna Buildtech (Other than Individual). Address: Village Ramgarh Bhudda. PIN: 141603. Valid upto: 31-Mar-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0583';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MOTIA PROPERTY CREATORS (Other than Individual)","address":"VILL. SANOULI, MC ZIRAKPUR","pin_code":"140603","registration_date":"07-Feb-2020","valid_upto":"31-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: MOTIA PROPERTY CREATORS (Other than Individual). Address: VILL. SANOULI, MC ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0649';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Maxxus Developers (Other than Individual)","address":"Village- Singhpura and Nagla, Tehsil- Zirakpur","pin_code":"140603","registration_date":"06-Oct-2020","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: Maxxus Developers (Other than Individual). Address: Village- Singhpura and Nagla, Tehsil- Zirakpur. PIN: 140603. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PM0159';
  v_meta := '{"district":"Jalandhar","promoter":"Harmol   Singh (Individual)","address":"South City Jalandhar Village Usmanpur  P.O: Lambra S.O","pin_code":"144026","registration_date":"03-Mar-2021","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: Harmol   Singh (Individual). Address: South City Jalandhar Village Usmanpur  P.O: Lambra S.O. PIN: 144026. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0143';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Space Builders & Promoters (Other than Individual)","address":"Village Singhpura, Zirakpur, SAS N  agar, Mohali, Punjab","pin_code":"140603","registration_date":"03-Mar-2021","valid_upto":"20-Nov-2025"}'::jsonb;
  v_desc := 'Promoter: Space Builders & Promoters (Other than Individual). Address: Village Singhpura, Zirakpur, SAS N  agar, Mohali, Punjab. PIN: 140603. Valid upto: 20-Nov-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0696';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jubilee Infra Planner LLP (Other than Individual)","address":"Jubilee Golfvista, GH-10, Sector 91(JLPL),","pin_code":"160071","website":"www.jubileegroup.in","registration_date":"03-Mar-2021","valid_upto":"31-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: Jubilee Infra Planner LLP (Other than Individual). Address: Jubilee Golfvista, GH-10, Sector 91(JLPL),. PIN: 160071. Valid upto: 31-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0572';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Primary Estates and Developers  (Other than Individual)","address":"Ludhiana Kharar Road Kharar","pin_code":"140301","registration_date":"16-Jan-2020","valid_upto":"20-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: Primary Estates and Developers  (Other than Individual). Address: Ludhiana Kharar Road Kharar. PIN: 140301. Valid upto: 20-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0695';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CHANDIGARH INFRASTRUCTURE AND DEVELOPERS (Other than Individual)","address":"SAI ENCLAVE-2, VILLAGE BHANKARPUR","pin_code":"140507","registration_date":"15-Feb-2021","valid_upto":"31-Mar-2022"}'::jsonb;
  v_desc := 'Promoter: CHANDIGARH INFRASTRUCTURE AND DEVELOPERS (Other than Individual). Address: SAI ENCLAVE-2, VILLAGE BHANKARPUR. PIN: 140507. Valid upto: 31-Mar-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PR0694';
  v_meta := '{"district":"Barnala","promoter":"Barnala Improvement Trust  (Other than Individual)","address":"Near ITI Chowk, Barnala","pin_code":"148101","registration_date":"15-Feb-2021","valid_upto":"31-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: Barnala Improvement Trust  (Other than Individual). Address: Near ITI Chowk, Barnala. PIN: 148101. Valid upto: 31-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0142';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SANCHIT   SINGLA  (Individual)","address":"Vill- RAMGARH BHUDA, HB No-42,, TEHSIL ZIRAKPUR","pin_code":"140603","registration_date":"15-Feb-2021","valid_upto":"31-Dec-2024"}'::jsonb;
  v_desc := 'Promoter: SANCHIT   SINGLA  (Individual). Address: Vill- RAMGARH BHUDA, HB No-42,, TEHSIL ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0693';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GBP Real Assets  (Other than Individual)","address":"Smart City Banur, Ward No. 1, H.B No. 280, MC - Banur  Banure to Landran Road","pin_code":"140601","registration_date":"09-Feb-2021","valid_upto":"31-Mar-2025"}'::jsonb;
  v_desc := 'Promoter: GBP Real Assets  (Other than Individual). Address: Smart City Banur, Ward No. 1, H.B No. 280, MC - Banur  Banure to Landran Road. PIN: 140601. Valid upto: 31-Mar-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0105';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Dreamcity Realtors Private Limited (Other than Individual)","address":"Village Chhat, PR - 7 Road, Zirakpur, Near Aerocity Light Point,Sahibzada Ajit Singh Nagar (Mohali)","pin_code":"140607","website":"www.sushma.co.in","registration_date":"27-Nov-2019","valid_upto":"07-Jun-2024"}'::jsonb;
  v_desc := 'Promoter: Dreamcity Realtors Private Limited (Other than Individual). Address: Village Chhat, PR - 7 Road, Zirakpur, Near Aerocity Light Point,Sahibzada Ajit Singh Nagar (Mohali). PIN: 140607. Valid upto: 07-Jun-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR77-PR0691';
  v_meta := '{"district":"Sangrur","promoter":"EKTA CONSTRUCTIONS Co. (Other than Individual)","address":"DHURI","pin_code":"148024","registration_date":"29-Jan-2021","valid_upto":"31-Dec-2025"}'::jsonb;
  v_desc := 'Promoter: EKTA CONSTRUCTIONS Co. (Other than Individual). Address: DHURI. PIN: 148024. Valid upto: 31-Dec-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0692';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Hanumant Builders and Developers (Other than Individual)","address":"SECTOR 113, LANDRAN","pin_code":"140307","registration_date":"29-Jan-2021","valid_upto":"31-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: Hanumant Builders and Developers (Other than Individual). Address: SECTOR 113, LANDRAN. PIN: 140307. Valid upto: 31-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0690';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"JOY HOMES (Other than Individual)","address":"Plots in Block A Wave Estate Sector 85 Mohali","pin_code":"140308","registration_date":"29-Jan-2021","valid_upto":"31-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: JOY HOMES (Other than Individual). Address: Plots in Block A Wave Estate Sector 85 Mohali. PIN: 140308. Valid upto: 31-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR77-PM0158';
  v_meta := '{"district":"Sangrur","promoter":"Patiala Urban Planning and Development Authority (Other than Individual)","address":"urban estate, village mangwal and khurana, sangrur, sangrur","pin_code":"148100","website":"www.pdapatiala.in","registration_date":"22-Jan-2021","valid_upto":"30-Dec-2024"}'::jsonb;
  v_desc := 'Promoter: Patiala Urban Planning and Development Authority (Other than Individual). Address: urban estate, village mangwal and khurana, sangrur, sangrur. PIN: 148100. Valid upto: 30-Dec-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0141';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sehaj Bir Singh Sidhu (Individual)","address":"Village Singhpura ambala chandigarh national highway, adjoining gbp central mall zirakpur","pin_code":"140103","registration_date":"22-Jan-2021","valid_upto":"30-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: Sehaj Bir Singh Sidhu (Individual). Address: Village Singhpura ambala chandigarh national highway, adjoining gbp central mall zirakpur. PIN: 140103. Valid upto: 30-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FGS17-PI0012';
  v_meta := '{"district":"Fatehgarh Sahib","promoter":"PUNJAB SMALL INDUSTRIES & EXPORT CORPORATION LTD. (Other than Individual)","address":"Wazirabad","pin_code":"140602","registration_date":"11-Jan-2021","valid_upto":"31-Dec-2025"}'::jsonb;
  v_desc := 'Promoter: PUNJAB SMALL INDUSTRIES & EXPORT CORPORATION LTD. (Other than Individual). Address: Wazirabad. PIN: 140602. Valid upto: 31-Dec-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MNS50-PR0686';
  v_meta := '{"district":"Mansa","promoter":"Smart Move housing Pvt Ltd (Other than Individual)","address":"Near Sirsa Barnala road","pin_code":"140306","registration_date":"11-Jan-2021","valid_upto":"31-Dec-2025"}'::jsonb;
  v_desc := 'Promoter: Smart Move housing Pvt Ltd (Other than Individual). Address: Near Sirsa Barnala road. PIN: 140306. Valid upto: 31-Dec-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0687';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Future City Developers Pvt Ltd (Other than Individual)","address":"Amari Heights.Shivalik Avenue,Sector 125,SAS Nagar","pin_code":"140301","registration_date":"11-Jan-2021","valid_upto":"31-Oct-2018"}'::jsonb;
  v_desc := 'Promoter: Future City Developers Pvt Ltd (Other than Individual). Address: Amari Heights.Shivalik Avenue,Sector 125,SAS Nagar. PIN: 140301. Valid upto: 31-Oct-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR0688';
  v_meta := '{"district":"Bathinda","promoter":"LV DEVELOPERS (Other than Individual)","address":"SAHARA CITY, RAMPURA PHUL","pin_code":"151103","registration_date":"11-Jan-2021","valid_upto":"31-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: LV DEVELOPERS (Other than Individual). Address: SAHARA CITY, RAMPURA PHUL. PIN: 151103. Valid upto: 31-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0684';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omega Infra Estates Private Limited (Other than Individual)","address":"Village Kanpur, MC Kharar, Mohali","pin_code":"140301","registration_date":"11-Jan-2021","valid_upto":"31-Mar-2025"}'::jsonb;
  v_desc := 'Promoter: Omega Infra Estates Private Limited (Other than Individual). Address: Village Kanpur, MC Kharar, Mohali. PIN: 140301. Valid upto: 31-Mar-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0685';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TURNSTONE REALTY LLP (Other than Individual)","address":"SITE NO 4 & 5 IT CITY SECTOR 82, ALPHA SAS NAGAR","pin_code":"160055","registration_date":"11-Jan-2021","valid_upto":"30-Oct-2025"}'::jsonb;
  v_desc := 'Promoter: TURNSTONE REALTY LLP (Other than Individual). Address: SITE NO 4 & 5 IT CITY SECTOR 82, ALPHA SAS NAGAR. PIN: 160055. Valid upto: 30-Oct-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0656';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Canvas Promoters & Developers (Other than Individual)","address":"Wave Estate, Sector 85 Mohali","pin_code":"140308","registration_date":"20-Oct-2020","valid_upto":"31-Mar-2024"}'::jsonb;
  v_desc := 'Promoter: Canvas Promoters & Developers (Other than Individual). Address: Wave Estate, Sector 85 Mohali. PIN: 140308. Valid upto: 31-Mar-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR0682';
  v_meta := '{"district":"Ludhiana","promoter":"AYALI DEVELOPERS AND COLONISERS PRIVATE LIMITED (Other than Individual)","address":"VILLAGE BIRMI, MULLANPUR DAKHA","pin_code":"141102","registration_date":"04-Jan-2021","valid_upto":"31-Oct-2024"}'::jsonb;
  v_desc := 'Promoter: AYALI DEVELOPERS AND COLONISERS PRIVATE LIMITED (Other than Individual). Address: VILLAGE BIRMI, MULLANPUR DAKHA. PIN: 141102. Valid upto: 31-Oct-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0680';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Suksha Developers Private Limited (Other than Individual)","address":"Village Nagla, Near Manav Mangal School","pin_code":"140603","website":"www.sushma.co.in","registration_date":"04-Jan-2021","valid_upto":"31-Dec-2027"}'::jsonb;
  v_desc := 'Promoter: Suksha Developers Private Limited (Other than Individual). Address: Village Nagla, Near Manav Mangal School. PIN: 140603. Valid upto: 31-Dec-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0140';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Suksha Developers Private Limited (Other than Individual)","address":"Village Nagla, Near Manav Mangal School","pin_code":"140603","website":"www.sushma.co.in","registration_date":"04-Jan-2021","valid_upto":"31-Dec-2027"}'::jsonb;
  v_desc := 'Promoter: Suksha Developers Private Limited (Other than Individual). Address: Village Nagla, Near Manav Mangal School. PIN: 140603. Valid upto: 31-Dec-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0679';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"N.H. Matcon (Other than Individual)","address":"Gazipur Road, Zirakpur","pin_code":"140103","registration_date":"28-Dec-2020","valid_upto":"31-Mar-2022"}'::jsonb;
  v_desc := 'Promoter: N.H. Matcon (Other than Individual). Address: Gazipur Road, Zirakpur. PIN: 140103. Valid upto: 31-Mar-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0677';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SATNAM KAUR CHADHA (Individual)","address":"VILLAGE KHANPUR, H.B. No. 183, KHARAR","pin_code":"140301","registration_date":"28-Dec-2020","valid_upto":"31-Mar-2022"}'::jsonb;
  v_desc := 'Promoter: SATNAM KAUR CHADHA (Individual). Address: VILLAGE KHANPUR, H.B. No. 183, KHARAR. PIN: 140301. Valid upto: 31-Mar-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR77-PC0139';
  v_meta := '{"district":"Sangrur","promoter":"R.G Developers (Other than Individual)","address":"VILLAGE GHABDAN, HADBAST NO. 30, Teh. & District Sangrur","pin_code":"148001","registration_date":"28-Dec-2020","valid_upto":"19-Nov-2025"}'::jsonb;
  v_desc := 'Promoter: R.G Developers (Other than Individual). Address: VILLAGE GHABDAN, HADBAST NO. 30, Teh. & District Sangrur. PIN: 148001. Valid upto: 19-Nov-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0397';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Avesta Infratech Private Limited (Other than Individual)","address":"Avesta Villas, GBP Superia, Mouja- Gulabgarh","pin_code":"140507","registration_date":"01-Nov-2018","valid_upto":"30-Sep-2020"}'::jsonb;
  v_desc := 'Promoter: Avesta Infratech Private Limited (Other than Individual). Address: Avesta Villas, GBP Superia, Mouja- Gulabgarh. PIN: 140507. Valid upto: 30-Sep-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0114';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"STJ Infra (Other than Individual)","address":"Village Nabha, Near Hotel Radisson, Zirakpur - Patiala Highway, Zirakpur","pin_code":"140603","registration_date":"07-Feb-2020","valid_upto":"31-Oct-2024"}'::jsonb;
  v_desc := 'Promoter: STJ Infra (Other than Individual). Address: Village Nabha, Near Hotel Radisson, Zirakpur - Patiala Highway, Zirakpur. PIN: 140603. Valid upto: 31-Oct-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR0468';
  v_meta := '{"district":"Ludhiana","promoter":"Gaurav Land Developers and Colonizers Private Limited (Other than Individual)","address":"Village Bholapur, Adjoining Garden City, Chandigarh Road, Ludhiana East","pin_code":"141123","registration_date":"31-May-2019","valid_upto":"30-Jun-2023"}'::jsonb;
  v_desc := 'Promoter: Gaurav Land Developers and Colonizers Private Limited (Other than Individual). Address: Village Bholapur, Adjoining Garden City, Chandigarh Road, Ludhiana East. PIN: 141123. Valid upto: 30-Jun-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0672';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Maple Residences (Other than Individual)","address":"PEER MUCHALLA, MC ZIRAKPUR","pin_code":"140603","registration_date":"04-Dec-2020","valid_upto":"31-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: Maple Residences (Other than Individual). Address: PEER MUCHALLA, MC ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0669';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Shivalik Infrastructure and Developers Private Limited (Other than Individual)","address":"Village Chhajumajra, Kharar","pin_code":"140301","registration_date":"04-Dec-2020","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: Shivalik Infrastructure and Developers Private Limited (Other than Individual). Address: Village Chhajumajra, Kharar. PIN: 140301. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PR0675';
  v_meta := '{"district":"Barnala","promoter":"Barnala Builders & Developers Pvt. Ltd. (Other than Individual)","address":"Village Branala C","pin_code":"148001","registration_date":"04-Dec-2020","valid_upto":"20-Aug-2024"}'::jsonb;
  v_desc := 'Promoter: Barnala Builders & Developers Pvt. Ltd. (Other than Individual). Address: Village Branala C. PIN: 148001. Valid upto: 20-Aug-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0667';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SKBK DEVELOPERS (Other than Individual)","address":"Sector 125, Highway City Sunny Enclave Kharar, Village Jhugian","pin_code":"140301","registration_date":"04-Dec-2020","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: SKBK DEVELOPERS (Other than Individual). Address: Sector 125, Highway City Sunny Enclave Kharar, Village Jhugian. PIN: 140301. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0674';
  v_meta := '{"district":"Jalandhar","promoter":"Harmol   Singh (Individual)","address":"Village Usmanpur, Jalandhar","pin_code":"144026","registration_date":"04-Dec-2020","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: Harmol   Singh (Individual). Address: Village Usmanpur, Jalandhar. PIN: 144026. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZR22-PR0670';
  v_meta := '{"district":"Firozpur","promoter":"MALKIAT SINGH  DHALIWAL (Individual)","address":"Old Zira Road, Firozpur City","pin_code":"152002","registration_date":"04-Dec-2020","valid_upto":"20-Sep-2022"}'::jsonb;
  v_desc := 'Promoter: MALKIAT SINGH  DHALIWAL (Individual). Address: Old Zira Road, Firozpur City. PIN: 152002. Valid upto: 20-Sep-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0671';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jasbir  Singh (Individual)","address":"H.B- 14 mouja Rouni MC derabassi","pin_code":"140507","registration_date":"04-Dec-2020","valid_upto":"31-Oct-2024"}'::jsonb;
  v_desc := 'Promoter: Jasbir  Singh (Individual). Address: H.B- 14 mouja Rouni MC derabassi. PIN: 140507. Valid upto: 31-Oct-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0663';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Dream Homes (Other than Individual)","address":"CHHAJUMAJRA, TEHSIL KHARAR","pin_code":"140301","registration_date":"05-Nov-2020","valid_upto":"21-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: Dream Homes (Other than Individual). Address: CHHAJUMAJRA, TEHSIL KHARAR. PIN: 140301. Valid upto: 21-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0135';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"METRO DEVELOPERS (Other than Individual)","address":"VIP ROAD BISHANPURA, NEAR JAIPURIA, ZIRAKPUR","pin_code":"140603","registration_date":"05-Nov-2020","valid_upto":"31-Mar-2025"}'::jsonb;
  v_desc := 'Promoter: METRO DEVELOPERS (Other than Individual). Address: VIP ROAD BISHANPURA, NEAR JAIPURIA, ZIRAKPUR. PIN: 140603. Valid upto: 31-Mar-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL61-PR0660';
  v_meta := '{"district":"Patiala","promoter":"BH PROMOTERS & DEVELOPERS Pvt. Ltd. (Other than Individual)","address":"ITBP ROAD VILLAGE CHOURA","pin_code":"147002","registration_date":"05-Nov-2020","valid_upto":"03-Mar-2021"}'::jsonb;
  v_desc := 'Promoter: BH PROMOTERS & DEVELOPERS Pvt. Ltd. (Other than Individual). Address: ITBP ROAD VILLAGE CHOURA. PIN: 147002. Valid upto: 03-Mar-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL61-PR0662';
  v_meta := '{"district":"Patiala","promoter":"B H PROMOTERS AND DEVELOPERS PVT LTD (Other than Individual)","address":"ITBP SANOUR ROAD, Village CHOURA","pin_code":"147002","registration_date":"05-Nov-2020","valid_upto":"31-Mar-2021"}'::jsonb;
  v_desc := 'Promoter: B H PROMOTERS AND DEVELOPERS PVT LTD (Other than Individual). Address: ITBP SANOUR ROAD, Village CHOURA. PIN: 147002. Valid upto: 31-Mar-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL61-PR0661';
  v_meta := '{"district":"Patiala","promoter":"B H PROPERTIES PVT LTD (Other than Individual)","address":"ITBP ROAD, VILLAGE CHOURA","pin_code":"147001","registration_date":"05-Nov-2020","valid_upto":"31-Mar-2021"}'::jsonb;
  v_desc := 'Promoter: B H PROPERTIES PVT LTD (Other than Individual). Address: ITBP ROAD, VILLAGE CHOURA. PIN: 147001. Valid upto: 31-Mar-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0659';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"SECTOR 110 & 111","pin_code":"140301","registration_date":"05-Nov-2020","valid_upto":"30-Jul-2023"}'::jsonb;
  v_desc := 'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: SECTOR 110 & 111. PIN: 140301. Valid upto: 30-Jul-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL36-PR0658';
  v_meta := '{"district":"Jalandhar","promoter":"GOPAL & COMPANY (Other than Individual)","address":"VILLAGE PHILLAUR, TEH PHILLAUR","pin_code":"144410","registration_date":"20-Oct-2020","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: GOPAL & COMPANY (Other than Individual). Address: VILLAGE PHILLAUR, TEH PHILLAUR. PIN: 144410. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0134';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"CP SQUARE EXTENSION, 200 FT INTERNATIONAL AIRPORT ROAD SECTOR 117 TDI CITY I","pin_code":"140301","registration_date":"20-Oct-2020","valid_upto":"30-Jul-2023"}'::jsonb;
  v_desc := 'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: CP SQUARE EXTENSION, 200 FT INTERNATIONAL AIRPORT ROAD SECTOR 117 TDI CITY I. PIN: 140301. Valid upto: 30-Jul-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PR0654';
  v_meta := '{"district":"Barnala","promoter":"Barnala Builders & Developers Pvt. Ltd. (Other than Individual)","address":"Vill. Handiaya-Band Rasulpur","pin_code":"148101","registration_date":"21-Oct-2020","valid_upto":"25-Jun-2024"}'::jsonb;
  v_desc := 'Promoter: Barnala Builders & Developers Pvt. Ltd. (Other than Individual). Address: Vill. Handiaya-Band Rasulpur. PIN: 148101. Valid upto: 25-Jun-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0657';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"SECTOR 74A, 92, 116-119","pin_code":"140301","registration_date":"20-Oct-2020","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: SECTOR 74A, 92, 116-119. PIN: 140301. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL36-PM0156';
  v_meta := '{"district":"Jalandhar","promoter":"GOPAL & COMPANY (Other than Individual)","address":"VILLAGE PADDI JAGIR, TEHSIL PHILLAUR","pin_code":"144410","registration_date":"20-Oct-2020","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: GOPAL & COMPANY (Other than Individual). Address: VILLAGE PADDI JAGIR, TEHSIL PHILLAUR. PIN: 144410. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL36-PR0651';
  v_meta := '{"district":"Jalandhar","promoter":"RANJIT ESTATES (Other than Individual)","address":"VILLAGE DOSANJH KALAN, H.B. No. 198, Teh. Phillaur","pin_code":"144410","registration_date":"21-Oct-2020","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: RANJIT ESTATES (Other than Individual). Address: VILLAGE DOSANJH KALAN, H.B. No. 198, Teh. Phillaur. PIN: 144410. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PC0133';
  v_meta := '{"district":"Bathinda","promoter":"Balaji Fun Resort Private Limited (Other than Individual)","address":"Vill. Bhucho Kalan, Teh. & District Bathinda","pin_code":"151001","registration_date":"21-Oct-2020","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Balaji Fun Resort Private Limited (Other than Individual). Address: Vill. Bhucho Kalan, Teh. & District Bathinda. PIN: 151001. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0650';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CRD INFRA (Other than Individual)","address":"Dayalpura, Zirakpur, SAS Nagar","pin_code":"140603","registration_date":"15-Oct-2020","valid_upto":"31-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: CRD INFRA (Other than Individual). Address: Dayalpura, Zirakpur, SAS Nagar. PIN: 140603. Valid upto: 31-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0653';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"JOY HOMES (Other than Individual)","address":"Plots in Block A Wave Estate Sector 85 Mohali","pin_code":"140308","registration_date":"20-Oct-2020","valid_upto":"21-Aug-2023"}'::jsonb;
  v_desc := 'Promoter: JOY HOMES (Other than Individual). Address: Plots in Block A Wave Estate Sector 85 Mohali. PIN: 140308. Valid upto: 21-Aug-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0655';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"White Tower (Other than Individual)","address":"Vill. Khanpur Tehsil. Kharar Distt SAS Nagar Mohali","pin_code":"140307","registration_date":"20-Oct-2020","valid_upto":"31-Jan-2025"}'::jsonb;
  v_desc := 'Promoter: White Tower (Other than Individual). Address: Vill. Khanpur Tehsil. Kharar Distt SAS Nagar Mohali. PIN: 140307. Valid upto: 31-Jan-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0652';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Inder Raj Dhiman (Individual)","address":"Ramgarh Bhuda, Zirakpur","pin_code":"140603","registration_date":"20-Oct-2020","valid_upto":"31-Oct-2024"}'::jsonb;
  v_desc := 'Promoter: Inder Raj Dhiman (Individual). Address: Ramgarh Bhuda, Zirakpur. PIN: 140603. Valid upto: 31-Oct-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0641';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Satish Estate Pvt Ltd (Other than Individual)","address":"H.B.9 VILLAGE GULABGARH MC DERABSSI","pin_code":"140507","registration_date":"18-Sep-2020","valid_upto":"31-Dec-2024"}'::jsonb;
  v_desc := 'Promoter: Satish Estate Pvt Ltd (Other than Individual). Address: H.B.9 VILLAGE GULABGARH MC DERABSSI. PIN: 140507. Valid upto: 31-Dec-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT39-PR0645';
  v_meta := '{"district":"Kapurthala","promoter":"EXCELLENCE BUILDERS (Other than Individual)","address":"VILLAGE WADALA KALAN, KAPURTHALA","pin_code":"144601","registration_date":"18-Sep-2020","valid_upto":"28-Feb-2025"}'::jsonb;
  v_desc := 'Promoter: EXCELLENCE BUILDERS (Other than Individual). Address: VILLAGE WADALA KALAN, KAPURTHALA. PIN: 144601. Valid upto: 28-Feb-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0640';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"DARSHAN  SINGH (Individual)","address":"HB NO 213, KAULIMAJRA, MC LALRU, Teh. Dera Bassi","pin_code":"140501","registration_date":"08-Sep-2020","valid_upto":"31-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: DARSHAN  SINGH (Individual). Address: HB NO 213, KAULIMAJRA, MC LALRU, Teh. Dera Bassi. PIN: 140501. Valid upto: 31-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PM0155';
  v_meta := '{"district":"Ludhiana","promoter":"Anant Development and Constructions Pvt. Ltd (Other than Individual)","address":"Village Sahnewal, Sahnewal Ramgarh Road","pin_code":"141120","registration_date":"25-Sep-2020","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Anant Development and Constructions Pvt. Ltd (Other than Individual). Address: Village Sahnewal, Sahnewal Ramgarh Road. PIN: 141120. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0648';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AN BUILDERS (Other than Individual)","address":"B Block Wave Estate Sector 85","pin_code":"140308","registration_date":"25-Sep-2020","valid_upto":"30-Aug-2023"}'::jsonb;
  v_desc := 'Promoter: AN BUILDERS (Other than Individual). Address: B Block Wave Estate Sector 85. PIN: 140308. Valid upto: 30-Aug-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR0647';
  v_meta := '{"district":"Patiala","promoter":"Punj Land Estate Pvt Ltd (Other than Individual)","address":"Village PHILLOULI, Tehsil Patiala, Distt. Patiala","pin_code":"140147","registration_date":"25-Sep-2020","valid_upto":"30-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Punj Land Estate Pvt Ltd (Other than Individual). Address: Village PHILLOULI, Tehsil Patiala, Distt. Patiala. PIN: 140147. Valid upto: 30-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PC0132';
  v_meta := '{"district":"Jalandhar","promoter":"PPR HOUSING AND CONSTRUCTION LIMITED (Other than Individual)","address":"VILLAGE KINGRA","pin_code":"144001","registration_date":"25-Sep-2020","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: PPR HOUSING AND CONSTRUCTION LIMITED (Other than Individual). Address: VILLAGE KINGRA. PIN: 144001. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-GSP27-PR0646';
  v_meta := '{"district":"Gurdaspur","promoter":"Shubham Promoters & Developers (Other than Individual)","address":"Village Nabipur, Tehsil and District Gurdaspur","pin_code":"143521","registration_date":"25-Sep-2020","valid_upto":"21-Jul-2017"}'::jsonb;
  v_desc := 'Promoter: Shubham Promoters & Developers (Other than Individual). Address: Village Nabipur, Tehsil and District Gurdaspur. PIN: 143521. Valid upto: 21-Jul-2017';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT38-PR0635';
  v_meta := '{"district":"Kapurthala","promoter":"Grover Builders (Other than Individual)","address":"Village Begowal, H.B.No.10","pin_code":"144621","registration_date":"08-Sep-2020","valid_upto":"20-Jul-2021"}'::jsonb;
  v_desc := 'Promoter: Grover Builders (Other than Individual). Address: Village Begowal, H.B.No.10. PIN: 144621. Valid upto: 20-Jul-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-HSP29-PR0643';
  v_meta := '{"district":"Hoshiarpur","promoter":"Karan Associates (Other than Individual)","address":"H.B. No. 47, VILLAGE URMUR ON MOONKA RAILWAY LINE ROAD, Teh. Dasua","pin_code":"144205","registration_date":"18-Sep-2020","valid_upto":"31-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: Karan Associates (Other than Individual). Address: H.B. No. 47, VILLAGE URMUR ON MOONKA RAILWAY LINE ROAD, Teh. Dasua. PIN: 144205. Valid upto: 31-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL20-PC0131';
  v_meta := '{"district":"Fazilka","promoter":"IMPROVEMENT TRUST FAZILKA (Other than Individual)","address":"Abohar Road","pin_code":"152118","registration_date":"18-Sep-2020","valid_upto":"31-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: IMPROVEMENT TRUST FAZILKA (Other than Individual). Address: Abohar Road. PIN: 152118. Valid upto: 31-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL21-PR0642';
  v_meta := '{"district":"Fazilka","promoter":"Upendra Singh Kamra (Individual)","address":"MAYA ENCLAVE(FORMERLY KNOWN AS PRITAM ENCLAVE), VILL AMIR KHAS JALALABAD","pin_code":"152024","registration_date":"22-Sep-2020","valid_upto":"31-Dec-2024"}'::jsonb;
  v_desc := 'Promoter: Upendra Singh Kamra (Individual). Address: MAYA ENCLAVE(FORMERLY KNOWN AS PRITAM ENCLAVE), VILL AMIR KHAS JALALABAD. PIN: 152024. Valid upto: 31-Dec-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0637';
  v_meta := '{"district":"Jalandhar","promoter":"Dharminder  Arora (Individual)","address":"South City Jalandhar Sector - 1 Village Usmanpur Near 66 ft road Jalandhar","pin_code":"144026","registration_date":"25-Sep-2020","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: Dharminder  Arora (Individual). Address: South City Jalandhar Sector - 1 Village Usmanpur Near 66 ft road Jalandhar. PIN: 144026. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT39-PR0644';
  v_meta := '{"district":"Kapurthala","promoter":"EXCELLENCE BUILDERS (Other than Individual)","address":"VILL WADALA KALAN","pin_code":"144601","registration_date":"18-Sep-2020","valid_upto":"28-Feb-2025"}'::jsonb;
  v_desc := 'Promoter: EXCELLENCE BUILDERS (Other than Individual). Address: VILL WADALA KALAN. PIN: 144601. Valid upto: 28-Feb-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL64-PC0130';
  v_meta := '{"district":"Patiala","promoter":"MANAT REAL ESTATE (Other than Individual)","address":"VILLAGE NIAL HB NO 177, TEHSIL PATRAN","pin_code":"140103","registration_date":"18-Sep-2020","valid_upto":"31-Mar-2024"}'::jsonb;
  v_desc := 'Promoter: MANAT REAL ESTATE (Other than Individual). Address: VILLAGE NIAL HB NO 177, TEHSIL PATRAN. PIN: 140103. Valid upto: 31-Mar-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0639';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"DARSHAN  SINGH (Individual)","address":"HB NO 213, KAULIMAJRA, MC LALRU, Teh. Dera Bassi","pin_code":"140501","registration_date":"08-Sep-2020","valid_upto":"31-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: DARSHAN  SINGH (Individual). Address: HB NO 213, KAULIMAJRA, MC LALRU, Teh. Dera Bassi. PIN: 140501. Valid upto: 31-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0638';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Manglam Infra (Other than Individual)","address":"Village Dyalpura, MC Zirakpur","pin_code":"140603","registration_date":"08-Sep-2020","valid_upto":"30-Aug-2023"}'::jsonb;
  v_desc := 'Promoter: Manglam Infra (Other than Individual). Address: Village Dyalpura, MC Zirakpur. PIN: 140603. Valid upto: 30-Aug-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0636';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ACME HEIGHTS INFRASTRUCTURE PRIVATE LIMITED (Other than Individual)","address":"SECTOR 91-92 CHAPAR CHIRI KALAN","pin_code":"140307","registration_date":"08-Sep-2020","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: ACME HEIGHTS INFRASTRUCTURE PRIVATE LIMITED (Other than Individual). Address: SECTOR 91-92 CHAPAR CHIRI KALAN. PIN: 140307. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0129';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AMBIKA REALCON DEVELOPERS  PRIVATE LIMITED (Other than Individual)","address":"GROUP HOUSING 2, LA PARISIAN,, SECTOR 66 BETA, IT CITY,","pin_code":"140307","website":"www.ambikarealcon.com","registration_date":"17-Sep-2020","valid_upto":"31-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: AMBIKA REALCON DEVELOPERS  PRIVATE LIMITED (Other than Individual). Address: GROUP HOUSING 2, LA PARISIAN,, SECTOR 66 BETA, IT CITY,. PIN: 140307. Valid upto: 31-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PC0127';
  v_meta := '{"district":"Bathinda","promoter":"Surinder Jit  Kaur (Individual)","address":"NH-7 Bathinda Bhucho Main Road, Opposite Best Price Wallmart, Vill. Bhucho Kalan","pin_code":"151001","registration_date":"09-Sep-2020","valid_upto":"31-Aug-2025"}'::jsonb;
  v_desc := 'Promoter: Surinder Jit  Kaur (Individual). Address: NH-7 Bathinda Bhucho Main Road, Opposite Best Price Wallmart, Vill. Bhucho Kalan. PIN: 151001. Valid upto: 31-Aug-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PC0128';
  v_meta := '{"district":"Bathinda","promoter":"Surinder Jit  Kaur (Individual)","address":"NH-7, Factory Outlet, , Bathinda Bhucho, Mandi main road, opp. Best price Wallmart, Vill. Bhucho Kalan","pin_code":"151101","registration_date":"09-Sep-2020","valid_upto":"31-Aug-2025"}'::jsonb;
  v_desc := 'Promoter: Surinder Jit  Kaur (Individual). Address: NH-7, Factory Outlet, , Bathinda Bhucho, Mandi main road, opp. Best price Wallmart, Vill. Bhucho Kalan. PIN: 151101. Valid upto: 31-Aug-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PI0011';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Akal Tech Infralogis Private Limited (Other than Individual)","address":"Sector 103, Village Saneta, SAS Nagar, Mohali","pin_code":"140306","website":"www.akaltechinfralogis.com","registration_date":"04-Sep-2020","valid_upto":"30-Jun-2026"}'::jsonb;
  v_desc := 'Promoter: Akal Tech Infralogis Private Limited (Other than Individual). Address: Sector 103, Village Saneta, SAS Nagar, Mohali. PIN: 140306. Valid upto: 30-Jun-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0633';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gursewak   Singh (Individual)","address":"Vill-Gholumajra, NAC Lalru, SAS Nagar, Mohali, Punjab","pin_code":"140501","registration_date":"04-Sep-2020","valid_upto":"30-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: Gursewak   Singh (Individual). Address: Vill-Gholumajra, NAC Lalru, SAS Nagar, Mohali, Punjab. PIN: 140501. Valid upto: 30-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL20-PR0630';
  v_meta := '{"district":"Fazilka","promoter":"IMPROVEMENT TRUST FAZILKA (Other than Individual)","address":"Freedom Fighter Road, Fazilka","pin_code":"152123","registration_date":"03-Sep-2020","valid_upto":"31-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: IMPROVEMENT TRUST FAZILKA (Other than Individual). Address: Freedom Fighter Road, Fazilka. PIN: 152123. Valid upto: 31-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL20-PR0631';
  v_meta := '{"district":"Fazilka","promoter":"IMPROVEMENT TRUST, FAZILKA (Other than Individual)","address":"NEAR SACRED HEART SCHOOL, FAZILKA","pin_code":"152124","registration_date":"03-Sep-2020","valid_upto":"31-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: IMPROVEMENT TRUST, FAZILKA (Other than Individual). Address: NEAR SACRED HEART SCHOOL, FAZILKA. PIN: 152124. Valid upto: 31-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-GSP25-PR0632';
  v_meta := '{"district":"Gurdaspur","promoter":"RASILA PROJECTS & SERVICES PVT LTD (Other than Individual)","address":"Kahnuwan Road, Vill. Dhupsari, BATALA","pin_code":"143507","registration_date":"03-Sep-2020","valid_upto":"31-Dec-2025"}'::jsonb;
  v_desc := 'Promoter: RASILA PROJECTS & SERVICES PVT LTD (Other than Individual). Address: Kahnuwan Road, Vill. Dhupsari, BATALA. PIN: 143507. Valid upto: 31-Dec-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0126';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Darshan   Singh (Individual)","address":"NH Near Toll Plaza, Dappar, Tehsil Deabassi","pin_code":"140506","registration_date":"03-Sep-2020","valid_upto":"30-Jun-2022"}'::jsonb;
  v_desc := 'Promoter: Darshan   Singh (Individual). Address: NH Near Toll Plaza, Dappar, Tehsil Deabassi. PIN: 140506. Valid upto: 30-Jun-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0629';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Naveen  Sood (Individual)","address":"Alamgir, Under M.C Lalru, Tehsil- Derabassi, SAS Nagar, Punjab","pin_code":"140504","registration_date":"28-Aug-2020","valid_upto":"30-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Naveen  Sood (Individual). Address: Alamgir, Under M.C Lalru, Tehsil- Derabassi, SAS Nagar, Punjab. PIN: 140504. Valid upto: 30-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FDK12-PR0628';
  v_meta := '{"district":"Faridkot","promoter":"IMPROVEMENT TRUST FARIDKOT (Other than Individual)","address":"FIROZPUR ROAD, FARIDKOT","pin_code":"151203","registration_date":"26-Aug-2020","valid_upto":"31-Mar-2027"}'::jsonb;
  v_desc := 'Promoter: IMPROVEMENT TRUST FARIDKOT (Other than Individual). Address: FIROZPUR ROAD, FARIDKOT. PIN: 151203. Valid upto: 31-Mar-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0125';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Suksha Developers Private Limited (Other than Individual)","address":"Village Nagla, Near Manav Mangal School, Zirakpur","pin_code":"140603","website":"www.sushma.co.in","registration_date":"21-Aug-2020","valid_upto":"31-Jul-2027"}'::jsonb;
  v_desc := 'Promoter: Suksha Developers Private Limited (Other than Individual). Address: Village Nagla, Near Manav Mangal School, Zirakpur. PIN: 140603. Valid upto: 31-Jul-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PM0154';
  v_meta := '{"district":"Jalandhar","promoter":"GILLSON ESTATES (Other than Individual)","address":"Village Uppal Jagir, Nurmahal-Nakodar Road, Tehsil Nurmahal, Distt. Jalandhar","pin_code":"144039","registration_date":"21-Aug-2020","valid_upto":"02-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: GILLSON ESTATES (Other than Individual). Address: Village Uppal Jagir, Nurmahal-Nakodar Road, Tehsil Nurmahal, Distt. Jalandhar. PIN: 144039. Valid upto: 02-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0627';
  v_meta := '{"district":"Jalandhar","promoter":"DALJEET SINGH SAHNI (Individual)","address":"VILLAGE LAROI, H. B. No. 17","pin_code":"144201","registration_date":"21-Aug-2020","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: DALJEET SINGH SAHNI (Individual). Address: VILLAGE LAROI, H. B. No. 17. PIN: 144201. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR76-PC0124';
  v_meta := '{"district":"Sangrur","promoter":"Mandeep  Singh Turna (Individual)","address":"Village Khanouri Kalan, HB 129, Tehsil Moonak, Distt- Sangrur","pin_code":"148021","registration_date":"21-Aug-2020","valid_upto":"31-Mar-2024"}'::jsonb;
  v_desc := 'Promoter: Mandeep  Singh Turna (Individual). Address: Village Khanouri Kalan, HB 129, Tehsil Moonak, Distt- Sangrur. PIN: 148021. Valid upto: 31-Mar-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0626';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Wacs infrastructure (Other than Individual)","address":"Village Sante Majra, Kharar","pin_code":"140301","registration_date":"21-Aug-2020","valid_upto":"20-Feb-2023"}'::jsonb;
  v_desc := 'Promoter: Wacs infrastructure (Other than Individual). Address: Village Sante Majra, Kharar. PIN: 140301. Valid upto: 20-Feb-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI09-PR0624';
  v_meta := '{"district":"Bathinda","promoter":"Punjab Builders & Developers (Other than Individual)","address":"Maur Mandi, District Bathinda","pin_code":"151509","registration_date":"05-Aug-2020","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Punjab Builders & Developers (Other than Individual). Address: Maur Mandi, District Bathinda. PIN: 151509. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0623';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Raghbir   Sarup (Individual)","address":"Dharamgarh Road, Lalru, H.b no. 218","pin_code":"140501","registration_date":"05-Aug-2020","valid_upto":"31-Mar-2024"}'::jsonb;
  v_desc := 'Promoter: Raghbir   Sarup (Individual). Address: Dharamgarh Road, Lalru, H.b no. 218. PIN: 140501. Valid upto: 31-Mar-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0625';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GBM INFRATECH (Other than Individual)","address":"VILLAGE GAZIPUR, HADBAST NO. 50, MC ZIRAKPUR","pin_code":"140603","registration_date":"05-Aug-2020","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: GBM INFRATECH (Other than Individual). Address: VILLAGE GAZIPUR, HADBAST NO. 50, MC ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0123';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"M.G Builders (Other than Individual)","address":"Vill. Singhpura, H.B. No. 43, MC Zirakpur","pin_code":"140603","registration_date":"05-Aug-2020","valid_upto":"30-Sep-2024"}'::jsonb;
  v_desc := 'Promoter: M.G Builders (Other than Individual). Address: Vill. Singhpura, H.B. No. 43, MC Zirakpur. PIN: 140603. Valid upto: 30-Sep-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0495';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Canvas Promoters & Developers (Other than Individual)","address":"Wave Estate, Sector 85 Mohali","pin_code":"140308","registration_date":"13-Aug-2019","valid_upto":"31-Mar-2021"}'::jsonb;
  v_desc := 'Promoter: Canvas Promoters & Developers (Other than Individual). Address: Wave Estate, Sector 85 Mohali. PIN: 140308. Valid upto: 31-Mar-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0116';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"R G INFRA (Other than Individual)","address":"VIP ROAD ADJOINING VIP GALLERIA, VILLAGE BISHANPURA, ZIKAKPUR","pin_code":"140603","website":"www.vipcentral.in","registration_date":"17-Feb-2020","valid_upto":"31-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: R G INFRA (Other than Individual). Address: VIP ROAD ADJOINING VIP GALLERIA, VILLAGE BISHANPURA, ZIKAKPUR. PIN: 140603. Valid upto: 31-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0121';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SKYRISE BUILDERS (Other than Individual)","address":"VILLAGE PEERMUCHALLA, NAC ZIRAKPUR","pin_code":"134109","registration_date":"21-Jul-2020","valid_upto":"31-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: SKYRISE BUILDERS (Other than Individual). Address: VILLAGE PEERMUCHALLA, NAC ZIRAKPUR. PIN: 134109. Valid upto: 31-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0122';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MAYA BUILDERS (Other than Individual)","address":"Near Nabha Sahib Gurudwara, Zirakpur-Patiala Highway, MC Zirakpur","pin_code":"140603","website":"www.greenlotussaksham.com","registration_date":"21-Jul-2020","valid_upto":"30-Jun-2023"}'::jsonb;
  v_desc := 'Promoter: MAYA BUILDERS (Other than Individual). Address: Near Nabha Sahib Gurudwara, Zirakpur-Patiala Highway, MC Zirakpur. PIN: 140603. Valid upto: 30-Jun-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI10-PR0622';
  v_meta := '{"district":"Bathinda","promoter":"New Janta Colony (Other than Individual)","address":"Bye Pass Road, Rampura Phul","pin_code":"151103","registration_date":"21-Jul-2020","valid_upto":"28-Feb-2023"}'::jsonb;
  v_desc := 'Promoter: New Janta Colony (Other than Individual). Address: Bye Pass Road, Rampura Phul. PIN: 151103. Valid upto: 28-Feb-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR0555';
  v_meta := '{"district":"Bathinda","promoter":"SHEESH MAHAL DEVELOPERS LIMITED (Other than Individual)","address":"Dabwali road,  Bathinda","pin_code":"151005","registration_date":"10-Dec-2019","valid_upto":"30-Sep-2024"}'::jsonb;
  v_desc := 'Promoter: SHEESH MAHAL DEVELOPERS LIMITED (Other than Individual). Address: Dabwali road,  Bathinda. PIN: 151005. Valid upto: 30-Sep-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0620';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MVD Buildwell private limited (Other than Individual)","address":"Had bast No.184, Teh. Kharar","pin_code":"140301","registration_date":"14-Jul-2020","valid_upto":"19-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: MVD Buildwell private limited (Other than Individual). Address: Had bast No.184, Teh. Kharar. PIN: 140301. Valid upto: 19-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0621';
  v_meta := '{"district":"Jalandhar","promoter":"PRIME PROPERTIES BUILDERS & COLONIZERS (Other than Individual)","address":"VILLAGE LAROI, H. B. No. 17","pin_code":"144201","registration_date":"14-Jul-2020","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: PRIME PROPERTIES BUILDERS & COLONIZERS (Other than Individual). Address: VILLAGE LAROI, H. B. No. 17. PIN: 144201. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL36-PR0618';
  v_meta := '{"district":"Jalandhar","promoter":"Krishan  Jit Sanger (Individual)","address":"Village- Apra, H.B No.-181, Tehsil Phillaur","pin_code":"144416","registration_date":"09-Jul-2020","valid_upto":"15-Dec-2024"}'::jsonb;
  v_desc := 'Promoter: Krishan  Jit Sanger (Individual). Address: Village- Apra, H.B No.-181, Tehsil Phillaur. PIN: 144416. Valid upto: 15-Dec-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-HSP31-PR0617';
  v_meta := '{"district":"Hoshiarpur","promoter":"Prabhu Niwas Builders & Real Estate Pvt. Ltd. (Other than Individual)","address":"Village Bahowal, Tehsil Mahilpur","pin_code":"146015","registration_date":"09-Jul-2020","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: Prabhu Niwas Builders & Real Estate Pvt. Ltd. (Other than Individual). Address: Village Bahowal, Tehsil Mahilpur. PIN: 146015. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL62-PR0619';
  v_meta := '{"district":"Patiala","promoter":"Patiala Urban Planning and Development Authority (Other than Individual)","address":"Irrigation Dept. Land (Lehal Mandal) at 12 Quan, Nabha","pin_code":"147001","registration_date":"09-Jul-2020","valid_upto":"26-Jan-2023"}'::jsonb;
  v_desc := 'Promoter: Patiala Urban Planning and Development Authority (Other than Individual). Address: Irrigation Dept. Land (Lehal Mandal) at 12 Quan, Nabha. PIN: 147001. Valid upto: 26-Jan-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0120';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Orbit Apartment Construction Pvt. Ltd.  (Other than Individual)","address":"Orbit Signature Walk, Village Bishanpura, H.B. No. 44, VIP Road, Zirakpur","pin_code":"140603","registration_date":"09-Jul-2020","valid_upto":"31-Dec-2027"}'::jsonb;
  v_desc := 'Promoter: Orbit Apartment Construction Pvt. Ltd.  (Other than Individual). Address: Orbit Signature Walk, Village Bishanpura, H.B. No. 44, VIP Road, Zirakpur. PIN: 140603. Valid upto: 31-Dec-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL19-PR0615';
  v_meta := '{"district":"Fazilka","promoter":"ARIZE INFRASTRUCTURE & DEVELOPERS (Other than Individual)","address":"BASSIAN, Teh. Abohar","pin_code":"152116","registration_date":"03-Jul-2020","valid_upto":"31-Mar-2022"}'::jsonb;
  v_desc := 'Promoter: ARIZE INFRASTRUCTURE & DEVELOPERS (Other than Individual). Address: BASSIAN, Teh. Abohar. PIN: 152116. Valid upto: 31-Mar-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0614';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AN BUILDERS (Other than Individual)","address":"B Block Wave Estate, Sector 85,","pin_code":"140308","registration_date":"17-Jun-2020","valid_upto":"04-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: AN BUILDERS (Other than Individual). Address: B Block Wave Estate, Sector 85,. PIN: 140308. Valid upto: 04-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0613';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Rajinder   Vashisht (Individual)","address":"Village Ghazipur, Teh. Dera Bassi","pin_code":"140603","registration_date":"17-Jun-2020","valid_upto":"30-Jun-2024"}'::jsonb;
  v_desc := 'Promoter: Rajinder   Vashisht (Individual). Address: Village Ghazipur, Teh. Dera Bassi. PIN: 140603. Valid upto: 30-Jun-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI10-PR0606';
  v_meta := '{"district":"Bathinda","promoter":"Shashi   Singla (Individual)","address":"SR Enclave, Bye pass Road, Rampura Phul","pin_code":"151103","registration_date":"13-May-2020","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: Shashi   Singla (Individual). Address: SR Enclave, Bye pass Road, Rampura Phul. PIN: 151103. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0605';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"HARMONY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"Village Kishanpura, PO Dhakoli, Zirakpur","pin_code":"160104","registration_date":"13-May-2020","valid_upto":"15-Aug-2025"}'::jsonb;
  v_desc := 'Promoter: HARMONY COLONISERS PRIVATE LIMITED (Other than Individual). Address: Village Kishanpura, PO Dhakoli, Zirakpur. PIN: 160104. Valid upto: 15-Aug-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL66-PM0153';
  v_meta := '{"district":"Patiala","promoter":"MANDEEP SINGH TURNA (Individual)","address":"BAWANIGARH ROAD, SAMANA","pin_code":"147105","registration_date":"13-May-2020","valid_upto":"30-Jun-2020"}'::jsonb;
  v_desc := 'Promoter: MANDEEP SINGH TURNA (Individual). Address: BAWANIGARH ROAD, SAMANA. PIN: 147105. Valid upto: 30-Jun-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-HSP31-PR0608';
  v_meta := '{"district":"Hoshiarpur","promoter":"Kultar  Singh (Individual)","address":"Villagr Shergarh, H.B No.250, Tehsil & Distt. Hoshiarpur","pin_code":"146001","registration_date":"13-May-2020","valid_upto":"31-Mar-2024"}'::jsonb;
  v_desc := 'Promoter: Kultar  Singh (Individual). Address: Villagr Shergarh, H.B No.250, Tehsil & Distt. Hoshiarpur. PIN: 146001. Valid upto: 31-Mar-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0607';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gursimran  Singh  Sidhu (Individual)","address":"Village Gazipur, Tehsil. Derabassi, Distt. SAS Nagar, Mohali,","pin_code":"140603","registration_date":"13-May-2020","valid_upto":"31-Jan-2024"}'::jsonb;
  v_desc := 'Promoter: Gursimran  Singh  Sidhu (Individual). Address: Village Gazipur, Tehsil. Derabassi, Distt. SAS Nagar, Mohali,. PIN: 140603. Valid upto: 31-Jan-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0611';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"New Sky City (Other than Individual)","address":"HB NO 20, DAPPAR, MC LALRU","pin_code":"140603","registration_date":"13-May-2020","valid_upto":"30-Jun-2022"}'::jsonb;
  v_desc := 'Promoter: New Sky City (Other than Individual). Address: HB NO 20, DAPPAR, MC LALRU. PIN: 140603. Valid upto: 30-Jun-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0610';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Best Zone Builders And Developers Private Limited (Other than Individual)","address":"Orchid Greens, Village Khuni Majra, Teh. Kharar","pin_code":"140307","registration_date":"13-May-2020","valid_upto":"01-Oct-2024"}'::jsonb;
  v_desc := 'Promoter: Best Zone Builders And Developers Private Limited (Other than Individual). Address: Orchid Greens, Village Khuni Majra, Teh. Kharar. PIN: 140307. Valid upto: 01-Oct-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0604';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"LEELA RESIDENCIES PRIVATE LIMITED (Other than Individual)","address":"VILLAGE KHUNI MAJRA,, KHARAR","pin_code":"140301","registration_date":"13-May-2020","valid_upto":"14-May-2023"}'::jsonb;
  v_desc := 'Promoter: LEELA RESIDENCIES PRIVATE LIMITED (Other than Individual). Address: VILLAGE KHUNI MAJRA,, KHARAR. PIN: 140301. Valid upto: 14-May-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0118';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Greater Mohali Area Development Authority (GMADA) (Other than Individual)","address":"Medicity, New Chandigarh","pin_code":"140901","registration_date":"07-May-2020","valid_upto":"31-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: Greater Mohali Area Development Authority (GMADA) (Other than Individual). Address: Medicity, New Chandigarh. PIN: 140901. Valid upto: 31-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PM0152';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Greater Mohali Area Development Authority (GMADA) (Other than Individual)","address":"Eco city-2 , New Chandigarh","pin_code":"160055","registration_date":"07-May-2020","valid_upto":"31-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: Greater Mohali Area Development Authority (GMADA) (Other than Individual). Address: Eco city-2 , New Chandigarh. PIN: 160055. Valid upto: 31-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0600';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Shivalik Infrastructure & Developers private Limited (Other than Individual)","address":"Village Chhajumajra, Tehsil Kharar, Mohali","pin_code":"140603","registration_date":"20-Mar-2020","valid_upto":"30-Sep-2020"}'::jsonb;
  v_desc := 'Promoter: Shivalik Infrastructure & Developers private Limited (Other than Individual). Address: Village Chhajumajra, Tehsil Kharar, Mohali. PIN: 140603. Valid upto: 30-Sep-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR71-PR0602';
  v_meta := '{"district":"Sangrur","promoter":"Balwinder  Singh Dhaliwal (Individual)","address":"Village Ahmedgarh, Sangrur","pin_code":"148021","registration_date":"20-Mar-2020","valid_upto":"31-Mar-2021"}'::jsonb;
  v_desc := 'Promoter: Balwinder  Singh Dhaliwal (Individual). Address: Village Ahmedgarh, Sangrur. PIN: 148021. Valid upto: 31-Mar-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0603';
  v_meta := '{"district":"Jalandhar","promoter":"SIMAR BUILDERS (Other than Individual)","address":"#443, VILLAGE KOT SADIQ","pin_code":"144703","registration_date":"20-Mar-2020","valid_upto":"31-Mar-2021"}'::jsonb;
  v_desc := 'Promoter: SIMAR BUILDERS (Other than Individual). Address: #443, VILLAGE KOT SADIQ. PIN: 144703. Valid upto: 31-Mar-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-HSP29-PR0601';
  v_meta := '{"district":"Hoshiarpur","promoter":"IMPROVEMENT TRUST HOSHIARPUR (Other than Individual)","address":"RAJIV GANDHI AVENUE, RAHIMPUR ROAD","pin_code":"144801","registration_date":"20-Mar-2020","valid_upto":"31-Dec-2024"}'::jsonb;
  v_desc := 'Promoter: IMPROVEMENT TRUST HOSHIARPUR (Other than Individual). Address: RAJIV GANDHI AVENUE, RAHIMPUR ROAD. PIN: 144801. Valid upto: 31-Dec-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0117';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gulshan Kumar Goel (Individual)","address":"Hi-Fi Street, Village Bhabat, MC Zirakpur, Distt. SAS Nagar (Mohali)","pin_code":"140603","registration_date":"06-Mar-2020","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: Gulshan Kumar Goel (Individual). Address: Hi-Fi Street, Village Bhabat, MC Zirakpur, Distt. SAS Nagar (Mohali). PIN: 140603. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PM0151';
  v_meta := '{"district":"Jalandhar","promoter":"PRIME PROPERTIES BUILDERS & COLONIZERS (Other than Individual)","address":"VILLAGE LAROI","pin_code":"144201","registration_date":"05-Mar-2020","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: PRIME PROPERTIES BUILDERS & COLONIZERS (Other than Individual). Address: VILLAGE LAROI. PIN: 144201. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PM0150';
  v_meta := '{"district":"Jalandhar","promoter":"PRIME PROPERTIES BUILDERS & COLONIZERS (Other than Individual)","address":"VILLAGE ADAMPUR","pin_code":"144102","registration_date":"05-Mar-2020","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: PRIME PROPERTIES BUILDERS & COLONIZERS (Other than Individual). Address: VILLAGE ADAMPUR. PIN: 144102. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  RAISE NOTICE 'Part 9: updated % projects', v_updated;
END $$;