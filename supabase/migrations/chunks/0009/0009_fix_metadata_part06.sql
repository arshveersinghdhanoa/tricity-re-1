-- 0009_fix_metadata_part06.sql
-- Projects 1001 to 1200
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

  v_rera := 'PBRERA-SAS81-PR0381';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Wembleys  Co-operative House Building Society Limited (Other than Individual)","address":"Sector-91, Mohali, Sahibzada Ajit Singh Nagar(Mohali)","pin_code":"140308","registration_date":"16-Aug-2018","valid_upto":"03-Jul-2021"}'::jsonb;
  v_desc := 'Promoter: Wembleys  Co-operative House Building Society Limited (Other than Individual). Address: Sector-91, Mohali, Sahibzada Ajit Singh Nagar(Mohali). PIN: 140308. Valid upto: 03-Jul-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PM0085';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"WAVE ESTATE, SECTOR -85","pin_code":"143308","registration_date":"15-Dec-2017","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: WAVE ESTATE, SECTOR -85. PIN: 143308. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PM0084';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"Wave Estate, Sector 85","pin_code":"140308","registration_date":"15-Dec-2017","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: Wave Estate, Sector 85. PIN: 140308. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR0325';
  v_meta := '{"district":"Patiala","promoter":"NAVYUG HOUSING AND CONSTRUCTION CO. (Other than Individual)","address":"Kohinoor Valley Phase 2,Majri Akalian Road,Village Baran,Patiala.","pin_code":"147001","registration_date":"26-Mar-2018","valid_upto":"13-Mar-2018"}'::jsonb;
  v_desc := 'Promoter: NAVYUG HOUSING AND CONSTRUCTION CO. (Other than Individual). Address: Kohinoor Valley Phase 2,Majri Akalian Road,Village Baran,Patiala.. PIN: 147001. Valid upto: 13-Mar-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PM0103';
  v_meta := '{"district":"Patiala","promoter":"Gulshan Estates (Other than Individual)","address":"Panchvati Enclave Village Deelwal, Near Apollo Public School","pin_code":"147002","registration_date":"22-Jun-2018","valid_upto":"30-Jul-2019"}'::jsonb;
  v_desc := 'Promoter: Gulshan Estates (Other than Individual). Address: Panchvati Enclave Village Deelwal, Near Apollo Public School. PIN: 147002. Valid upto: 30-Jul-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-GSP25-PC0026';
  v_meta := '{"district":"Gurdaspur","promoter":"PUDA (Other than Individual)","address":"old cicvil Hospital batala, Gurdaspur","pin_code":"143505","registration_date":"30-Oct-2017","valid_upto":"31-Jan-2018"}'::jsonb;
  v_desc := 'Promoter: PUDA (Other than Individual). Address: old cicvil Hospital batala, Gurdaspur. PIN: 143505. Valid upto: 31-Jan-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PC0024';
  v_meta := '{"district":"Amritsar","promoter":"PUDA (Other than Individual)","address":"NESR SHEETLA MANDIR","pin_code":"143001","registration_date":"30-Oct-2017","valid_upto":"26-Mar-2018"}'::jsonb;
  v_desc := 'Promoter: PUDA (Other than Individual). Address: NESR SHEETLA MANDIR. PIN: 143001. Valid upto: 26-Mar-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PM0113';
  v_meta := '{"district":"Bathinda","promoter":"SATINDER   SINGH (Individual)","address":"NAR SINGH COLONY ROAD,VILLAGE DOOMWALI,","pin_code":"151005","registration_date":"19-Jul-2018","valid_upto":"30-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: SATINDER   SINGH (Individual). Address: NAR SINGH COLONY ROAD,VILLAGE DOOMWALI,. PIN: 151005. Valid upto: 30-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0031';
  v_meta := '{"district":"Ludhiana","promoter":"gkp infrastrcture limited (Other than Individual)","address":"village Jawaddi, Ludhiana","pin_code":"141001","registration_date":"03-Nov-2017"}'::jsonb;
  v_desc := 'Promoter: gkp infrastrcture limited (Other than Individual). Address: village Jawaddi, Ludhiana. PIN: 141001';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0105';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Home and Land Planners (Other than Individual)","address":"Urban Vatika, Located at Opposite Bus Stand, Adjoining Paras Downtown Mall, Zirakpur","pin_code":"140603","registration_date":"19-Sep-2017","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: Home and Land Planners (Other than Individual). Address: Urban Vatika, Located at Opposite Bus Stand, Adjoining Paras Downtown Mall, Zirakpur. PIN: 140603. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0153';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"WAVE ESTATE, SECTOR -85 & 99","pin_code":"143308","registration_date":"11-Oct-2017","valid_upto":"31-Jan-2019"}'::jsonb;
  v_desc := 'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: WAVE ESTATE, SECTOR -85 & 99. PIN: 143308. Valid upto: 31-Jan-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PM0089';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Aeropolis Infrastructure Pvt Ltd (Other than Individual)","address":"SAS Nagar, Mohali","pin_code":"160062","registration_date":"28-May-2018","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: Aeropolis Infrastructure Pvt Ltd (Other than Individual). Address: SAS Nagar, Mohali. PIN: 160062. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0152';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"WAVE ESTATE, SECTOR -85","pin_code":"143308","registration_date":"11-Oct-2017","valid_upto":"31-May-2019"}'::jsonb;
  v_desc := 'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: WAVE ESTATE, SECTOR -85. PIN: 143308. Valid upto: 31-May-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0149';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"WAVE ESTATE, SECTOR -85","pin_code":"143308","registration_date":"11-Oct-2017","valid_upto":"31-Oct-2018"}'::jsonb;
  v_desc := 'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: WAVE ESTATE, SECTOR -85. PIN: 143308. Valid upto: 31-Oct-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0147';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"WAVE ESTATE, SECTOR -85","pin_code":"143308","registration_date":"11-Oct-2017","valid_upto":"31-Mar-2019"}'::jsonb;
  v_desc := 'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: WAVE ESTATE, SECTOR -85. PIN: 143308. Valid upto: 31-Mar-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR0042';
  v_meta := '{"district":"Bathinda","promoter":"OMAXE BUILDHOME LIMITED (Other than Individual)","address":"Village Bhokra, Goniana Road, Tehsil & Distt. Bathinda Punjab","pin_code":"151001","website":"www.omaxe.com","registration_date":"07-Sep-2017","valid_upto":"31-Mar-2019"}'::jsonb;
  v_desc := 'Promoter: OMAXE BUILDHOME LIMITED (Other than Individual). Address: Village Bhokra, Goniana Road, Tehsil & Distt. Bathinda Punjab. PIN: 151001. Valid upto: 31-Mar-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0041';
  v_meta := '{"district":"Ludhiana","promoter":"Ireo Waterfront Pvt Ltd (Other than Individual)","address":"Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.","pin_code":"141001","website":"www.ireowaterfont.com","registration_date":"06-Sep-2017","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: Ireo Waterfront Pvt Ltd (Other than Individual). Address: Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.. PIN: 141001. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0157';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ARMY WELFARE HOUSING ORGANISATION (Other than Individual)","address":"BB1 & CC1, Ansal API, Golf Link, Mega City,, Sector-114, Tehsil-Kharar,","pin_code":"140307","website":"https://awhosena.in","registration_date":"12-Oct-2017","valid_upto":"01-Jan-2025"}'::jsonb;
  v_desc := 'Promoter: ARMY WELFARE HOUSING ORGANISATION (Other than Individual). Address: BB1 & CC1, Ansal API, Golf Link, Mega City,, Sector-114, Tehsil-Kharar,. PIN: 140307. Valid upto: 01-Jan-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0016';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Aura Builders & Developers (Other than Individual)","address":"KHARAR- MORINDA ROAD KHARAR","pin_code":"140301","registration_date":"01-Sep-2017","valid_upto":"31-Mar-2022"}'::jsonb;
  v_desc := 'Promoter: Aura Builders & Developers (Other than Individual). Address: KHARAR- MORINDA ROAD KHARAR. PIN: 140301. Valid upto: 31-Mar-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0068';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Saraf The Jeweller (Other than Individual)","address":"CHINK SITE NO. 91,Block F ,, AEROCITY, SAS NAGAR","pin_code":"160055","registration_date":"29-May-2018","valid_upto":"31-May-2023"}'::jsonb;
  v_desc := 'Promoter: Saraf The Jeweller (Other than Individual). Address: CHINK SITE NO. 91,Block F ,, AEROCITY, SAS NAGAR. PIN: 160055. Valid upto: 31-May-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0017';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gulmohar Empires (Other than Individual)","address":"Village Peermuchalla, Zirakpur","pin_code":"140603","registration_date":"26-Sep-2017","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Gulmohar Empires (Other than Individual). Address: Village Peermuchalla, Zirakpur. PIN: 140603. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0021';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"Vill - SinghPiura, Ambala-Chandigarh Highway, Zirakpur, SAS Nagar Mohali-140603","pin_code":"140603","website":"www.gbpgroup.in","registration_date":"07-Nov-2017","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: Vill - SinghPiura, Ambala-Chandigarh Highway, Zirakpur, SAS Nagar Mohali-140603. PIN: 140603. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0028';
  v_meta := '{"district":"Ludhiana","promoter":"OMAXE LIMITED (Other than Individual)","address":"Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana","pin_code":"142022","website":"www.omaxe.com","registration_date":"05-Sep-2017","valid_upto":"31-Jul-2018"}'::jsonb;
  v_desc := 'Promoter: OMAXE LIMITED (Other than Individual). Address: Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana. PIN: 142022. Valid upto: 31-Jul-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0009';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Orbit Apartment Construction Pvt. Ltd.  (Other than Individual)","address":"Orbit Apartments, VIP Road, Village Bishanpura, Zirakpur","pin_code":"140603","website":"www.orbitapartments.com","registration_date":"01-Sep-2017","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Orbit Apartment Construction Pvt. Ltd.  (Other than Individual). Address: Orbit Apartments, VIP Road, Village Bishanpura, Zirakpur. PIN: 140603. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PM0019';
  v_meta := '{"district":"Ludhiana","promoter":"home life buildcon pvt. ltd. (Other than Individual)","address":"PLOT NO. 11 SUN VIEW ENCLAVE AYALI KALAN LUDHIANA","pin_code":"142027","registration_date":"11-Dec-2017","valid_upto":"29-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: home life buildcon pvt. ltd. (Other than Individual). Address: PLOT NO. 11 SUN VIEW ENCLAVE AYALI KALAN LUDHIANA. PIN: 142027. Valid upto: 29-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0011';
  v_meta := '{"district":"Ludhiana","promoter":"Malhotra Land Developers & Colonisers Pvt Ltd (Other than Individual)","address":"Vill-Jaspal Bangar,","pin_code":"141122","registration_date":"13-Sep-2017","valid_upto":"12-Sep-2022"}'::jsonb;
  v_desc := 'Promoter: Malhotra Land Developers & Colonisers Pvt Ltd (Other than Individual). Address: Vill-Jaspal Bangar,. PIN: 141122. Valid upto: 12-Sep-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0048';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"SCO No 501 to 528 TAJ PLAZA, SECTOR 118 TDI CITY","pin_code":"140301","registration_date":"10-Apr-2018","valid_upto":"31-Mar-2021"}'::jsonb;
  v_desc := 'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: SCO No 501 to 528 TAJ PLAZA, SECTOR 118 TDI CITY. PIN: 140301. Valid upto: 31-Mar-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0142';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"WELINGTION HEIGHT EXTENSION, BLOCK M AND N SECTOR 117 TDI CITY","pin_code":"140301","registration_date":"11-Oct-2017","valid_upto":"24-Jul-2019"}'::jsonb;
  v_desc := 'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: WELINGTION HEIGHT EXTENSION, BLOCK M AND N SECTOR 117 TDI CITY. PIN: 140301. Valid upto: 24-Jul-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0010';
  v_meta := '{"district":"Ludhiana","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"Canal View Enclave Ext. IV, Village Bulara","pin_code":"141116","website":"www.jantahousing.com","registration_date":"01-Sep-2017","valid_upto":"01-Sep-2020"}'::jsonb;
  v_desc := 'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: Canal View Enclave Ext. IV, Village Bulara. PIN: 141116. Valid upto: 01-Sep-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0087';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Malwa Projects Private Limited (Other than Individual)","address":"Nagla Road, Chandigarh Ambala Highway, Zirakpur","pin_code":"140603","registration_date":"14-Sep-2017","valid_upto":"30-Jun-2018"}'::jsonb;
  v_desc := 'Promoter: Malwa Projects Private Limited (Other than Individual). Address: Nagla Road, Chandigarh Ambala Highway, Zirakpur. PIN: 140603. Valid upto: 30-Jun-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0019';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omega Infra estates Pvt Ltd (Other than Individual)","address":"Omega City, NH-95, Khanpur, Kharar","pin_code":"140301","website":"www.omegacitychandigarh.com","registration_date":"04-Sep-2017","valid_upto":"27-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: Omega Infra estates Pvt Ltd (Other than Individual). Address: Omega City, NH-95, Khanpur, Kharar. PIN: 140301. Valid upto: 27-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-GSP27-PM0012';
  v_meta := '{"district":"Gurdaspur","promoter":"PUDA (Other than Individual)","address":"OLD JAIL SITE GURDASPUR","pin_code":"143521","registration_date":"30-Oct-2017","valid_upto":"30-Jun-2017"}'::jsonb;
  v_desc := 'Promoter: PUDA (Other than Individual). Address: OLD JAIL SITE GURDASPUR. PIN: 143521. Valid upto: 30-Jun-2017';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PC0044';
  v_meta := '{"district":"Patiala","promoter":"NAVYUG ESTATES (Other than Individual)","address":"Kohinoor Shopping Plaza,Village Baran","pin_code":"147001","registration_date":"26-Mar-2018","valid_upto":"13-Mar-2018"}'::jsonb;
  v_desc := 'Promoter: NAVYUG ESTATES (Other than Individual). Address: Kohinoor Shopping Plaza,Village Baran. PIN: 147001. Valid upto: 13-Mar-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0035';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"RR Buildtech (Other than Individual)","address":"SCO-3,4,Surya Residency,Near Yes Bank, Sector-115,Kharar,SAS Nagar,Mohali","pin_code":"160059","registration_date":"21-Feb-2018","valid_upto":"30-Jan-2023"}'::jsonb;
  v_desc := 'Promoter: RR Buildtech (Other than Individual). Address: SCO-3,4,Surya Residency,Near Yes Bank, Sector-115,Kharar,SAS Nagar,Mohali. PIN: 160059. Valid upto: 30-Jan-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0300';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Universal Infrastructures (Other than Individual)","address":"GHS-2,, SECTOR-104, MOHALI","pin_code":"134306","registration_date":"28-Feb-2018","valid_upto":"31-Dec-2017"}'::jsonb;
  v_desc := 'Promoter: Universal Infrastructures (Other than Individual). Address: GHS-2,, SECTOR-104, MOHALI. PIN: 134306. Valid upto: 31-Dec-2017';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0013';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ATS Estates Private Limited (Other than Individual)","address":"ATS Golf Meadows, Dera Bassi","pin_code":"140507","registration_date":"22-Sep-2017","valid_upto":"25-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: ATS Estates Private Limited (Other than Individual). Address: ATS Golf Meadows, Dera Bassi. PIN: 140507. Valid upto: 25-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0017';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Exotica Square. (Other than Individual)","address":"Vill-Chhajumajra,Teh-Kharar","pin_code":"140301","registration_date":"01-Sep-2017","valid_upto":"27-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: Exotica Square. (Other than Individual). Address: Vill-Chhajumajra,Teh-Kharar. PIN: 140301. Valid upto: 27-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0071';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Quantum Homes (Other than Individual)","address":"Aero Arcade, Commercial Block, Aero City, SAS Nagar","pin_code":"140306","registration_date":"25-May-2018","valid_upto":"31-Jul-2021"}'::jsonb;
  v_desc := 'Promoter: Quantum Homes (Other than Individual). Address: Aero Arcade, Commercial Block, Aero City, SAS Nagar. PIN: 140306. Valid upto: 31-Jul-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0145';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MOTIA REAL ESTATE (Other than Individual)","address":"ROYAL FAME-1, VILLAGE CHAJJU MAJRA, KHARAR","pin_code":"160055","website":"www.royalfame.com","registration_date":"16-Oct-2017","valid_upto":"21-May-2018"}'::jsonb;
  v_desc := 'Promoter: MOTIA REAL ESTATE (Other than Individual). Address: ROYAL FAME-1, VILLAGE CHAJJU MAJRA, KHARAR. PIN: 160055. Valid upto: 21-May-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0042';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ABC SITES PRIVATE LIMITED (Other than Individual)","address":"VILLAGE BISHANPURA, AMBALA CHANDIGARH HIGHWAY, ZIRAKPUR","pin_code":"140603","registration_date":"07-Mar-2018","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: ABC SITES PRIVATE LIMITED (Other than Individual). Address: VILLAGE BISHANPURA, AMBALA CHANDIGARH HIGHWAY, ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0032';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ALLIANCE BUILDTECH (Other than Individual)","address":"SINGHPURA, ZIRAKPUR","pin_code":"140603","registration_date":"11-Dec-2017","valid_upto":"31-Mar-2019"}'::jsonb;
  v_desc := 'Promoter: ALLIANCE BUILDTECH (Other than Individual). Address: SINGHPURA, ZIRAKPUR. PIN: 140603. Valid upto: 31-Mar-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0343';
  v_meta := '{"district":"Ludhiana","promoter":"gkp infrastrcture limited (Other than Individual)","address":"Dugri, Dhandra Road","pin_code":"141006","registration_date":"20-Apr-2018","valid_upto":"18-Apr-2019"}'::jsonb;
  v_desc := 'Promoter: gkp infrastrcture limited (Other than Individual). Address: Dugri, Dhandra Road. PIN: 141006. Valid upto: 18-Apr-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PC0072';
  v_meta := '{"district":"Patiala","promoter":"SM Builders and Developers (Other than Individual)","address":"487, Gaushala Road","pin_code":"147001","registration_date":"29-May-2018","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: SM Builders and Developers (Other than Individual). Address: 487, Gaushala Road. PIN: 147001. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PC0023';
  v_meta := '{"district":"Amritsar","promoter":"PUDA (Other than Individual)","address":"OPP VERKA MILK PLANT","pin_code":"143001","registration_date":"30-Oct-2017","valid_upto":"14-Nov-2018"}'::jsonb;
  v_desc := 'Promoter: PUDA (Other than Individual). Address: OPP VERKA MILK PLANT. PIN: 143001. Valid upto: 14-Nov-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0275';
  v_meta := '{"district":"Ludhiana","promoter":"gkp infrastrcture limited (Other than Individual)","address":"Village Sangowal, Ludhiana","pin_code":"141002","registration_date":"16-Feb-2018","valid_upto":"18-Apr-2019"}'::jsonb;
  v_desc := 'Promoter: gkp infrastrcture limited (Other than Individual). Address: Village Sangowal, Ludhiana. PIN: 141002. Valid upto: 18-Apr-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0020';
  v_meta := '{"district":"Ludhiana","promoter":"HERO REALTY PRIVATE LIMITED (Other than Individual)","address":"Hero Homes, Village Birmi, Sub. Tehsil Mulanpur, Sidwan Canal Road, District Ludhiana","pin_code":"141027","website":"www.herohomes.in","registration_date":"04-Sep-2017","valid_upto":"12-Jun-2020"}'::jsonb;
  v_desc := 'Promoter: HERO REALTY PRIVATE LIMITED (Other than Individual). Address: Hero Homes, Village Birmi, Sub. Tehsil Mulanpur, Sidwan Canal Road, District Ludhiana. PIN: 141027. Valid upto: 12-Jun-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0037';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GILLCO DEVELOPERS AND BUILDERS PVT LTD (Other than Individual)","address":"VILLAGE KHARAR, KHARAR","pin_code":"140301","registration_date":"06-Sep-2017","valid_upto":"30-Aug-2021"}'::jsonb;
  v_desc := 'Promoter: GILLCO DEVELOPERS AND BUILDERS PVT LTD (Other than Individual). Address: VILLAGE KHARAR, KHARAR. PIN: 140301. Valid upto: 30-Aug-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0021';
  v_meta := '{"district":"Jalandhar","promoter":"HAMILTON LAND DEVELOPERS PRIVATE LIMITED (Other than Individual)","address":"66 FT. Road, Vill. Qadianwali","pin_code":"144020","website":"http://www.hamiltondevelopers.com/urban-homes.php","registration_date":"04-Sep-2017","valid_upto":"30-Sep-2022"}'::jsonb;
  v_desc := 'Promoter: HAMILTON LAND DEVELOPERS PRIVATE LIMITED (Other than Individual). Address: 66 FT. Road, Vill. Qadianwali. PIN: 144020. Valid upto: 30-Sep-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0040';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"06-Sep-2017","valid_upto":"31-Jul-2021"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 31-Jul-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0139';
  v_meta := '{"district":"Jalandhar","promoter":"AGI INFRA LIMITED (Other than Individual)","address":"VILLAGE PHOLRIWAL","pin_code":"144022","website":"www.agiinfra.com","registration_date":"13-Nov-2017","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: AGI INFRA LIMITED (Other than Individual). Address: VILLAGE PHOLRIWAL. PIN: 144022. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0026';
  v_meta := '{"district":"Ludhiana","promoter":"OMAXE LIMITED (Other than Individual)","address":"Twin Tower Ludhiana (Panache-II & Tower-B), within Omaxe Royal Residency,, Group Housing , Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana","pin_code":"142022","website":"www.omaxe.com","registration_date":"05-Sep-2017","valid_upto":"31-Jul-2020"}'::jsonb;
  v_desc := 'Promoter: OMAXE LIMITED (Other than Individual). Address: Twin Tower Ludhiana (Panache-II & Tower-B), within Omaxe Royal Residency,, Group Housing , Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana. PIN: 142022. Valid upto: 31-Jul-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0014';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ATS Estates Private Limited (Other than Individual)","address":"ATS Golf Meadows, Dera Bassi","pin_code":"140507","registration_date":"29-Sep-2017","valid_upto":"25-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: ATS Estates Private Limited (Other than Individual). Address: ATS Golf Meadows, Dera Bassi. PIN: 140507. Valid upto: 25-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PC0081';
  v_meta := '{"district":"Amritsar","promoter":"Mukut House Developers Private Limited (Other than Individual)","address":"Plot No. 3, Khasra No. 1312 & 1315, Mall Road","pin_code":"143001","registration_date":"07-Jan-2019","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Mukut House Developers Private Limited (Other than Individual). Address: Plot No. 3, Khasra No. 1312 & 1315, Mall Road. PIN: 143001. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR0246';
  v_meta := '{"district":"Bathinda","promoter":"SILVER OAK TOWNSHIP LIMITED (Other than Individual)","address":"VILLAGE BIBIWALA, BATHINDA","pin_code":"151001","registration_date":"27-Dec-2017","valid_upto":"31-Jul-2018"}'::jsonb;
  v_desc := 'Promoter: SILVER OAK TOWNSHIP LIMITED (Other than Individual). Address: VILLAGE BIBIWALA, BATHINDA. PIN: 151001. Valid upto: 31-Jul-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PM0018';
  v_meta := '{"district":"Ludhiana","promoter":"gkp infrastrcture limited (Other than Individual)","address":"Village Ramgarh, Tehsil Sahnewal","pin_code":"141001","registration_date":"07-Dec-2017","valid_upto":"24-Jan-2019"}'::jsonb;
  v_desc := 'Promoter: gkp infrastrcture limited (Other than Individual). Address: Village Ramgarh, Tehsil Sahnewal. PIN: 141001. Valid upto: 24-Jan-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0192';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"BARNALA BUILDERS & PROPERTY CONSULTANTS (Other than Individual)","address":"MAYA GARDEN CITY, NAGLA ROAD","pin_code":"140603","registration_date":"08-Nov-2017","valid_upto":"31-Mar-2018"}'::jsonb;
  v_desc := 'Promoter: BARNALA BUILDERS & PROPERTY CONSULTANTS (Other than Individual). Address: MAYA GARDEN CITY, NAGLA ROAD. PIN: 140603. Valid upto: 31-Mar-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0022';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Barnala Builders (Other than Individual)","address":"Chandigarh-Delhi Highway, NH-22, Opp. McDonald","pin_code":"140603","website":"http://www.mayagardenmagnesia.com/","registration_date":"26-Oct-2017","valid_upto":"03-Sep-2022"}'::jsonb;
  v_desc := 'Promoter: Barnala Builders (Other than Individual). Address: Chandigarh-Delhi Highway, NH-22, Opp. McDonald. PIN: 140603. Valid upto: 03-Sep-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0198';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Kapco Builders & Developers (Other than Individual)","address":"Kapco Floors, JTPL City, Kharar Landran Road, sector 115, Kharar, Mohali","pin_code":"140301","registration_date":"09-Nov-2017","valid_upto":"31-Mar-2018"}'::jsonb;
  v_desc := 'Promoter: Kapco Builders & Developers (Other than Individual). Address: Kapco Floors, JTPL City, Kharar Landran Road, sector 115, Kharar, Mohali. PIN: 140301. Valid upto: 31-Mar-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PM0015';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Mahakali Developers & Resorts Private Limited (Other than Individual)","address":"MK Technology Park, Banur-Landran Road, Village Tangori.","pin_code":"140306","website":"http://www.mahakali-developers.com/","registration_date":"10-Nov-2017","valid_upto":"29-Jul-2019"}'::jsonb;
  v_desc := 'Promoter: Mahakali Developers & Resorts Private Limited (Other than Individual). Address: MK Technology Park, Banur-Landran Road, Village Tangori.. PIN: 140306. Valid upto: 29-Jul-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR0825';
  v_meta := '{"district":"Bathinda","promoter":"Sheesh Mahal Developers Ltd (Other than Individual)","address":"Dabwali Road, Bathinda, Punjab","pin_code":"151001","registration_date":"17-Aug-2022","valid_upto":"30-May-2027"}'::jsonb;
  v_desc := 'Promoter: Sheesh Mahal Developers Ltd (Other than Individual). Address: Dabwali Road, Bathinda, Punjab. PIN: 151001. Valid upto: 30-May-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0768';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"The Punjab Officer''s Co-operative House Building Society Ltd Mohali (Other than Individual)","address":"Village - Banur, MC Banur, SAS Nagar, Punjab","pin_code":"140601","registration_date":"08-Feb-2022","valid_upto":"31-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: The Punjab Officer''s Co-operative House Building Society Ltd Mohali (Other than Individual). Address: Village - Banur, MC Banur, SAS Nagar, Punjab. PIN: 140601. Valid upto: 31-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0609';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MRS DEVELOPERS (Other than Individual)","address":"101,FF, METRO TOWER PEER MUCHHALLA, DHAKOLI, ZIRAKPUR","pin_code":"140603","registration_date":"13-May-2020","valid_upto":"31-Mar-2025"}'::jsonb;
  v_desc := 'Promoter: MRS DEVELOPERS (Other than Individual). Address: 101,FF, METRO TOWER PEER MUCHHALLA, DHAKOLI, ZIRAKPUR. PIN: 140603. Valid upto: 31-Mar-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-RPR70-PM0100';
  v_meta := '{"district":"Rupnagar (Ropar)","promoter":"Ropar Properties & Builders Pvt Ltd (Other than Individual)","address":"Sun Enclave Towers, Village Shampura","pin_code":"140001","website":"http://sunenclavetowers.com","registration_date":"13-Jun-2018","valid_upto":"30-Jun-2020"}'::jsonb;
  v_desc := 'Promoter: Ropar Properties & Builders Pvt Ltd (Other than Individual). Address: Sun Enclave Towers, Village Shampura. PIN: 140001. Valid upto: 30-Jun-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0175';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"GBP Rose Wood Estate, Gulabgarh Road","pin_code":"140507","website":"www.gbpgroup.in","registration_date":"21-Nov-2017","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: GBP Rose Wood Estate, Gulabgarh Road. PIN: 140507. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PM0027';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CREDO ASSETS PRIVATE LIMITED (Other than Individual)","address":"Village Santemajra, sector-116,tehsil-kharar,mohali","pin_code":"140301","website":"http://www.sbpgroup.in/residential/sbp-city-of-dreams-116/","registration_date":"20-Feb-2018","valid_upto":"25-Sep-2021"}'::jsonb;
  v_desc := 'Promoter: CREDO ASSETS PRIVATE LIMITED (Other than Individual). Address: Village Santemajra, sector-116,tehsil-kharar,mohali. PIN: 140301. Valid upto: 25-Sep-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0291';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"Village - Rampur Bhuda, New Aerocity Road, Zirakpur","pin_code":"140603","website":"www.gbpgroup.in","registration_date":"12-Feb-2018","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: Village - Rampur Bhuda, New Aerocity Road, Zirakpur. PIN: 140603. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PM0038';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"GBP Rose Wood Estate Phase-II, Saidhpura, Gulabgarh Road, Derabassi","pin_code":"140507","website":"www.gbpgroup.in","registration_date":"15-Nov-2017","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: GBP Rose Wood Estate Phase-II, Saidhpura, Gulabgarh Road, Derabassi. PIN: 140507. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0031';
  v_meta := '{"district":"Ludhiana","promoter":"OMAXE LIMITED (Other than Individual)","address":"Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana","pin_code":"142022","website":"www.omaxe.com","registration_date":"06-Sep-2017","valid_upto":"30-Apr-2022"}'::jsonb;
  v_desc := 'Promoter: OMAXE LIMITED (Other than Individual). Address: Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana. PIN: 142022. Valid upto: 30-Apr-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0030';
  v_meta := '{"district":"Ludhiana","promoter":"OMAXE LIMITED (Other than Individual)","address":"Village Thakarwal & Dad, Pakhowal Road","pin_code":"142022","website":"www.omaxe.com","registration_date":"06-Sep-2017","valid_upto":"30-Apr-2022"}'::jsonb;
  v_desc := 'Promoter: OMAXE LIMITED (Other than Individual). Address: Village Thakarwal & Dad, Pakhowal Road. PIN: 142022. Valid upto: 30-Apr-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0025';
  v_meta := '{"district":"Ludhiana","promoter":"OMAXE LIMITED (Other than Individual)","address":"Group Housing , Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana","pin_code":"142022","website":"www.omaxe.com","registration_date":"06-Sep-2017","valid_upto":"30-Apr-2022"}'::jsonb;
  v_desc := 'Promoter: OMAXE LIMITED (Other than Individual). Address: Group Housing , Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana. PIN: 142022. Valid upto: 30-Apr-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0029';
  v_meta := '{"district":"Ludhiana","promoter":"OMAXE LIMITED (Other than Individual)","address":"Group Housing , Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana","pin_code":"142022","website":"www.omaxe.com","registration_date":"06-Sep-2017","valid_upto":"30-Apr-2022"}'::jsonb;
  v_desc := 'Promoter: OMAXE LIMITED (Other than Individual). Address: Group Housing , Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana. PIN: 142022. Valid upto: 30-Apr-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0534';
  v_meta := '{"district":"Ludhiana","promoter":"BHASIN INFRASTRUCTURE DEVELOPERS PVT LTD (Other than Individual)","address":"RAJGADH ESTATES, PH 2 EXTENSION , ZONE 5, VILL BIRMI","pin_code":"142027","website":"www.rajgadhestates.com","registration_date":"01-Nov-2019","valid_upto":"31-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: BHASIN INFRASTRUCTURE DEVELOPERS PVT LTD (Other than Individual). Address: RAJGADH ESTATES, PH 2 EXTENSION , ZONE 5, VILL BIRMI. PIN: 142027. Valid upto: 31-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PR0379';
  v_meta := '{"district":"Amritsar","promoter":"TEWARI & GANGAHAR INFRASTRUCTURES PVT. LTD. (Other than Individual)","address":"VILLAGE VALLAH","pin_code":"143001","registration_date":"09-Aug-2018","valid_upto":"31-Mar-2021"}'::jsonb;
  v_desc := 'Promoter: TEWARI & GANGAHAR INFRASTRUCTURES PVT. LTD. (Other than Individual). Address: VILLAGE VALLAH. PIN: 143001. Valid upto: 31-Mar-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL65-PM0106';
  v_meta := '{"district":"Patiala","promoter":"Parsvnath Developers Ltd (Other than Individual)","address":"Village Dharia KM 216, G T Road Shambhu Rajpura","pin_code":"140401","website":"http://www.parsvnath.com/","registration_date":"12-Jul-2018","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: Parsvnath Developers Ltd (Other than Individual). Address: Village Dharia KM 216, G T Road Shambhu Rajpura. PIN: 140401. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PM0116';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Greater Mohali Area Development Authority (GMADA) (Other than Individual)","address":"IT City","pin_code":"140306","registration_date":"09-Aug-2018","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: Greater Mohali Area Development Authority (GMADA) (Other than Individual). Address: IT City. PIN: 140306. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL65-PM0110';
  v_meta := '{"district":"Patiala","promoter":"Parsvnath Developers Ltd (Other than Individual)","address":"Village Dharia KM 216, G T Road Shambhu Rajpura","pin_code":"140401","website":"http://www.parsvnath.com/","registration_date":"12-Jul-2018","valid_upto":"30-Jun-2020"}'::jsonb;
  v_desc := 'Promoter: Parsvnath Developers Ltd (Other than Individual). Address: Village Dharia KM 216, G T Road Shambhu Rajpura. PIN: 140401. Valid upto: 30-Jun-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL65-PM0108';
  v_meta := '{"district":"Patiala","promoter":"Parsvnath Developers Ltd (Other than Individual)","address":"Village Dharia KM 216, G T Road Shambhu Rajpura","pin_code":"140401","website":"http://www.parsvnath.com/","registration_date":"12-Jul-2018","valid_upto":"30-Jun-2020"}'::jsonb;
  v_desc := 'Promoter: Parsvnath Developers Ltd (Other than Individual). Address: Village Dharia KM 216, G T Road Shambhu Rajpura. PIN: 140401. Valid upto: 30-Jun-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL65-PM0107';
  v_meta := '{"district":"Patiala","promoter":"Parsvnath Developers Ltd (Other than Individual)","address":"Village Dharia KM 216, G T Road Shambhu Rajpura","pin_code":"140401","website":"http://www.parsvnath.com/","registration_date":"12-Jul-2018","valid_upto":"30-Jun-2020"}'::jsonb;
  v_desc := 'Promoter: Parsvnath Developers Ltd (Other than Individual). Address: Village Dharia KM 216, G T Road Shambhu Rajpura. PIN: 140401. Valid upto: 30-Jun-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL65-PM0105';
  v_meta := '{"district":"Patiala","promoter":"Parsvnath Developers Ltd (Other than Individual)","address":"Village Dharia KM 216, G T Road Shambhu Rajpura","pin_code":"140401","website":"http://www.parsvnath.com/","registration_date":"12-Jul-2018","valid_upto":"31-Mar-2020"}'::jsonb;
  v_desc := 'Promoter: Parsvnath Developers Ltd (Other than Individual). Address: Village Dharia KM 216, G T Road Shambhu Rajpura. PIN: 140401. Valid upto: 31-Mar-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL65-PM0109';
  v_meta := '{"district":"Patiala","promoter":"Parsvnath Developers Ltd (Other than Individual)","address":"Village Dharia KM 216, G T Road Shambhu Rajpura","pin_code":"140401","website":"http://www.parsvnath.com/","registration_date":"12-Jul-2018","valid_upto":"30-Jun-2020"}'::jsonb;
  v_desc := 'Promoter: Parsvnath Developers Ltd (Other than Individual). Address: Village Dharia KM 216, G T Road Shambhu Rajpura. PIN: 140401. Valid upto: 30-Jun-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-GSP27-PM0124';
  v_meta := '{"district":"Gurdaspur","promoter":"Gupta Property Developers Pvt Ltd (Other than Individual)","address":"Village Kotli Muglan, Tehsil Pathankot","pin_code":"145001","registration_date":"30-Oct-2018","valid_upto":"31-Mar-2019"}'::jsonb;
  v_desc := 'Promoter: Gupta Property Developers Pvt Ltd (Other than Individual). Address: Village Kotli Muglan, Tehsil Pathankot. PIN: 145001. Valid upto: 31-Mar-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PM0005';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Shipra Estate Limited (Other than Individual)","address":"Village Nagla, Opposite Manav Mangal School,, PO Dhakoli, Zirakpur","pin_code":"140603","website":"www.shipraworld.com","registration_date":"20-Sep-2017","valid_upto":"26-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: Shipra Estate Limited (Other than Individual). Address: Village Nagla, Opposite Manav Mangal School,, PO Dhakoli, Zirakpur. PIN: 140603. Valid upto: 26-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0102';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KLV Builders and Developers (Other than Individual)","address":"Signature Towers, JLPL City , Sector 66A Mohali","pin_code":"160055","website":"www.klvsignaturetowers.com","registration_date":"19-Sep-2017","valid_upto":"26-Apr-2018"}'::jsonb;
  v_desc := 'Promoter: KLV Builders and Developers (Other than Individual). Address: Signature Towers, JLPL City , Sector 66A Mohali. PIN: 160055. Valid upto: 26-Apr-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-GSP27-PM0123';
  v_meta := '{"district":"Gurdaspur","promoter":"Rasila Projects & Services Pvt. Ltd (Other than Individual)","address":"Village Kotli Muglan, Tehsil Pathankot","pin_code":"145001","registration_date":"30-Oct-2018","valid_upto":"31-Mar-2019"}'::jsonb;
  v_desc := 'Promoter: Rasila Projects & Services Pvt. Ltd (Other than Individual). Address: Village Kotli Muglan, Tehsil Pathankot. PIN: 145001. Valid upto: 31-Mar-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0029';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ANSAL PROPERTIES AND INFRASTRUCTURE LTD. (Other than Individual)","address":"Golflinks-I, Sector-114, Mohali","pin_code":"160114","registration_date":"11-Sep-2017","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: ANSAL PROPERTIES AND INFRASTRUCTURE LTD. (Other than Individual). Address: Golflinks-I, Sector-114, Mohali. PIN: 160114. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0220';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"28-Nov-2017","valid_upto":"31-Jan-2023"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 31-Jan-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-RPR70-PM0115';
  v_meta := '{"district":"Rupnagar (Ropar)","promoter":"Twenty First century buildcon pvt. ltd. (Other than Individual)","address":"VILLAGE SAHOTA TEHSIL ANANDPUR SAHIB","pin_code":"140118","registration_date":"08-Aug-2018","valid_upto":"31-Jul-2019"}'::jsonb;
  v_desc := 'Promoter: Twenty First century buildcon pvt. ltd. (Other than Individual). Address: VILLAGE SAHOTA TEHSIL ANANDPUR SAHIB. PIN: 140118. Valid upto: 31-Jul-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PM0021';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Limited (Other than Individual)","address":"SECTOR 117 AND 74 A","pin_code":"140307","registration_date":"26-Dec-2017","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Bajwa Developers Limited (Other than Individual). Address: SECTOR 117 AND 74 A. PIN: 140307. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PM0117';
  v_meta := '{"district":"Jalandhar","promoter":"Shourya Towers Pvt. Ltd. (Other than Individual)","address":"Shourya Greens","pin_code":"144001","website":"http://www.shouryagroup.com/shourya-greens.htm","registration_date":"16-Aug-2018","valid_upto":"10-Oct-2022"}'::jsonb;
  v_desc := 'Promoter: Shourya Towers Pvt. Ltd. (Other than Individual). Address: Shourya Greens. PIN: 144001. Valid upto: 10-Oct-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PM0121';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Greater Mohali Area Development Authority (GMADA) (Other than Individual)","address":"Sector 88, 89","pin_code":"160062","registration_date":"27-Sep-2018","valid_upto":"31-Mar-2019"}'::jsonb;
  v_desc := 'Promoter: Greater Mohali Area Development Authority (GMADA) (Other than Individual). Address: Sector 88, 89. PIN: 160062. Valid upto: 31-Mar-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0279';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"PLOT NO 1952 - 1974, SECTOR 110 TDI CITY-II","pin_code":"140306","registration_date":"08-Feb-2018","valid_upto":"26-Jul-2019"}'::jsonb;
  v_desc := 'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: PLOT NO 1952 - 1974, SECTOR 110 TDI CITY-II. PIN: 140306. Valid upto: 26-Jul-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0181';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Prem Bansal Real Estates Pvt. Ltd (Other than Individual)","address":"Swastik Vihar Apartments Village Bhabat, Tehsil Zirakpur","pin_code":"140603","registration_date":"20-Dec-2017","valid_upto":"30-Mar-2018"}'::jsonb;
  v_desc := 'Promoter: Prem Bansal Real Estates Pvt. Ltd (Other than Individual). Address: Swastik Vihar Apartments Village Bhabat, Tehsil Zirakpur. PIN: 140603. Valid upto: 30-Mar-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0088';
  v_meta := '{"district":"Ludhiana","promoter":"Umbera Group (Other than Individual)","address":"Villages Sangowal and Jaspal Bangar,, Canal Road, Ludhiana","pin_code":"141122","website":"www.umberagroup.com","registration_date":"14-Sep-2017","valid_upto":"25-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: Umbera Group (Other than Individual). Address: Villages Sangowal and Jaspal Bangar,, Canal Road, Ludhiana. PIN: 141122. Valid upto: 25-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0232';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CHANDIGARH COLONISERS PRIVATE LIMITED (Other than Individual)","address":"VILLAGE KISHANPURA, ZIRAKPUR","pin_code":"140603","registration_date":"11-Dec-2017","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: CHANDIGARH COLONISERS PRIVATE LIMITED (Other than Individual). Address: VILLAGE KISHANPURA, ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FGS17-PM0093';
  v_meta := '{"district":"Fatehgarh Sahib","promoter":"Jai Maa Vijay Housing & Land Developers Pvt Ltd (Other than Individual)","address":"Village Attewali, Chunni road, Fatehgarh Sahib","pin_code":"140407","registration_date":"23-May-2018","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Jai Maa Vijay Housing & Land Developers Pvt Ltd (Other than Individual). Address: Village Attewali, Chunni road, Fatehgarh Sahib. PIN: 140407. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0002';
  v_meta := '{"district":"Ludhiana","promoter":"OMAXE LIMITED (Other than Individual)","address":"Royal Arcade Ludhiana (Commercial-1), within Omaxe Royal Residency, Group Housing ,, Village Thakarwal & Dad, Pakhowal Road,","pin_code":"142022","website":"www.omaxe.com","registration_date":"06-Sep-2017","valid_upto":"31-Jul-2019"}'::jsonb;
  v_desc := 'Promoter: OMAXE LIMITED (Other than Individual). Address: Royal Arcade Ludhiana (Commercial-1), within Omaxe Royal Residency, Group Housing ,, Village Thakarwal & Dad, Pakhowal Road,. PIN: 142022. Valid upto: 31-Jul-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PM0146';
  v_meta := '{"district":"Ludhiana","promoter":"BHASIN INFRASTRUCTURE DEVELOPERS PVT LTD (Other than Individual)","address":"RAJGADH ESTATES, PH 2 EXTENSION , ZONE 4, VILL BIRMI","pin_code":"142027","website":"www.rajgadhestates.com","registration_date":"01-Nov-2019","valid_upto":"30-Jun-2022"}'::jsonb;
  v_desc := 'Promoter: BHASIN INFRASTRUCTURE DEVELOPERS PVT LTD (Other than Individual). Address: RAJGADH ESTATES, PH 2 EXTENSION , ZONE 4, VILL BIRMI. PIN: 142027. Valid upto: 30-Jun-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0311';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Aman Homes (Other than Individual)","address":"M/s. Bajwa developers limited side at  village Jandpur, Kharar","pin_code":"140301","registration_date":"12-Mar-2018","valid_upto":"28-Jul-2019"}'::jsonb;
  v_desc := 'Promoter: Aman Homes (Other than Individual). Address: M/s. Bajwa developers limited side at  village Jandpur, Kharar. PIN: 140301. Valid upto: 28-Jul-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0027';
  v_meta := '{"district":"Ludhiana","promoter":"OMAXE LIMITED (Other than Individual)","address":"Group Housing , Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana","pin_code":"142022","website":"www.omaxe.com","registration_date":"05-Sep-2017","valid_upto":"30-Apr-2018"}'::jsonb;
  v_desc := 'Promoter: OMAXE LIMITED (Other than Individual). Address: Group Housing , Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana. PIN: 142022. Valid upto: 30-Apr-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FGS17-PM0092';
  v_meta := '{"district":"Fatehgarh Sahib","promoter":"JMV Promoters Pvt Ltd (Other than Individual)","address":"Palm City Extension, Village Attewali, Fatehgarh Sahib","pin_code":"140407","registration_date":"23-May-2018","valid_upto":"30-Sep-2018"}'::jsonb;
  v_desc := 'Promoter: JMV Promoters Pvt Ltd (Other than Individual). Address: Palm City Extension, Village Attewali, Fatehgarh Sahib. PIN: 140407. Valid upto: 30-Sep-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0032';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"06-Sep-2017","valid_upto":"31-Jan-2019"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 31-Jan-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0533';
  v_meta := '{"district":"Ludhiana","promoter":"BHASIN INFRASTRUCTURE DEVELOPERS PVT LTD (Other than Individual)","address":"RAJGADH ESTATES, PHASE 2 EXTENSION - 1, ZONE 3","pin_code":"142027","website":"www.rajgadhestates.com","registration_date":"01-Nov-2019","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: BHASIN INFRASTRUCTURE DEVELOPERS PVT LTD (Other than Individual). Address: RAJGADH ESTATES, PHASE 2 EXTENSION - 1, ZONE 3. PIN: 142027. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0532';
  v_meta := '{"district":"Ludhiana","promoter":"BHASIN INFRASTRUCTURE DEVELOPERS PVT LTD (Other than Individual)","address":"RAJGADH ESTATES, PH 2 EXTENSION, ZONE 2","pin_code":"142027","website":"www.rajgadhestates.com","registration_date":"01-Nov-2019","valid_upto":"13-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: BHASIN INFRASTRUCTURE DEVELOPERS PVT LTD (Other than Individual). Address: RAJGADH ESTATES, PH 2 EXTENSION, ZONE 2. PIN: 142027. Valid upto: 13-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PI0002';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"A-Tech Infrastructures Pvt Ltd (Other than Individual)","address":"MetroPark, Sector-103, Mohali","pin_code":"140306","registration_date":"10-Nov-2017","valid_upto":"30-Jun-2022"}'::jsonb;
  v_desc := 'Promoter: A-Tech Infrastructures Pvt Ltd (Other than Individual). Address: MetroPark, Sector-103, Mohali. PIN: 140306. Valid upto: 30-Jun-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0035';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"06-Sep-2017","valid_upto":"31-Jul-2019"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 31-Jul-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PM0074';
  v_meta := '{"district":"Bathinda","promoter":"U.S. Promoters & Developers (Other than Individual)","address":"Village Bhucho Kalan, Bathinda","pin_code":"151101","registration_date":"25-Mar-2018","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: U.S. Promoters & Developers (Other than Individual). Address: Village Bhucho Kalan, Bathinda. PIN: 151101. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL65-PR0370';
  v_meta := '{"district":"Patiala","promoter":"Parsvnath Developers Ltd (Other than Individual)","address":"Village Dharia KM 216, G T Road Shambhu Rajpura","pin_code":"140401","website":"http://www.parsvnath.com/","registration_date":"12-Jul-2018","valid_upto":"30-Jun-2020"}'::jsonb;
  v_desc := 'Promoter: Parsvnath Developers Ltd (Other than Individual). Address: Village Dharia KM 216, G T Road Shambhu Rajpura. PIN: 140401. Valid upto: 30-Jun-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR03-PM0143';
  v_meta := '{"district":"Amritsar","promoter":"ALPHA CORP DEVELOPMENT PVT. LTD  (Other than Individual)","address":"MODEL INDUSTRIAL PARK , AMRITSAR, VILLAGE VALLAH (HADBAST NO. 280), ABBUTTING AMRITSAR, MEHTA LINK ROAD","pin_code":"143501","website":"www.alphacorp.in","registration_date":"10-Jun-2019","valid_upto":"10-Jun-2022"}'::jsonb;
  v_desc := 'Promoter: ALPHA CORP DEVELOPMENT PVT. LTD  (Other than Individual). Address: MODEL INDUSTRIAL PARK , AMRITSAR, VILLAGE VALLAH (HADBAST NO. 280), ABBUTTING AMRITSAR, MEHTA LINK ROAD. PIN: 143501. Valid upto: 10-Jun-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR01-PR0423';
  v_meta := '{"district":"Amritsar","promoter":"Collage Group Infrastructure Pvt. Ltd. (Other than Individual)","address":"HERITAGE CITY, VILLAGE HEIR, AJNALA ROAD","pin_code":"143001","website":"www.collageindia.com","registration_date":"18-Feb-2019","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: Collage Group Infrastructure Pvt. Ltd. (Other than Individual). Address: HERITAGE CITY, VILLAGE HEIR, AJNALA ROAD. PIN: 143001. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0378';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Proud nature buildtech private limited (Other than Individual)","address":"Milenio Floors, Gulmohar Residensy, Golflink Ansal, Sector 116","pin_code":"140308","website":"http://www.grouppnb.com","registration_date":"07-Aug-2018","valid_upto":"01-Mar-2021"}'::jsonb;
  v_desc := 'Promoter: Proud nature buildtech private limited (Other than Individual). Address: Milenio Floors, Gulmohar Residensy, Golflink Ansal, Sector 116. PIN: 140308. Valid upto: 01-Mar-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0191';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Golden Sand Appartments (Other than Individual)","address":"OLD AMBALA ROAD, GAZIPUR, ZIRAKPUR","pin_code":"160104","website":"www.goldensandappartments.com","registration_date":"08-Nov-2017","valid_upto":"30-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Golden Sand Appartments (Other than Individual). Address: OLD AMBALA ROAD, GAZIPUR, ZIRAKPUR. PIN: 160104. Valid upto: 30-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0060';
  v_meta := '{"district":"Ludhiana","promoter":"Ireo Waterfront Pvt Ltd (Other than Individual)","address":"Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.","pin_code":"141001","website":"www.ireowaterfont.com","registration_date":"11-Sep-2017","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: Ireo Waterfront Pvt Ltd (Other than Individual). Address: Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.. PIN: 141001. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PM0104';
  v_meta := '{"district":"Jalandhar","promoter":"RAP PROJECTS PRIVATE LIMITED (Other than Individual)","address":"66 FT ROAD VILLAGE PHOLARIWAL, NEAR URBAN ESTATE PHASE II","pin_code":"144001","registration_date":"02-May-2018","valid_upto":"19-Feb-2019"}'::jsonb;
  v_desc := 'Promoter: RAP PROJECTS PRIVATE LIMITED (Other than Individual). Address: 66 FT ROAD VILLAGE PHOLARIWAL, NEAR URBAN ESTATE PHASE II. PIN: 144001. Valid upto: 19-Feb-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0164';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Shubham Builders (Other than Individual)","address":"Santemajra KHARAR LANDRAN HIGHWAY, SECTOR-116","pin_code":"140307","registration_date":"17-Oct-2017","valid_upto":"31-Jul-2019"}'::jsonb;
  v_desc := 'Promoter: Shubham Builders (Other than Individual). Address: Santemajra KHARAR LANDRAN HIGHWAY, SECTOR-116. PIN: 140307. Valid upto: 31-Jul-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PI0001';
  v_meta := '{"district":"Ludhiana","promoter":"Malhotra Developers and Colonisers (Other than Individual)","address":"Vill-Kohara-Jandiali","pin_code":"141122","registration_date":"13-Sep-2017","valid_upto":"29-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: Malhotra Developers and Colonisers (Other than Individual). Address: Vill-Kohara-Jandiali. PIN: 141122. Valid upto: 29-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR0324';
  v_meta := '{"district":"Patiala","promoter":"NAVYUG ESTATES (Other than Individual)","address":"Kohinoor Valley ,Village Baran,Sirhind Road,Patiala.","pin_code":"147001","registration_date":"26-Mar-2018","valid_upto":"09-Mar-2018"}'::jsonb;
  v_desc := 'Promoter: NAVYUG ESTATES (Other than Individual). Address: Kohinoor Valley ,Village Baran,Sirhind Road,Patiala.. PIN: 147001. Valid upto: 09-Mar-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-RPR70-PM0120';
  v_meta := '{"district":"Rupnagar (Ropar)","promoter":"Ropar Properties & Builders Pvt Ltd (Other than Individual)","address":"Gobind Enclave, Near Nangal Chownk","pin_code":"140001","website":"http://www.gobindvalley.com/","registration_date":"13-Sep-2018","valid_upto":"31-Oct-2020"}'::jsonb;
  v_desc := 'Promoter: Ropar Properties & Builders Pvt Ltd (Other than Individual). Address: Gobind Enclave, Near Nangal Chownk. PIN: 140001. Valid upto: 31-Oct-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0038';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GILLCO DEVELOPERS AND BUILDERS PVT LTD (Other than Individual)","address":"VILL KHOONIMAJRA, KHARAR","pin_code":"140301","registration_date":"06-Sep-2017","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: GILLCO DEVELOPERS AND BUILDERS PVT LTD (Other than Individual). Address: VILL KHOONIMAJRA, KHARAR. PIN: 140301. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MGA54-PM0122';
  v_meta := '{"district":"Moga","promoter":"Chandigarh Dwellings & Land Promoters Pvt. Ltd. (Other than Individual)","address":"Village Moga Jeet Singh-II,, Kotkapura Road,","pin_code":"142001","registration_date":"18-Oct-2018","valid_upto":"15-Oct-2019"}'::jsonb;
  v_desc := 'Promoter: Chandigarh Dwellings & Land Promoters Pvt. Ltd. (Other than Individual). Address: Village Moga Jeet Singh-II,, Kotkapura Road,. PIN: 142001. Valid upto: 15-Oct-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-RPR70-PM0138';
  v_meta := '{"district":"Rupnagar (Ropar)","promoter":"Jeet Properties Pvt. Ltd (Other than Individual)","address":"Hemkunt Enclave railon road, District Ropar","pin_code":"140001","registration_date":"27-Feb-2019","valid_upto":"19-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: Jeet Properties Pvt. Ltd (Other than Individual). Address: Hemkunt Enclave railon road, District Ropar. PIN: 140001. Valid upto: 19-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PM0023';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GEETU CONSTRUCTIONS PVT LTD (Other than Individual)","address":"VILLAGE LANDRAN, SECTOR-113, MOHALI","pin_code":"160059","registration_date":"12-Jan-2018","valid_upto":"31-Jul-2024"}'::jsonb;
  v_desc := 'Promoter: GEETU CONSTRUCTIONS PVT LTD (Other than Individual). Address: VILLAGE LANDRAN, SECTOR-113, MOHALI. PIN: 160059. Valid upto: 31-Jul-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0360';
  v_meta := '{"district":"Jalandhar","promoter":"AGI INFRA LIMITED (Other than Individual)","address":"VILLAGE PHOLRIWAL","pin_code":"144022","website":"www.agiinfra.com","registration_date":"17-Apr-2018","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: AGI INFRA LIMITED (Other than Individual). Address: VILLAGE PHOLRIWAL. PIN: 144022. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-RPR70-PM0114';
  v_meta := '{"district":"Rupnagar (Ropar)","promoter":"Bhangu Developers and Builders Pvt ltd (Other than Individual)","address":"Ropar-Nangal Road, Tehsil and Distt. Rupnagar (Ropar)","pin_code":"140001","registration_date":"02-Aug-2018","valid_upto":"30-Jun-2020"}'::jsonb;
  v_desc := 'Promoter: Bhangu Developers and Builders Pvt ltd (Other than Individual). Address: Ropar-Nangal Road, Tehsil and Distt. Rupnagar (Ropar). PIN: 140001. Valid upto: 30-Jun-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PM0025';
  v_meta := '{"district":"Ludhiana","promoter":"Anand Enclave Developers Pvt. Ltd. (Other than Individual)","address":"Village lalton Kalan, Ludhiana","pin_code":"141001","registration_date":"06-Feb-2018","valid_upto":"31-Mar-2020"}'::jsonb;
  v_desc := 'Promoter: Anand Enclave Developers Pvt. Ltd. (Other than Individual). Address: Village lalton Kalan, Ludhiana. PIN: 141001. Valid upto: 31-Mar-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FDK12-PM0102';
  v_meta := '{"district":"Faridkot","promoter":"Kotkapura Township Colonisers (Other than Individual)","address":"Gobind Estate, Muktsar Road, Kotkapura","pin_code":"151204","website":"www.gobindestate.com","registration_date":"19-Jun-2018","valid_upto":"30-Sep-2018"}'::jsonb;
  v_desc := 'Promoter: Kotkapura Township Colonisers (Other than Individual). Address: Gobind Estate, Muktsar Road, Kotkapura. PIN: 151204. Valid upto: 30-Sep-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PI0003';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"IT Twin Tower, Sector-66A","pin_code":"140306","website":"www.jantahousing.com","registration_date":"30-Nov-2017","valid_upto":"31-Oct-2019"}'::jsonb;
  v_desc := 'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: IT Twin Tower, Sector-66A. PIN: 140306. Valid upto: 31-Oct-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PI0004';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Vinod  Kumar Jain (Individual)","address":"pragati industrial park, village behra","pin_code":"140507","website":"www.pragatipark.com","registration_date":"05-Mar-2018"}'::jsonb;
  v_desc := 'Promoter: Vinod  Kumar Jain (Individual). Address: pragati industrial park, village behra. PIN: 140507';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0230';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"Eco Green Colony Phase-II, Saidhpura, Gulabgarh Road","pin_code":"140507","website":"www.gbpgroup.in","registration_date":"28-Nov-2017","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: Eco Green Colony Phase-II, Saidhpura, Gulabgarh Road. PIN: 140507. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0034';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"SCO 1030A-H SCO 1035-36, CONNAUGHT PLAZA SECTOR 74A TDI CITY II","pin_code":"140301","registration_date":"08-Feb-2018","valid_upto":"04-Aug-2019"}'::jsonb;
  v_desc := 'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: SCO 1030A-H SCO 1035-36, CONNAUGHT PLAZA SECTOR 74A TDI CITY II. PIN: 140301. Valid upto: 04-Aug-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PM0039';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CHANDIGARH ROYALE CITY PROMOTERS PVT. LTD (Other than Individual)","address":"VILLAGE KARALA, ZIRAKPUR - BANUR HIGHWAY","pin_code":"140603","registration_date":"06-Mar-2018","valid_upto":"11-Sep-2019"}'::jsonb;
  v_desc := 'Promoter: CHANDIGARH ROYALE CITY PROMOTERS PVT. LTD (Other than Individual). Address: VILLAGE KARALA, ZIRAKPUR - BANUR HIGHWAY. PIN: 140603. Valid upto: 11-Sep-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PR0239';
  v_meta := '{"district":"Amritsar","promoter":"Ansal Buildwell Ltd (Other than Individual)","address":"VILLAGE JANDIALA GURU, GT ROAD, MEHARBAN PURA","pin_code":"143115","website":"www.ansalabl.com","registration_date":"13-Dec-2017","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Ansal Buildwell Ltd (Other than Individual). Address: VILLAGE JANDIALA GURU, GT ROAD, MEHARBAN PURA. PIN: 143115. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PM0129';
  v_meta := '{"district":"Bathinda","promoter":"HARMINDER  SINGH (Individual)","address":"BIR ROAD,","pin_code":"151001","registration_date":"15-Jan-2019","valid_upto":"30-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: HARMINDER  SINGH (Individual). Address: BIR ROAD,. PIN: 151001. Valid upto: 30-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR01-PR0424';
  v_meta := '{"district":"Amritsar","promoter":"Collage Group Infrastructure Pvt. Ltd. (Other than Individual)","address":"VILLAGE HEIR, AJNALA ROAD","pin_code":"143001","website":"www.collageindia.com","registration_date":"18-Feb-2019","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: Collage Group Infrastructure Pvt. Ltd. (Other than Individual). Address: VILLAGE HEIR, AJNALA ROAD. PIN: 143001. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MNS49-PR0818';
  v_meta := '{"district":"Mansa","promoter":"New Town (Other than Individual)","address":"Royal City, Colony Road, Near DAV School, Budhlada","pin_code":"151502","registration_date":"05-Aug-2022","valid_upto":"30-Jun-2024"}'::jsonb;
  v_desc := 'Promoter: New Town (Other than Individual). Address: Royal City, Colony Road, Near DAV School, Budhlada. PIN: 151502. Valid upto: 30-Jun-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0822';
  v_meta := '{"district":"Jalandhar","promoter":"J.S.R. Earth Evolution Private Limited (Other than Individual)","address":"Village Chak Hussaina, Lamba Pind","pin_code":"144004","registration_date":"08-Aug-2022","valid_upto":"11-Feb-2025"}'::jsonb;
  v_desc := 'Promoter: J.S.R. Earth Evolution Private Limited (Other than Individual). Address: Village Chak Hussaina, Lamba Pind. PIN: 144004. Valid upto: 11-Feb-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0779';
  v_meta := '{"district":"Jalandhar","promoter":"AGI INFRA LIMITED (Other than Individual)","address":"Village Pholriwal, (H.B.No.252)","pin_code":"144022","website":"www.agiinfra.com","registration_date":"25-Apr-2022","valid_upto":"04-Aug-2025"}'::jsonb;
  v_desc := 'Promoter: AGI INFRA LIMITED (Other than Individual). Address: Village Pholriwal, (H.B.No.252). PIN: 144022. Valid upto: 04-Aug-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0011';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"A V Developers (Other than Individual)","address":"Gobind Colony, Kharar","pin_code":"140301","registration_date":"01-Sep-2017","valid_upto":"30-Aug-2018"}'::jsonb;
  v_desc := 'Promoter: A V Developers (Other than Individual). Address: Gobind Colony, Kharar. PIN: 140301. Valid upto: 30-Aug-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0024';
  v_meta := '{"district":"Patiala","promoter":"Parsvnath Developers Limited (Other than Individual)","address":"Mubarikpur Road, Derabassi","pin_code":"140507","website":"www.parsvnath.com","registration_date":"05-Sep-2017","valid_upto":"31-Jul-2018"}'::jsonb;
  v_desc := 'Promoter: Parsvnath Developers Limited (Other than Individual). Address: Mubarikpur Road, Derabassi. PIN: 140507. Valid upto: 31-Jul-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0048';
  v_meta := '{"district":"Ludhiana","promoter":"JANPATH ESTATES PRIVATE LIMITED  (Other than Individual)","address":"Janpath Villas, Sidhwan Canal Road,, Village Jhammat, P.O.Ayali Kalan,","pin_code":"142027","registration_date":"08-Nov-2017","valid_upto":"30-Jul-2019"}'::jsonb;
  v_desc := 'Promoter: JANPATH ESTATES PRIVATE LIMITED  (Other than Individual). Address: Janpath Villas, Sidhwan Canal Road,, Village Jhammat, P.O.Ayali Kalan,. PIN: 142027. Valid upto: 30-Jul-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0050';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TRISHLA BUILDTECH PVT. LTD. (Other than Individual)","address":"TRISHLA CITY, VILLAGE NABHA SAHIB ,HIGH GROUND ROAD, ZIRAKPUR","pin_code":"140603","registration_date":"07-Sep-2017","valid_upto":"19-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: TRISHLA BUILDTECH PVT. LTD. (Other than Individual). Address: TRISHLA CITY, VILLAGE NABHA SAHIB ,HIGH GROUND ROAD, ZIRAKPUR. PIN: 140603. Valid upto: 19-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0033';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ANSAL PROPERTIES AND INFRASTRUCTURE LTD. (Other than Individual)","address":"Golflinks-II, Sector-116, Mohali","pin_code":"160114","registration_date":"13-Feb-2018","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: ANSAL PROPERTIES AND INFRASTRUCTURE LTD. (Other than Individual). Address: Golflinks-II, Sector-116, Mohali. PIN: 160114. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0458';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Ajay   Jindal (Individual)","address":"Village-  Mouja Dhnoni","pin_code":"140603","registration_date":"14-May-2019","valid_upto":"30-Apr-2024"}'::jsonb;
  v_desc := 'Promoter: Ajay   Jindal (Individual). Address: Village-  Mouja Dhnoni. PIN: 140603. Valid upto: 30-Apr-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0178';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"STJ and CO (Other than Individual)","address":"Block- E, Aero City, SAS Nagar","pin_code":"140603","registration_date":"05-Aug-2022","valid_upto":"31-Mar-2026"}'::jsonb;
  v_desc := 'Promoter: STJ and CO (Other than Individual). Address: Block- E, Aero City, SAS Nagar. PIN: 140603. Valid upto: 31-Mar-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0820';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"THE PUNJAB STATE CO-OP HOUSE BUILDING FEDERATION LTD. (Other than Individual)","address":"Housefed Punjab, SECTOR 79","pin_code":"140308","registration_date":"05-Aug-2022","valid_upto":"30-Apr-2025"}'::jsonb;
  v_desc := 'Promoter: THE PUNJAB STATE CO-OP HOUSE BUILDING FEDERATION LTD. (Other than Individual). Address: Housefed Punjab, SECTOR 79. PIN: 140308. Valid upto: 30-Apr-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0817';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Urban Nest  Projects LLP (Other than Individual)","address":"Village NABHA, H.B. No. 290, Zirakpur","pin_code":"140603","registration_date":"05-Aug-2022","valid_upto":"31-Dec-2027"}'::jsonb;
  v_desc := 'Promoter: Urban Nest  Projects LLP (Other than Individual). Address: Village NABHA, H.B. No. 290, Zirakpur. PIN: 140603. Valid upto: 31-Dec-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0824';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SHIVA DEVELOPERS (Other than Individual)","address":"H. B. No. 289 Village Diyalpura,Sub Tehsil Zirakpur, District S.A.S. Nagar","pin_code":"140603","registration_date":"05-Aug-2022","valid_upto":"10-Jul-2026"}'::jsonb;
  v_desc := 'Promoter: SHIVA DEVELOPERS (Other than Individual). Address: H. B. No. 289 Village Diyalpura,Sub Tehsil Zirakpur, District S.A.S. Nagar. PIN: 140603. Valid upto: 10-Jul-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0823';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"THE SUKHMANI CO-OPERATIVE HOUSE BUILDING SOCIETY LTD (Other than Individual)","address":"VILLAGE BANUR, MC LIMIT, Tehsil Banur","pin_code":"140601","registration_date":"05-Aug-2022","valid_upto":"02-Sep-2025"}'::jsonb;
  v_desc := 'Promoter: THE SUKHMANI CO-OPERATIVE HOUSE BUILDING SOCIETY LTD (Other than Individual). Address: VILLAGE BANUR, MC LIMIT, Tehsil Banur. PIN: 140601. Valid upto: 02-Sep-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0226';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Vipul Sud Builders (Other than Individual)","address":"Spanish office, Sector 125","pin_code":"140301","registration_date":"11-Dec-2017","valid_upto":"07-May-2019"}'::jsonb;
  v_desc := 'Promoter: Vipul Sud Builders (Other than Individual). Address: Spanish office, Sector 125. PIN: 140301. Valid upto: 07-May-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0012';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ATS Estates Private Limited (Other than Individual)","address":"ATS Golf Meadows, Dera Bassi","pin_code":"140507","registration_date":"22-Sep-2017","valid_upto":"25-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: ATS Estates Private Limited (Other than Individual). Address: ATS Golf Meadows, Dera Bassi. PIN: 140507. Valid upto: 25-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PM0072';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Lark Projects Pvt. Ltd (Other than Individual)","address":"Sector 113, Landran-chunni sirhind road","pin_code":"160055","registration_date":"24-Apr-2018","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Lark Projects Pvt. Ltd (Other than Individual). Address: Sector 113, Landran-chunni sirhind road. PIN: 160055. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0014';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sushma Buildtech Limited (Other than Individual)","address":"Village Bishangarh - Bishanpura, Zirakpur, NH Chandigarh Ambala Road","pin_code":"140603","website":"www.sushma.co.in","registration_date":"14-Sep-2017","valid_upto":"13-Sep-2022"}'::jsonb;
  v_desc := 'Promoter: Sushma Buildtech Limited (Other than Individual). Address: Village Bishangarh - Bishanpura, Zirakpur, NH Chandigarh Ambala Road. PIN: 140603. Valid upto: 13-Sep-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0019';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"WAVE ESTATE, SECTOR -85 & 99","pin_code":"143308","registration_date":"11-Oct-2017","valid_upto":"31-May-2019"}'::jsonb;
  v_desc := 'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: WAVE ESTATE, SECTOR -85 & 99. PIN: 143308. Valid upto: 31-May-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR77-PM0112';
  v_meta := '{"district":"Sangrur","promoter":"Ekta Colonisers (Other than Individual)","address":"Village-Mangwal , Sangrur","pin_code":"148024","registration_date":"16-Jul-2018","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Ekta Colonisers (Other than Individual). Address: Village-Mangwal , Sangrur. PIN: 148024. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0043';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Aura Builders & Developers (Other than Individual)","address":"Aura Commercial Complex, Vill Khanpur, Kharar-morinda Road, Teh Kharar","pin_code":"140301","registration_date":"19-Mar-2018","valid_upto":"31-Mar-2020"}'::jsonb;
  v_desc := 'Promoter: Aura Builders & Developers (Other than Individual). Address: Aura Commercial Complex, Vill Khanpur, Kharar-morinda Road, Teh Kharar. PIN: 140301. Valid upto: 31-Mar-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0193';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"GBP Crest-II, Saidhpura, Gulabgarh Road","pin_code":"140507","website":"www.gbpgroup.in","registration_date":"16-Nov-2017","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: GBP Crest-II, Saidhpura, Gulabgarh Road. PIN: 140507. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PM0111';
  v_meta := '{"district":"Barnala","promoter":"Grewal properties and real estate (Other than Individual)","address":"Village Dhanaula, District Barnala","pin_code":"148101","registration_date":"13-Jul-2018","valid_upto":"30-Sep-2018"}'::jsonb;
  v_desc := 'Promoter: Grewal properties and real estate (Other than Individual). Address: Village Dhanaula, District Barnala. PIN: 148101. Valid upto: 30-Sep-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0079';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bajwa Developers Limited (Other than Individual)","address":"Vill. Desumajra Kharar","pin_code":"140301","registration_date":"08-Nov-2017","valid_upto":"27-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: Bajwa Developers Limited (Other than Individual). Address: Vill. Desumajra Kharar. PIN: 140301. Valid upto: 27-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR73-PM0094';
  v_meta := '{"district":"Sangrur","promoter":"Ekta Construction Co. (Other than Individual)","address":"Dhuri, sangrur","pin_code":"148024","registration_date":"25-May-2018","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: Ekta Construction Co. (Other than Individual). Address: Dhuri, sangrur. PIN: 148024. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PM0024';
  v_meta := '{"district":"Ludhiana","promoter":"CEE ENN Promoters and Developers Pvt Ltd (Other than Individual)","address":"Village lalton Kalan, Pakhowal Road, Ludhiana","pin_code":"141001","registration_date":"06-Feb-2018","valid_upto":"31-Mar-2020"}'::jsonb;
  v_desc := 'Promoter: CEE ENN Promoters and Developers Pvt Ltd (Other than Individual). Address: Village lalton Kalan, Pakhowal Road, Ludhiana. PIN: 141001. Valid upto: 31-Mar-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0067';
  v_meta := '{"district":"Ludhiana","promoter":"Greater Ludhiana Area Development Authority (Other than Individual)","address":"Right and Left hand Side of Mohini Resort, Sector-32 A Samrala Road, Ludhiana","pin_code":"141001","registration_date":"18-Apr-2018","valid_upto":"30-Sep-2020"}'::jsonb;
  v_desc := 'Promoter: Greater Ludhiana Area Development Authority (Other than Individual). Address: Right and Left hand Side of Mohini Resort, Sector-32 A Samrala Road, Ludhiana. PIN: 141001. Valid upto: 30-Sep-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0063';
  v_meta := '{"district":"Ludhiana","promoter":"Greater Ludhiana Area Development Authority (Other than Individual)","address":"Dugri Urban Estate, Dugri Ludhiana By Pass, Ludhiana","pin_code":"141001","registration_date":"25-Apr-2018","valid_upto":"31-Jul-2018"}'::jsonb;
  v_desc := 'Promoter: Greater Ludhiana Area Development Authority (Other than Individual). Address: Dugri Urban Estate, Dugri Ludhiana By Pass, Ludhiana. PIN: 141001. Valid upto: 31-Jul-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0045';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"A B ALCOBEV PRIVATE LIMITED (Other than Individual)","address":"Sector-67, SAS Nagar, mohali","pin_code":"140603","registration_date":"27-Mar-2018","valid_upto":"31-Dec-2024"}'::jsonb;
  v_desc := 'Promoter: A B ALCOBEV PRIVATE LIMITED (Other than Individual). Address: Sector-67, SAS Nagar, mohali. PIN: 140603. Valid upto: 31-Dec-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0076';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Ansal Lotus Melange  (Other than Individual)","address":"SCO 183-184, sector 9C","pin_code":"140307","registration_date":"18-Jul-2018","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: Ansal Lotus Melange  (Other than Individual). Address: SCO 183-184, sector 9C. PIN: 140307. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0080';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"P.P. BULDWELL PRIVATE LIMITED (Other than Individual)","address":"SITE NO.1 AND SITE NO.2, SECTOR 62","pin_code":"160055","registration_date":"29-Oct-2018","valid_upto":"30-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: P.P. BULDWELL PRIVATE LIMITED (Other than Individual). Address: SITE NO.1 AND SITE NO.2, SECTOR 62. PIN: 160055. Valid upto: 30-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZR22-PC0070';
  v_meta := '{"district":"Firozpur","promoter":"Greater Ludhiana Area Development Authority (Other than Individual)","address":"Near Saheed Udham Singh Chowk, Ferozpur","pin_code":"152001","registration_date":"20-Dec-2017","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Greater Ludhiana Area Development Authority (Other than Individual). Address: Near Saheed Udham Singh Chowk, Ferozpur. PIN: 152001. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZR22-PC0069';
  v_meta := '{"district":"Firozpur","promoter":"Greater Ludhiana Area Development Authority (Other than Individual)","address":"Back Side Jail, Near Dr Anil Baghi, Memorial Hospital, Ferozpur","pin_code":"152001","registration_date":"30-Oct-2017","valid_upto":"30-Sep-2018"}'::jsonb;
  v_desc := 'Promoter: Greater Ludhiana Area Development Authority (Other than Individual). Address: Back Side Jail, Near Dr Anil Baghi, Memorial Hospital, Ferozpur. PIN: 152001. Valid upto: 30-Sep-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0060';
  v_meta := '{"district":"Ludhiana","promoter":"Greater Ludhiana Area Development Authority (Other than Individual)","address":"Site At Police Kotwali, Chaura Bazar, Ludhiana","pin_code":"141001","registration_date":"18-Apr-2018","valid_upto":"31-Mar-2019"}'::jsonb;
  v_desc := 'Promoter: Greater Ludhiana Area Development Authority (Other than Individual). Address: Site At Police Kotwali, Chaura Bazar, Ludhiana. PIN: 141001. Valid upto: 31-Mar-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0062';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Greater Mohali Area Development Authority (GMADA) (Other than Individual)","address":"Eco City -1, New Chandigarh, Majri, Kharar,","pin_code":"140110","registration_date":"27-Apr-2018","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Greater Mohali Area Development Authority (GMADA) (Other than Individual). Address: Eco City -1, New Chandigarh, Majri, Kharar,. PIN: 140110. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PC0078';
  v_meta := '{"district":"Patiala","promoter":"BPH COMPLEX (Other than Individual)","address":"VILLAGE BARAN","pin_code":"147001","registration_date":"19-Jul-2018","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: BPH COMPLEX (Other than Individual). Address: VILLAGE BARAN. PIN: 147001. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0050';
  v_meta := '{"district":"Ludhiana","promoter":"Greater Ludhiana Area Development Authority (Other than Individual)","address":"Old District Court, Ludhiana","pin_code":"141001","registration_date":"12-Apr-2018","valid_upto":"30-Sep-2018"}'::jsonb;
  v_desc := 'Promoter: Greater Ludhiana Area Development Authority (Other than Individual). Address: Old District Court, Ludhiana. PIN: 141001. Valid upto: 30-Sep-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0066';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Darshan   Singh (Individual)","address":"Chandigarh- Ambala Highway, NAC-Lalru,","pin_code":"140501","registration_date":"02-May-2018","valid_upto":"30-Aug-2020"}'::jsonb;
  v_desc := 'Promoter: Darshan   Singh (Individual). Address: Chandigarh- Ambala Highway, NAC-Lalru,. PIN: 140501. Valid upto: 30-Aug-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0052';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Metro Developers (Other than Individual)","address":"Near MC Park, Lohgarh, Zirakpur","pin_code":"140603","registration_date":"12-Apr-2018","valid_upto":"31-Mar-2021"}'::jsonb;
  v_desc := 'Promoter: Metro Developers (Other than Individual). Address: Near MC Park, Lohgarh, Zirakpur. PIN: 140603. Valid upto: 31-Mar-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0065';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"RAINBOW(TRISHLA BUILDTECH PVT.LTD) (Other than Individual)","address":"TRISHLA  CITY, VILLAGE-NABHA,HIGH GROUND ROAD, ZIRAKPUR","pin_code":"140603","registration_date":"02-May-2018","valid_upto":"30-Apr-2023"}'::jsonb;
  v_desc := 'Promoter: RAINBOW(TRISHLA BUILDTECH PVT.LTD) (Other than Individual). Address: TRISHLA  CITY, VILLAGE-NABHA,HIGH GROUND ROAD, ZIRAKPUR. PIN: 140603. Valid upto: 30-Apr-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0162';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"FRENDEN HOUSING PRIVATE LIMITED (Other than Individual)","address":"FRIENDS HOMES, GLOBAL CITY SECTOR 124 TEHSIL KHARAR","pin_code":"140301","registration_date":"23-Oct-2017","valid_upto":"30-Sep-2018"}'::jsonb;
  v_desc := 'Promoter: FRENDEN HOUSING PRIVATE LIMITED (Other than Individual). Address: FRIENDS HOMES, GLOBAL CITY SECTOR 124 TEHSIL KHARAR. PIN: 140301. Valid upto: 30-Sep-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0051';
  v_meta := '{"district":"Ludhiana","promoter":"Greater Ludhiana Area Development Authority (Other than Individual)","address":"Samrala Road, Sector-40, Ludhiana","pin_code":"141001","registration_date":"20-Dec-2017","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Greater Ludhiana Area Development Authority (Other than Individual). Address: Samrala Road, Sector-40, Ludhiana. PIN: 141001. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PC0064';
  v_meta := '{"district":"Patiala","promoter":"PREM KUMAR  GARG (Individual)","address":"TAJ COMPLEX, Village Baren","pin_code":"147004","registration_date":"02-May-2018","valid_upto":"31-Mar-2019"}'::jsonb;
  v_desc := 'Promoter: PREM KUMAR  GARG (Individual). Address: TAJ COMPLEX, Village Baren. PIN: 147004. Valid upto: 31-Mar-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0057';
  v_meta := '{"district":"Ludhiana","promoter":"Greater Ludhiana Area Development Authority (Other than Individual)","address":"Sector-39, Samrala Road, Ludhiana","pin_code":"141001","registration_date":"13-Apr-2018","valid_upto":"30-Sep-2019"}'::jsonb;
  v_desc := 'Promoter: Greater Ludhiana Area Development Authority (Other than Individual). Address: Sector-39, Samrala Road, Ludhiana. PIN: 141001. Valid upto: 30-Sep-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0056';
  v_meta := '{"district":"Ludhiana","promoter":"Greater Ludhiana Area Development Authority (Other than Individual)","address":"Commercial Pocket, Sector-39A, Opp. Vardhman Mill","pin_code":"141001","registration_date":"13-Apr-2018","valid_upto":"30-Sep-2019"}'::jsonb;
  v_desc := 'Promoter: Greater Ludhiana Area Development Authority (Other than Individual). Address: Commercial Pocket, Sector-39A, Opp. Vardhman Mill. PIN: 141001. Valid upto: 30-Sep-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PC0058';
  v_meta := '{"district":"Jalandhar","promoter":"AGI INFRA LIMITED (Other than Individual)","address":"NEAR BUS STAND","pin_code":"144001","website":"www.agiinfra.com","registration_date":"16-Apr-2018","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: AGI INFRA LIMITED (Other than Individual). Address: NEAR BUS STAND. PIN: 144001. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0053';
  v_meta := '{"district":"Ludhiana","promoter":"Spirit Global Constructions Pvt. Ltd. (Other than Individual)","address":"VILLAGE BHORA, MAIN G.T. ROAD, NEAR JALLANDHAR BYE-PASS, OPPOSITE GREEN LAND PUBLIC SCHOOL","pin_code":"141008","registration_date":"12-Apr-2018","valid_upto":"31-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: Spirit Global Constructions Pvt. Ltd. (Other than Individual). Address: VILLAGE BHORA, MAIN G.T. ROAD, NEAR JALLANDHAR BYE-PASS, OPPOSITE GREEN LAND PUBLIC SCHOOL. PIN: 141008. Valid upto: 31-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0047';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MOTIA TOWNSHIP PVT LTD (Other than Individual)","address":"MOTIA PACIFIC CENTRRE, VILLAGE KISHANPURA","pin_code":"140603","website":"www.motiazpacificcentre.com","registration_date":"28-Mar-2019","valid_upto":"20-Mar-2021"}'::jsonb;
  v_desc := 'Promoter: MOTIA TOWNSHIP PVT LTD (Other than Individual). Address: MOTIA PACIFIC CENTRRE, VILLAGE KISHANPURA. PIN: 140603. Valid upto: 20-Mar-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0046';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PUMA REALTORS PRIVATE LIMITED (Other than Individual)","address":"Village Sukhparh and Sambalkhi, Sector 98","pin_code":"140307","registration_date":"02-Apr-2018","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: PUMA REALTORS PRIVATE LIMITED (Other than Individual). Address: Village Sukhparh and Sambalkhi, Sector 98. PIN: 140307. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0299';
  v_meta := '{"district":"Ludhiana","promoter":"THE PARJA CO OP HOUSE BUILDING SOCIETY LIMITED (Other than Individual)","address":"SITE NO1, SECTOR 40 CHANDIGARH ROAD","pin_code":"141001","registration_date":"27-Feb-2018","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: THE PARJA CO OP HOUSE BUILDING SOCIETY LIMITED (Other than Individual). Address: SITE NO1, SECTOR 40 CHANDIGARH ROAD. PIN: 141001. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PR0361';
  v_meta := '{"district":"Amritsar","promoter":"ATM ESTATES PVT LTD (Other than Individual)","address":"Near Shubham Enclave, G.T Road, Daburji","pin_code":"143001","registration_date":"18-May-2018","valid_upto":"30-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: ATM ESTATES PVT LTD (Other than Individual). Address: Near Shubham Enclave, G.T Road, Daburji. PIN: 143001. Valid upto: 30-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FGS17-PR0362';
  v_meta := '{"district":"Fatehgarh Sahib","promoter":"Disha Colonizers & Builders Pvt. Ltd (Other than Individual)","address":"Village Madhofal, H.B No. 124, Opp. Lincolin college of law, Sirhind","pin_code":"140407","registration_date":"23-May-2018","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Disha Colonizers & Builders Pvt. Ltd (Other than Individual). Address: Village Madhofal, H.B No. 124, Opp. Lincolin college of law, Sirhind. PIN: 140407. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0096';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SINGLA BUILDER AND PROMOTERS LIMITED (Other than Individual)","address":"VILLAGE RONI, MC DERABASSI","pin_code":"140603","registration_date":"15-Sep-2017","valid_upto":"31-Mar-2023"}'::jsonb;
  v_desc := 'Promoter: SINGLA BUILDER AND PROMOTERS LIMITED (Other than Individual). Address: VILLAGE RONI, MC DERABASSI. PIN: 140603. Valid upto: 31-Mar-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0347';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Greater Mohali Area Development Authority (GMADA) (Other than Individual)","address":"Eco City 2 Extension, New Chandigarh","pin_code":"140901","registration_date":"27-Apr-2018","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Greater Mohali Area Development Authority (GMADA) (Other than Individual). Address: Eco City 2 Extension, New Chandigarh. PIN: 140901. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0375';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ROYALE GARDNES (Other than Individual)","address":"VILLAGE KARALA, ZIRAKPUR - BANUR HIGHWAY","pin_code":"140603","registration_date":"18-Jul-2018","valid_upto":"15-Mar-2020"}'::jsonb;
  v_desc := 'Promoter: ROYALE GARDNES (Other than Individual). Address: VILLAGE KARALA, ZIRAKPUR - BANUR HIGHWAY. PIN: 140603. Valid upto: 15-Mar-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-RPR70-PR0366';
  v_meta := '{"district":"Rupnagar (Ropar)","promoter":"Ropar Properties & Builders Pvt Ltd (Other than Individual)","address":"Gobind Enclave Extension, H.B. No. 44, Near Nangal Chowk","pin_code":"140001","website":"http://www.gobindvalley.com","registration_date":"21-Jun-2018","valid_upto":"30-Jun-2020"}'::jsonb;
  v_desc := 'Promoter: Ropar Properties & Builders Pvt Ltd (Other than Individual). Address: Gobind Enclave Extension, H.B. No. 44, Near Nangal Chowk. PIN: 140001. Valid upto: 30-Jun-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0310';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Vera Developeres Pvt. Ltd. (Other than Individual)","address":"Near TDI Club House, Sector 117","pin_code":"160055","website":"www.pregtigetowers.in","registration_date":"07-Mar-2018","valid_upto":"31-Jul-2020"}'::jsonb;
  v_desc := 'Promoter: Vera Developeres Pvt. Ltd. (Other than Individual). Address: Near TDI Club House, Sector 117. PIN: 160055. Valid upto: 31-Jul-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0084';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sushma Buildtech Limited (Other than Individual)","address":"Village Gazipur - Kishanpura, Sushma Square, Dhakoli, Zirakpur","pin_code":"140603","registration_date":"17-Oct-2017","valid_upto":"29-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: Sushma Buildtech Limited (Other than Individual). Address: Village Gazipur - Kishanpura, Sushma Square, Dhakoli, Zirakpur. PIN: 140603. Valid upto: 29-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0358';
  v_meta := '{"district":"Jalandhar","promoter":"MILLENNIUM REAL ESTATE DEVELOPERS PVT LTD. (Other than Individual)","address":"THE GREEN COUNTY, UNIVERSITY ROAD, LADHEWALI","pin_code":"144009","website":"www.thegreencounty.in","registration_date":"11-May-2018","valid_upto":"19-Feb-2023"}'::jsonb;
  v_desc := 'Promoter: MILLENNIUM REAL ESTATE DEVELOPERS PVT LTD. (Other than Individual). Address: THE GREEN COUNTY, UNIVERSITY ROAD, LADHEWALI. PIN: 144009. Valid upto: 19-Feb-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0368';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Greater Mohali Area Development Authority (GMADA) (Other than Individual)","address":"Aerocity","pin_code":"140603","registration_date":"06-Jul-2018","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Greater Mohali Area Development Authority (GMADA) (Other than Individual). Address: Aerocity. PIN: 140603. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0363';
  v_meta := '{"district":"Jalandhar","promoter":"M.K Land Developers (Other than Individual)","address":"Vill-Barsal & Vill-Udhopur","pin_code":"144020","registration_date":"01-Jun-2018","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: M.K Land Developers (Other than Individual). Address: Vill-Barsal & Vill-Udhopur. PIN: 144020. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0194';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"Village - Aujla, Tehsil-Kharar, SAS Nagar, Mohali.","pin_code":"140301","website":"www.gbpgroup.in","registration_date":"08-Nov-2017","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: GUPTA BUILDERS AND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: Village - Aujla, Tehsil-Kharar, SAS Nagar, Mohali.. PIN: 140301. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL34-PR0372';
  v_meta := '{"district":"Jalandhar","promoter":"Shourya Towers Pvt. Ltd. (Other than Individual)","address":"Adjoining Surya Enclave, Near trinity Collage, Amritsar by pass Road","pin_code":"144009","registration_date":"16-Jul-2018","valid_upto":"10-Oct-2022"}'::jsonb;
  v_desc := 'Promoter: Shourya Towers Pvt. Ltd. (Other than Individual). Address: Adjoining Surya Enclave, Near trinity Collage, Amritsar by pass Road. PIN: 144009. Valid upto: 10-Oct-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR77-PR0371';
  v_meta := '{"district":"Sangrur","promoter":"Grewal Constructions Pvt. Ltd (Other than Individual)","address":"Village Akoi, sangrur-Dhuri","pin_code":"148001","registration_date":"16-Jul-2018","valid_upto":"30-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Grewal Constructions Pvt. Ltd (Other than Individual). Address: Village Akoi, sangrur-Dhuri. PIN: 148001. Valid upto: 30-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-RPR70-PR0364';
  v_meta := '{"district":"Rupnagar (Ropar)","promoter":"Ropar Properties & Builders Pvt Ltd (Other than Individual)","address":"Sun City Extension II, Village Chhoti Haveli","pin_code":"140001","registration_date":"07-Jun-2018","valid_upto":"29-Jun-2020"}'::jsonb;
  v_desc := 'Promoter: Ropar Properties & Builders Pvt Ltd (Other than Individual). Address: Sun City Extension II, Village Chhoti Haveli. PIN: 140001. Valid upto: 29-Jun-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0374';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Golden Tone Cooperative House Building Society Ltd. (Other than Individual)","address":"Plot No. 187, Sector 80, Mohali","pin_code":"140308","registration_date":"17-Jul-2018","valid_upto":"31-Aug-2018"}'::jsonb;
  v_desc := 'Promoter: Golden Tone Cooperative House Building Society Ltd. (Other than Individual). Address: Plot No. 187, Sector 80, Mohali. PIN: 140308. Valid upto: 31-Aug-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL65-PR0369';
  v_meta := '{"district":"Patiala","promoter":"Parsvnath Developers Ltd (Other than Individual)","address":"Village Dharia KM 216, G T Road Rajpura","pin_code":"140401","website":"http://www.parsvnath.com/","registration_date":"12-Sep-2018","valid_upto":"30-Sep-2020"}'::jsonb;
  v_desc := 'Promoter: Parsvnath Developers Ltd (Other than Individual). Address: Village Dharia KM 216, G T Road Rajpura. PIN: 140401. Valid upto: 30-Sep-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  RAISE NOTICE 'Part 6: updated % projects', v_updated;
END $$;