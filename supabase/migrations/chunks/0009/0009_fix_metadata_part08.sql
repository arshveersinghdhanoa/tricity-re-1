-- 0009_fix_metadata_part08.sql
-- Projects 1401 to 1600
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

  v_rera := 'PBRERA-SAS80-PR0053';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Parveen Promoters and Developers (Other than Individual)","address":"Panorama Floors Sector 116 Landran Road Kharar","pin_code":"140301","registration_date":"11-Sep-2017","valid_upto":"31-Dec-2017"}'::jsonb;
  v_desc := 'Promoter: Parveen Promoters and Developers (Other than Individual). Address: Panorama Floors Sector 116 Landran Road Kharar. PIN: 140301. Valid upto: 31-Dec-2017';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0052';
  v_meta := '{"district":"Ludhiana","promoter":"Ireo Waterfront Pvt Ltd (Other than Individual)","address":"Sidhwan Canal road, Off Ferozpur Road,village Dewatwal.","pin_code":"141001","website":"www.ireowaterfront.com","registration_date":"08-Sep-2017","valid_upto":"29-Nov-2017"}'::jsonb;
  v_desc := 'Promoter: Ireo Waterfront Pvt Ltd (Other than Individual). Address: Sidhwan Canal road, Off Ferozpur Road,village Dewatwal.. PIN: 141001. Valid upto: 29-Nov-2017';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0141';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ALLIANCE BUILDTECH (Other than Individual)","address":"VILLAGE SINGHPURA, MC ZIRAKPUR","pin_code":"140603","registration_date":"10-Oct-2017","valid_upto":"31-Mar-2018"}'::jsonb;
  v_desc := 'Promoter: ALLIANCE BUILDTECH (Other than Individual). Address: VILLAGE SINGHPURA, MC ZIRAKPUR. PIN: 140603. Valid upto: 31-Mar-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0083';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Amazing Real Estate Private Limited (Other than Individual)","address":"Joynest MOH.1, Village Chhat,, Near Aerocity, Zirakpur","pin_code":"140603","website":"www.sushma.co.in","registration_date":"14-Sep-2017","valid_upto":"28-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: Amazing Real Estate Private Limited (Other than Individual). Address: Joynest MOH.1, Village Chhat,, Near Aerocity, Zirakpur. PIN: 140603. Valid upto: 28-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0218';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"Village - Rampur Bhuda, New Aerocity Road, Zirakpur","pin_code":"140603","website":"www.gbpgroup.in","registration_date":"06-Feb-2018","valid_upto":"31-Mar-2020"}'::jsonb;
  v_desc := 'Promoter: GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: Village - Rampur Bhuda, New Aerocity Road, Zirakpur. PIN: 140603. Valid upto: 31-Mar-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0228';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"DD builders (Other than Individual)","address":"NAGLA ROAD,SINGHPURA, ZIRAKPUR","pin_code":"140603","registration_date":"25-Apr-2018","valid_upto":"31-Mar-2022"}'::jsonb;
  v_desc := 'Promoter: DD builders (Other than Individual). Address: NAGLA ROAD,SINGHPURA, ZIRAKPUR. PIN: 140603. Valid upto: 31-Mar-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PM0080';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Darshan   Singh (Individual)","address":"Vill-Chondheri,Lalru","pin_code":"140601","registration_date":"02-May-2018","valid_upto":"29-Aug-2020"}'::jsonb;
  v_desc := 'Promoter: Darshan   Singh (Individual). Address: Vill-Chondheri,Lalru. PIN: 140601. Valid upto: 29-Aug-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PM0073';
  v_meta := '{"district":"Ludhiana","promoter":"Da Builders & Developers (Other than Individual)","address":"Jordhan Village, hadbast no.302","pin_code":"142022","registration_date":"26-Apr-2018","valid_upto":"23-Apr-2022"}'::jsonb;
  v_desc := 'Promoter: Da Builders & Developers (Other than Individual). Address: Jordhan Village, hadbast no.302. PIN: 142022. Valid upto: 23-Apr-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PM0091';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Baba Banda Singh Bahadur Enterprises (Other than Individual)","address":"H.B No. 195, Sector 91-92, Mohali","pin_code":"140301","registration_date":"18-May-2018","valid_upto":"30-Apr-2021"}'::jsonb;
  v_desc := 'Promoter: Baba Banda Singh Bahadur Enterprises (Other than Individual). Address: H.B No. 195, Sector 91-92, Mohali. PIN: 140301. Valid upto: 30-Apr-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0061';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"Mohali-I, TDI City-I, SECTOR-119,","pin_code":"140301","registration_date":"20-Apr-2018","valid_upto":"30-Apr-2021"}'::jsonb;
  v_desc := 'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: Mohali-I, TDI City-I, SECTOR-119,. PIN: 140301. Valid upto: 30-Apr-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0211';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Limited (Other than Individual)","address":"Kharar, Teh. Kharar","pin_code":"140301","registration_date":"17-Nov-2017","valid_upto":"30-Nov-2022"}'::jsonb;
  v_desc := 'Promoter: Bajwa Developers Limited (Other than Individual). Address: Kharar, Teh. Kharar. PIN: 140301. Valid upto: 30-Nov-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR0131';
  v_meta := '{"district":"Patiala","promoter":"Tricone Projects India Limited (Other than Individual)","address":"Village Hardaspur, Kasiana, Sirhind Road","pin_code":"147001","registration_date":"04-Oct-2017","valid_upto":"03-Oct-2020"}'::jsonb;
  v_desc := 'Promoter: Tricone Projects India Limited (Other than Individual). Address: Village Hardaspur, Kasiana, Sirhind Road. PIN: 147001. Valid upto: 03-Oct-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0243';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"GBP Superia, Saidhpura, Gulabgarh Road","pin_code":"140507","website":"www.gbpgroup.in","registration_date":"19-Dec-2017","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: GBP Superia, Saidhpura, Gulabgarh Road. PIN: 140507. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0195';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"GBP Crest - I, Kharar Ludhiana Road, Village, Bhagomajra,","pin_code":"140301","website":"www.gbpgroup.in","registration_date":"08-Nov-2017","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: GBP Crest - I, Kharar Ludhiana Road, Village, Bhagomajra,. PIN: 140301. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0216';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"Riverside Estate, Saidhpura Road, Derabassi","pin_code":"140507","website":"www.gbpgroup.in","registration_date":"22-Nov-2017","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: Riverside Estate, Saidhpura Road, Derabassi. PIN: 140507. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0229';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"GBP Eco Homes, Saidhpura Road","pin_code":"140507","website":"www.gbpgroup.in","registration_date":"08-Dec-2017","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: GBP Eco Homes, Saidhpura Road. PIN: 140507. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0328';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"Village Khanpur, Kharar Kurali Road","pin_code":"140301","website":"www.gbpgroup.in","registration_date":"10-Apr-2018","valid_upto":"31-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: Village Khanpur, Kharar Kurali Road. PIN: 140301. Valid upto: 31-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0289';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"GBP Rose Valley Estate, Saidhpura, Gulabgarh Road, Derabassi","pin_code":"140507","website":"www.gbpgroup.in","registration_date":"20-Feb-2018","valid_upto":"31-Mar-2020"}'::jsonb;
  v_desc := 'Promoter: GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: GBP Rose Valley Estate, Saidhpura, Gulabgarh Road, Derabassi. PIN: 140507. Valid upto: 31-Mar-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0086';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ATS Infrabuild Private Limited (Other than Individual)","address":"Village Budmajra, Sector 121","pin_code":"160055","registration_date":"11-Oct-2017","valid_upto":"25-Jul-2021"}'::jsonb;
  v_desc := 'Promoter: ATS Infrabuild Private Limited (Other than Individual). Address: Village Budmajra, Sector 121. PIN: 160055. Valid upto: 25-Jul-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0148';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"WAVE ESTATE, SECTOR -85","pin_code":"143308","registration_date":"11-Oct-2017","valid_upto":"30-Nov-2020"}'::jsonb;
  v_desc := 'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: WAVE ESTATE, SECTOR -85. PIN: 143308. Valid upto: 30-Nov-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0150';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"WAVE ESTATE, SECTOR -85","pin_code":"143308","registration_date":"11-Oct-2017","valid_upto":"30-Nov-2018"}'::jsonb;
  v_desc := 'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: WAVE ESTATE, SECTOR -85. PIN: 143308. Valid upto: 30-Nov-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0173';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SRK APARTMENTS (Other than Individual)","address":"OLD AMBALA ROAD, GAZIPUR, ZIRAKPUR","pin_code":"160104","website":"www.goldensandappartments.com","registration_date":"27-Oct-2017","valid_upto":"29-Jul-2020"}'::jsonb;
  v_desc := 'Promoter: SRK APARTMENTS (Other than Individual). Address: OLD AMBALA ROAD, GAZIPUR, ZIRAKPUR. PIN: 160104. Valid upto: 29-Jul-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0400';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"01-Nov-2018","valid_upto":"31-Aug-2020"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 31-Aug-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL34-PR0023';
  v_meta := '{"district":"Jalandhar","promoter":"Eldeco Jalandhar Propeties Pvt. Ltd. (Other than Individual)","address":"Village Malko, Badshapur, Jaggan, Nakodar Road","pin_code":"144026","website":"www.eldecogroup.com","registration_date":"04-Sep-2017","valid_upto":"28-Jul-2023"}'::jsonb;
  v_desc := 'Promoter: Eldeco Jalandhar Propeties Pvt. Ltd. (Other than Individual). Address: Village Malko, Badshapur, Jaggan, Nakodar Road. PIN: 144026. Valid upto: 28-Jul-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0214';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bansal Sales (Other than Individual)","address":"Swastik vihar, Patiala road, Zirakpur","pin_code":"140603","website":"www.pbgsapphirecourt.com","registration_date":"28-Nov-2017","valid_upto":"30-Oct-2022"}'::jsonb;
  v_desc := 'Promoter: Bansal Sales (Other than Individual). Address: Swastik vihar, Patiala road, Zirakpur. PIN: 140603. Valid upto: 30-Oct-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL66-PR0815';
  v_meta := '{"district":"Patiala","promoter":"K K COLONISERS AND PROMOTERS (Other than Individual)","address":"bhawanigarh road, Samana","pin_code":"147101","registration_date":"15-Jul-2022","valid_upto":"14-Jan-2025"}'::jsonb;
  v_desc := 'Promoter: K K COLONISERS AND PROMOTERS (Other than Individual). Address: bhawanigarh road, Samana. PIN: 147101. Valid upto: 14-Jan-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0177';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Kumar Developers (Other than Individual)","address":"Business Park, Ambala Chandigarh Highway, Singhpura, Zirakpur","pin_code":"140603","registration_date":"15-Jul-2022","valid_upto":"18-Apr-2027"}'::jsonb;
  v_desc := 'Promoter: Kumar Developers (Other than Individual). Address: Business Park, Ambala Chandigarh Highway, Singhpura, Zirakpur. PIN: 140603. Valid upto: 18-Apr-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR0814';
  v_meta := '{"district":"Ludhiana","promoter":"LUDHIANA IMPROVEMENT TRUST (Other than Individual)","address":"Karnail Singh nagar, Improvement Trust Ludhiana","pin_code":"141006","registration_date":"15-Jul-2022","valid_upto":"11-Jun-2027"}'::jsonb;
  v_desc := 'Promoter: LUDHIANA IMPROVEMENT TRUST (Other than Individual). Address: Karnail Singh nagar, Improvement Trust Ludhiana. PIN: 141006. Valid upto: 11-Jun-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PC0176';
  v_meta := '{"district":"Bathinda","promoter":"Surinder Jit  Kaur (Individual)","address":"NH-7 Bathinda Bhucho Main Road, Opposite Mcdonalds, KFC, Best Price","pin_code":"151001","registration_date":"15-Jul-2022","valid_upto":"30-Jun-2027"}'::jsonb;
  v_desc := 'Promoter: Surinder Jit  Kaur (Individual). Address: NH-7 Bathinda Bhucho Main Road, Opposite Mcdonalds, KFC, Best Price. PIN: 151001. Valid upto: 30-Jun-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PR0760';
  v_meta := '{"district":"Barnala","promoter":"L P Rai Developers Pvt Ltd (Other than Individual)","address":"Village - Handiaya -B, H.B No.-58, Barnala","pin_code":"148101","registration_date":"23-Dec-2021","valid_upto":"30-Dec-2024"}'::jsonb;
  v_desc := 'Promoter: L P Rai Developers Pvt Ltd (Other than Individual). Address: Village - Handiaya -B, H.B No.-58, Barnala. PIN: 148101. Valid upto: 30-Dec-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0171';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GILLCO DEVELOPERS AND BUILDERS PVT LTD (Other than Individual)","address":"SECTOR 126, AIRPORT ROAD","pin_code":"140308","registration_date":"30-Jun-2022","valid_upto":"04-Jan-2027"}'::jsonb;
  v_desc := 'Promoter: GILLCO DEVELOPERS AND BUILDERS PVT LTD (Other than Individual). Address: SECTOR 126, AIRPORT ROAD. PIN: 140308. Valid upto: 04-Jan-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0175';
  v_meta := '{"district":"Ludhiana","promoter":"RITESH PROPERTIES AND INDUSTRIES LIMITED (Other than Individual)","address":"Commercial Site-1, Hampton Court Business Park, NH 05 Ludhiana Chandigarh Road","pin_code":"141123","website":"http://www.riteshindustries.us","registration_date":"30-Jun-2022","valid_upto":"31-Mar-2025"}'::jsonb;
  v_desc := 'Promoter: RITESH PROPERTIES AND INDUSTRIES LIMITED (Other than Individual). Address: Commercial Site-1, Hampton Court Business Park, NH 05 Ludhiana Chandigarh Road. PIN: 141123. Valid upto: 31-Mar-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0813';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Horizon Infrastructure and Developers LLP (Other than Individual)","address":"Group Housing Site No-2, Sector 88","pin_code":"140501","registration_date":"30-Jun-2022","valid_upto":"31-Mar-2027"}'::jsonb;
  v_desc := 'Promoter: Horizon Infrastructure and Developers LLP (Other than Individual). Address: Group Housing Site No-2, Sector 88. PIN: 140501. Valid upto: 31-Mar-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MNS50-PR0810';
  v_meta := '{"district":"Mansa","promoter":"Four Land Developers (Other than Individual)","address":"Bareta, Bareta","pin_code":"151501","registration_date":"30-Jun-2022","valid_upto":"31-Jan-2027"}'::jsonb;
  v_desc := 'Promoter: Four Land Developers (Other than Individual). Address: Bareta, Bareta. PIN: 151501. Valid upto: 31-Jan-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MNS49-PR0811';
  v_meta := '{"district":"Mansa","promoter":"Aastha Enclave (Other than Individual)","address":"Budhlada, Budhlada","pin_code":"151502","registration_date":"30-Jun-2022","valid_upto":"31-Jan-2027"}'::jsonb;
  v_desc := 'Promoter: Aastha Enclave (Other than Individual). Address: Budhlada, Budhlada. PIN: 151502. Valid upto: 31-Jan-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0812';
  v_meta := '{"district":"Jalandhar","promoter":"Royale Homes (Other than Individual)","address":"Village Sansarpur H.B 247 Tehsil and District Jalandhar, Punjab","pin_code":"144024","registration_date":"30-Jun-2022","valid_upto":"30-Jun-2025"}'::jsonb;
  v_desc := 'Promoter: Royale Homes (Other than Individual). Address: Village Sansarpur H.B 247 Tehsil and District Jalandhar, Punjab. PIN: 144024. Valid upto: 30-Jun-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0808';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Alaknanda Land and Promoters (Other than Individual)","address":"VILLAGE SINGHPURA, HADBAST NO. 43,, ZIRAKPUR","pin_code":"140603","registration_date":"27-Jun-2022","valid_upto":"31-Dec-2024"}'::jsonb;
  v_desc := 'Promoter: Alaknanda Land and Promoters (Other than Individual). Address: VILLAGE SINGHPURA, HADBAST NO. 43,, ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0174';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KSSP REAL ESTATE PRIVATE LIMITED (Other than Individual)","address":"VILAGE- DAUN AND BALLOMAJRA, MOHALI","pin_code":"140301","registration_date":"27-Jun-2022","valid_upto":"31-Mar-2027"}'::jsonb;
  v_desc := 'Promoter: KSSP REAL ESTATE PRIVATE LIMITED (Other than Individual). Address: VILAGE- DAUN AND BALLOMAJRA, MOHALI. PIN: 140301. Valid upto: 31-Mar-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0807';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Global Infrastructure (Other than Individual)","address":"Village Dyalpur (H.B No. 289) Zirakpur, Dist. SAS Nagar","pin_code":"140601","registration_date":"27-Jun-2022","valid_upto":"19-Apr-2027"}'::jsonb;
  v_desc := 'Promoter: Global Infrastructure (Other than Individual). Address: Village Dyalpur (H.B No. 289) Zirakpur, Dist. SAS Nagar. PIN: 140601. Valid upto: 19-Apr-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PM0022';
  v_meta := '{"district":"Ludhiana","promoter":"AKME PROJECTS LTD (Other than Individual)","address":"VILLAGE JANDIALI, LUDHIANA","pin_code":"141112","registration_date":"04-Jan-2018"}'::jsonb;
  v_desc := 'Promoter: AKME PROJECTS LTD (Other than Individual). Address: VILLAGE JANDIALI, LUDHIANA. PIN: 141112';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0044';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ANSAL HOUSING LIMITED (Other than Individual)","address":"ANSALS WOODBURY APARTMENTS, BHABAT COLONY, ZIRAKPUR","pin_code":"140603","website":"www.ansals.com","registration_date":"07-Sep-2017","valid_upto":"09-Mar-2022"}'::jsonb;
  v_desc := 'Promoter: ANSAL HOUSING LIMITED (Other than Individual). Address: ANSALS WOODBURY APARTMENTS, BHABAT COLONY, ZIRAKPUR. PIN: 140603. Valid upto: 09-Mar-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0179';
  v_meta := '{"district":"Ludhiana","promoter":"BHASIN INFRASTRUCTURE DEVELOPERS PVT LTD (Other than Individual)","address":"RAJGADH ESTATES,, PH 2EXTENSION -1, ZONE 1","pin_code":"142027","website":"www.rajgadhestates.com","registration_date":"31-Oct-2017","valid_upto":"31-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: BHASIN INFRASTRUCTURE DEVELOPERS PVT LTD (Other than Individual). Address: RAJGADH ESTATES,, PH 2EXTENSION -1, ZONE 1. PIN: 142027. Valid upto: 31-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0348';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bir Developers and Promoters (Other than Individual)","address":"VILLAGE LOHAGARH, VIP ROAD, ZIRAKPUR","pin_code":"140603","registration_date":"25-Apr-2018","valid_upto":"31-Jul-2018"}'::jsonb;
  v_desc := 'Promoter: Bir Developers and Promoters (Other than Individual). Address: VILLAGE LOHAGARH, VIP ROAD, ZIRAKPUR. PIN: 140603. Valid upto: 31-Jul-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0098';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"C and C Towers Limited (Other than Individual)","address":"Phase VI District SAS Nagar, Punjab","pin_code":"160055","registration_date":"29-Jul-2019","valid_upto":"30-Nov-2020"}'::jsonb;
  v_desc := 'Promoter: C and C Towers Limited (Other than Individual). Address: Phase VI District SAS Nagar, Punjab. PIN: 160055. Valid upto: 30-Nov-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0283';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Earth Son Infrastructures Pvt. Ltd. (Other than Individual)","address":"VILLAGE JHUNGIA, SHIVALIK AVENUE III, SECTOR 125, TEHSIL KHARAR, DISTRICT SAS NAGAR","pin_code":"140301","registration_date":"12-Feb-2018"}'::jsonb;
  v_desc := 'Promoter: Earth Son Infrastructures Pvt. Ltd. (Other than Individual). Address: VILLAGE JHUNGIA, SHIVALIK AVENUE III, SECTOR 125, TEHSIL KHARAR, DISTRICT SAS NAGAR. PIN: 140301';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0047';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Emerging India housing Corporation Ltd (Other than Individual)","address":"Sector 115, Village Santemajra, Kharar- Banur Road, SAS Nagar Punjab","pin_code":"140307","registration_date":"07-Sep-2017","valid_upto":"07-Jun-2022"}'::jsonb;
  v_desc := 'Promoter: Emerging India housing Corporation Ltd (Other than Individual). Address: Sector 115, Village Santemajra, Kharar- Banur Road, SAS Nagar Punjab. PIN: 140307. Valid upto: 07-Jun-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0303';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"FRENDEN HOUSING PRIVATE LIMITED (Other than Individual)","address":"GLOBAL HI-TECH CITY, VILLAGE HARLALPUR SECTOR 124","pin_code":"140301","registration_date":"01-Mar-2018","valid_upto":"31-Mar-2019"}'::jsonb;
  v_desc := 'Promoter: FRENDEN HOUSING PRIVATE LIMITED (Other than Individual). Address: GLOBAL HI-TECH CITY, VILLAGE HARLALPUR SECTOR 124. PIN: 140301. Valid upto: 31-Mar-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0278';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"FRENDEN HOUSING PRIVATE LIMITED (Other than Individual)","address":"MODERN VALLEY, LUDHIANA CHANDIGARH ROAD, VILLAGE KHANPUR, TEHSIL KHARAR, SAS NAGAR MOHALI","pin_code":"140301","registration_date":"07-Feb-2018","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: FRENDEN HOUSING PRIVATE LIMITED (Other than Individual). Address: MODERN VALLEY, LUDHIANA CHANDIGARH ROAD, VILLAGE KHANPUR, TEHSIL KHARAR, SAS NAGAR MOHALI. PIN: 140301. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0233';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"G.B.M. Colonizers Private Limited (Other than Individual)","address":"Village Khanpur","pin_code":"140301","registration_date":"14-Dec-2017"}'::jsonb;
  v_desc := 'Promoter: G.B.M. Colonizers Private Limited (Other than Individual). Address: Village Khanpur. PIN: 140301';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0225';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gahlot and Sons (Other than Individual)","address":"Village Fatehullapur, Sector 125, SAS Nagar","pin_code":"160062","registration_date":"11-Dec-2017","valid_upto":"05-Sep-2020"}'::jsonb;
  v_desc := 'Promoter: Gahlot and Sons (Other than Individual). Address: Village Fatehullapur, Sector 125, SAS Nagar. PIN: 160062. Valid upto: 05-Sep-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PM0075';
  v_meta := '{"district":"Ludhiana","promoter":"Ganesh Land Crafts (Other than Individual)","address":"Village Jodhan and Rattan","pin_code":"141001","registration_date":"27-Apr-2018","valid_upto":"30-Apr-2021"}'::jsonb;
  v_desc := 'Promoter: Ganesh Land Crafts (Other than Individual). Address: Village Jodhan and Rattan. PIN: 141001. Valid upto: 30-Apr-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0207';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GBM Developers and Promoters Pvt Ltd (Other than Individual)","address":"Khanpur, Kharar","pin_code":"160055","registration_date":"17-Nov-2017","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: GBM Developers and Promoters Pvt Ltd (Other than Individual). Address: Khanpur, Kharar. PIN: 160055. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0219';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GGP Buildtech Private Limited (Other than Individual)","address":"VILLAGE SANTEMAJRA, KHARAR","pin_code":"140301","registration_date":"04-Dec-2017","valid_upto":"31-Mar-2019"}'::jsonb;
  v_desc := 'Promoter: GGP Buildtech Private Limited (Other than Individual). Address: VILLAGE SANTEMAJRA, KHARAR. PIN: 140301. Valid upto: 31-Mar-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0121';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Karamjit  Singh (Individual)","address":"Bhagomajra, Kharar","pin_code":"140301","registration_date":"26-Sep-2017","valid_upto":"29-Jul-2018"}'::jsonb;
  v_desc := 'Promoter: Karamjit  Singh (Individual). Address: Bhagomajra, Kharar. PIN: 140301. Valid upto: 29-Jul-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT40-PR0410';
  v_meta := '{"district":"Kapurthala","promoter":"Landmark Builders and Developers (Other than Individual)","address":"Village Khurampur, Tehsil Phagwara","pin_code":"144403","registration_date":"10-Jan-2019","valid_upto":"30-Apr-2021"}'::jsonb;
  v_desc := 'Promoter: Landmark Builders and Developers (Other than Individual). Address: Village Khurampur, Tehsil Phagwara. PIN: 144403. Valid upto: 30-Apr-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0277';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Land Twisters (Other than Individual)","address":"Village Chapper Chiri Khurd, Sector 116, Kharar","pin_code":"140301","registration_date":"06-Feb-2018","valid_upto":"30-Jul-2020"}'::jsonb;
  v_desc := 'Promoter: Land Twisters (Other than Individual). Address: Village Chapper Chiri Khurd, Sector 116, Kharar. PIN: 140301. Valid upto: 30-Jul-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PM0101';
  v_meta := '{"district":"Patiala","promoter":"Majestic Properties Pvt. Ltd. (Other than Individual)","address":"Village Jansua, Banur-Rajpura Road, Patiala","pin_code":"147001","registration_date":"14-Jun-2018","valid_upto":"29-Sep-2020"}'::jsonb;
  v_desc := 'Promoter: Majestic Properties Pvt. Ltd. (Other than Individual). Address: Village Jansua, Banur-Rajpura Road, Patiala. PIN: 147001. Valid upto: 29-Sep-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0248';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"OM Divine Developers and Infrastructures Pvt Ltd (Other than Individual)","address":"Khunimajra and Santemajra Sector 115","pin_code":"140301","registration_date":"05-Jan-2018"}'::jsonb;
  v_desc := 'Promoter: OM Divine Developers and Infrastructures Pvt Ltd (Other than Individual). Address: Khunimajra and Santemajra Sector 115. PIN: 140301';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PM0126';
  v_meta := '{"district":"Sangrur","promoter":"MUKT COLONISERS PVT LTD (Other than Individual)","address":"PASIANA","pin_code":"148001","registration_date":"09-Jan-2019","valid_upto":"30-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: MUKT COLONISERS PVT LTD (Other than Individual). Address: PASIANA. PIN: 148001. Valid upto: 30-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0223';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PIONEER HIGH GRADE HOMES PVT LTD (Other than Individual)","address":"CHAJJU MAJRA","pin_code":"160055","registration_date":"08-Dec-2017","valid_upto":"27-Jul-2017"}'::jsonb;
  v_desc := 'Promoter: PIONEER HIGH GRADE HOMES PVT LTD (Other than Individual). Address: CHAJJU MAJRA. PIN: 160055. Valid upto: 27-Jul-2017';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PM0127';
  v_meta := '{"district":"Jalandhar","promoter":"PPR Infrastructure Ltd. (Other than Individual)","address":"VILLAGE BOOT AND KINGRA","pin_code":"144001","registration_date":"11-Jan-2019","valid_upto":"30-Apr-2021"}'::jsonb;
  v_desc := 'Promoter: PPR Infrastructure Ltd. (Other than Individual). Address: VILLAGE BOOT AND KINGRA. PIN: 144001. Valid upto: 30-Apr-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PM0128';
  v_meta := '{"district":"Jalandhar","promoter":"PPR Infrastructure Ltd. (Other than Individual)","address":"VILLAGE KINGRA","pin_code":"144001","registration_date":"11-Jan-2019","valid_upto":"30-Apr-2021"}'::jsonb;
  v_desc := 'Promoter: PPR Infrastructure Ltd. (Other than Individual). Address: VILLAGE KINGRA. PIN: 144001. Valid upto: 30-Apr-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0066';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Primary Estates and Developers Private Limited (Other than Individual)","address":"Sector 116","pin_code":"160055","registration_date":"11-Sep-2017","valid_upto":"31-Dec-2017"}'::jsonb;
  v_desc := 'Promoter: Primary Estates and Developers Private Limited (Other than Individual). Address: Sector 116. PIN: 160055. Valid upto: 31-Dec-2017';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0064';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Primary Estates and Developers Private Limited (Other than Individual)","address":"Sector 124 Sunny Enclave","pin_code":"160055","registration_date":"11-Sep-2017","valid_upto":"31-Mar-2018"}'::jsonb;
  v_desc := 'Promoter: Primary Estates and Developers Private Limited (Other than Individual). Address: Sector 124 Sunny Enclave. PIN: 160055. Valid upto: 31-Mar-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0063';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Primary Estates and Developers Private Limited (Other than Individual)","address":"Sector 125, Sunny Enclave","pin_code":"160062","registration_date":"11-Sep-2017","valid_upto":"31-Oct-2017"}'::jsonb;
  v_desc := 'Promoter: Primary Estates and Developers Private Limited (Other than Individual). Address: Sector 125, Sunny Enclave. PIN: 160062. Valid upto: 31-Oct-2017';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0327';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PUMA REALTORS PRIVATE LIMITED (Other than Individual)","address":"Village Sukhparh and Sambalkhi, Sector 98","pin_code":"140307","registration_date":"02-Apr-2018","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: PUMA REALTORS PRIVATE LIMITED (Other than Individual). Address: Village Sukhparh and Sambalkhi, Sector 98. PIN: 140307. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0345';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PUNJAB EMPIRES PVT LTD (Other than Individual)","address":"KAULI MAJRA","pin_code":"147201","registration_date":"20-Apr-2018","valid_upto":"18-Apr-2019"}'::jsonb;
  v_desc := 'Promoter: PUNJAB EMPIRES PVT LTD (Other than Individual). Address: KAULI MAJRA. PIN: 147201. Valid upto: 18-Apr-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0022';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"The Chief Administrator, Punjab Urban Planning and Development Authority (Other than Individual)","address":"PUDA Bhawan, Sector 62, SAS Nagar","pin_code":"140055","registration_date":"04-Sep-2017","valid_upto":"30-Nov-2019"}'::jsonb;
  v_desc := 'Promoter: The Chief Administrator, Punjab Urban Planning and Development Authority (Other than Individual). Address: PUDA Bhawan, Sector 62, SAS Nagar. PIN: 140055. Valid upto: 30-Nov-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT39-PM0141';
  v_meta := '{"district":"Kapurthala","promoter":"The Chief Administrator, Punjab Urban Planning and Development Authority (Other than Individual)","address":"Kapurthala","pin_code":"144601","registration_date":"04-Apr-2019","valid_upto":"31-Mar-2021"}'::jsonb;
  v_desc := 'Promoter: The Chief Administrator, Punjab Urban Planning and Development Authority (Other than Individual). Address: Kapurthala. PIN: 144601. Valid upto: 31-Mar-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0351';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SANSKRITI GOLDEN OAK REAL ESTATE PVT LTD (Other than Individual)","address":"VILLAGE MULLANPUR, MAJRI TEHSIL KHARAR","pin_code":"140901","registration_date":"02-May-2018","valid_upto":"30-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: SANSKRITI GOLDEN OAK REAL ESTATE PVT LTD (Other than Individual). Address: VILLAGE MULLANPUR, MAJRI TEHSIL KHARAR. PIN: 140901. Valid upto: 30-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR77-PR0426';
  v_meta := '{"district":"Sangrur","promoter":"Ivraj  Singh Sibia (Individual)","address":"Village Sibia Sangrur Sunam Road","pin_code":"148001","registration_date":"18-Feb-2019","valid_upto":"14-Jul-2020"}'::jsonb;
  v_desc := 'Promoter: Ivraj  Singh Sibia (Individual). Address: Village Sibia Sangrur Sunam Road. PIN: 148001. Valid upto: 14-Jul-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PM0057';
  v_meta := '{"district":"Ludhiana","promoter":"SHARAV INFRASTRUCTURES PVT LTD (Other than Individual)","address":"VILLAGE KHANPUR","pin_code":"141001","registration_date":"28-Mar-2018","valid_upto":"27-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: SHARAV INFRASTRUCTURES PVT LTD (Other than Individual). Address: VILLAGE KHANPUR. PIN: 141001. Valid upto: 27-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0259';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SHIVALIK VIHAR SITES PVT LTD (Other than Individual)","address":"KHARAR","pin_code":"140301","registration_date":"29-Jan-2018","valid_upto":"01-Jan-2012"}'::jsonb;
  v_desc := 'Promoter: SHIVALIK VIHAR SITES PVT LTD (Other than Individual). Address: KHARAR. PIN: 140301. Valid upto: 01-Jan-2012';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0012';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SHRI SHIVJOT DEVELOPERS AND BUILDERS LTD (Other than Individual)","address":"VILLAGE AUJLA","pin_code":"140301","registration_date":"13-Sep-2017"}'::jsonb;
  v_desc := 'Promoter: SHRI SHIVJOT DEVELOPERS AND BUILDERS LTD (Other than Individual). Address: VILLAGE AUJLA. PIN: 140301';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0078';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SHRI SHIVJOT DEVELOPERS AND BUILDERS LTD (Other than Individual)","address":"KHARAR","pin_code":"160055","registration_date":"14-Sep-2017"}'::jsonb;
  v_desc := 'Promoter: SHRI SHIVJOT DEVELOPERS AND BUILDERS LTD (Other than Individual). Address: KHARAR. PIN: 160055';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0338';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SKY INFRASTRUCTURES PVT LTD (Other than Individual)","address":"VILLAGE KISHANPURA","pin_code":"140603","registration_date":"18-Apr-2018","valid_upto":"31-Jul-2018"}'::jsonb;
  v_desc := 'Promoter: SKY INFRASTRUCTURES PVT LTD (Other than Individual). Address: VILLAGE KISHANPURA. PIN: 140603. Valid upto: 31-Jul-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PC0025';
  v_meta := '{"district":"Bathinda","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"Near Power House Road, Bathinda","pin_code":"151001","registration_date":"30-Oct-2017"}'::jsonb;
  v_desc := 'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: Near Power House Road, Bathinda. PIN: 151001';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PC0036';
  v_meta := '{"district":"Bathinda","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"Village Rampura Phul, Bathinda","pin_code":"151001","registration_date":"22-Feb-2018","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: Village Rampura Phul, Bathinda. PIN: 151001. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PC0039';
  v_meta := '{"district":"Bathinda","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"Bathinda","pin_code":"151001","registration_date":"22-Feb-2018","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: Bathinda. PIN: 151001. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PM0028';
  v_meta := '{"district":"Bathinda","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"BATHINDA","pin_code":"151001","registration_date":"22-Feb-2018","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: BATHINDA. PIN: 151001. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PM0030';
  v_meta := '{"district":"Bathinda","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"Bathinda Dabwali Road","pin_code":"151001","registration_date":"22-Feb-2018","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: Bathinda Dabwali Road. PIN: 151001. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FDK12-PM0029';
  v_meta := '{"district":"Faridkot","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"Faridkot","pin_code":"151203","registration_date":"22-Feb-2018","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: Faridkot. PIN: 151203. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MKT58-PM0047';
  v_meta := '{"district":"Muktsar","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"Udekaran","pin_code":"152026","registration_date":"12-Mar-2018","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: Udekaran. PIN: 152026. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MNS50-PM0031';
  v_meta := '{"district":"Bathinda","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"MANSA, BATHINDA","pin_code":"151001","registration_date":"22-Feb-2018","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: MANSA, BATHINDA. PIN: 151001. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL20-PM0048';
  v_meta := '{"district":"Fazilka","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"PUDA Enclave  Near SDM Residence","pin_code":"152123","registration_date":"12-Mar-2018","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: PUDA Enclave  Near SDM Residence. PIN: 152123. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL20-PM0049';
  v_meta := '{"district":"Fazilka","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"Abohar","pin_code":"152116","registration_date":"12-Mar-2018","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: Abohar. PIN: 152116. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FDK12-PC0041';
  v_meta := '{"district":"Faridkot","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"Faridkot","pin_code":"142049","registration_date":"26-Feb-2018","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: Faridkot. PIN: 142049. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MNS50-PC0037';
  v_meta := '{"district":"Mansa","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"Mansa","pin_code":"151505","registration_date":"22-Feb-2018","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: Mansa. PIN: 151505. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PC0040';
  v_meta := '{"district":"Bathinda","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"Bathinda","pin_code":"151001","registration_date":"22-Feb-2018","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: Bathinda. PIN: 151001. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MNS50-PM0035';
  v_meta := '{"district":"Mansa","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"PUDA Enclave Sugar Mill Site Budhlada","pin_code":"151502","registration_date":"26-Feb-2018","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: PUDA Enclave Sugar Mill Site Budhlada. PIN: 151502. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MNS50-PR0297';
  v_meta := '{"district":"Mansa","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"Mansa","pin_code":"151505","registration_date":"26-Feb-2018","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: Mansa. PIN: 151505. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FDK12-PM0036';
  v_meta := '{"district":"Faridkot","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"Faridkot","pin_code":"142049","registration_date":"26-Feb-2018","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: Faridkot. PIN: 142049. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR0298';
  v_meta := '{"district":"Bathinda","promoter":"The Chief Administrator, Bathinda Development Authority (Other than Individual)","address":"BATHINDA","pin_code":"151001","registration_date":"26-Feb-2018","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: The Chief Administrator, Bathinda Development Authority (Other than Individual). Address: BATHINDA. PIN: 151001. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PC0059';
  v_meta := '{"district":"Patiala","promoter":"The Chief Administrator,  Office of Patiala Development Authority (Other than Individual)","address":"NEAR RAILWAY STATION, PATIALA","pin_code":"147001","registration_date":"16-Apr-2018","valid_upto":"30-Apr-2018"}'::jsonb;
  v_desc := 'Promoter: The Chief Administrator,  Office of Patiala Development Authority (Other than Individual). Address: NEAR RAILWAY STATION, PATIALA. PIN: 147001. Valid upto: 30-Apr-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PM0065';
  v_meta := '{"district":"Patiala","promoter":"The Chief Administrator,  Office of Patiala Development Authority (Other than Individual)","address":"Village Falauli, Patiala","pin_code":"147001","registration_date":"16-Apr-2018","valid_upto":"30-Sep-2020"}'::jsonb;
  v_desc := 'Promoter: The Chief Administrator,  Office of Patiala Development Authority (Other than Individual). Address: Village Falauli, Patiala. PIN: 147001. Valid upto: 30-Sep-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PM0068';
  v_meta := '{"district":"Patiala","promoter":"The Chief Administrator,  Office of Patiala Development Authority (Other than Individual)","address":"Near Bus Stand","pin_code":"147001","registration_date":"16-Apr-2018","valid_upto":"30-Jun-2018"}'::jsonb;
  v_desc := 'Promoter: The Chief Administrator,  Office of Patiala Development Authority (Other than Individual). Address: Near Bus Stand. PIN: 147001. Valid upto: 30-Jun-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR73-PM0050';
  v_meta := '{"district":"Sangrur","promoter":"The Chief Administrator,  Office of Patiala Development Authority (Other than Individual)","address":"Sangrur Road, Dhuri","pin_code":"148024","registration_date":"26-Dec-2018","valid_upto":"30-Jun-2020"}'::jsonb;
  v_desc := 'Promoter: The Chief Administrator,  Office of Patiala Development Authority (Other than Individual). Address: Sangrur Road, Dhuri. PIN: 148024. Valid upto: 30-Jun-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PM0077';
  v_meta := '{"district":"Jalandhar","promoter":"The Chief Administrator, Punjab Urban Planning and Development Authority (Other than Individual)","address":"Jalandhar","pin_code":"144001","registration_date":"30-Apr-2018","valid_upto":"30-Aug-2018"}'::jsonb;
  v_desc := 'Promoter: The Chief Administrator, Punjab Urban Planning and Development Authority (Other than Individual). Address: Jalandhar. PIN: 144001. Valid upto: 30-Aug-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PM0082';
  v_meta := '{"district":"Jalandhar","promoter":"The Chief Administrator, Punjab Urban Planning and Development Authority (Other than Individual)","address":"Kapurthala Road, Jalandhar","pin_code":"144001","registration_date":"08-May-2018","valid_upto":"30-Jun-2018"}'::jsonb;
  v_desc := 'Promoter: The Chief Administrator, Punjab Urban Planning and Development Authority (Other than Individual). Address: Kapurthala Road, Jalandhar. PIN: 144001. Valid upto: 30-Jun-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0389';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Greater Mohali Area Development Authority (GMADA) (Other than Individual)","address":"Sector 76, 77, 78, 79 and 80","pin_code":"160071","registration_date":"27-Sep-2018","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Greater Mohali Area Development Authority (GMADA) (Other than Individual). Address: Sector 76, 77, 78, 79 and 80. PIN: 160071. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0215';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Virtue Land Developers Pvt Ltd (Other than Individual)","address":"Village DaunMajra","pin_code":"140301","registration_date":"22-Nov-2017","valid_upto":"22-Nov-2025"}'::jsonb;
  v_desc := 'Promoter: Virtue Land Developers Pvt Ltd (Other than Individual). Address: Village DaunMajra. PIN: 140301. Valid upto: 22-Nov-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0049';
  v_meta := '{"district":"Ludhiana","promoter":"YEE BEE GEE INFRASTRUCTURES PVT LTD (Other than Individual)","address":"VILLAGE PHULLANWAL, DIST. LUDHIANA","pin_code":"147001","registration_date":"12-Apr-2018","valid_upto":"30-Apr-2020"}'::jsonb;
  v_desc := 'Promoter: YEE BEE GEE INFRASTRUCTURES PVT LTD (Other than Individual). Address: VILLAGE PHULLANWAL, DIST. LUDHIANA. PIN: 147001. Valid upto: 30-Apr-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0061';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Galaxy Developers (Other than Individual)","address":"Sector 123, Sunny Enclave, Kharar","pin_code":"140301","registration_date":"11-Sep-2017","valid_upto":"30-Jun-2019"}'::jsonb;
  v_desc := 'Promoter: Galaxy Developers (Other than Individual). Address: Sector 123, Sunny Enclave, Kharar. PIN: 140301. Valid upto: 30-Jun-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0051';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Ever Rich Buildcon Pvt. Ltd. (Other than Individual)","address":"New Sunny Enclave Sector 125 Mohali","pin_code":"160062","registration_date":"07-Sep-2017","valid_upto":"01-Jan-2020"}'::jsonb;
  v_desc := 'Promoter: Ever Rich Buildcon Pvt. Ltd. (Other than Individual). Address: New Sunny Enclave Sector 125 Mohali. PIN: 160062. Valid upto: 01-Jan-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0172';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"BB Developers (Other than Individual)","address":"Village Singhpura, H.B. No. 43, Zirakpur","pin_code":"140603","registration_date":"13-Jun-2022","valid_upto":"30-Aug-2025"}'::jsonb;
  v_desc := 'Promoter: BB Developers (Other than Individual). Address: Village Singhpura, H.B. No. 43, Zirakpur. PIN: 140603. Valid upto: 30-Aug-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0748';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Noble Dream Projects Private Limited (Other than Individual)","address":"Group Housing Site no. 1, Sector 66, Beta, IT City","pin_code":"160062","registration_date":"01-Oct-2021","valid_upto":"31-Mar-2027"}'::jsonb;
  v_desc := 'Promoter: Noble Dream Projects Private Limited (Other than Individual). Address: Group Housing Site no. 1, Sector 66, Beta, IT City. PIN: 160062. Valid upto: 31-Mar-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0805';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Aerotown Developers LLP (Other than Individual)","address":"Village Dyalpura, Zirakpur, Punjab","pin_code":"140603","registration_date":"10-Jun-2022","valid_upto":"31-Oct-2023"}'::jsonb;
  v_desc := 'Promoter: Aerotown Developers LLP (Other than Individual). Address: Village Dyalpura, Zirakpur, Punjab. PIN: 140603. Valid upto: 31-Oct-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL20-PR0804';
  v_meta := '{"district":"Fazilka","promoter":"Nagpal cotton Industries Pvt. Ltd. (Other than Individual)","address":"Vill. Painchan Wali, H.B. No. 234, Tehsil And District Fazilka, Fazilka","pin_code":"152123","registration_date":"10-Jun-2022","valid_upto":"22-Nov-2024"}'::jsonb;
  v_desc := 'Promoter: Nagpal cotton Industries Pvt. Ltd. (Other than Individual). Address: Vill. Painchan Wali, H.B. No. 234, Tehsil And District Fazilka, Fazilka. PIN: 152123. Valid upto: 22-Nov-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0803';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PREET LAND PROMOTERS & DEVELOPERS PVT LTD  (Other than Individual)","address":"SECTOR 86, SAS NAGAR","pin_code":"140308","registration_date":"10-Jun-2022","valid_upto":"20-Sep-2027"}'::jsonb;
  v_desc := 'Promoter: PREET LAND PROMOTERS & DEVELOPERS PVT LTD  (Other than Individual). Address: SECTOR 86, SAS NAGAR. PIN: 140308. Valid upto: 20-Sep-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0173';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Chandigarh Real Estate Developers (Other than Individual)","address":"Village - Padiala, Kurali, SAS Nagar","pin_code":"140103","registration_date":"10-Jun-2022","valid_upto":"18-Jul-2026"}'::jsonb;
  v_desc := 'Promoter: Chandigarh Real Estate Developers (Other than Individual). Address: Village - Padiala, Kurali, SAS Nagar. PIN: 140103. Valid upto: 18-Jul-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SBS84-PR0806';
  v_meta := '{"district":"Barnala","promoter":"BAJAJ SAFE HOME PRIVATE LIMITED (Other than Individual)","address":"Vill. BARNALA KALANA, Tehsil and District NAWANSHAHR, PUNJAB","pin_code":"140308","registration_date":"10-Jun-2022","valid_upto":"31-Mar-2024"}'::jsonb;
  v_desc := 'Promoter: BAJAJ SAFE HOME PRIVATE LIMITED (Other than Individual). Address: Vill. BARNALA KALANA, Tehsil and District NAWANSHAHR, PUNJAB. PIN: 140308. Valid upto: 31-Mar-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0802';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KLV Divya Builders & Developers (Other than Individual)","address":"Village Nogiari, H.B. No. 282","pin_code":"140306","website":"www.signaturecitymohali.com","registration_date":"08-Jun-2022","valid_upto":"31-Mar-2027"}'::jsonb;
  v_desc := 'Promoter: KLV Divya Builders & Developers (Other than Individual). Address: Village Nogiari, H.B. No. 282. PIN: 140306. Valid upto: 31-Mar-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0801';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"LOG HUT BUILDERS  AND DEVELOPERS PRIVATE LIMITED  (Other than Individual)","address":"Village Banur, Tehsil- Banur , Distt. SAS Nagar, Punjab","pin_code":"140601","registration_date":"01-Jun-2022","valid_upto":"31-Jul-2025"}'::jsonb;
  v_desc := 'Promoter: LOG HUT BUILDERS  AND DEVELOPERS PRIVATE LIMITED  (Other than Individual). Address: Village Banur, Tehsil- Banur , Distt. SAS Nagar, Punjab. PIN: 140601. Valid upto: 31-Jul-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0800';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Manpreet Singh Sandhu (Individual)","address":"Vill.Gulabhgarh (Hadbast No.9), Derabassi","pin_code":"144507","registration_date":"01-Jun-2022","valid_upto":"01-Mar-2027"}'::jsonb;
  v_desc := 'Promoter: Manpreet Singh Sandhu (Individual). Address: Vill.Gulabhgarh (Hadbast No.9), Derabassi. PIN: 144507. Valid upto: 01-Mar-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PC0151';
  v_meta := '{"district":"Bathinda","promoter":"PADMA DEVELOPERS (Other than Individual)","address":"DABWALI ROAD, NEAR AIIMS HOSPITAL","pin_code":"151001","registration_date":"26-Jul-2021","valid_upto":"31-Jan-2026"}'::jsonb;
  v_desc := 'Promoter: PADMA DEVELOPERS (Other than Individual). Address: DABWALI ROAD, NEAR AIIMS HOSPITAL. PIN: 151001. Valid upto: 31-Jan-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PM0162';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"DLF Home Developers Limited (Other than Individual)","address":"Hyde Park Estate, New Chandigarh, Mullanpur","pin_code":"140901","registration_date":"28-Dec-2020","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: DLF Home Developers Limited (Other than Individual). Address: Hyde Park Estate, New Chandigarh, Mullanpur. PIN: 140901. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0792';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AN BUILDERS (Other than Individual)","address":"Sante Majra HB No 186, Kharar","pin_code":"140307","registration_date":"25-May-2022","valid_upto":"31-Mar-2027"}'::jsonb;
  v_desc := 'Promoter: AN BUILDERS (Other than Individual). Address: Sante Majra HB No 186, Kharar. PIN: 140307. Valid upto: 31-Mar-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR03-PR0794';
  v_meta := '{"district":"Amritsar","promoter":"Heritage City Developers and Builders Pvt. Ltd. (Other than Individual)","address":"Airport Road","pin_code":"143101","registration_date":"19-May-2022","valid_upto":"26-Apr-2027"}'::jsonb;
  v_desc := 'Promoter: Heritage City Developers and Builders Pvt. Ltd. (Other than Individual). Address: Airport Road. PIN: 143101. Valid upto: 26-Apr-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-HSP31-PR0798';
  v_meta := '{"district":"Hoshiarpur","promoter":"Rehal Infra  Private  Limited (Other than Individual)","address":"Village Bajwara(HB.No. 355),, Tehsil Hoshiapur","pin_code":"146023","registration_date":"19-May-2022","valid_upto":"31-Mar-2027"}'::jsonb;
  v_desc := 'Promoter: Rehal Infra  Private  Limited (Other than Individual). Address: Village Bajwara(HB.No. 355),, Tehsil Hoshiapur. PIN: 146023. Valid upto: 31-Mar-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR03-PR0788';
  v_meta := '{"district":"Amritsar","promoter":"SIMRAT KAUR GREWAL (Individual)","address":"Village Kala Ghanupur, Sub-urban H.B. No.368, RAM TIRATH ROAD","pin_code":"143001","registration_date":"19-May-2022","valid_upto":"31-Jan-2024"}'::jsonb;
  v_desc := 'Promoter: SIMRAT KAUR GREWAL (Individual). Address: Village Kala Ghanupur, Sub-urban H.B. No.368, RAM TIRATH ROAD. PIN: 143001. Valid upto: 31-Jan-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR0789';
  v_meta := '{"district":"Bathinda","promoter":"BCL Industries Limited (Other than Individual)","address":"Vill. Patti Hazi Rattan, H.B. No. 69, Dabwali Road, Bathinda","pin_code":"151005","registration_date":"18-May-2022","valid_upto":"30-Jun-2026"}'::jsonb;
  v_desc := 'Promoter: BCL Industries Limited (Other than Individual). Address: Vill. Patti Hazi Rattan, H.B. No. 69, Dabwali Road, Bathinda. PIN: 151005. Valid upto: 30-Jun-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR03-PR0793';
  v_meta := '{"district":"Amritsar","promoter":"Heritage City Developers and Builders Pvt. Ltd. (Other than Individual)","address":"Vill Heir, Airport Road Amritsar","pin_code":"143001","registration_date":"19-May-2022","valid_upto":"26-Apr-2027"}'::jsonb;
  v_desc := 'Promoter: Heritage City Developers and Builders Pvt. Ltd. (Other than Individual). Address: Vill Heir, Airport Road Amritsar. PIN: 143001. Valid upto: 26-Apr-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR03-PR0796';
  v_meta := '{"district":"Amritsar","promoter":"Heritage City Developers and Builders Pvt. Ltd. (Other than Individual)","address":"Vill Heir, Airport Road Amritsar","pin_code":"143001","registration_date":"19-May-2022","valid_upto":"26-Apr-2027"}'::jsonb;
  v_desc := 'Promoter: Heritage City Developers and Builders Pvt. Ltd. (Other than Individual). Address: Vill Heir, Airport Road Amritsar. PIN: 143001. Valid upto: 26-Apr-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0170';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Vision India Colonizers Pvt. Ltd. (Other than Individual)","address":"Village Khanpur, H.B. No. 183, Tehsil Kharar","pin_code":"140301","website":"www.visionindiagroup.com","registration_date":"19-May-2022","valid_upto":"10-Feb-2027"}'::jsonb;
  v_desc := 'Promoter: Vision India Colonizers Pvt. Ltd. (Other than Individual). Address: Village Khanpur, H.B. No. 183, Tehsil Kharar. PIN: 140301. Valid upto: 10-Feb-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0790';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"The Foothills Cooperative House Building Society Ltd (Other than Individual)","address":"GH Site No. 11, Sector-90-91, JLPL, Mohali, SAS Nagar","pin_code":"160071","registration_date":"20-May-2022","valid_upto":"15-Mar-2027"}'::jsonb;
  v_desc := 'Promoter: The Foothills Cooperative House Building Society Ltd (Other than Individual). Address: GH Site No. 11, Sector-90-91, JLPL, Mohali, SAS Nagar. PIN: 160071. Valid upto: 15-Mar-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR0785';
  v_meta := '{"district":"Patiala","promoter":"JMD Super Infratech Pvt. Ltd. (Other than Individual)","address":"ICL Road, Rajpura, Punjab","pin_code":"140401","registration_date":"28-Apr-2022","valid_upto":"31-Dec-2026"}'::jsonb;
  v_desc := 'Promoter: JMD Super Infratech Pvt. Ltd. (Other than Individual). Address: ICL Road, Rajpura, Punjab. PIN: 140401. Valid upto: 31-Dec-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0786';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Nanak Sai Promoters and Builders (Other than Individual)","address":"Sector-118, TDI City-I, SAS Nagar, Mohali","pin_code":"140301","registration_date":"28-Apr-2022","valid_upto":"31-Oct-2024"}'::jsonb;
  v_desc := 'Promoter: Nanak Sai Promoters and Builders (Other than Individual). Address: Sector-118, TDI City-I, SAS Nagar, Mohali. PIN: 140301. Valid upto: 31-Oct-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0787';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"SAPPHIRE RESIDENTIAL PLOTS EXTENSION, TDI CITY II SECTOR 110-111","pin_code":"140301","registration_date":"28-Apr-2022","valid_upto":"12-Nov-2024"}'::jsonb;
  v_desc := 'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: SAPPHIRE RESIDENTIAL PLOTS EXTENSION, TDI CITY II SECTOR 110-111. PIN: 140301. Valid upto: 12-Nov-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0784';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Shivjot Realty (Other than Individual)","address":"BOLLYWOOD ESENCIA, VILLAGE GAZIPUR, HADBAST NO. 50, MC ZIRAKPUR, SAS NAGAR","pin_code":"140603","registration_date":"27-Apr-2022","valid_upto":"31-Dec-2024"}'::jsonb;
  v_desc := 'Promoter: Shivjot Realty (Other than Individual). Address: BOLLYWOOD ESENCIA, VILLAGE GAZIPUR, HADBAST NO. 50, MC ZIRAKPUR, SAS NAGAR. PIN: 140603. Valid upto: 31-Dec-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI10-PR0782';
  v_meta := '{"district":"Bathinda","promoter":"LV DEVELOPERS (Other than Individual)","address":"Vill. Phul-I, Phul- II, Gill Kalan, District Bathinda","pin_code":"151103","registration_date":"28-Apr-2022","valid_upto":"31-Jan-2025"}'::jsonb;
  v_desc := 'Promoter: LV DEVELOPERS (Other than Individual). Address: Vill. Phul-I, Phul- II, Gill Kalan, District Bathinda. PIN: 151103. Valid upto: 31-Jan-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PI0010';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GILLCO DEVELOPERS AND BUILDERS PVT LTD (Other than Individual)","address":"VILL- MANAKPUR KALLAR","pin_code":"140306","website":"www.gillcovalley.com","registration_date":"17-Aug-2020","valid_upto":"30-May-2024"}'::jsonb;
  v_desc := 'Promoter: GILLCO DEVELOPERS AND BUILDERS PVT LTD (Other than Individual). Address: VILL- MANAKPUR KALLAR. PIN: 140306. Valid upto: 30-May-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR77-PR0780';
  v_meta := '{"district":"Sangrur","promoter":"Park Avenue (Other than Individual)","address":"Park avenue uppli road, sangrur","pin_code":"148105","registration_date":"25-Apr-2022","valid_upto":"31-Aug-2025"}'::jsonb;
  v_desc := 'Promoter: Park Avenue (Other than Individual). Address: Park avenue uppli road, sangrur. PIN: 148105. Valid upto: 31-Aug-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0106';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ALAKNANDA ENTERPRISES (Other than Individual)","address":"CENTRAL STREET, SECTOR-67","pin_code":"160062","registration_date":"16-Dec-2019","valid_upto":"31-Jan-2023"}'::jsonb;
  v_desc := 'Promoter: ALAKNANDA ENTERPRISES (Other than Individual). Address: CENTRAL STREET, SECTOR-67. PIN: 160062. Valid upto: 31-Jan-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PI0014';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"The CCI INDUSTRIAL ESTATE AND CLUSTERS COOPERATIVE INDUSTRIAL SOCIETY LTD (Other than Individual)","address":"CCI Industrial Park, village Behra,, Tehsil Dera Bassi, Distt SAS NAgar","pin_code":"140507","registration_date":"11-Nov-2021","valid_upto":"24-Jan-2024"}'::jsonb;
  v_desc := 'Promoter: The CCI INDUSTRIAL ESTATE AND CLUSTERS COOPERATIVE INDUSTRIAL SOCIETY LTD (Other than Individual). Address: CCI Industrial Park, village Behra,, Tehsil Dera Bassi, Distt SAS NAgar. PIN: 140507. Valid upto: 24-Jan-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0136';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Altus Space Builders Pvt. Ltd. (Other than Individual)","address":"Pocket-C, Village-Dhodemajra, Mullanpur","pin_code":"140301","registration_date":"18-Nov-2020","valid_upto":"09-Feb-2025"}'::jsonb;
  v_desc := 'Promoter: Altus Space Builders Pvt. Ltd. (Other than Individual). Address: Pocket-C, Village-Dhodemajra, Mullanpur. PIN: 140301. Valid upto: 09-Feb-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0522';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"HERO REALTY PRIVATE LIMITED (Other than Individual)","address":"Group Housing Site No.1, Sector 88, SAS Nagar, Mohali","pin_code":"140308","website":"www.herohomes.in","registration_date":"24-Sep-2019","valid_upto":"31-Dec-2026"}'::jsonb;
  v_desc := 'Promoter: HERO REALTY PRIVATE LIMITED (Other than Individual). Address: Group Housing Site No.1, Sector 88, SAS Nagar, Mohali. PIN: 140308. Valid upto: 31-Dec-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR03-PM0142';
  v_meta := '{"district":"Amritsar","promoter":"Vishnurupa Developers Private Limited (Other than Individual)","address":"Village Manawala, NH1, GT Road","pin_code":"143115","registration_date":"28-May-2019","valid_upto":"30-Nov-2023"}'::jsonb;
  v_desc := 'Promoter: Vishnurupa Developers Private Limited (Other than Individual). Address: Village Manawala, NH1, GT Road. PIN: 143115. Valid upto: 30-Nov-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PR0390';
  v_meta := '{"district":"Amritsar","promoter":"Vishnurupa Developers Private Limited (Other than Individual)","address":"Village Manawal, NH1, GT Road","pin_code":"143115","registration_date":"28-Sep-2018","valid_upto":"31-Jul-2023"}'::jsonb;
  v_desc := 'Promoter: Vishnurupa Developers Private Limited (Other than Individual). Address: Village Manawal, NH1, GT Road. PIN: 143115. Valid upto: 31-Jul-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0082';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jubilee Joy Homes LLP (Other than Individual)","address":"Jubilee Walk, Sector 70","pin_code":"160071","website":"www.jubileewalk.com","registration_date":"18-Dec-2018","valid_upto":"31-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: Jubilee Joy Homes LLP (Other than Individual). Address: Jubilee Walk, Sector 70. PIN: 160071. Valid upto: 31-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PM0165';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SRB Colonisers Private Limited (Other than Individual)","address":"Village Nabha, Tehsil- Derabassi, ZIRAKPUR, SAS Nagar","pin_code":"140507","registration_date":"30-Mar-2022","valid_upto":"14-Jan-2025"}'::jsonb;
  v_desc := 'Promoter: SRB Colonisers Private Limited (Other than Individual). Address: Village Nabha, Tehsil- Derabassi, ZIRAKPUR, SAS Nagar. PIN: 140507. Valid upto: 14-Jan-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR0778';
  v_meta := '{"district":"Bathinda","promoter":"Indira Infratech Private Limited (Other than Individual)","address":"Multania Road","pin_code":"151001","registration_date":"30-Mar-2022","valid_upto":"19-Jan-2027"}'::jsonb;
  v_desc := 'Promoter: Indira Infratech Private Limited (Other than Individual). Address: Multania Road. PIN: 151001. Valid upto: 19-Jan-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0169';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omni Pacific Colonizers Pvt Ltd (Other than Individual)","address":"Hadbast No 76,  village Dau majra, Kharar  Mohali","pin_code":"140301","registration_date":"30-Mar-2022","valid_upto":"17-Jan-2027"}'::jsonb;
  v_desc := 'Promoter: Omni Pacific Colonizers Pvt Ltd (Other than Individual). Address: Hadbast No 76,  village Dau majra, Kharar  Mohali. PIN: 140301. Valid upto: 17-Jan-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0775';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Aastha Homez (Other than Individual)","address":"H B No 20 Village Dappar MC Lalru, Tehsil Dera Bassi","pin_code":"140506","registration_date":"30-Mar-2022","valid_upto":"31-Mar-2025"}'::jsonb;
  v_desc := 'Promoter: Aastha Homez (Other than Individual). Address: H B No 20 Village Dappar MC Lalru, Tehsil Dera Bassi. PIN: 140506. Valid upto: 31-Mar-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0158';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KRISHANG BUILDTECH PRIVATE LIMITED (Other than Individual)","address":"GODOWN AREA, CHANDIGARH-AMBALA-ZIRAKPUR ROAD, ZIRAKPUR","pin_code":"140603","registration_date":"02-Sep-2021","valid_upto":"05-Oct-2024"}'::jsonb;
  v_desc := 'Promoter: KRISHANG BUILDTECH PRIVATE LIMITED (Other than Individual). Address: GODOWN AREA, CHANDIGARH-AMBALA-ZIRAKPUR ROAD, ZIRAKPUR. PIN: 140603. Valid upto: 05-Oct-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0396';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Suksha Developers Private Limited (Other than Individual)","address":"Village Nagla, MC Zirakpur","pin_code":"140603","website":"www.sushma.co.in","registration_date":"06-Nov-2018","valid_upto":"03-Oct-2023"}'::jsonb;
  v_desc := 'Promoter: Suksha Developers Private Limited (Other than Individual). Address: Village Nagla, MC Zirakpur. PIN: 140603. Valid upto: 03-Oct-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0729';
  v_meta := '{"district":"Ludhiana","promoter":"Nevada Housing LLP (Other than Individual)","address":"Village Balloke, Ludhiana","pin_code":"141001","registration_date":"16-Aug-2021","valid_upto":"30-Jun-2031"}'::jsonb;
  v_desc := 'Promoter: Nevada Housing LLP (Other than Individual). Address: Village Balloke, Ludhiana. PIN: 141001. Valid upto: 30-Jun-2031';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0776';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SATVIR  SINGH (Individual)","address":"H.B. NO. 290, VILLAGE NABHA, SUB TEHSIL ZIRAKPUR","pin_code":"140603","registration_date":"17-Mar-2022","valid_upto":"31-Dec-2024"}'::jsonb;
  v_desc := 'Promoter: SATVIR  SINGH (Individual). Address: H.B. NO. 290, VILLAGE NABHA, SUB TEHSIL ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0377';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Affinity Builders & Promoters  (Other than Individual)","address":"PR-7, 200 ft. Wide International Airport Road, Near McDonald''s Zirakpur","pin_code":"140603","website":"http://affinitygreenzirakpur.in/","registration_date":"02-Aug-2018","valid_upto":"30-Jun-2023"}'::jsonb;
  v_desc := 'Promoter: Affinity Builders & Promoters  (Other than Individual). Address: PR-7, 200 ft. Wide International Airport Road, Near McDonald''s Zirakpur. PIN: 140603. Valid upto: 30-Jun-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0676';
  v_meta := '{"district":"Jalandhar","promoter":"Dream Home Colonisers & Developers (Other than Individual)","address":"Village Sofi Pind, (H.B.No.231)","pin_code":"144024","registration_date":"28-Dec-2020","valid_upto":"12-Jul-2025"}'::jsonb;
  v_desc := 'Promoter: Dream Home Colonisers & Developers (Other than Individual). Address: Village Sofi Pind, (H.B.No.231). PIN: 144024. Valid upto: 12-Jul-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0773';
  v_meta := '{"district":"Jalandhar","promoter":"AHR PROMOTERS AND DEVELOPERS PRIVATE LIMITED (Other than Individual)","address":"Near GTB Nagar, Vill. Kingra, Jalandhar","pin_code":"144201","registration_date":"24-Feb-2022","valid_upto":"04-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: AHR PROMOTERS AND DEVELOPERS PRIVATE LIMITED (Other than Individual). Address: Near GTB Nagar, Vill. Kingra, Jalandhar. PIN: 144201. Valid upto: 04-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0168';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"K S INFRACON PVT. LTD. (Other than Individual)","address":"Village Singhpura,Zirakpur,Distt SAS Nagar,Mohali,H.B No 43","pin_code":"140103","registration_date":"24-Feb-2022","valid_upto":"31-Dec-2026"}'::jsonb;
  v_desc := 'Promoter: K S INFRACON PVT. LTD. (Other than Individual). Address: Village Singhpura,Zirakpur,Distt SAS Nagar,Mohali,H.B No 43. PIN: 140103. Valid upto: 31-Dec-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PR0774';
  v_meta := '{"district":"Amritsar","promoter":"Aadhaar Developers (Other than Individual)","address":"Vill. Wadala Bhittewad, H.B. No. 354, Tehsil and District Amritsar","pin_code":"143107","registration_date":"24-Feb-2022","valid_upto":"31-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: Aadhaar Developers (Other than Individual). Address: Vill. Wadala Bhittewad, H.B. No. 354, Tehsil and District Amritsar. PIN: 143107. Valid upto: 31-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0771';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"United Builders & Infratech (Other than Individual)","address":"Bollywood Esencia, Village -  Gazipur, Hadbast no.-50, MC Zirakpur, SAS Nagar, Punjab","pin_code":"140603","registration_date":"23-Feb-2022","valid_upto":"31-Dec-2024"}'::jsonb;
  v_desc := 'Promoter: United Builders & Infratech (Other than Individual). Address: Bollywood Esencia, Village -  Gazipur, Hadbast no.-50, MC Zirakpur, SAS Nagar, Punjab. PIN: 140603. Valid upto: 31-Dec-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR71-PR0770';
  v_meta := '{"district":"Sangrur","promoter":"SOLTY INFRA (Other than Individual)","address":"Vill. RAMPURA AND BHAWANIGARH, HB No. 51 & 40","pin_code":"148026","registration_date":"23-Feb-2022","valid_upto":"23-Dec-2025"}'::jsonb;
  v_desc := 'Promoter: SOLTY INFRA (Other than Individual). Address: Vill. RAMPURA AND BHAWANIGARH, HB No. 51 & 40. PIN: 148026. Valid upto: 23-Dec-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0425';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MAYA ESTATE (Other than Individual)","address":"GREEN LOTUS UTSAV, ON PR-7 DISTT. S. A. S. NAGAR (MOHALI) PUNJAB, REEN LOTUS UTSAV, ON PR-7 DISTT. S. A. S. NAGAR (MOHALI) PUNJAB","pin_code":"140603","registration_date":"26-Feb-2019","valid_upto":"31-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: MAYA ESTATE (Other than Individual). Address: GREEN LOTUS UTSAV, ON PR-7 DISTT. S. A. S. NAGAR (MOHALI) PUNJAB, REEN LOTUS UTSAV, ON PR-7 DISTT. S. A. S. NAGAR (MOHALI) PUNJAB. PIN: 140603. Valid upto: 31-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0766';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Mona Townships Private Limited (Other than Individual)","address":"Village Gazipur Mc Zirakpur","pin_code":"140603","registration_date":"15-Feb-2022","valid_upto":"09-Feb-2024"}'::jsonb;
  v_desc := 'Promoter: Mona Townships Private Limited (Other than Individual). Address: Village Gazipur Mc Zirakpur. PIN: 140603. Valid upto: 09-Feb-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0769';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GILLCO DEVELOPERS AND BUILDERS PVT. LTD. (Other than Individual)","address":"Kharar","pin_code":"140301","website":"https://www.gillcogroup.com","registration_date":"08-Feb-2022","valid_upto":"08-Mar-2024"}'::jsonb;
  v_desc := 'Promoter: GILLCO DEVELOPERS AND BUILDERS PVT. LTD. (Other than Individual). Address: Kharar. PIN: 140301. Valid upto: 08-Mar-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT40-PR0767';
  v_meta := '{"district":"Kapurthala","promoter":"AGI INFRA LIMITED (Other than Individual)","address":"Village Khazurla H.B.No.82, Tehsil Phagwara","pin_code":"144411","website":"www.agiinfra.com","registration_date":"08-Feb-2022","valid_upto":"21-Nov-2026"}'::jsonb;
  v_desc := 'Promoter: AGI INFRA LIMITED (Other than Individual). Address: Village Khazurla H.B.No.82, Tehsil Phagwara. PIN: 144411. Valid upto: 21-Nov-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-HSP31-PI0016';
  v_meta := '{"district":"Hoshiarpur","promoter":"Hoshiarpur Wood Park Pvt Ltd (Other than Individual)","address":"Village Bassi Kasson and Village Bassi Mehroof, Hussainpur","pin_code":"146001","registration_date":"12-Jan-2022","valid_upto":"31-Aug-2026"}'::jsonb;
  v_desc := 'Promoter: Hoshiarpur Wood Park Pvt Ltd (Other than Individual). Address: Village Bassi Kasson and Village Bassi Mehroof, Hussainpur. PIN: 146001. Valid upto: 31-Aug-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0765';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"Sector-66A","pin_code":"140306","website":"www.jantahousing.com","registration_date":"12-Jan-2022","valid_upto":"16-Nov-2026"}'::jsonb;
  v_desc := 'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: Sector-66A. PIN: 140306. Valid upto: 16-Nov-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0763';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"Sector-66A","pin_code":"140306","website":"www.jantahousing.com","registration_date":"12-Jan-2022","valid_upto":"16-Jan-2027"}'::jsonb;
  v_desc := 'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: Sector-66A. PIN: 140306. Valid upto: 16-Jan-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL61-PC0167';
  v_meta := '{"district":"Patiala","promoter":"Improvement Trust Nabha (Other than Individual)","address":"NEAR PATIALA GATE, NABHA","pin_code":"147201","registration_date":"12-Jan-2022","valid_upto":"30-Dec-2024"}'::jsonb;
  v_desc := 'Promoter: Improvement Trust Nabha (Other than Individual). Address: NEAR PATIALA GATE, NABHA. PIN: 147201. Valid upto: 30-Dec-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0762';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"The Hindustan Times Employees and Other Coop H B Society Ltd (Other than Individual)","address":"Plot 185, Sector 79","pin_code":"160062","registration_date":"27-Dec-2021","valid_upto":"23-Feb-2025"}'::jsonb;
  v_desc := 'Promoter: The Hindustan Times Employees and Other Coop H B Society Ltd (Other than Individual). Address: Plot 185, Sector 79. PIN: 160062. Valid upto: 23-Feb-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0757';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"HOMELAND REALTY PRIVATE LIMITED (Other than Individual)","address":"GROUP HOUSING SITE, SECTOR-77","pin_code":"160055","registration_date":"12-Dec-2021","valid_upto":"24-Dec-2028"}'::jsonb;
  v_desc := 'Promoter: HOMELAND REALTY PRIVATE LIMITED (Other than Individual). Address: GROUP HOUSING SITE, SECTOR-77. PIN: 160055. Valid upto: 24-Dec-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0759';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Credo Assets Pvt. Ltd. (Other than Individual)","address":"Village Santemajra, HB No. 186, Tehsil Kharar","pin_code":"140307","registration_date":"23-Dec-2021","valid_upto":"30-Sep-2028"}'::jsonb;
  v_desc := 'Promoter: Credo Assets Pvt. Ltd. (Other than Individual). Address: Village Santemajra, HB No. 186, Tehsil Kharar. PIN: 140307. Valid upto: 30-Sep-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MNS50-PR0758';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Smart Move housing Pvt Ltd (Other than Individual)","address":"Mansa Barnala Road, Near to Jannat Enclave","pin_code":"151505","registration_date":"23-Dec-2021","valid_upto":"30-Jul-2026"}'::jsonb;
  v_desc := 'Promoter: Smart Move housing Pvt Ltd (Other than Individual). Address: Mansa Barnala Road, Near to Jannat Enclave. PIN: 151505. Valid upto: 30-Jul-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0703';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Aura Buildtech Pvt. Ltd. (Other than Individual)","address":"village Nabha,, High Ground road Zirakpur,","pin_code":"140603","registration_date":"16-Apr-2021","valid_upto":"31-Mar-2025"}'::jsonb;
  v_desc := 'Promoter: Aura Buildtech Pvt. Ltd. (Other than Individual). Address: village Nabha,, High Ground road Zirakpur,. PIN: 140603. Valid upto: 31-Mar-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0634';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Zilver Masions LLP (Other than Individual)","address":"H.B. No. 290, Village- Nabha, MC Zirakpur, SAS NAGAR","pin_code":"140603","registration_date":"08-Sep-2020","valid_upto":"30-Sep-2024"}'::jsonb;
  v_desc := 'Promoter: Zilver Masions LLP (Other than Individual). Address: H.B. No. 290, Village- Nabha, MC Zirakpur, SAS NAGAR. PIN: 140603. Valid upto: 30-Sep-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0754';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Singla Builders and promoters Ltd. (Other than Individual)","address":"Village Rauni, HB No. 14, Tehsil Derabassi","pin_code":"140507","registration_date":"17-Dec-2021","valid_upto":"30-Sep-2026"}'::jsonb;
  v_desc := 'Promoter: Singla Builders and promoters Ltd. (Other than Individual). Address: Village Rauni, HB No. 14, Tehsil Derabassi. PIN: 140507. Valid upto: 30-Sep-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0163';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Credo Assets Pvt. Ltd. (Other than Individual)","address":"Village Santemajra, HB No. 186, Kharar","pin_code":"140307","registration_date":"17-Dec-2021","valid_upto":"30-Jul-2026"}'::jsonb;
  v_desc := 'Promoter: Credo Assets Pvt. Ltd. (Other than Individual). Address: Village Santemajra, HB No. 186, Kharar. PIN: 140307. Valid upto: 30-Jul-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0756';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SBP TOWNSHIP PRIVATE LIMITED (Other than Individual)","address":"Village Nabha, Sub Tehsil Zirakpur, HB.NO.290, Tehsil Derabassi","pin_code":"140507","website":"sbpgroup.in","registration_date":"17-Dec-2021","valid_upto":"30-May-2026"}'::jsonb;
  v_desc := 'Promoter: SBP TOWNSHIP PRIVATE LIMITED (Other than Individual). Address: Village Nabha, Sub Tehsil Zirakpur, HB.NO.290, Tehsil Derabassi. PIN: 140507. Valid upto: 30-May-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL65-PI0015';
  v_meta := '{"district":"Patiala","promoter":"SIEL INDUSTRIAL ESTATE LTD (Other than Individual)","address":"SIEL INDUSTRIAL ESTATE LIMITED, CHARATRAMPUR, TEH. RAJPURA, DIST.. PATIALA","pin_code":"140401","website":"mawanasugars.com","registration_date":"16-Dec-2021","valid_upto":"19-Sep-2029"}'::jsonb;
  v_desc := 'Promoter: SIEL INDUSTRIAL ESTATE LTD (Other than Individual). Address: SIEL INDUSTRIAL ESTATE LIMITED, CHARATRAMPUR, TEH. RAJPURA, DIST.. PATIALA. PIN: 140401. Valid upto: 19-Sep-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0755';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PLANMEN BUILDTECH LLP (Other than Individual)","address":"VILLAGE GAZIPUR HADBADAST NO. 50, MC ZIRAKPUR","pin_code":"140603","registration_date":"16-Dec-2021","valid_upto":"30-Jun-2024"}'::jsonb;
  v_desc := 'Promoter: PLANMEN BUILDTECH LLP (Other than Individual). Address: VILLAGE GAZIPUR HADBADAST NO. 50, MC ZIRAKPUR. PIN: 140603. Valid upto: 30-Jun-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0165';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KLG Jewellers (Other than Individual)","address":"Block- F, Aero City, SAS Nagar","pin_code":"160055","registration_date":"17-Dec-2021","valid_upto":"31-Aug-2026"}'::jsonb;
  v_desc := 'Promoter: KLG Jewellers (Other than Individual). Address: Block- F, Aero City, SAS Nagar. PIN: 160055. Valid upto: 31-Aug-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0164';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SBP TOWNSHIP PRIVATE LIMITED (Other than Individual)","address":"HADBAST NO 290 VILLAGE NABHA, SUB TEHSIL ZIRAKPUR","pin_code":"140507","website":"sbpgroup.in","registration_date":"17-Dec-2021","valid_upto":"30-Jul-2026"}'::jsonb;
  v_desc := 'Promoter: SBP TOWNSHIP PRIVATE LIMITED (Other than Individual). Address: HADBAST NO 290 VILLAGE NABHA, SUB TEHSIL ZIRAKPUR. PIN: 140507. Valid upto: 30-Jul-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0457';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Hanumant Builders (Other than Individual)","address":"Bollywood Green City, Sector 113, Near Landran Chowk, Landran-Chunni Sirhind Road","pin_code":"140307","registration_date":"13-May-2019","valid_upto":"31-Mar-2021"}'::jsonb;
  v_desc := 'Promoter: Hanumant Builders (Other than Individual). Address: Bollywood Green City, Sector 113, Near Landran Chowk, Landran-Chunni Sirhind Road. PIN: 140307. Valid upto: 31-Mar-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PR0753';
  v_meta := '{"district":"Amritsar","promoter":"Satish Estate Pvt. Ltd.  (Other than Individual)","address":"Village Sultanwind and Doburji, Tehsil and District Amritsar.","pin_code":"143001","registration_date":"11-Nov-2021","valid_upto":"21-Jul-2017"}'::jsonb;
  v_desc := 'Promoter: Satish Estate Pvt. Ltd.  (Other than Individual). Address: Village Sultanwind and Doburji, Tehsil and District Amritsar.. PIN: 143001. Valid upto: 21-Jul-2017';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH43-PC0159';
  v_meta := '{"district":"Ludhiana","promoter":"Rudra Infrastructures (Other than Individual)","address":"Central Hub, NH 44 (Old Nh1) Vill Bullepur Tehsil Khanna","pin_code":"141401","registration_date":"13-Sep-2021","valid_upto":"10-Jun-2025"}'::jsonb;
  v_desc := 'Promoter: Rudra Infrastructures (Other than Individual). Address: Central Hub, NH 44 (Old Nh1) Vill Bullepur Tehsil Khanna. PIN: 141401. Valid upto: 10-Jun-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH42-PR0749';
  v_meta := '{"district":"Ludhiana","promoter":"Umbera Group (Other than Individual)","address":"Village Gill - I and Gill - II, Bulara Road, Back side GNE College","pin_code":"141006","website":"www.umberagroup.com","registration_date":"19-Oct-2021","valid_upto":"11-Jan-2026"}'::jsonb;
  v_desc := 'Promoter: Umbera Group (Other than Individual). Address: Village Gill - I and Gill - II, Bulara Road, Back side GNE College. PIN: 141006. Valid upto: 11-Jan-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0161';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Altus Space Builders Pvt Ltd (Other than Individual)","address":"Commercial site-5 in Muirwoods Ecocity (Mega) at village-Sainimajra,Mullanpur","pin_code":"140901","website":"http://altusnewchandigarh.in","registration_date":"01-Oct-2021","valid_upto":"11-Jul-2026"}'::jsonb;
  v_desc := 'Promoter: Altus Space Builders Pvt Ltd (Other than Individual). Address: Commercial site-5 in Muirwoods Ecocity (Mega) at village-Sainimajra,Mullanpur. PIN: 140901. Valid upto: 11-Jul-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0751';
  v_meta := '{"district":"Jalandhar","promoter":"HI TECH INFRASTRUCTURE (Other than Individual)","address":"VILLAGE UPPAL JAGIR, TEHSIL PHILLOUR, JALANDHAR","pin_code":"144039","registration_date":"21-Oct-2021","valid_upto":"13-Nov-2023"}'::jsonb;
  v_desc := 'Promoter: HI TECH INFRASTRUCTURE (Other than Individual). Address: VILLAGE UPPAL JAGIR, TEHSIL PHILLOUR, JALANDHAR. PIN: 144039. Valid upto: 13-Nov-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PM0163';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"WAVE ESTATE, Sector 85 and Sector 99","pin_code":"140308","registration_date":"19-Oct-2021","valid_upto":"01-Sep-2026"}'::jsonb;
  v_desc := 'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: WAVE ESTATE, Sector 85 and Sector 99. PIN: 140308. Valid upto: 01-Sep-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0752';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"WAVE ESTATE, Sector 85 and Sector 99","pin_code":"140308","registration_date":"19-Oct-2021","valid_upto":"01-Sep-2026"}'::jsonb;
  v_desc := 'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: WAVE ESTATE, Sector 85 and Sector 99. PIN: 140308. Valid upto: 01-Sep-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0750';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MOTIA BUILDERS (Other than Individual)","address":"Vill. Gulabgarh, HB No. 9, Tehsil Dera Bassi","pin_code":"140507","website":"www.motiagroup@com","registration_date":"19-Oct-2021","valid_upto":"30-Apr-2025"}'::jsonb;
  v_desc := 'Promoter: MOTIA BUILDERS (Other than Individual). Address: Vill. Gulabgarh, HB No. 9, Tehsil Dera Bassi. PIN: 140507. Valid upto: 30-Apr-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR0490';
  v_meta := '{"district":"Patiala","promoter":"Maple GK Infrastructure LLP (Other than Individual)","address":"Vill. Majari Akalian and Vill Hardaspur , Sirhind road","pin_code":"147003","registration_date":"29-Jul-2019","valid_upto":"06-May-2024"}'::jsonb;
  v_desc := 'Promoter: Maple GK Infrastructure LLP (Other than Individual). Address: Vill. Majari Akalian and Vill Hardaspur , Sirhind road. PIN: 147003. Valid upto: 06-May-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0004';
  v_meta := '{"district":"Ludhiana","promoter":"Ireo Waterfront Pvt Ltd (Other than Individual)","address":"Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.","pin_code":"141001","website":"www.ireowaterfront.com","registration_date":"01-Sep-2017","valid_upto":"29-Nov-2017"}'::jsonb;
  v_desc := 'Promoter: Ireo Waterfront Pvt Ltd (Other than Individual). Address: Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.. PIN: 141001. Valid upto: 29-Nov-2017';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0006';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"BHANU INFRABUILD PRIVATE LIMITED (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"06-Sep-2017","valid_upto":"31-Jul-2020"}'::jsonb;
  v_desc := 'Promoter: BHANU INFRABUILD PRIVATE LIMITED (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 31-Jul-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PM0003';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"Falcon View Apartments Phase-1, Towre A,B,X,Y, Sector-66A","pin_code":"140306","website":"www.jantahousing.com","registration_date":"19-Sep-2017","valid_upto":"26-Apr-2018"}'::jsonb;
  v_desc := 'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: Falcon View Apartments Phase-1, Towre A,B,X,Y, Sector-66A. PIN: 140306. Valid upto: 26-Apr-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0001';
  v_meta := '{"district":"Ludhiana","promoter":"Arr Ess Industries Pvt Ltd (Other than Individual)","address":"CENTRA GREENS, Village Daad, Pakhowal Road","pin_code":"141013","website":"www.centragreens.com","registration_date":"01-Sep-2017","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Arr Ess Industries Pvt Ltd (Other than Individual). Address: CENTRA GREENS, Village Daad, Pakhowal Road. PIN: 141013. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PM0001';
  v_meta := '{"district":"Ludhiana","promoter":"OMAXE LIMITED (Other than Individual)","address":"Group Housing , Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana","pin_code":"142022","website":"www.omaxe.com","registration_date":"06-Sep-2017","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: OMAXE LIMITED (Other than Individual). Address: Group Housing , Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana. PIN: 142022. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0007';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"BHANU INFRABUILD PRIVATE LIMITED (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"06-Sep-2017","valid_upto":"31-Jul-2018"}'::jsonb;
  v_desc := 'Promoter: BHANU INFRABUILD PRIVATE LIMITED (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 31-Jul-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0003';
  v_meta := '{"district":"Ludhiana","promoter":"OMAXE LIMITED (Other than Individual)","address":"Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana","pin_code":"142022","website":"www.omaxe.com","registration_date":"06-Sep-2017","valid_upto":"30-Sep-2019"}'::jsonb;
  v_desc := 'Promoter: OMAXE LIMITED (Other than Individual). Address: Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana. PIN: 142022. Valid upto: 30-Sep-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0001';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Motia Developers Pvt.Ltd (Other than Individual)","address":"Ambala-Chandigarh Highway, Zirakpur, SAS Nagar,Punjab","pin_code":"140603","registration_date":"04-Sep-2017","valid_upto":"24-Jul-2020"}'::jsonb;
  v_desc := 'Promoter: Motia Developers Pvt.Ltd (Other than Individual). Address: Ambala-Chandigarh Highway, Zirakpur, SAS Nagar,Punjab. PIN: 140603. Valid upto: 24-Jul-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0002';
  v_meta := '{"district":"Ludhiana","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"Canal View Enclave Ext. V, Village Bulara Tehsil Ludhiana","pin_code":"141116","website":"www.jantahousing.com","registration_date":"01-Sep-2017","valid_upto":"23-Nov-2019"}'::jsonb;
  v_desc := 'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: Canal View Enclave Ext. V, Village Bulara Tehsil Ludhiana. PIN: 141116. Valid upto: 23-Nov-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PM0010';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Chandigarh Overseas private limited (Other than Individual)","address":"sector 90,SAS Nagar (Mohali) chandigarh","pin_code":"140308","registration_date":"17-Oct-2017","valid_upto":"30-Jun-2022"}'::jsonb;
  v_desc := 'Promoter: Chandigarh Overseas private limited (Other than Individual). Address: sector 90,SAS Nagar (Mohali) chandigarh. PIN: 140308. Valid upto: 30-Jun-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PM0006';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GILLCO DEVELOPERS AND BUILDERS PVT LTD (Other than Individual)","address":"VILL-BALLOMAJRA, SECTOR 126","pin_code":"160055","registration_date":"09-Oct-2017","valid_upto":"30-Sep-2022"}'::jsonb;
  v_desc := 'Promoter: GILLCO DEVELOPERS AND BUILDERS PVT LTD (Other than Individual). Address: VILL-BALLOMAJRA, SECTOR 126. PIN: 160055. Valid upto: 30-Sep-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0008';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"BHANU INFRABUILD PRIVATE LIMITED (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"06-Feb-2019","valid_upto":"31-Jul-2021"}'::jsonb;
  v_desc := 'Promoter: BHANU INFRABUILD PRIVATE LIMITED (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 31-Jul-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0003';
  v_meta := '{"district":"Ludhiana","promoter":"Eldeco Infrastructure & Properties Limited (Other than Individual)","address":"G.T.Road, Village Hussainpura / Rajpura, LDH to Jal. Road","pin_code":"141008","website":"www.eldecogroup.com","registration_date":"01-Sep-2017","valid_upto":"29-Jul-2021"}'::jsonb;
  v_desc := 'Promoter: Eldeco Infrastructure & Properties Limited (Other than Individual). Address: G.T.Road, Village Hussainpura / Rajpura, LDH to Jal. Road. PIN: 141008. Valid upto: 29-Jul-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0007';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ATS Estates Private Limited (Other than Individual)","address":"ATS Golf Meadows, Dera Bassi","pin_code":"140507","registration_date":"01-Sep-2017","valid_upto":"26-Jul-2026"}'::jsonb;
  v_desc := 'Promoter: ATS Estates Private Limited (Other than Individual). Address: ATS Golf Meadows, Dera Bassi. PIN: 140507. Valid upto: 26-Jul-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0006';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Vision India Realtors Pvt. Ltd. (Other than Individual)","address":"Village Khanpur, Kharar-Ropar Road, Kharar","pin_code":"140301","website":"www.visionindiagroup.com","registration_date":"01-Sep-2017","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Vision India Realtors Pvt. Ltd. (Other than Individual). Address: Village Khanpur, Kharar-Ropar Road, Kharar. PIN: 140301. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  RAISE NOTICE 'Part 8: updated % projects', v_updated;
END $$;