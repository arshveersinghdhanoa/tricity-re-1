-- 0009_fix_metadata_part11.sql
-- Projects 2001 to 2018
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

  v_rera := 'PBRERA-SAS81-PR0401';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"JOY HOMES (Other than Individual)","address":"PLOT NO. F2/0166 & F2/0167 SECTOR 85 WAVE ESTATE SAS NAGAR MOHALI","pin_code":"140308","registration_date":"26-Nov-2018","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: JOY HOMES (Other than Individual). Address: PLOT NO. F2/0166 & F2/0167 SECTOR 85 WAVE ESTATE SAS NAGAR MOHALI. PIN: 140308. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0399';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ESS AAR INFRA (Other than Individual)","address":"Vill-Santemajra, kharar Landran Road, Kharar","pin_code":"140301","registration_date":"01-Nov-2018","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: ESS AAR INFRA (Other than Individual). Address: Vill-Santemajra, kharar Landran Road, Kharar. PIN: 140301. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0398';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AMBIKA REALCON DEVELOPERS  PRIVATE LIMITED (Other than Individual)","address":"GROUP HOUSING SITE NO 2, IT CITY, SECTOR 66 - B,","pin_code":"160055","website":"www.ambikarealcon.com","registration_date":"01-Nov-2018","valid_upto":"31-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: AMBIKA REALCON DEVELOPERS  PRIVATE LIMITED (Other than Individual). Address: GROUP HOUSING SITE NO 2, IT CITY, SECTOR 66 - B,. PIN: 160055. Valid upto: 31-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0395';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Boparai Developers (Other than Individual)","address":"Sector 127, Santemajra, Kharar","pin_code":"140307","registration_date":"25-Oct-2018","valid_upto":"26-Aug-2021"}'::jsonb;
  v_desc := 'Promoter: Boparai Developers (Other than Individual). Address: Sector 127, Santemajra, Kharar. PIN: 140307. Valid upto: 26-Aug-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PM0118';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GILLCO DEVELOPERS & BUILDERS PVT LTD (Other than Individual)","address":"VILLAGE MANAKPUR KALLAR","pin_code":"140306","registration_date":"20-Aug-2018","valid_upto":"30-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: GILLCO DEVELOPERS & BUILDERS PVT LTD (Other than Individual). Address: VILLAGE MANAKPUR KALLAR. PIN: 140306. Valid upto: 30-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PR0393';
  v_meta := '{"district":"Barnala","promoter":"Curo India Private Limited (Other than Individual)","address":"Village Dhanaula Khurd","pin_code":"148107","registration_date":"11-Oct-2018","valid_upto":"31-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: Curo India Private Limited (Other than Individual). Address: Village Dhanaula Khurd. PIN: 148107. Valid upto: 31-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PR0392';
  v_meta := '{"district":"Barnala","promoter":"Vyoman Investment and Leasing Pvt. Ltd. (Other than Individual)","address":"Dynamic Homes Phase-2, Village Dhanaula Khurd","pin_code":"148107","registration_date":"11-Oct-2018","valid_upto":"31-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: Vyoman Investment and Leasing Pvt. Ltd. (Other than Individual). Address: Dynamic Homes Phase-2, Village Dhanaula Khurd. PIN: 148107. Valid upto: 31-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0386';
  v_meta := '{"district":"Ludhiana","promoter":"Ireo Waterfront Pvt Ltd (Other than Individual)","address":"Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.","pin_code":"141001","website":"www.ireowaterfont.com","registration_date":"29-Aug-2018","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: Ireo Waterfront Pvt Ltd (Other than Individual). Address: Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.. PIN: 141001. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0380';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Vision India Colonizers Pvt. Ltd. (Other than Individual)","address":"Village Khanpur, Kharar-Ropar Highway, NH-21","pin_code":"140301","website":"www.visionindiagroup.com","registration_date":"09-Aug-2018","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Vision India Colonizers Pvt. Ltd. (Other than Individual). Address: Village Khanpur, Kharar-Ropar Highway, NH-21. PIN: 140301. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0383';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ACME HEIGHTS INFRASTRUCTURE PRIVATE LIMITED (Other than Individual)","address":"SECTOR 92 GREATER MOHALI","pin_code":"140307","registration_date":"24-Aug-2018","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: ACME HEIGHTS INFRASTRUCTURE PRIVATE LIMITED (Other than Individual). Address: SECTOR 92 GREATER MOHALI. PIN: 140307. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0387';
  v_meta := '{"district":"Ludhiana","promoter":"Ireo Waterfront Pvt Ltd (Other than Individual)","address":"Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.","pin_code":"141001","website":"www.ireowaterfont.com","registration_date":"29-Aug-2018","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: Ireo Waterfront Pvt Ltd (Other than Individual). Address: Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.. PIN: 141001. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0376';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"skyline infratech (Other than Individual)","address":"VILLAGE RAMGARH BHUDDA VIP ROAD ZIRAKPUR","pin_code":"140603","registration_date":"02-Aug-2018","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: skyline infratech (Other than Individual). Address: VILLAGE RAMGARH BHUDDA VIP ROAD ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT40-PR0384';
  v_meta := '{"district":"Kapurthala","promoter":"G.R.D INFRA (Other than Individual)","address":"VILLAGE - MEHERU, H.B NO. 84, TEHSIL PHAGWARA, DISTRICT KAPURTHALA","pin_code":"144411","registration_date":"24-Aug-2018","valid_upto":"19-Jun-2023"}'::jsonb;
  v_desc := 'Promoter: G.R.D INFRA (Other than Individual). Address: VILLAGE - MEHERU, H.B NO. 84, TEHSIL PHAGWARA, DISTRICT KAPURTHALA. PIN: 144411. Valid upto: 19-Jun-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0385';
  v_meta := '{"district":"Ludhiana","promoter":"Ireo Waterfront Pvt Ltd (Other than Individual)","address":"Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.","pin_code":"141001","website":"www.ireowaterfont.com","registration_date":"29-Aug-2018","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: Ireo Waterfront Pvt Ltd (Other than Individual). Address: Ireo Waterfront, Sidhwan Canal Road, Off Ferozpur Road ,Village Dewatwal.. PIN: 141001. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0079';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"BB Developers (Other than Individual)","address":"Ambala-Chandigarh, Highway, Opposite GBP Centrum Zirakpur","pin_code":"140603","registration_date":"06-Sep-2018","valid_upto":"31-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: BB Developers (Other than Individual). Address: Ambala-Chandigarh, Highway, Opposite GBP Centrum Zirakpur. PIN: 140603. Valid upto: 31-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PM0119';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omni Pacific Colonizers Pvt Ltd (Other than Individual)","address":"Amayra city, vill aujla","pin_code":"140301","registration_date":"20-Aug-2018","valid_upto":"31-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: Omni Pacific Colonizers Pvt Ltd (Other than Individual). Address: Amayra city, vill aujla. PIN: 140301. Valid upto: 31-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR03-PM0099';
  v_meta := '{"district":"Amritsar","promoter":"VEER COLONISERS AND BUILDERS PVT. LTD. (Other than Individual)","address":"VILLAGE NAUSHEHRA, MAJITHA ROAD","pin_code":"143001","registration_date":"11-Jun-2018","valid_upto":"30-Apr-2023"}'::jsonb;
  v_desc := 'Promoter: VEER COLONISERS AND BUILDERS PVT. LTD. (Other than Individual). Address: VILLAGE NAUSHEHRA, MAJITHA ROAD. PIN: 143001. Valid upto: 30-Apr-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0077';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jubilee Infra Planner LLP (Other than Individual)","address":"Block E, Aerocity, SAS Nagar","pin_code":"160055","registration_date":"11-Jun-2018","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: Jubilee Infra Planner LLP (Other than Individual). Address: Block E, Aerocity, SAS Nagar. PIN: 160055. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  RAISE NOTICE 'Part 11: updated % projects', v_updated;
END $$;