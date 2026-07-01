-- 0009_fix_metadata_part07.sql
-- Projects 1201 to 1400
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

  v_rera := 'PBRERA-RPR70-PR0365';
  v_meta := '{"district":"Rupnagar (Ropar)","promoter":"Greater Mohali Area Development Authority (GMADA) (Other than Individual)","address":"Urban Estate, Village Dasgmesh Nagar","pin_code":"140301","registration_date":"07-Jun-2018","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Greater Mohali Area Development Authority (GMADA) (Other than Individual). Address: Urban Estate, Village Dasgmesh Nagar. PIN: 140301. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0367';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Unitech Limited (Other than Individual)","address":"Sector 97, 106 & 107, At Mohali along Kharar Banur Road (Pb)","pin_code":"160043","website":"http://www.unitechgroup.com/townships/uniworld-city-mohali.asp","registration_date":"21-Jun-2018","valid_upto":"24-Nov-2020"}'::jsonb;
  v_desc := 'Promoter: Unitech Limited (Other than Individual). Address: Sector 97, 106 & 107, At Mohali along Kharar Banur Road (Pb). PIN: 160043. Valid upto: 24-Nov-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0284';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"OMAXE LIMITED (Other than Individual)","address":"Village Jharmari, Tehsil Derabassi","pin_code":"134007","website":"www.omaxe.com","registration_date":"09-Feb-2018","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: OMAXE LIMITED (Other than Individual). Address: Village Jharmari, Tehsil Derabassi. PIN: 134007. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0373';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Manohar Infrastructure and Constructions Pvt Ltd (Other than Individual)","address":"RKM CITY, SECTOR-112, LANDRAN","pin_code":"140307","website":"https://www.manoharrealty.com/venetian-spaces/","registration_date":"16-Jul-2018","valid_upto":"31-Jul-2020"}'::jsonb;
  v_desc := 'Promoter: Manohar Infrastructure and Constructions Pvt Ltd (Other than Individual). Address: RKM CITY, SECTOR-112, LANDRAN. PIN: 140307. Valid upto: 31-Jul-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR0357';
  v_meta := '{"district":"Patiala","promoter":"GAZEBO CONSTRUCTIONS PRIVATE LIMITED (Other than Individual)","address":"NEAR AYURVEDIC COLLEGE ,LOWER MALL PATIALA","pin_code":"147001","registration_date":"10-May-2018","valid_upto":"30-Jun-2018"}'::jsonb;
  v_desc := 'Promoter: GAZEBO CONSTRUCTIONS PRIVATE LIMITED (Other than Individual). Address: NEAR AYURVEDIC COLLEGE ,LOWER MALL PATIALA. PIN: 147001. Valid upto: 30-Jun-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0101';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MD BUILDERS & DEVELOPERS (Other than Individual)","address":"HIGHLAND MARG , NABHA , ZIRAKPUR","pin_code":"140603","registration_date":"19-Sep-2017","valid_upto":"31-Jul-2019"}'::jsonb;
  v_desc := 'Promoter: MD BUILDERS & DEVELOPERS (Other than Individual). Address: HIGHLAND MARG , NABHA , ZIRAKPUR. PIN: 140603. Valid upto: 31-Jul-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0333';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Citi Developers (Other than Individual)","address":"MOTIA BLUE RIDGE ( ADJOINING SECTOR 20, PANHKULA, PEER MUCHALLA ZIRAKPUR","pin_code":"140603","website":"http://www.motiablueridge.com/","registration_date":"11-Apr-2018","valid_upto":"30-Apr-2023"}'::jsonb;
  v_desc := 'Promoter: Citi Developers (Other than Individual). Address: MOTIA BLUE RIDGE ( ADJOINING SECTOR 20, PANHKULA, PEER MUCHALLA ZIRAKPUR. PIN: 140603. Valid upto: 30-Apr-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0312';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Vrindavan Gardens (Other than Individual)","address":"Vrindavan Gardens, Vill Peermachhala","pin_code":"140603","registration_date":"25-Apr-2018","valid_upto":"31-Mar-2020"}'::jsonb;
  v_desc := 'Promoter: Vrindavan Gardens (Other than Individual). Address: Vrindavan Gardens, Vill Peermachhala. PIN: 140603. Valid upto: 31-Mar-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0331';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PUMA REALTORS PRIVATE LIMITED (Other than Individual)","address":"Village Sukhparh and Sambalkhi, Sector 98","pin_code":"160055","registration_date":"11-Apr-2018","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: PUMA REALTORS PRIVATE LIMITED (Other than Individual). Address: Village Sukhparh and Sambalkhi, Sector 98. PIN: 160055. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0319';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PUMA REALTORS PRIVATE LIMITED (Other than Individual)","address":"Sector 98","pin_code":"140308","registration_date":"21-Mar-2018","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: PUMA REALTORS PRIVATE LIMITED (Other than Individual). Address: Sector 98. PIN: 140308. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0322';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PUMA REALTORS PRIVATE LIMITED (Other than Individual)","address":"Village Dholl, Sector 98","pin_code":"140308","registration_date":"23-Mar-2018","valid_upto":"30-Dec-2025"}'::jsonb;
  v_desc := 'Promoter: PUMA REALTORS PRIVATE LIMITED (Other than Individual). Address: Village Dholl, Sector 98. PIN: 140308. Valid upto: 30-Dec-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0202';
  v_meta := '{"district":"Jalandhar","promoter":"AGI INFRA LIMITED (Other than Individual)","address":"VILLAGE PHOLRIWAL","pin_code":"144022","website":"www.agiinfra.com","registration_date":"10-Nov-2017","valid_upto":"31-Mar-2018"}'::jsonb;
  v_desc := 'Promoter: AGI INFRA LIMITED (Other than Individual). Address: VILLAGE PHOLRIWAL. PIN: 144022. Valid upto: 31-Mar-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL20-PR0203';
  v_meta := '{"district":"Fazilka","promoter":"MR ENTERPRISES (Other than Individual)","address":"MR Enterprises Freedom Fighter Road Fazilka","pin_code":"152123","registration_date":"05-Feb-2018","valid_upto":"13-Oct-2024"}'::jsonb;
  v_desc := 'Promoter: MR ENTERPRISES (Other than Individual). Address: MR Enterprises Freedom Fighter Road Fazilka. PIN: 152123. Valid upto: 13-Oct-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0178';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ADDRESS INFRASTRUCTURES PRIVATE LIMITED  (Other than Individual)","address":"SECTOR 17,PR4,NEAR INTERNATIONAL CRICKET STADIUM, NEW CHANDIGARH","pin_code":"160014","website":"www.theaddressnewchandigarh.co.in","registration_date":"31-Oct-2017","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: ADDRESS INFRASTRUCTURES PRIVATE LIMITED  (Other than Individual). Address: SECTOR 17,PR4,NEAR INTERNATIONAL CRICKET STADIUM, NEW CHANDIGARH. PIN: 160014. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0106';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Mona Townships Private Limited (Other than Individual)","address":"Village KhooniMajra, HB No. 187 Tehsil Kharar","pin_code":"140307","registration_date":"19-Sep-2017","valid_upto":"30-Jun-2020"}'::jsonb;
  v_desc := 'Promoter: Mona Townships Private Limited (Other than Individual). Address: Village KhooniMajra, HB No. 187 Tehsil Kharar. PIN: 140307. Valid upto: 30-Jun-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0206';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Tedre realcon india private limited (Other than Individual)","address":"NH 21, Village khanpur","pin_code":"141301","website":"www.zaragroup.in","registration_date":"14-Nov-2017","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: Tedre realcon india private limited (Other than Individual). Address: NH 21, Village khanpur. PIN: 141301. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0205';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Ubber Buildcon Private Limited (Other than Individual)","address":"Village Mubarikpur, Tehsil Derabassi","pin_code":"140507","registration_date":"14-Nov-2017","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Ubber Buildcon Private Limited (Other than Individual). Address: Village Mubarikpur, Tehsil Derabassi. PIN: 140507. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0208';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Good earth Developers  (Other than Individual)","address":"Hassanpur, Lalru","pin_code":"140501","registration_date":"14-Nov-2017","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Good earth Developers  (Other than Individual). Address: Hassanpur, Lalru. PIN: 140501. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0201';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"Sky Garden Phase-II, Tower C,D,H&I, Sector-66A","pin_code":"140306","website":"www.jantahousing.com","registration_date":"10-Nov-2017","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: Sky Garden Phase-II, Tower C,D,H&I, Sector-66A. PIN: 140306. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-GSP27-PR0359';
  v_meta := '{"district":"Gurdaspur","promoter":"PUDA (Other than Individual)","address":"PUDA ENCLAVE GURDASPUR","pin_code":"143521","registration_date":"16-May-2018","valid_upto":"30-May-2018"}'::jsonb;
  v_desc := 'Promoter: PUDA (Other than Individual). Address: PUDA ENCLAVE GURDASPUR. PIN: 143521. Valid upto: 30-May-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH48-PR0209';
  v_meta := '{"district":"Ludhiana","promoter":"Kuldeep   Singh (Individual)","address":"SCO-11, Janta Enclave, Near Urban Estate, Dugri Road","pin_code":"141013","website":"www.janta@jantahousing.com","registration_date":"15-Nov-2017","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Kuldeep   Singh (Individual). Address: SCO-11, Janta Enclave, Near Urban Estate, Dugri Road. PIN: 141013. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR77-PR0356';
  v_meta := '{"district":"Sangrur","promoter":"Grewal Constructions Pvt. Ltd (Other than Individual)","address":"Village Mangwal, Sangrur Patiala Road","pin_code":"148001","registration_date":"10-May-2018","valid_upto":"30-Sep-2018"}'::jsonb;
  v_desc := 'Promoter: Grewal Constructions Pvt. Ltd (Other than Individual). Address: Village Mangwal, Sangrur Patiala Road. PIN: 148001. Valid upto: 30-Sep-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0204';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Ubber Buildcon Private Limited (Other than Individual)","address":"Village Mubarikpur, Tehsil Derabassi","pin_code":"140507","registration_date":"14-Nov-2017","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Ubber Buildcon Private Limited (Other than Individual). Address: Village Mubarikpur, Tehsil Derabassi. PIN: 140507. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0200';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"Galaxy Heights-Pocket 2A Phase 1, Sector-66A","pin_code":"140306","website":"www.jantahousing.com","registration_date":"10-Nov-2017","valid_upto":"31-Mar-2019"}'::jsonb;
  v_desc := 'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: Galaxy Heights-Pocket 2A Phase 1, Sector-66A. PIN: 140306. Valid upto: 31-Mar-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0323';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"26-Mar-2018","valid_upto":"30-Apr-2022"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 30-Apr-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0352';
  v_meta := '{"district":"Ludhiana","promoter":"Greater Ludhiana Area Development Authority (Other than Individual)","address":"Social Housing Scheme, Sector-40, Smrala Road, Ludhiana","pin_code":"141001","registration_date":"18-Apr-2018","valid_upto":"30-Sep-2020"}'::jsonb;
  v_desc := 'Promoter: Greater Ludhiana Area Development Authority (Other than Individual). Address: Social Housing Scheme, Sector-40, Smrala Road, Ludhiana. PIN: 141001. Valid upto: 30-Sep-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0353';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SKYCITY BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"CHANDIGARH KHARAR ROAD, KHARAR","pin_code":"140301","website":"www.thecityheart.in","registration_date":"04-May-2018","valid_upto":"30-Sep-2020"}'::jsonb;
  v_desc := 'Promoter: SKYCITY BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: CHANDIGARH KHARAR ROAD, KHARAR. PIN: 140301. Valid upto: 30-Sep-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0354';
  v_meta := '{"district":"Jalandhar","promoter":"Horizon Building Solution Private Limited (Other than Individual)","address":"Nangal Shama Hoshiarpur  road Teh. and Distt. Jalandhar","pin_code":"144007","registration_date":"04-May-2018","valid_upto":"31-Jul-2019"}'::jsonb;
  v_desc := 'Promoter: Horizon Building Solution Private Limited (Other than Individual). Address: Nangal Shama Hoshiarpur  road Teh. and Distt. Jalandhar. PIN: 144007. Valid upto: 31-Jul-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PR0335';
  v_meta := '{"district":"Amritsar","promoter":"Simmro Infrastructure & Developers Private Limited (Other than Individual)","address":"Maple Leaf Towers, Shubham Enclave, NH-1, Village Sultanwind Daburji, Distt. Amritsar","pin_code":"143010","website":"www.mapleleaftowers.com","registration_date":"16-Apr-2018","valid_upto":"31-Aug-2018"}'::jsonb;
  v_desc := 'Promoter: Simmro Infrastructure & Developers Private Limited (Other than Individual). Address: Maple Leaf Towers, Shubham Enclave, NH-1, Village Sultanwind Daburji, Distt. Amritsar. PIN: 143010. Valid upto: 31-Aug-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0213';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Greater Punjab Officers Co Op H.Bldg. Society & Altus Space Builders Pvt Ltd (Other than Individual)","address":"Vill.-Salamatpur,Rasulpur,Dhodhe Majra,Saini Majra,Ghandauli & Bhagat Majra,New Chandigarh","pin_code":"140901","registration_date":"22-Nov-2017","valid_upto":"21-May-2022"}'::jsonb;
  v_desc := 'Promoter: Greater Punjab Officers Co Op H.Bldg. Society & Altus Space Builders Pvt Ltd (Other than Individual). Address: Vill.-Salamatpur,Rasulpur,Dhodhe Majra,Saini Majra,Ghandauli & Bhagat Majra,New Chandigarh. PIN: 140901. Valid upto: 21-May-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR77-PR0355';
  v_meta := '{"district":"Sangrur","promoter":"Grewal Constructions Pvt. Ltd (Other than Individual)","address":"Sangrur Patiala road, Backside Dream Land Colony, In the revenue estate of Village Mangwal","pin_code":"148001","registration_date":"10-May-2018","valid_upto":"30-Sep-2018"}'::jsonb;
  v_desc := 'Promoter: Grewal Constructions Pvt. Ltd (Other than Individual). Address: Sangrur Patiala road, Backside Dream Land Colony, In the revenue estate of Village Mangwal. PIN: 148001. Valid upto: 30-Sep-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0334';
  v_meta := '{"district":"Ludhiana","promoter":"Greater Ludhiana Area Development Authority (Other than Individual)","address":"Urban Estate, Dugri Road, Phase-II, Ludhiana","pin_code":"141001","registration_date":"12-Apr-2018","valid_upto":"31-Aug-2018"}'::jsonb;
  v_desc := 'Promoter: Greater Ludhiana Area Development Authority (Other than Individual). Address: Urban Estate, Dugri Road, Phase-II, Ludhiana. PIN: 141001. Valid upto: 31-Aug-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0307';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PREET BUILDTECH AND PROMOTERS LLP (Other than Individual)","address":"PREET BUILDTECH AND PROMOTERS, NEAR AXIS BANK ATM BOOTH NH-22 DERABASSI","pin_code":"140507","registration_date":"01-Mar-2018","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: PREET BUILDTECH AND PROMOTERS LLP (Other than Individual). Address: PREET BUILDTECH AND PROMOTERS, NEAR AXIS BANK ATM BOOTH NH-22 DERABASSI. PIN: 140507. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0332';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SAACHI DEVELOPERS (Other than Individual)","address":"NH-21, Chandigarh Kharar Highway, Kharar","pin_code":"140301","registration_date":"12-Apr-2018","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: SAACHI DEVELOPERS (Other than Individual). Address: NH-21, Chandigarh Kharar Highway, Kharar. PIN: 140301. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0304';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ESTONIA BUILDTECH PVT LTD (Other than Individual)","address":"ESTONIA HOMEZ, GBP ROSEWOOD ESTATE 2","pin_code":"140603","website":"www.estoniahomez.com","registration_date":"01-Mar-2018","valid_upto":"30-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: ESTONIA BUILDTECH PVT LTD (Other than Individual). Address: ESTONIA HOMEZ, GBP ROSEWOOD ESTATE 2. PIN: 140603. Valid upto: 30-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0315';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"QUARKCITY INDIA PRIVATE LIMITED (Other than Individual)","address":"A-40A INDUSTRIAL FOCAL POINT PHASE -VIII EXTN .MOHALI PUNJAB . WWW.QUARKCITY.COM, MOHALI MPUNJAB","pin_code":"160059","website":"www.quarkcity.com","registration_date":"15-Mar-2018","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: QUARKCITY INDIA PRIVATE LIMITED (Other than Individual). Address: A-40A INDUSTRIAL FOCAL POINT PHASE -VIII EXTN .MOHALI PUNJAB . WWW.QUARKCITY.COM, MOHALI MPUNJAB. PIN: 160059. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0309';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Dara Estates Pvt.Ltd (Other than Individual)","address":"Preet City,Mohali","pin_code":"160059","registration_date":"06-Mar-2018","valid_upto":"31-Jul-2018"}'::jsonb;
  v_desc := 'Promoter: Dara Estates Pvt.Ltd (Other than Individual). Address: Preet City,Mohali. PIN: 160059. Valid upto: 31-Jul-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0318';
  v_meta := '{"district":"Jalandhar","promoter":"G3S INFRA HOMES PRIVATE LIMITED (Other than Individual)","address":"G3S INFINITY HEIGHTS, VILLAGE CHOHAK H B NO 218 HOSHIARPUR ROAD JALANDHAR","pin_code":"144001","registration_date":"20-Mar-2018","valid_upto":"31-Mar-2021"}'::jsonb;
  v_desc := 'Promoter: G3S INFRA HOMES PRIVATE LIMITED (Other than Individual). Address: G3S INFINITY HEIGHTS, VILLAGE CHOHAK H B NO 218 HOSHIARPUR ROAD JALANDHAR. PIN: 144001. Valid upto: 31-Mar-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0316';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GREEN VALLEY HEIGHTS (Other than Individual)","address":"GREEN VALLEY HIGHTS KISHANPURA, BEHIND SECTOR 20 PANCHKULA NAC","pin_code":"140603","registration_date":"03-Apr-2018","valid_upto":"14-Mar-2017"}'::jsonb;
  v_desc := 'Promoter: GREEN VALLEY HEIGHTS (Other than Individual). Address: GREEN VALLEY HIGHTS KISHANPURA, BEHIND SECTOR 20 PANCHKULA NAC. PIN: 140603. Valid upto: 14-Mar-2017';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0340';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Mittal Township (Other than Individual)","address":"Village Kishanpura, Zirakpur","pin_code":"140603","registration_date":"19-Apr-2018","valid_upto":"30-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Mittal Township (Other than Individual). Address: Village Kishanpura, Zirakpur. PIN: 140603. Valid upto: 30-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PR0346';
  v_meta := '{"district":"Amritsar","promoter":"SHARMA & GANGAHAR BUILDERS & COLONISERS PVT. LTD (Other than Individual)","address":"VILLAGE NAUSHEHRA, MAJITHA ROAD","pin_code":"143008","website":"www.sharmaganagahr.com","registration_date":"20-Apr-2018","valid_upto":"30-Apr-2020"}'::jsonb;
  v_desc := 'Promoter: SHARMA & GANGAHAR BUILDERS & COLONISERS PVT. LTD (Other than Individual). Address: VILLAGE NAUSHEHRA, MAJITHA ROAD. PIN: 143008. Valid upto: 30-Apr-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0074';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Innovative Housing & Infrastructure Pvt. Ltd. (Trade Name - PCL) (Other than Individual)","address":"sector 17 & 18, New Chandigarh","pin_code":"160014","registration_date":"13-Sep-2017","valid_upto":"31-Jan-2020"}'::jsonb;
  v_desc := 'Promoter: Innovative Housing & Infrastructure Pvt. Ltd. (Trade Name - PCL) (Other than Individual). Address: sector 17 & 18, New Chandigarh. PIN: 160014. Valid upto: 31-Jan-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0046';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"WWICS ESTATES PRIVATE LIMITED (Other than Individual)","address":"Sector 115 _x0009_, (Santemajra)Tehsil Kharar","pin_code":"140301","registration_date":"07-Sep-2017","valid_upto":"01-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: WWICS ESTATES PRIVATE LIMITED (Other than Individual). Address: Sector 115 _x0009_, (Santemajra)Tehsil Kharar. PIN: 140301. Valid upto: 01-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0349';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Limited (Other than Individual)","address":"Suuny Enclave, Vill Aujlan, Teh. Kharar, on kharar Ropar Road","pin_code":"140301","registration_date":"26-Apr-2018","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: Bajwa Developers Limited (Other than Individual). Address: Suuny Enclave, Vill Aujlan, Teh. Kharar, on kharar Ropar Road. PIN: 140301. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0241';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"united builders (Other than Individual)","address":"La Prisma , Nagla Road , chandigarh - ambala highway, zirakpur","pin_code":"140603","registration_date":"15-Dec-2017","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: united builders (Other than Individual). Address: La Prisma , Nagla Road , chandigarh - ambala highway, zirakpur. PIN: 140603. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0342';
  v_meta := '{"district":"Ludhiana","promoter":"ONLINE FINVEST AND INFRASTRUCTURE PVT LTD (Other than Individual)","address":"VILLAGE MULLANPUR, DISTRICT LUDHIANA","pin_code":"141002","registration_date":"20-Apr-2018","valid_upto":"30-Apr-2019"}'::jsonb;
  v_desc := 'Promoter: ONLINE FINVEST AND INFRASTRUCTURE PVT LTD (Other than Individual). Address: VILLAGE MULLANPUR, DISTRICT LUDHIANA. PIN: 141002. Valid upto: 30-Apr-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0313';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Altus Space Builders Pvt. Ltd. (Other than Individual)","address":"New Chandigarh","pin_code":"140901","registration_date":"15-Mar-2018","valid_upto":"28-Feb-2023"}'::jsonb;
  v_desc := 'Promoter: Altus Space Builders Pvt. Ltd. (Other than Individual). Address: New Chandigarh. PIN: 140901. Valid upto: 28-Feb-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0305';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Dara Estates Pvt.Ltd (Other than Individual)","address":"Sector-116 SAS Nagar Mohali","pin_code":"160059","registration_date":"01-Mar-2018","valid_upto":"31-Jul-2020"}'::jsonb;
  v_desc := 'Promoter: Dara Estates Pvt.Ltd (Other than Individual). Address: Sector-116 SAS Nagar Mohali. PIN: 160059. Valid upto: 31-Jul-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0339';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bakshish Builders Limited  (Other than Individual)","address":"Vill-khanpur,kharar","pin_code":"160065","registration_date":"20-Apr-2018","valid_upto":"30-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: Bakshish Builders Limited  (Other than Individual). Address: Vill-khanpur,kharar. PIN: 160065. Valid upto: 30-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0329';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Dara Buildtech Pvt.Ltd (Other than Individual)","address":"Vill-Khunni Majra Sector-115","pin_code":"160059","registration_date":"10-Apr-2018","valid_upto":"30-Apr-2019"}'::jsonb;
  v_desc := 'Promoter: Dara Buildtech Pvt.Ltd (Other than Individual). Address: Vill-Khunni Majra Sector-115. PIN: 160059. Valid upto: 30-Apr-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0337';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bakshish Builders Limited  (Other than Individual)","address":"Vill- Kharar Teh Kharar Distt- Roper","pin_code":"140301","registration_date":"20-Apr-2018","valid_upto":"30-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Bakshish Builders Limited  (Other than Individual). Address: Vill- Kharar Teh Kharar Distt- Roper. PIN: 140301. Valid upto: 30-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0336';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bakshish Builders Limited (Other than Individual)","address":"Vill-Kharar Teh-Kharar Distt-Ropar","pin_code":"140301","registration_date":"13-Apr-2018","valid_upto":"30-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Bakshish Builders Limited (Other than Individual). Address: Vill-Kharar Teh-Kharar Distt-Ropar. PIN: 140301. Valid upto: 30-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0286';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GVT BUILDERS AND DEVELOPERS (Other than Individual)","address":"Vill-Gazipur,Zirakpur,Mohali,SAS Nagar","pin_code":"160104","registration_date":"13-Feb-2018","valid_upto":"31-Jul-2020"}'::jsonb;
  v_desc := 'Promoter: GVT BUILDERS AND DEVELOPERS (Other than Individual). Address: Vill-Gazipur,Zirakpur,Mohali,SAS Nagar. PIN: 160104. Valid upto: 31-Jul-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PR0317';
  v_meta := '{"district":"Amritsar","promoter":"V V BUILDERS (Other than Individual)","address":"VILLAGE NAUSHERA, MAJITHA ROAD BYEPASS","pin_code":"143001","website":"www.vvbuildersasr.com","registration_date":"27-Mar-2018","valid_upto":"30-Jun-2021"}'::jsonb;
  v_desc := 'Promoter: V V BUILDERS (Other than Individual). Address: VILLAGE NAUSHERA, MAJITHA ROAD BYEPASS. PIN: 143001. Valid upto: 30-Jun-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0326';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Mahavir Builders (Other than Individual)","address":"CHAJJUMAJRA ROAD KHARAR","pin_code":"140301","registration_date":"02-Apr-2018","valid_upto":"31-Mar-2021"}'::jsonb;
  v_desc := 'Promoter: Mahavir Builders (Other than Individual). Address: CHAJJUMAJRA ROAD KHARAR. PIN: 140301. Valid upto: 31-Mar-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0302';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Vasant Vihar Homes (Other than Individual)","address":"Haibatpur Road, Derabassi","pin_code":"140507","registration_date":"01-Mar-2018","valid_upto":"30-Jun-2019"}'::jsonb;
  v_desc := 'Promoter: Vasant Vihar Homes (Other than Individual). Address: Haibatpur Road, Derabassi. PIN: 140507. Valid upto: 30-Jun-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0293';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Canam Consultants Limited (Other than Individual)","address":"Village Sadhemajra, Haibatpur Road, derabassi","pin_code":"140603","registration_date":"23-Feb-2018","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: Canam Consultants Limited (Other than Individual). Address: Village Sadhemajra, Haibatpur Road, derabassi. PIN: 140603. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0288';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Chandigarh Green Fields Private Limited (Other than Individual)","address":"Acme Alvista Smart Homes, Near Shivalik City Gate No.8, Village Chhajjumajrau","pin_code":"140301","registration_date":"19-Feb-2018","valid_upto":"31-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: Chandigarh Green Fields Private Limited (Other than Individual). Address: Acme Alvista Smart Homes, Near Shivalik City Gate No.8, Village Chhajjumajrau. PIN: 140301. Valid upto: 31-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0276';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Proud nature buildtech private limited (Other than Individual)","address":"Village Santemajra, om divine world, Landra Kharara Road, Sector-115,Kharar","pin_code":"140301","website":"www.grouppnb.com","registration_date":"06-Feb-2018","valid_upto":"29-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Proud nature buildtech private limited (Other than Individual). Address: Village Santemajra, om divine world, Landra Kharara Road, Sector-115,Kharar. PIN: 140301. Valid upto: 29-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0292';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Palm Heights Private Limited (Other than Individual)","address":"Habitpur Road, Derabassi","pin_code":"140507","registration_date":"23-Feb-2018","valid_upto":"30-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: Palm Heights Private Limited (Other than Individual). Address: Habitpur Road, Derabassi. PIN: 140507. Valid upto: 30-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0280';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"CONNAUGHT RESIDENCY EXTENSION PLOT NO 1585 TO 1586 AND 1601 TO 1605, SECTOR 74A TDI CITY-I","pin_code":"140301","registration_date":"09-Feb-2018","valid_upto":"28-Nov-2019"}'::jsonb;
  v_desc := 'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: CONNAUGHT RESIDENCY EXTENSION PLOT NO 1585 TO 1586 AND 1601 TO 1605, SECTOR 74A TDI CITY-I. PIN: 140301. Valid upto: 28-Nov-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0290';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Manglam Infra (Other than Individual)","address":"Village Dayalpura, Zirakpur","pin_code":"140603","registration_date":"21-Feb-2018","valid_upto":"30-Jun-2019"}'::jsonb;
  v_desc := 'Promoter: Manglam Infra (Other than Individual). Address: Village Dayalpura, Zirakpur. PIN: 140603. Valid upto: 30-Jun-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0270';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Panashe Buildcon Pvt Ltd (Other than Individual)","address":"Harlalpur, Kharar","pin_code":"140301","registration_date":"20-Sep-2017","valid_upto":"01-Feb-2018"}'::jsonb;
  v_desc := 'Promoter: Panashe Buildcon Pvt Ltd (Other than Individual). Address: Harlalpur, Kharar. PIN: 140301. Valid upto: 01-Feb-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0266';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Limited (Other than Individual)","address":"Harlalpur, Kharar, SAS Nagar, Punjab","pin_code":"160055","registration_date":"15-Feb-2018"}'::jsonb;
  v_desc := 'Promoter: Bajwa Developers Limited (Other than Individual). Address: Harlalpur, Kharar, SAS Nagar, Punjab. PIN: 160055';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0269';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Limited (Other than Individual)","address":"Global City ext. Harlalpur kharar","pin_code":"140301","registration_date":"19-Jan-2018","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: Bajwa Developers Limited (Other than Individual). Address: Global City ext. Harlalpur kharar. PIN: 140301. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0268';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Limited (Other than Individual)","address":"Suuny Enclave, Vill Aujlan, Teh. Kharar, on kharar Ropar Road","pin_code":"140301","registration_date":"19-Jan-2018","valid_upto":"27-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: Bajwa Developers Limited (Other than Individual). Address: Suuny Enclave, Vill Aujlan, Teh. Kharar, on kharar Ropar Road. PIN: 140301. Valid upto: 27-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0265';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Limited (Other than Individual)","address":"BALDEV SINGH","pin_code":"140301","registration_date":"30-Jan-2018","valid_upto":"27-Jul-2019"}'::jsonb;
  v_desc := 'Promoter: Bajwa Developers Limited (Other than Individual). Address: BALDEV SINGH. PIN: 140301. Valid upto: 27-Jul-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0267';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Limited (Other than Individual)","address":"Sunny Urban Homes Phase-II Aujla Kharar","pin_code":"140301","registration_date":"19-Jan-2018","valid_upto":"07-Sep-2022"}'::jsonb;
  v_desc := 'Promoter: Bajwa Developers Limited (Other than Individual). Address: Sunny Urban Homes Phase-II Aujla Kharar. PIN: 140301. Valid upto: 07-Sep-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0272';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Limited (Other than Individual)","address":"Harlalpur, Kharar, SAS Nagar, Punjab","pin_code":"160055","registration_date":"15-Feb-2018","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: Bajwa Developers Limited (Other than Individual). Address: Harlalpur, Kharar, SAS Nagar, Punjab. PIN: 160055. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0240';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Altus Space Builders Pvt. Ltd. (Other than Individual)","address":"Village-Bhagat Majra & Palheri,Sector-22,New Chandigarh,S.A.S. Nagar.","pin_code":"140901","registration_date":"14-Dec-2017","valid_upto":"31-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: Altus Space Builders Pvt. Ltd. (Other than Individual). Address: Village-Bhagat Majra & Palheri,Sector-22,New Chandigarh,S.A.S. Nagar.. PIN: 140901. Valid upto: 31-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0249';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"TDI COLONY, VILLAGE CHAJJUMAJRA","pin_code":"140301","registration_date":"05-Jan-2018","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: TDI COLONY, VILLAGE CHAJJUMAJRA. PIN: 140301. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-GSP27-PR0250';
  v_meta := '{"district":"Gurdaspur","promoter":"SUMIT  VERMA (Individual)","address":"MAYUR GARDEN CITY  JAIL ROAD, VILLAGE KOTLI NANGAL AND LITTER","pin_code":"143521","registration_date":"10-Jan-2018","valid_upto":"31-Oct-2020"}'::jsonb;
  v_desc := 'Promoter: SUMIT  VERMA (Individual). Address: MAYUR GARDEN CITY  JAIL ROAD, VILLAGE KOTLI NANGAL AND LITTER. PIN: 143521. Valid upto: 31-Oct-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0237';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Fortune Multitech Private Limited (Other than Individual)","address":"Sector 5, Peermuchalla, zirakpur","pin_code":"140603","website":"www.fortunemultitech.com","registration_date":"12-Dec-2017","valid_upto":"31-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: Fortune Multitech Private Limited (Other than Individual). Address: Sector 5, Peermuchalla, zirakpur. PIN: 140603. Valid upto: 31-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR0245';
  v_meta := '{"district":"Bathinda","promoter":"SILVER OAKS TOWNSHIP LIMITED (Other than Individual)","address":"VILLAGE BIBIWALA TEHSIL NATHANA, BATHINDA","pin_code":"151001","registration_date":"27-Dec-2017","valid_upto":"31-Jul-2018"}'::jsonb;
  v_desc := 'Promoter: SILVER OAKS TOWNSHIP LIMITED (Other than Individual). Address: VILLAGE BIBIWALA TEHSIL NATHANA, BATHINDA. PIN: 151001. Valid upto: 31-Jul-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0261';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Limited (Other than Individual)","address":"Sunny Heights Sunny enclave Kharar","pin_code":"140301","registration_date":"19-Jan-2018","valid_upto":"27-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: Bajwa Developers Limited (Other than Individual). Address: Sunny Heights Sunny enclave Kharar. PIN: 140301. Valid upto: 27-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0262';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Limited (Other than Individual)","address":"Aamazon city 2, Sunny Enclave Rakba Harlalpur Kharar","pin_code":"140301","registration_date":"19-Jan-2018","valid_upto":"01-Sep-2020"}'::jsonb;
  v_desc := 'Promoter: Bajwa Developers Limited (Other than Individual). Address: Aamazon city 2, Sunny Enclave Rakba Harlalpur Kharar. PIN: 140301. Valid upto: 01-Sep-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0264';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Limited (Other than Individual)","address":"Rakba Jandpur Kharar","pin_code":"140301","registration_date":"30-Jan-2018","valid_upto":"31-Jul-2020"}'::jsonb;
  v_desc := 'Promoter: Bajwa Developers Limited (Other than Individual). Address: Rakba Jandpur Kharar. PIN: 140301. Valid upto: 31-Jul-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0263';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Limited (Other than Individual)","address":"Sunny Avenue Kharar Punjab","pin_code":"140301","registration_date":"19-Jan-2018","valid_upto":"27-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: Bajwa Developers Limited (Other than Individual). Address: Sunny Avenue Kharar Punjab. PIN: 140301. Valid upto: 27-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0252';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Limited (Other than Individual)","address":"Kharar, Teh. Kharar","pin_code":"140301","registration_date":"08-Jan-2018","valid_upto":"28-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: Bajwa Developers Limited (Other than Individual). Address: Kharar, Teh. Kharar. PIN: 140301. Valid upto: 28-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0258';
  v_meta := '{"district":"Ludhiana","promoter":"FINSTEM INFRASTRUCTURE INDIA PVT LTD (Other than Individual)","address":"VILL AGWAR GUJRAN, TEHSIL JAGRAON,, LUDHIANA","pin_code":"142026","registration_date":"19-Jan-2018","valid_upto":"30-Jun-2019"}'::jsonb;
  v_desc := 'Promoter: FINSTEM INFRASTRUCTURE INDIA PVT LTD (Other than Individual). Address: VILL AGWAR GUJRAN, TEHSIL JAGRAON,, LUDHIANA. PIN: 142026. Valid upto: 30-Jun-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0257';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AIRFORCE NAVAL HOUSING BOARD (Other than Individual)","address":"AFNHB Project Jal Vayu Tower Sector 125, New Sunny Enclave, Kharar","pin_code":"140301","registration_date":"19-Jan-2018"}'::jsonb;
  v_desc := 'Promoter: AIRFORCE NAVAL HOUSING BOARD (Other than Individual). Address: AFNHB Project Jal Vayu Tower Sector 125, New Sunny Enclave, Kharar. PIN: 140301';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0255';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Limited (Other than Individual)","address":"AMAZON CITY SUNNY ENCLAVE PUR RAKBA JANDPUR KHARAR","pin_code":"140301","registration_date":"08-Jan-2018","valid_upto":"25-Oct-2019"}'::jsonb;
  v_desc := 'Promoter: Bajwa Developers Limited (Other than Individual). Address: AMAZON CITY SUNNY ENCLAVE PUR RAKBA JANDPUR KHARAR. PIN: 140301. Valid upto: 25-Oct-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0256';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Limited (Other than Individual)","address":"Sunny city vill. Jhujhian teh. kharar","pin_code":"140301","registration_date":"08-Jan-2018","valid_upto":"27-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: Bajwa Developers Limited (Other than Individual). Address: Sunny city vill. Jhujhian teh. kharar. PIN: 140301. Valid upto: 27-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0253';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Limited (Other than Individual)","address":"Global City ext. Harlalpur kharar","pin_code":"140301","registration_date":"08-Jan-2018","valid_upto":"27-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: Bajwa Developers Limited (Other than Individual). Address: Global City ext. Harlalpur kharar. PIN: 140301. Valid upto: 27-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0314';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Saini Developers & Promoters Pvt. Ltd. (Other than Individual)","address":"Dhakauli, MC Zirakpur, SAS Nagar, Mohal","pin_code":"140601","registration_date":"13-Mar-2018","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: Saini Developers & Promoters Pvt. Ltd. (Other than Individual). Address: Dhakauli, MC Zirakpur, SAS Nagar, Mohal. PIN: 140601. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0301';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GNG PROMOTERS (Other than Individual)","address":"Village Nabha, Derabassi","pin_code":"140507","registration_date":"01-Mar-2018","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: GNG PROMOTERS (Other than Individual). Address: Village Nabha, Derabassi. PIN: 140507. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0306';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GOLDEN ESTATE-II (Other than Individual)","address":"GREEN VALLEY, GHOLUMAJRA NAC LALRU","pin_code":"140507","registration_date":"01-Mar-2018","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: GOLDEN ESTATE-II (Other than Individual). Address: GREEN VALLEY, GHOLUMAJRA NAC LALRU. PIN: 140507. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0344';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"WISTERIA HOUSING PRIVATE LIMITED (Other than Individual)","address":"Nav City, SCO- 5,6, Sector 125, Sunny Enclave, Mohali.","pin_code":"140301","website":"www.wisteriahousing.com","registration_date":"20-Apr-2018","valid_upto":"19-Oct-2021"}'::jsonb;
  v_desc := 'Promoter: WISTERIA HOUSING PRIVATE LIMITED (Other than Individual). Address: Nav City, SCO- 5,6, Sector 125, Sunny Enclave, Mohali.. PIN: 140301. Valid upto: 19-Oct-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0341';
  v_meta := '{"district":"Ludhiana","promoter":"ONLINE FINVEST AND INFRASTRUCTURE PVT .LTD  (Other than Individual)","address":"GREEN WOOD VILLAGE KHANPUR, SIDHWAN KANAL ROAD","pin_code":"141002","registration_date":"19-Apr-2018","valid_upto":"17-Apr-2019"}'::jsonb;
  v_desc := 'Promoter: ONLINE FINVEST AND INFRASTRUCTURE PVT .LTD  (Other than Individual). Address: GREEN WOOD VILLAGE KHANPUR, SIDHWAN KANAL ROAD. PIN: 141002. Valid upto: 17-Apr-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0287';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Ansal Lotus Melange  (Other than Individual)","address":"SCO 183-184, sector 9C","pin_code":"140307","registration_date":"23-Feb-2018","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: Ansal Lotus Melange  (Other than Individual). Address: SCO 183-184, sector 9C. PIN: 140307. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0296';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"P.P Developers  (Other than Individual)","address":"Vill- Peer Machhala, tehsil-Derabassi, SAS Nagar","pin_code":"140501","registration_date":"23-Feb-2018","valid_upto":"28-Oct-2018"}'::jsonb;
  v_desc := 'Promoter: P.P Developers  (Other than Individual). Address: Vill- Peer Machhala, tehsil-Derabassi, SAS Nagar. PIN: 140501. Valid upto: 28-Oct-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0281';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Parkwood Promoters (Other than Individual)","address":"HB NO. 53 , VILLAGE PEER MUCHHALLLA","pin_code":"140603","registration_date":"20-Feb-2018","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: Parkwood Promoters (Other than Individual). Address: HB NO. 53 , VILLAGE PEER MUCHHALLLA. PIN: 140603. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0285';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Exotica Homez Promoter & Builders (Other than Individual)","address":"S1-S2, Exotica Square,Kharar Landran Road, Sector 115 Mohali","pin_code":"140307","website":"www.exoticahomez.com","registration_date":"13-Feb-2018","valid_upto":"31-Dec-2027"}'::jsonb;
  v_desc := 'Promoter: Exotica Homez Promoter & Builders (Other than Individual). Address: S1-S2, Exotica Square,Kharar Landran Road, Sector 115 Mohali. PIN: 140307. Valid upto: 31-Dec-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0282';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"OPERA INFRATECH AND DEVELOPERS (Other than Individual)","address":"VILLAGE KISHANPURA, ZIRAKPUR","pin_code":"140603","registration_date":"13-Feb-2018","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: OPERA INFRATECH AND DEVELOPERS (Other than Individual). Address: VILLAGE KISHANPURA, ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0273';
  v_meta := '{"district":"Ludhiana","promoter":"Anand Enclave Developers Pvt Ltd (Other than Individual)","address":"Village lalton Kalan, Ludhiana","pin_code":"141001","registration_date":"06-Feb-2018","valid_upto":"31-Mar-2019"}'::jsonb;
  v_desc := 'Promoter: Anand Enclave Developers Pvt Ltd (Other than Individual). Address: Village lalton Kalan, Ludhiana. PIN: 141001. Valid upto: 31-Mar-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0271';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ANSAL PROPERTIES AND INFRASTRUCTURE LTD. (Other than Individual)","address":"Golflinks-II,SECTOR-116, Mohali","pin_code":"160114","registration_date":"02-Feb-2018","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: ANSAL PROPERTIES AND INFRASTRUCTURE LTD. (Other than Individual). Address: Golflinks-II,SECTOR-116, Mohali. PIN: 160114. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0274';
  v_meta := '{"district":"Ludhiana","promoter":"ANAND ENCLAVE DEVELOPERS PVT. LTD. (Other than Individual)","address":"Village lalton Kalan, Ludhiana","pin_code":"141001","registration_date":"06-Feb-2018","valid_upto":"31-Mar-2019"}'::jsonb;
  v_desc := 'Promoter: ANAND ENCLAVE DEVELOPERS PVT. LTD. (Other than Individual). Address: Village lalton Kalan, Ludhiana. PIN: 141001. Valid upto: 31-Mar-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0254';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Limited (Other than Individual)","address":"GLOBAL HI TECH SUNNY ENCLAVE KHARAR","pin_code":"140301","registration_date":"08-Jan-2018","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: Bajwa Developers Limited (Other than Individual). Address: GLOBAL HI TECH SUNNY ENCLAVE KHARAR. PIN: 140301. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0247';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Maa Mansa Builders & Promoters (Other than Individual)","address":"MAA MANSA BUILDERS AND PROMOTERS, RAKBA- KHARAR, TEHSIL KHARAR","pin_code":"140301","registration_date":"29-Dec-2017","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Maa Mansa Builders & Promoters (Other than Individual). Address: MAA MANSA BUILDERS AND PROMOTERS, RAKBA- KHARAR, TEHSIL KHARAR. PIN: 140301. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0199';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"Sky Garden Phase-1, Tower-A,B,J&K, Sector-66A","pin_code":"140306","website":"www.jantahousing.comm","registration_date":"10-Nov-2017","valid_upto":"21-May-2018"}'::jsonb;
  v_desc := 'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: Sky Garden Phase-1, Tower-A,B,J&K, Sector-66A. PIN: 140306. Valid upto: 21-May-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0244';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Ivory colonizers private limited (Other than Individual)","address":"Vip road, Zirakpur","pin_code":"140603","website":"www.ivoryvillas.com","registration_date":"22-Dec-2017","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Ivory colonizers private limited (Other than Individual). Address: Vip road, Zirakpur. PIN: 140603. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0251';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Limited (Other than Individual)","address":"PRINCE CITY, SUNNY ENCLAVE, RAKBA JANDPUR, KHARAR","pin_code":"140301","registration_date":"08-Jan-2018","valid_upto":"25-Oct-2020"}'::jsonb;
  v_desc := 'Promoter: Bajwa Developers Limited (Other than Individual). Address: PRINCE CITY, SUNNY ENCLAVE, RAKBA JANDPUR, KHARAR. PIN: 140301. Valid upto: 25-Oct-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0260';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Limited (Other than Individual)","address":"Highway City Rakba Jhungian Kharar","pin_code":"140301","registration_date":"31-Jan-2018","valid_upto":"07-Sep-2022"}'::jsonb;
  v_desc := 'Promoter: Bajwa Developers Limited (Other than Individual). Address: Highway City Rakba Jhungian Kharar. PIN: 140301. Valid upto: 07-Sep-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0067';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CREDO ASSETS PRIVATE LIMITED (Other than Individual)","address":"SECTOR 116, VILLAGE SANTEMAJRA, KHARAR","pin_code":"140603","registration_date":"11-Sep-2017","valid_upto":"28-Jul-2024"}'::jsonb;
  v_desc := 'Promoter: CREDO ASSETS PRIVATE LIMITED (Other than Individual). Address: SECTOR 116, VILLAGE SANTEMAJRA, KHARAR. PIN: 140603. Valid upto: 28-Jul-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR0161';
  v_meta := '{"district":"Patiala","promoter":"PAVANI BUILDWELL PVT. LTD (Other than Individual)","address":"Village Alipur Arian, Sirhind - Rajpura Byepass Road, Patiala","pin_code":"147002","website":"www.gardenheightspatiala.in","registration_date":"23-Oct-2017","valid_upto":"31-Mar-2020"}'::jsonb;
  v_desc := 'Promoter: PAVANI BUILDWELL PVT. LTD (Other than Individual). Address: Village Alipur Arian, Sirhind - Rajpura Byepass Road, Patiala. PIN: 147002. Valid upto: 31-Mar-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0210';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"JTPL Private Limited (Other than Individual)","address":"JTPL TOWNSHIP,SECTOR 115,VILLAGE SANTE MAJRA,LANDRAN ROAD KHARAR","pin_code":"140301","registration_date":"17-Nov-2017","valid_upto":"13-Sep-2020"}'::jsonb;
  v_desc := 'Promoter: JTPL Private Limited (Other than Individual). Address: JTPL TOWNSHIP,SECTOR 115,VILLAGE SANTE MAJRA,LANDRAN ROAD KHARAR. PIN: 140301. Valid upto: 13-Sep-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PR0169';
  v_meta := '{"district":"Amritsar","promoter":"PUDA (Other than Individual)","address":"Sri guru ram dass urban estate, Ajnala road","pin_code":"143001","registration_date":"30-Oct-2017","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: PUDA (Other than Individual). Address: Sri guru ram dass urban estate, Ajnala road. PIN: 143001. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0085';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sushma Buildtech Limited (Other than Individual)","address":"Village Bishangarh - Bishanpura, Zirakpur","pin_code":"140603","website":"www.sushma.co.in","registration_date":"24-Oct-2017","valid_upto":"29-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: Sushma Buildtech Limited (Other than Individual). Address: Village Bishangarh - Bishanpura, Zirakpur. PIN: 140603. Valid upto: 29-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0217';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Limited (Other than Individual)","address":"Honey Villa at Jhujian, Teh Kharar","pin_code":"140301","registration_date":"24-Nov-2017","valid_upto":"28-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: Bajwa Developers Limited (Other than Individual). Address: Honey Villa at Jhujian, Teh Kharar. PIN: 140301. Valid upto: 28-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0221';
  v_meta := '{"district":"Ludhiana","promoter":"gkp infrastrcture limited (Other than Individual)","address":"GK Enclave, Ludhiana","pin_code":"141001","registration_date":"16-Feb-2018"}'::jsonb;
  v_desc := 'Promoter: gkp infrastrcture limited (Other than Individual). Address: GK Enclave, Ludhiana. PIN: 141001';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PR0235';
  v_meta := '{"district":"Amritsar","promoter":"DREAM COUNTY HOMES & VILLAS LLP (Other than Individual)","address":"Village Manawala G.T Road Amritsar","pin_code":"143109","registration_date":"11-Dec-2017","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: DREAM COUNTY HOMES & VILLAS LLP (Other than Individual). Address: Village Manawala G.T Road Amritsar. PIN: 143109. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0236';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Aura Builders & Developers (Other than Individual)","address":"VILL. NABHA, TEHSIL DERABASSI, DISTT. MOHALI","pin_code":"147201","registration_date":"11-Dec-2017","valid_upto":"31-Mar-2021"}'::jsonb;
  v_desc := 'Promoter: Aura Builders & Developers (Other than Individual). Address: VILL. NABHA, TEHSIL DERABASSI, DISTT. MOHALI. PIN: 147201. Valid upto: 31-Mar-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0234';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ACME HEIGHTS INFRASTRUCTURE PRIVATE LIMITED (Other than Individual)","address":"ACME SHIVALIK HEIGHTS SECTOR 127 GREATER MOHALI","pin_code":"140301","registration_date":"08-Feb-2019","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: ACME HEIGHTS INFRASTRUCTURE PRIVATE LIMITED (Other than Individual). Address: ACME SHIVALIK HEIGHTS SECTOR 127 GREATER MOHALI. PIN: 140301. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0222';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"23-Nov-2017","valid_upto":"31-Jan-2023"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 31-Jan-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0167';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AMBIKA REALCON PRIVATE LIMITED (Other than Individual)","address":"FLORENCE PARK, PHASE 2,, ORCHID TOWERS SECTOR 14, NEW CHANDIGARH","pin_code":"140301","website":"www.ambikarealcom.com","registration_date":"25-Oct-2017","valid_upto":"31-Mar-2022"}'::jsonb;
  v_desc := 'Promoter: AMBIKA REALCON PRIVATE LIMITED (Other than Individual). Address: FLORENCE PARK, PHASE 2,, ORCHID TOWERS SECTOR 14, NEW CHANDIGARH. PIN: 140301. Valid upto: 31-Mar-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0227';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Limited (Other than Individual)","address":"Chando gobindgarh,  Sector 123,","pin_code":"140301","registration_date":"11-Dec-2017","valid_upto":"28-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: Bajwa Developers Limited (Other than Individual). Address: Chando gobindgarh,  Sector 123,. PIN: 140301. Valid upto: 28-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR0238';
  v_meta := '{"district":"Bathinda","promoter":"Radhe Govind Promoters Pvt. Ltd (Other than Individual)","address":"Suncity Enclave, Badal Road Bathinda.","pin_code":"151001","website":"www.peejaygroup.com","registration_date":"19-Dec-2017","valid_upto":"30-Jun-2018"}'::jsonb;
  v_desc := 'Promoter: Radhe Govind Promoters Pvt. Ltd (Other than Individual). Address: Suncity Enclave, Badal Road Bathinda.. PIN: 151001. Valid upto: 30-Jun-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0224';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"BARNALA BUILDERS & PROPERTY CONSULTANTS (Other than Individual)","address":"VIP Road, Zirakpur","pin_code":"140603","registration_date":"08-Dec-2017"}'::jsonb;
  v_desc := 'Promoter: BARNALA BUILDERS & PROPERTY CONSULTANTS (Other than Individual). Address: VIP Road, Zirakpur. PIN: 140603';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0212';
  v_meta := '{"district":"Ludhiana","promoter":"HOME CONSTRUCTION COMPANY (Other than Individual)","address":"Barewal Road","pin_code":"141004","registration_date":"17-Nov-2017","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: HOME CONSTRUCTION COMPANY (Other than Individual). Address: Barewal Road. PIN: 141004. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR0165';
  v_meta := '{"district":"Patiala","promoter":"OM Constructions (Other than Individual)","address":"Village Taffazalpura, Tehsil & District Patiala","pin_code":"147001","registration_date":"18-Oct-2017","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: OM Constructions (Other than Individual). Address: Village Taffazalpura, Tehsil & District Patiala. PIN: 147001. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR0168';
  v_meta := '{"district":"Ludhiana","promoter":"Kumra Housing & Construction Pvt .Ltd. (Other than Individual)","address":"Noor Enclave, Shivpuri Chowk,Noorwala Road","pin_code":"141007","website":"www.nehomes.in","registration_date":"25-Oct-2017","valid_upto":"16-Oct-2022"}'::jsonb;
  v_desc := 'Promoter: Kumra Housing & Construction Pvt .Ltd. (Other than Individual). Address: Noor Enclave, Shivpuri Chowk,Noorwala Road. PIN: 141007. Valid upto: 16-Oct-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0170';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"Galaxy Heights Pocket-2A  Phase-2 Tower-F, Sector-66A","pin_code":"140306","website":"www.jantahousing.com","registration_date":"31-Oct-2017","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: Galaxy Heights Pocket-2A  Phase-2 Tower-F, Sector-66A. PIN: 140306. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0174';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KC Land and Finance Ltd. (Other than Individual)","address":"Group Housing Site No. 1, Sector - 91, Janta Residential Township","pin_code":"160071","website":"www.floralcourt.in","registration_date":"17-Oct-2018","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: KC Land and Finance Ltd. (Other than Individual). Address: Group Housing Site No. 1, Sector - 91, Janta Residential Township. PIN: 160071. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0129';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PRESTIGE REALTORS (Other than Individual)","address":"rakba kharar, Kharar","pin_code":"141301","registration_date":"29-Sep-2017","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: PRESTIGE REALTORS (Other than Individual). Address: rakba kharar, Kharar. PIN: 141301. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-RPR70-PR0137';
  v_meta := '{"district":"Rupnagar (Ropar)","promoter":"AGAM BUILDERS AND CONTRACTORS  PRIVATE LIMITED (Other than Individual)","address":"7 SHIVALIK ENCLAVE RAILON ROAD ROPAR","pin_code":"140001","registration_date":"04-Oct-2017","valid_upto":"30-Apr-2020"}'::jsonb;
  v_desc := 'Promoter: AGAM BUILDERS AND CONTRACTORS  PRIVATE LIMITED (Other than Individual). Address: 7 SHIVALIK ENCLAVE RAILON ROAD ROPAR. PIN: 140001. Valid upto: 30-Apr-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0189';
  v_meta := '{"district":"Ludhiana","promoter":"JLD Estates private limited (Other than Individual)","address":"Village Sangowal, Hadbast No.257","pin_code":"141122","website":"www.jldestates.com","registration_date":"08-Nov-2017","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: JLD Estates private limited (Other than Individual). Address: Village Sangowal, Hadbast No.257. PIN: 141122. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR77-PR0190';
  v_meta := '{"district":"Sangrur","promoter":"SOMSONS COLONIZERS LIMITED (Other than Individual)","address":"Mangwal Road","pin_code":"148001","website":"https://www.imperialcity.in","registration_date":"08-Nov-2017","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: SOMSONS COLONIZERS LIMITED (Other than Individual). Address: Mangwal Road. PIN: 148001. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0196';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AVR BUILDTECH PVT LTD (Other than Individual)","address":"Amazon City Sector 124 New Sunny enclave, Kharar,  Mohali,","pin_code":"140301","registration_date":"08-Nov-2017","valid_upto":"28-Oct-2018"}'::jsonb;
  v_desc := 'Promoter: AVR BUILDTECH PVT LTD (Other than Individual). Address: Amazon City Sector 124 New Sunny enclave, Kharar,  Mohali,. PIN: 140301. Valid upto: 28-Oct-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0182';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Greenfield Projects (Other than Individual)","address":"Dappar, Lalru","pin_code":"140501","registration_date":"06-Nov-2017","valid_upto":"31-Dec-2017"}'::jsonb;
  v_desc := 'Promoter: Greenfield Projects (Other than Individual). Address: Dappar, Lalru. PIN: 140501. Valid upto: 31-Dec-2017';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0187';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"gkp infrastrcture limited (Other than Individual)","address":"Khanpur road, Kharar","pin_code":"141301","registration_date":"22-Nov-2017"}'::jsonb;
  v_desc := 'Promoter: gkp infrastrcture limited (Other than Individual). Address: Khanpur road, Kharar. PIN: 141301';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0188';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Enkay Builders and developers (Other than Individual)","address":"shivjot enclave","pin_code":"140301","registration_date":"06-Nov-2017","valid_upto":"31-Mar-2020"}'::jsonb;
  v_desc := 'Promoter: Enkay Builders and developers (Other than Individual). Address: shivjot enclave. PIN: 140301. Valid upto: 31-Mar-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0186';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Dara Estates Pvt.Ltd (Other than Individual)","address":"Plot-7,Rakba Khunnimajra,Kharar,SAS Nagar,Mohali","pin_code":"160059","registration_date":"03-Nov-2017","valid_upto":"31-Oct-2020"}'::jsonb;
  v_desc := 'Promoter: Dara Estates Pvt.Ltd (Other than Individual). Address: Plot-7,Rakba Khunnimajra,Kharar,SAS Nagar,Mohali. PIN: 160059. Valid upto: 31-Oct-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0185';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Limited (Other than Individual)","address":"Village Fatehullanpur, Teh. Kharar","pin_code":"140301","registration_date":"08-Nov-2017","valid_upto":"05-Sep-2022"}'::jsonb;
  v_desc := 'Promoter: Bajwa Developers Limited (Other than Individual). Address: Village Fatehullanpur, Teh. Kharar. PIN: 140301. Valid upto: 05-Sep-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0184';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Limited (Other than Individual)","address":"Paradise Apartment  at Vill fatehullanpur Kharar","pin_code":"140301","registration_date":"08-Nov-2017","valid_upto":"28-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: Bajwa Developers Limited (Other than Individual). Address: Paradise Apartment  at Vill fatehullanpur Kharar. PIN: 140301. Valid upto: 28-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0177';
  v_meta := '{"district":"Jalandhar","promoter":"AGI INFRA LIMITED (Other than Individual)","address":"VILLAGE PHOLRIWAL","pin_code":"144022","website":"www.agiinfra.com","registration_date":"31-Oct-2017","valid_upto":"31-Mar-2020"}'::jsonb;
  v_desc := 'Promoter: AGI INFRA LIMITED (Other than Individual). Address: VILLAGE PHOLRIWAL. PIN: 144022. Valid upto: 31-Mar-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0176';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MP Builders (Other than Individual)","address":"VILLAGE Peermuchalla, ZIRAKPUR","pin_code":"140603","registration_date":"31-Oct-2017","valid_upto":"31-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: MP Builders (Other than Individual). Address: VILLAGE Peermuchalla, ZIRAKPUR. PIN: 140603. Valid upto: 31-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0172';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Baba Estates & Colonizers (Other than Individual)","address":"Opposite Court Complex, Near Shivjot Enclave","pin_code":"140301","registration_date":"26-Oct-2017","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Baba Estates & Colonizers (Other than Individual). Address: Opposite Court Complex, Near Shivjot Enclave. PIN: 140301. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0171';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Lodestone Developers and Infra (Other than Individual)","address":"Vill-Jalalpur, Lalru","pin_code":"140501","registration_date":"30-Oct-2017","valid_upto":"31-Mar-2018"}'::jsonb;
  v_desc := 'Promoter: Lodestone Developers and Infra (Other than Individual). Address: Vill-Jalalpur, Lalru. PIN: 140501. Valid upto: 31-Mar-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0114';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"HERO REALTY PRIVATE LIMITED (Other than Individual)","address":"Group Housing Site NO. 1, Sector - 88, SAS Nagar, Mohali","pin_code":"140308","website":"www.herohomes.in","registration_date":"06-Nov-2017","valid_upto":"30-Mar-2021"}'::jsonb;
  v_desc := 'Promoter: HERO REALTY PRIVATE LIMITED (Other than Individual). Address: Group Housing Site NO. 1, Sector - 88, SAS Nagar, Mohali. PIN: 140308. Valid upto: 30-Mar-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0075';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jamuna Developers (Other than Individual)","address":"National Highway 21,Kharar- Kurali Road, Kharar","pin_code":"140307","website":"jamunaapartments.com","registration_date":"13-Sep-2017","valid_upto":"29-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: Jamuna Developers (Other than Individual). Address: National Highway 21,Kharar- Kurali Road, Kharar. PIN: 140307. Valid upto: 29-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0013';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sushma Buildtech Limited (Other than Individual)","address":"Village Singhpura, Chandigarh Ambala National Highway","pin_code":"140507","website":"www.sushma.co.in","registration_date":"14-Sep-2017","valid_upto":"26-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: Sushma Buildtech Limited (Other than Individual). Address: Village Singhpura, Chandigarh Ambala National Highway. PIN: 140507. Valid upto: 26-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0020';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"WAVE ESTATE, SECTOR -85 & 99","pin_code":"143308","registration_date":"11-Oct-2017","valid_upto":"31-May-2019"}'::jsonb;
  v_desc := 'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: WAVE ESTATE, SECTOR -85 & 99. PIN: 143308. Valid upto: 31-May-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PC0027';
  v_meta := '{"district":"Jalandhar","promoter":"AGI INFRA LIMITED (Other than Individual)","address":"NEW JAWAHAR NAGAR, COOL ROAD","pin_code":"144001","website":"www.agiinfra.com","registration_date":"31-Oct-2017","valid_upto":"31-Mar-2019"}'::jsonb;
  v_desc := 'Promoter: AGI INFRA LIMITED (Other than Individual). Address: NEW JAWAHAR NAGAR, COOL ROAD. PIN: 144001. Valid upto: 31-Mar-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0295';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Amarjit Singh Chatha (Individual)","address":"Village- Bairampur, Landra Banur Road","pin_code":"140307","registration_date":"05-Feb-2018","valid_upto":"15-Feb-2020"}'::jsonb;
  v_desc := 'Promoter: Amarjit Singh Chatha (Individual). Address: Village- Bairampur, Landra Banur Road. PIN: 140307. Valid upto: 15-Feb-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0080';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"BARNALA BUILDERS & PROPERTY CONSULTANTS (Other than Individual)","address":"VIP ROAD, ZIRAKPUR","pin_code":"140603","website":"www.mayagardengroup.com","registration_date":"21-Dec-2017"}'::jsonb;
  v_desc := 'Promoter: BARNALA BUILDERS & PROPERTY CONSULTANTS (Other than Individual). Address: VIP ROAD, ZIRAKPUR. PIN: 140603';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0155';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ANSAL PROPERTIES AND INFRASTRUCTURE LTD. (Other than Individual)","address":"Golflinks-I, Sector-114, Mohali","pin_code":"160114","registration_date":"12-Oct-2017","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: ANSAL PROPERTIES AND INFRASTRUCTURE LTD. (Other than Individual). Address: Golflinks-I, Sector-114, Mohali. PIN: 160114. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0065';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Primary Estates and Developers Private Limited (Other than Individual)","address":"Sector 123, Sunny  Enclave , SAS Nagar Mohali","pin_code":"140301","registration_date":"11-Sep-2017","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Primary Estates and Developers Private Limited (Other than Individual). Address: Sector 123, Sunny  Enclave , SAS Nagar Mohali. PIN: 140301. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0097';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Wisteria Housing Pvt Ltd (Other than Individual)","address":"Bajwa developers ltd Plot No 571 sunny Enclave Rakba Jandpur","pin_code":"140301","registration_date":"08-Nov-2017","valid_upto":"28-Feb-2019"}'::jsonb;
  v_desc := 'Promoter: Wisteria Housing Pvt Ltd (Other than Individual). Address: Bajwa developers ltd Plot No 571 sunny Enclave Rakba Jandpur. PIN: 140301. Valid upto: 28-Feb-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR0134';
  v_meta := '{"district":"Patiala","promoter":"Tricone Projects India Limited (Other than Individual)","address":"Village - Hardaspur, Kasiana, Sirhind Road","pin_code":"147001","registration_date":"04-Oct-2017","valid_upto":"03-Oct-2020"}'::jsonb;
  v_desc := 'Promoter: Tricone Projects India Limited (Other than Individual). Address: Village - Hardaspur, Kasiana, Sirhind Road. PIN: 147001. Valid upto: 03-Oct-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR0135';
  v_meta := '{"district":"Patiala","promoter":"Tricone Projects India Limited (Other than Individual)","address":"Village - Hardaspur, Kasiana, Sirhind Road","pin_code":"147001","registration_date":"04-Oct-2017","valid_upto":"03-Oct-2020"}'::jsonb;
  v_desc := 'Promoter: Tricone Projects India Limited (Other than Individual). Address: Village - Hardaspur, Kasiana, Sirhind Road. PIN: 147001. Valid upto: 03-Oct-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR0130';
  v_meta := '{"district":"Patiala","promoter":"Tricone Projects India Limited (Other than Individual)","address":"Village - Hardaspur, Kasiana, Sirhind Road","pin_code":"147001","registration_date":"04-Oct-2017","valid_upto":"03-Oct-2020"}'::jsonb;
  v_desc := 'Promoter: Tricone Projects India Limited (Other than Individual). Address: Village - Hardaspur, Kasiana, Sirhind Road. PIN: 147001. Valid upto: 03-Oct-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR0133';
  v_meta := '{"district":"Patiala","promoter":"Tricone Projects India Limited (Other than Individual)","address":"Village - Hardaspur, Kasiana, Sirhind Road","pin_code":"147001","registration_date":"04-Oct-2017","valid_upto":"03-Oct-2020"}'::jsonb;
  v_desc := 'Promoter: Tricone Projects India Limited (Other than Individual). Address: Village - Hardaspur, Kasiana, Sirhind Road. PIN: 147001. Valid upto: 03-Oct-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR0132';
  v_meta := '{"district":"Patiala","promoter":"Tricone Projects India Limited (Other than Individual)","address":"Village - Hardaspur, Kasiana, Sirhind Road","pin_code":"147001","registration_date":"04-Oct-2017","valid_upto":"03-Oct-2020"}'::jsonb;
  v_desc := 'Promoter: Tricone Projects India Limited (Other than Individual). Address: Village - Hardaspur, Kasiana, Sirhind Road. PIN: 147001. Valid upto: 03-Oct-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR0057';
  v_meta := '{"district":"Ludhiana","promoter":"Vardhman Amrante Pvt Ltd (Other than Individual)","address":"VILLAGE MUNDIAN, CHANDIGARH ROAD, LUDHIANA","pin_code":"141123","registration_date":"13-Sep-2017","valid_upto":"31-Jul-2020"}'::jsonb;
  v_desc := 'Promoter: Vardhman Amrante Pvt Ltd (Other than Individual). Address: VILLAGE MUNDIAN, CHANDIGARH ROAD, LUDHIANA. PIN: 141123. Valid upto: 31-Jul-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0158';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Fortune (India) Construction Ltd (Other than Individual)","address":"Vill-Himmatgarh,Zirakpur.","pin_code":"141001","registration_date":"17-Oct-2017","valid_upto":"28-Jul-2019"}'::jsonb;
  v_desc := 'Promoter: Fortune (India) Construction Ltd (Other than Individual). Address: Vill-Himmatgarh,Zirakpur.. PIN: 141001. Valid upto: 28-Jul-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0160';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GSJ BUILDERS (Other than Individual)","address":"PLOT NO. 1, PHASE 1, KAMLA MARKET","pin_code":"140301","registration_date":"17-Oct-2017","valid_upto":"15-Oct-2018"}'::jsonb;
  v_desc := 'Promoter: GSJ BUILDERS (Other than Individual). Address: PLOT NO. 1, PHASE 1, KAMLA MARKET. PIN: 140301. Valid upto: 15-Oct-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0144';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PARKWOOD DEVELOPERS PVT. LTD (Other than Individual)","address":"VILLAGE SANTEMAJRA, TEHSIL KHARAR","pin_code":"140301","registration_date":"10-Oct-2017","valid_upto":"31-Jul-2018"}'::jsonb;
  v_desc := 'Promoter: PARKWOOD DEVELOPERS PVT. LTD (Other than Individual). Address: VILLAGE SANTEMAJRA, TEHSIL KHARAR. PIN: 140301. Valid upto: 31-Jul-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0138';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"CONNAUGHT RESIDENCY, SECTOR 74A TDI CITY-I","pin_code":"140301","registration_date":"11-Oct-2017","valid_upto":"31-Jul-2020"}'::jsonb;
  v_desc := 'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: CONNAUGHT RESIDENCY, SECTOR 74A TDI CITY-I. PIN: 140301. Valid upto: 31-Jul-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0146';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MOTIA REAL ESTATE (Other than Individual)","address":"ROYAL FAME-II, VILL. CHAJJU MAJRA, TEH.-KHARAR","pin_code":"160055","website":"www.royalfame.in","registration_date":"24-Oct-2017","valid_upto":"27-Jul-2027"}'::jsonb;
  v_desc := 'Promoter: MOTIA REAL ESTATE (Other than Individual). Address: ROYAL FAME-II, VILL. CHAJJU MAJRA, TEH.-KHARAR. PIN: 160055. Valid upto: 27-Jul-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT40-PR0140';
  v_meta := '{"district":"Kapurthala","promoter":"AGI INFRA LIMITED (Other than Individual)","address":"Village Khazurla, G.T. Road","pin_code":"144411","website":"www.agiinfra.com","registration_date":"13-Nov-2017","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: AGI INFRA LIMITED (Other than Individual). Address: Village Khazurla, G.T. Road. PIN: 144411. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0122';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Maya Builders (Other than Individual)","address":"Green Lotus Saksham, Near Nabha Sahib Gurdawara-Zurakpur,Zirakpur Patiala Highway (SAS Nagar)","pin_code":"140603","website":"www.greenlotussaksham.com","registration_date":"26-Sep-2017","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: Maya Builders (Other than Individual). Address: Green Lotus Saksham, Near Nabha Sahib Gurdawara-Zurakpur,Zirakpur Patiala Highway (SAS Nagar). PIN: 140603. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL62-PR0123';
  v_meta := '{"district":"Patiala","promoter":"Sachinder Pal Singh Shinh (Individual)","address":"Railway Road, Nabha","pin_code":"147201","registration_date":"26-Sep-2017","valid_upto":"31-Jul-2019"}'::jsonb;
  v_desc := 'Promoter: Sachinder Pal Singh Shinh (Individual). Address: Railway Road, Nabha. PIN: 147201. Valid upto: 31-Jul-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0128';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"BEE GEE BUILTECH (Other than Individual)","address":"VILLAGE PEERMUCHALLA, ZIRAKPUR","pin_code":"140603","website":"beegeebuildtech.com","registration_date":"27-Sep-2017","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: BEE GEE BUILTECH (Other than Individual). Address: VILLAGE PEERMUCHALLA, ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0125';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"RKM Housing Ltd (Other than Individual)","address":"Sector-112, SAS Nagar, Mohali","pin_code":"140307","registration_date":"27-Sep-2017","valid_upto":"27-Jul-2018"}'::jsonb;
  v_desc := 'Promoter: RKM Housing Ltd (Other than Individual). Address: Sector-112, SAS Nagar, Mohali. PIN: 140307. Valid upto: 27-Jul-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0126';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"HIGHLAND PARK HOMES (Other than Individual)","address":"HIGHLAND MARG, PATIALA ROAD, VILLAGE BABHAT","pin_code":"140603","registration_date":"29-Sep-2017","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: HIGHLAND PARK HOMES (Other than Individual). Address: HIGHLAND MARG, PATIALA ROAD, VILLAGE BABHAT. PIN: 140603. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0059';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"EXOTIC REALTORS AND DEVELOPERS (Other than Individual)","address":"DHAKOULI, HADBAST NO. 48 NH-22, ZIRAKPUR-SHIMLA HIGHWAY, MC ZIRAKPUR","pin_code":"160104","registration_date":"11-Sep-2017","valid_upto":"31-Oct-2018"}'::jsonb;
  v_desc := 'Promoter: EXOTIC REALTORS AND DEVELOPERS (Other than Individual). Address: DHAKOULI, HADBAST NO. 48 NH-22, ZIRAKPUR-SHIMLA HIGHWAY, MC ZIRAKPUR. PIN: 160104. Valid upto: 31-Oct-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0056';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gurpreet Developers and Promoters Pvt. ltd. (Other than Individual)","address":"Vill. Khanpur, Kharar-Morinda Road, Tehsil Kharar","pin_code":"140301","registration_date":"11-Sep-2017","valid_upto":"05-Aug-2025"}'::jsonb;
  v_desc := 'Promoter: Gurpreet Developers and Promoters Pvt. ltd. (Other than Individual). Address: Vill. Khanpur, Kharar-Morinda Road, Tehsil Kharar. PIN: 140301. Valid upto: 05-Aug-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0115';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Unnati Land Developers Private Limited (Other than Individual)","address":"Bella homes Mubarakpur Road, Adjoining Parsvnath, Derabassi, Distt SAS Nagar, Mohali","pin_code":"140506","registration_date":"25-Sep-2017","valid_upto":"30-Sep-2019"}'::jsonb;
  v_desc := 'Promoter: Unnati Land Developers Private Limited (Other than Individual). Address: Bella homes Mubarakpur Road, Adjoining Parsvnath, Derabassi, Distt SAS Nagar, Mohali. PIN: 140506. Valid upto: 30-Sep-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH42-PR0116';
  v_meta := '{"district":"Ludhiana","promoter":"raman kumar mangla (Other than Individual)","address":"village bodalwala, jagraon","pin_code":"142026","registration_date":"25-Sep-2017"}'::jsonb;
  v_desc := 'Promoter: raman kumar mangla (Other than Individual). Address: village bodalwala, jagraon. PIN: 142026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0113';
  v_meta := '{"district":"Ludhiana","promoter":"BHASIN INFRASTRUCTURE DEVELOPERS PVT LTD. (Other than Individual)","address":"VILL BIRMI, PPO MALIKPUR BET","pin_code":"142027","website":"www.rajgadhestates.com","registration_date":"22-Sep-2017","valid_upto":"31-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: BHASIN INFRASTRUCTURE DEVELOPERS PVT LTD. (Other than Individual). Address: VILL BIRMI, PPO MALIKPUR BET. PIN: 142027. Valid upto: 31-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0112';
  v_meta := '{"district":"Ludhiana","promoter":"BHASIN INFRASTRUCTURE DEVELOPERS PVT LTD. (Other than Individual)","address":"RAJGADH  HEIGHTS,, RAJGADH ESTATES, PHASE 2, VILL BIRMI, PO MALIKPUR","pin_code":"142027","website":"www.rajgadhestates.com","registration_date":"22-Sep-2017","valid_upto":"31-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: BHASIN INFRASTRUCTURE DEVELOPERS PVT LTD. (Other than Individual). Address: RAJGADH  HEIGHTS,, RAJGADH ESTATES, PHASE 2, VILL BIRMI, PO MALIKPUR. PIN: 142027. Valid upto: 31-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0107';
  v_meta := '{"district":"Ludhiana","promoter":"BHASIN INFRASTRUCTURE DEVELOPERS PVT LTD. (Other than Individual)","address":"VILL JHAMAT AND BIRMI, SIDHWAN CANAL ROAD, NEAR DELHI PUBLIC SCHOOL","pin_code":"142027","website":"www.rajgadhestates.com","registration_date":"20-Sep-2017","valid_upto":"31-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: BHASIN INFRASTRUCTURE DEVELOPERS PVT LTD. (Other than Individual). Address: VILL JHAMAT AND BIRMI, SIDHWAN CANAL ROAD, NEAR DELHI PUBLIC SCHOOL. PIN: 142027. Valid upto: 31-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0108';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SDB INFRASTRUCTURE PVT LTD (Other than Individual)","address":"Site office, Som Datt Landmark, Sec-116,, Vill Sante Majra, Kharar-Landran Road, Mohali","pin_code":"140307","website":"https://infoline.com/som-datt-builders-pvt-ltd","registration_date":"22-Sep-2017","valid_upto":"31-Jul-2023"}'::jsonb;
  v_desc := 'Promoter: SDB INFRASTRUCTURE PVT LTD (Other than Individual). Address: Site office, Som Datt Landmark, Sec-116,, Vill Sante Majra, Kharar-Landran Road, Mohali. PIN: 140307. Valid upto: 31-Jul-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PR0104';
  v_meta := '{"district":"Amritsar","promoter":"ANSAL HOUSING LIMITED (Other than Individual)","address":"Ansal Town, Village Verka and Vallah","pin_code":"143501","website":"http://www.ansals.com/","registration_date":"19-Sep-2017","valid_upto":"16-Aug-2022"}'::jsonb;
  v_desc := 'Promoter: ANSAL HOUSING LIMITED (Other than Individual). Address: Ansal Town, Village Verka and Vallah. PIN: 143501. Valid upto: 16-Aug-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0093';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Manohar Infrastructure and Constructions Pvt Ltd (Other than Individual)","address":"SECTOR 3 LPA MULLANPUR, NEW CHANDIGARH","pin_code":"140901","website":"https://www.manoharrealty.com/the-palm-new-chandigarh/","registration_date":"15-Sep-2017","valid_upto":"31-Jul-2018"}'::jsonb;
  v_desc := 'Promoter: Manohar Infrastructure and Constructions Pvt Ltd (Other than Individual). Address: SECTOR 3 LPA MULLANPUR, NEW CHANDIGARH. PIN: 140901. Valid upto: 31-Jul-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0117';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Vera Developers Private Limited (Other than Individual)","address":"old Kalka Road, Park Street, Near Patiala Chowk, ZIrakpur","pin_code":"140603","website":"www.goldmark.com","registration_date":"26-Sep-2017","valid_upto":"31-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: Vera Developers Private Limited (Other than Individual). Address: old Kalka Road, Park Street, Near Patiala Chowk, ZIrakpur. PIN: 140603. Valid upto: 31-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0120';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Star Realtech & Developers Pvt Ltd (Other than Individual)","address":"CHAJJU MAJRA ROAD","pin_code":"140301","website":"www.westerntowersmohali.in","registration_date":"26-Sep-2017","valid_upto":"29-Jul-2020"}'::jsonb;
  v_desc := 'Promoter: Star Realtech & Developers Pvt Ltd (Other than Individual). Address: CHAJJU MAJRA ROAD. PIN: 140301. Valid upto: 29-Jul-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0118';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PRESTIGE REALTORS (Other than Individual)","address":"Village Khanpur, Municipal Kharar","pin_code":"141301","registration_date":"26-Sep-2017","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: PRESTIGE REALTORS (Other than Individual). Address: Village Khanpur, Municipal Kharar. PIN: 141301. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0110';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Ubber Buildtech Private Limited (Other than Individual)","address":"Village Khanpur, Kharar","pin_code":"140307","registration_date":"13-Nov-2017","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Ubber Buildtech Private Limited (Other than Individual). Address: Village Khanpur, Kharar. PIN: 140307. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0109';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sandalwood builders & promoters private limited (Other than Individual)","address":"Village Khanpur, Kharar","pin_code":"141103","registration_date":"20-Sep-2017","valid_upto":"31-Aug-2021"}'::jsonb;
  v_desc := 'Promoter: Sandalwood builders & promoters private limited (Other than Individual). Address: Village Khanpur, Kharar. PIN: 141103. Valid upto: 31-Aug-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0095';
  v_meta := '{"district":"Ludhiana","promoter":"SHR Holdings Pvt. Ltd. (Other than Individual)","address":"Divine City, Village Jhande, Ferozepur Road","pin_code":"142021","registration_date":"15-Sep-2017","valid_upto":"13-Sep-2020"}'::jsonb;
  v_desc := 'Promoter: SHR Holdings Pvt. Ltd. (Other than Individual). Address: Divine City, Village Jhande, Ferozepur Road. PIN: 142021. Valid upto: 13-Sep-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0076';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Balwinder  Singh (Individual)","address":"Rakba Harlalpur, Teh Kharar","pin_code":"140301","registration_date":"08-Nov-2017","valid_upto":"28-Oct-2022"}'::jsonb;
  v_desc := 'Promoter: Balwinder  Singh (Individual). Address: Rakba Harlalpur, Teh Kharar. PIN: 140301. Valid upto: 28-Oct-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0089';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PARADIGM BUSINESS VENTURES (Other than Individual)","address":"SCO-4&5, HOLLYWOOD PLAZA, VIP ROAD, ZIRAKPUR","pin_code":"140603","website":"www.thehermitagepark.com","registration_date":"15-Sep-2017","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: PARADIGM BUSINESS VENTURES (Other than Individual). Address: SCO-4&5, HOLLYWOOD PLAZA, VIP ROAD, ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0098';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PARTAP INFRATECH PRIVATE LIMITED (Other than Individual)","address":"URBAN HOMZ II GTB NAGAR, KHARAR","pin_code":"140301","registration_date":"18-Sep-2017","valid_upto":"30-Nov-2020"}'::jsonb;
  v_desc := 'Promoter: PARTAP INFRATECH PRIVATE LIMITED (Other than Individual). Address: URBAN HOMZ II GTB NAGAR, KHARAR. PIN: 140301. Valid upto: 30-Nov-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR0094';
  v_meta := '{"district":"Ludhiana","promoter":"Gulab Valley Homes Private Limited (Other than Individual)","address":"Gauri Apartments,  Civil Line, Chander Nagar","pin_code":"141001","registration_date":"15-Sep-2017","valid_upto":"31-Mar-2021"}'::jsonb;
  v_desc := 'Promoter: Gulab Valley Homes Private Limited (Other than Individual). Address: Gauri Apartments,  Civil Line, Chander Nagar. PIN: 141001. Valid upto: 31-Mar-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0099';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PARTAP INFRATECH PRIVATE LIMITED (Other than Individual)","address":"DARPAN GREENS 2, VILLAGE KHANPUR","pin_code":"140301","registration_date":"18-Sep-2017","valid_upto":"30-Nov-2020"}'::jsonb;
  v_desc := 'Promoter: PARTAP INFRATECH PRIVATE LIMITED (Other than Individual). Address: DARPAN GREENS 2, VILLAGE KHANPUR. PIN: 140301. Valid upto: 30-Nov-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0100';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ATLANTIC BUILDERS (Other than Individual)","address":"village badala, kharar","pin_code":"140301","registration_date":"18-Sep-2017","valid_upto":"30-Nov-2020"}'::jsonb;
  v_desc := 'Promoter: ATLANTIC BUILDERS (Other than Individual). Address: village badala, kharar. PIN: 140301. Valid upto: 30-Nov-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0081';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Mainstreet Developers Private Limited (Other than Individual)","address":"Joynest ZRK.1, Gazipur, Zirakur","pin_code":"140603","website":"www.sushma.co.in","registration_date":"14-Sep-2017","valid_upto":"31-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: Mainstreet Developers Private Limited (Other than Individual). Address: Joynest ZRK.1, Gazipur, Zirakur. PIN: 140603. Valid upto: 31-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0090';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sandwoods infratech projects private limited (Other than Individual)","address":"Sector 110, SAS Nagar","pin_code":"140301","website":"www.sandwoods.com","registration_date":"15-Sep-2017","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: Sandwoods infratech projects private limited (Other than Individual). Address: Sector 110, SAS Nagar. PIN: 140301. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0082';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SBL Builders Private Limited (Other than Individual)","address":"Village Gazipur, Zirakpur,","pin_code":"140603","website":"www.sushma.co.in","registration_date":"23-Oct-2017","valid_upto":"28-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: SBL Builders Private Limited (Other than Individual). Address: Village Gazipur, Zirakpur,. PIN: 140603. Valid upto: 28-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0073';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Singla Builders and Promoters Limited (Other than Individual)","address":"Chajjumajra, Kharar","pin_code":"140301","website":"www.sbpgroup.in","registration_date":"13-Sep-2017","valid_upto":"28-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: Singla Builders and Promoters Limited (Other than Individual). Address: Chajjumajra, Kharar. PIN: 140301. Valid upto: 28-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0072';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Barnala Developers (Other than Individual)","address":"Green Lotus Avenue, Village-Singhpura,Ambala -Chandigarh Road,Zirakpur","pin_code":"140603","website":"www.greenlotusavenue.com","registration_date":"11-Sep-2017","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Barnala Developers (Other than Individual). Address: Green Lotus Avenue, Village-Singhpura,Ambala -Chandigarh Road,Zirakpur. PIN: 140603. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PR0071';
  v_meta := '{"district":"Amritsar","promoter":"Impact Sare Magnum Townships  Private Limited (Other than Individual)","address":"Vill- Vallah, GT Road Bye Pass","pin_code":"143501","website":"pankaj.malhotra@impactprojects.in","registration_date":"11-Sep-2017","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Impact Sare Magnum Townships  Private Limited (Other than Individual). Address: Vill- Vallah, GT Road Bye Pass. PIN: 143501. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0069';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Singla Builders and Promoters Limited (Other than Individual)","address":"KHANPUR, KHARAR","pin_code":"140603","registration_date":"11-Sep-2017","valid_upto":"30-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: Singla Builders and Promoters Limited (Other than Individual). Address: KHANPUR, KHARAR. PIN: 140603. Valid upto: 30-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PR0070';
  v_meta := '{"district":"Amritsar","promoter":"Impact Projects Pvt Ltd (Other than Individual)","address":"Impact Regency, Village - Vallah, G.T Road Bye-Pass","pin_code":"143501","registration_date":"11-Sep-2017","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Impact Projects Pvt Ltd (Other than Individual). Address: Impact Regency, Village - Vallah, G.T Road Bye-Pass. PIN: 143501. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0068';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CREDO ASSETS PRIVATE LIMITED (Other than Individual)","address":"SECTOR-116, VILLAGE SANTEMAJRA, KHARAR","pin_code":"140603","registration_date":"11-Sep-2017","valid_upto":"28-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: CREDO ASSETS PRIVATE LIMITED (Other than Individual). Address: SECTOR-116, VILLAGE SANTEMAJRA, KHARAR. PIN: 140603. Valid upto: 28-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0062';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omni Pacific Colonizers Pvt Ltd (Other than Individual)","address":"Amayra greens, vill aujla tehsil kharar","pin_code":"140301","website":"www.amayragreens.com","registration_date":"11-Sep-2017","valid_upto":"10-Jan-2018"}'::jsonb;
  v_desc := 'Promoter: Omni Pacific Colonizers Pvt Ltd (Other than Individual). Address: Amayra greens, vill aujla tehsil kharar. PIN: 140301. Valid upto: 10-Jan-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0058';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AMBIKA REALCON PRIVATE LIMITED (Other than Individual)","address":"FLORENCE PARK, PHASE 1,, VILLAGE DHODHEMAJRA,","pin_code":"140301","website":"www.ambikarealcon.com","registration_date":"11-Sep-2017","valid_upto":"31-Mar-2021"}'::jsonb;
  v_desc := 'Promoter: AMBIKA REALCON PRIVATE LIMITED (Other than Individual). Address: FLORENCE PARK, PHASE 1,, VILLAGE DHODHEMAJRA,. PIN: 140301. Valid upto: 31-Mar-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0054';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omni Pacific Colonizers Pvt Ltd (Other than Individual)","address":"amayra greens phase-2, Nh-21, village aujla, kharar","pin_code":"140301","registration_date":"08-Sep-2017","valid_upto":"25-Jul-2020"}'::jsonb;
  v_desc := 'Promoter: Omni Pacific Colonizers Pvt Ltd (Other than Individual). Address: amayra greens phase-2, Nh-21, village aujla, kharar. PIN: 140301. Valid upto: 25-Jul-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0055';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gurpreet Developers and Promoters Pvt. ltd. (Other than Individual)","address":"kharar- ludhiana highway nh-95, village khanpur modern valley","pin_code":"140301","website":"www.gdphomes.in","registration_date":"11-Sep-2017","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Gurpreet Developers and Promoters Pvt. ltd. (Other than Individual). Address: kharar- ludhiana highway nh-95, village khanpur modern valley. PIN: 140301. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  RAISE NOTICE 'Part 7: updated % projects', v_updated;
END $$;