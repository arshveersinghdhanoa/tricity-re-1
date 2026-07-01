-- 0009_fix_metadata_part05.sql
-- Projects 801 to 1000
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

  v_rera := 'PBRERA-LDH45-PC0207';
  v_meta := '{"district":"Ludhiana","promoter":"GURBIR SINGH KAHLON (Individual)","address":"VILLAGE BRAHMAN MAJRA","pin_code":"141204","registration_date":"06-May-2024","valid_upto":"05-Feb-2029"}'::jsonb;
  v_desc := 'Promoter: GURBIR SINGH KAHLON (Individual). Address: VILLAGE BRAHMAN MAJRA. PIN: 141204. Valid upto: 05-Feb-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0915';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Roseate Buildetech LLP (Other than Individual)","address":"Village Gazipur HB NO. 50, MC Zirakpur, East VIP Road, Zirakpur","pin_code":"140603","registration_date":"03-May-2024","valid_upto":"31-Mar-2025"}'::jsonb;
  v_desc := 'Promoter: Roseate Buildetech LLP (Other than Individual). Address: Village Gazipur HB NO. 50, MC Zirakpur, East VIP Road, Zirakpur. PIN: 140603. Valid upto: 31-Mar-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR77-PR0901';
  v_meta := '{"district":"Sangrur","promoter":"Suraj Builders & Developers (Other than Individual)","address":"Village Sohian , Sangrur, Punjab","pin_code":"148001","registration_date":"02-May-2024","valid_upto":"16-Feb-2028"}'::jsonb;
  v_desc := 'Promoter: Suraj Builders & Developers (Other than Individual). Address: Village Sohian , Sangrur, Punjab. PIN: 148001. Valid upto: 16-Feb-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0911';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ALTUS SPACE BUILDERS PRIVATE LIMITED (Other than Individual)","address":"Salamatpur, Rasulpur, New Chandigarh, Mullanpur","pin_code":"140301","registration_date":"03-May-2024","valid_upto":"15-Apr-2029"}'::jsonb;
  v_desc := 'Promoter: ALTUS SPACE BUILDERS PRIVATE LIMITED (Other than Individual). Address: Salamatpur, Rasulpur, New Chandigarh, Mullanpur. PIN: 140301. Valid upto: 15-Apr-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0912';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ALTUS SPACE BUILDERS PRIVATE LIMITED (Other than Individual)","address":"Village Sainimajra, Mullanpur, New Chandigarh","pin_code":"140901","registration_date":"03-May-2024","valid_upto":"14-Dec-2028"}'::jsonb;
  v_desc := 'Promoter: ALTUS SPACE BUILDERS PRIVATE LIMITED (Other than Individual). Address: Village Sainimajra, Mullanpur, New Chandigarh. PIN: 140901. Valid upto: 14-Dec-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0914';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"THE GREATER PUNJAB OFFICERS CO-OP HOUSE BUILDING SOCIETY  LTD (Other than Individual)","address":"VILLAGE: SALAMATPUR, RASULPUR, DHODEMAJRA, MULLANPUR","pin_code":"140901","registration_date":"03-May-2024","valid_upto":"23-Apr-2029"}'::jsonb;
  v_desc := 'Promoter: THE GREATER PUNJAB OFFICERS CO-OP HOUSE BUILDING SOCIETY  LTD (Other than Individual). Address: VILLAGE: SALAMATPUR, RASULPUR, DHODEMAJRA, MULLANPUR. PIN: 140901. Valid upto: 23-Apr-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0913';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ALTUS SPACE BUILDERS PVT. LTD (Other than Individual)","address":"Village Gandoli, HB NO. 169, Tehsil Kharar","pin_code":"140301","registration_date":"03-May-2024","valid_upto":"15-Apr-2029"}'::jsonb;
  v_desc := 'Promoter: ALTUS SPACE BUILDERS PVT. LTD (Other than Individual). Address: Village Gandoli, HB NO. 169, Tehsil Kharar. PIN: 140301. Valid upto: 15-Apr-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0902';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Altus Space Builders Pvt Ltd (Other than Individual)","address":"Village - Sainimajra","pin_code":"140301","website":"http://altusnewchandigarh.in/","registration_date":"03-May-2024","valid_upto":"03-Sep-2028"}'::jsonb;
  v_desc := 'Promoter: Altus Space Builders Pvt Ltd (Other than Individual). Address: Village - Sainimajra. PIN: 140301. Valid upto: 03-Sep-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0906';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Altus Space Builders Pvt Ltd (Other than Individual)","address":"Village - Ghandoli,New Chandigarh,Mohali","pin_code":"140301","website":"http://altusnewchandigarh.in/","registration_date":"03-May-2024","valid_upto":"02-Sep-2028"}'::jsonb;
  v_desc := 'Promoter: Altus Space Builders Pvt Ltd (Other than Individual). Address: Village - Ghandoli,New Chandigarh,Mohali. PIN: 140301. Valid upto: 02-Sep-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0907';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ALTUS SPACE BUILDERS PRIVATE LIMITED (Other than Individual)","address":"Village Sainimajra, Mullanpur, New Chandigarh","pin_code":"140901","registration_date":"03-May-2024","valid_upto":"18-Dec-2028"}'::jsonb;
  v_desc := 'Promoter: ALTUS SPACE BUILDERS PRIVATE LIMITED (Other than Individual). Address: Village Sainimajra, Mullanpur, New Chandigarh. PIN: 140901. Valid upto: 18-Dec-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0908';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ALTUS SPACE BUILDERS PRIVATE LIMITED (Other than Individual)","address":"Village Sainimajra, Mullanpur, New Chandigarh","pin_code":"140901","registration_date":"03-May-2024","valid_upto":"18-Dec-2028"}'::jsonb;
  v_desc := 'Promoter: ALTUS SPACE BUILDERS PRIVATE LIMITED (Other than Individual). Address: Village Sainimajra, Mullanpur, New Chandigarh. PIN: 140901. Valid upto: 18-Dec-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0903';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Altus Space Builders Pvt Ltd (Other than Individual)","address":"Village - Sainimajra","pin_code":"140301","website":"http://altusnewchandigarh.in/","registration_date":"03-May-2024","valid_upto":"03-Sep-2028"}'::jsonb;
  v_desc := 'Promoter: Altus Space Builders Pvt Ltd (Other than Individual). Address: Village - Sainimajra. PIN: 140301. Valid upto: 03-Sep-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0205';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ALTUS SPACE BUILDERS PRIVATE LIMITED (Other than Individual)","address":"SECTOR-20, NEW CHANDIGARH","pin_code":"140901","registration_date":"02-May-2024","valid_upto":"14-Dec-2028"}'::jsonb;
  v_desc := 'Promoter: ALTUS SPACE BUILDERS PRIVATE LIMITED (Other than Individual). Address: SECTOR-20, NEW CHANDIGARH. PIN: 140901. Valid upto: 14-Dec-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0904';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ALTUS SPACE BUILDERS PRIVATE LIMITED (Other than Individual)","address":"SECTOR 15, NEW CHANDIGARH","pin_code":"140901","registration_date":"03-May-2024","valid_upto":"21-Dec-2028"}'::jsonb;
  v_desc := 'Promoter: ALTUS SPACE BUILDERS PRIVATE LIMITED (Other than Individual). Address: SECTOR 15, NEW CHANDIGARH. PIN: 140901. Valid upto: 21-Dec-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0905';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Altus Space Builders Pvt Ltd (Other than Individual)","address":"Village - Ghandoli,Bhagatmajra,Sangala,Palheri","pin_code":"140301","registration_date":"03-May-2024","valid_upto":"22-Aug-2028"}'::jsonb;
  v_desc := 'Promoter: Altus Space Builders Pvt Ltd (Other than Individual). Address: Village - Ghandoli,Bhagatmajra,Sangala,Palheri. PIN: 140301. Valid upto: 22-Aug-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PC0204';
  v_meta := '{"district":"Ludhiana","promoter":"Hardeep Singh Grewal (Individual)","address":"Situated on Ludhiana-Chandigarh Road, Village Jamalpur Awana, Hadbast No. 177","pin_code":"141010","registration_date":"02-May-2024","valid_upto":"25-Oct-2028"}'::jsonb;
  v_desc := 'Promoter: Hardeep Singh Grewal (Individual). Address: Situated on Ludhiana-Chandigarh Road, Village Jamalpur Awana, Hadbast No. 177. PIN: 141010. Valid upto: 25-Oct-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0893';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SUMAN DIVINE HOMES (Other than Individual)","address":"VILLAGE RAMGHAR BHUDDA, ZIRAKPUR","pin_code":"140603","registration_date":"03-May-2024","valid_upto":"23-Dec-2027"}'::jsonb;
  v_desc := 'Promoter: SUMAN DIVINE HOMES (Other than Individual). Address: VILLAGE RAMGHAR BHUDDA, ZIRAKPUR. PIN: 140603. Valid upto: 23-Dec-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PI0020';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Royale Estate Group (Other than Individual)","address":"Village budhanpur, Khalawar, Basma, Distt SAS Nagar, Viilage Kheri Gurna Distt. Patiala","pin_code":"140417","registration_date":"02-May-2024","valid_upto":"01-Dec-2027"}'::jsonb;
  v_desc := 'Promoter: Royale Estate Group (Other than Individual). Address: Village budhanpur, Khalawar, Basma, Distt SAS Nagar, Viilage Kheri Gurna Distt. Patiala. PIN: 140417. Valid upto: 01-Dec-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0909';
  v_meta := '{"district":"Ludhiana","promoter":"WORLDNEXT REALTY LLP (Other than Individual)","address":"Village Bagga Kalan, Ludhiana West","pin_code":"141001","registration_date":"03-May-2024","valid_upto":"27-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: WORLDNEXT REALTY LLP (Other than Individual). Address: Village Bagga Kalan, Ludhiana West. PIN: 141001. Valid upto: 27-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-RPR70-PR0900';
  v_meta := '{"district":"Rupnagar (Ropar)","promoter":"LOTUS CREATORS AND DEVELOPERS (Other than Individual)","address":"ROPAR BYPASS TO COLLEGE ROAD","pin_code":"140001","registration_date":"02-May-2024","valid_upto":"27-Oct-2028"}'::jsonb;
  v_desc := 'Promoter: LOTUS CREATORS AND DEVELOPERS (Other than Individual). Address: ROPAR BYPASS TO COLLEGE ROAD. PIN: 140001. Valid upto: 27-Oct-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0203';
  v_meta := '{"district":"Ludhiana","promoter":"Gulab Valley Housing Pvt. Ltd. (Other than Individual)","address":"River Heights, South City,, Village Birmi, Mullanpur-Dakha","pin_code":"141001","registration_date":"26-Apr-2024","valid_upto":"10-Jul-2028"}'::jsonb;
  v_desc := 'Promoter: Gulab Valley Housing Pvt. Ltd. (Other than Individual). Address: River Heights, South City,, Village Birmi, Mullanpur-Dakha. PIN: 141001. Valid upto: 10-Jul-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR0899';
  v_meta := '{"district":"Ludhiana","promoter":"ELYSIAN HOMES (Other than Individual)","address":"Sangowal Road,, Sangowal","pin_code":"141016","registration_date":"25-Apr-2024","valid_upto":"31-May-2028"}'::jsonb;
  v_desc := 'Promoter: ELYSIAN HOMES (Other than Individual). Address: Sangowal Road,, Sangowal. PIN: 141016. Valid upto: 31-May-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0895';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Premia Realtors Private Limited (Other than Individual)","address":"Village Jandpur, Hadbast No. 28, Tehsil Kharar","pin_code":"140301","registration_date":"25-Apr-2024","valid_upto":"31-Dec-2026"}'::jsonb;
  v_desc := 'Promoter: Premia Realtors Private Limited (Other than Individual). Address: Village Jandpur, Hadbast No. 28, Tehsil Kharar. PIN: 140301. Valid upto: 31-Dec-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PC0199';
  v_meta := '{"district":"Ludhiana","promoter":"ELYSIAN GROUP (Other than Individual)","address":"Sidhwan Canal Highway, Village Gill-I","pin_code":"141003","registration_date":"25-Apr-2024","valid_upto":"31-Dec-2028"}'::jsonb;
  v_desc := 'Promoter: ELYSIAN GROUP (Other than Individual). Address: Sidhwan Canal Highway, Village Gill-I. PIN: 141003. Valid upto: 31-Dec-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0201';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"BANSAL LAND PROMOTERS PRIVATE LIMITED (Other than Individual)","address":"HB No. 19, NR. INDUS HOSPITAL, VILL JANETPUR,","pin_code":"140506","registration_date":"25-Apr-2024","valid_upto":"01-Sep-2028"}'::jsonb;
  v_desc := 'Promoter: BANSAL LAND PROMOTERS PRIVATE LIMITED (Other than Individual). Address: HB No. 19, NR. INDUS HOSPITAL, VILL JANETPUR,. PIN: 140506. Valid upto: 01-Sep-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0197';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SHUDH GOLD (Other than Individual)","address":". AEROPLAZA, Pocket No, 1, Block g, Aerocity, Mohali","pin_code":"140603","registration_date":"25-Apr-2024","valid_upto":"30-Apr-2028"}'::jsonb;
  v_desc := 'Promoter: SHUDH GOLD (Other than Individual). Address: . AEROPLAZA, Pocket No, 1, Block g, Aerocity, Mohali. PIN: 140603. Valid upto: 30-Apr-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PR0897';
  v_meta := '{"district":"Patiala","promoter":"Piara Lal Ram Phal & Co (Other than Individual)","address":"Village Hassanpur Prohtaan (H. B. No. 25), Tehsil & Distt. Patiala","pin_code":"147001","registration_date":"25-Apr-2024","valid_upto":"04-Jun-2028"}'::jsonb;
  v_desc := 'Promoter: Piara Lal Ram Phal & Co (Other than Individual). Address: Village Hassanpur Prohtaan (H. B. No. 25), Tehsil & Distt. Patiala. PIN: 147001. Valid upto: 04-Jun-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0200';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"JMR Group Proprietor Sh.Manjit Singh (Other than Individual)","address":"H.B.No. 46, VILLAGE LOHGARH, Zirakpur","pin_code":"140603","registration_date":"25-Apr-2024","valid_upto":"28-Oct-2025"}'::jsonb;
  v_desc := 'Promoter: JMR Group Proprietor Sh.Manjit Singh (Other than Individual). Address: H.B.No. 46, VILLAGE LOHGARH, Zirakpur. PIN: 140603. Valid upto: 28-Oct-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0892';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"7C REALTY MANAGEMENT PRIVATE LIMITED  (Other than Individual)","address":"Village-Naugyari,H.B.NO-282,Tehsil-Mohali.","pin_code":"140306","registration_date":"23-Apr-2024","valid_upto":"02-Oct-2024"}'::jsonb;
  v_desc := 'Promoter: 7C REALTY MANAGEMENT PRIVATE LIMITED  (Other than Individual). Address: Village-Naugyari,H.B.NO-282,Tehsil-Mohali.. PIN: 140306. Valid upto: 02-Oct-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL65-PR0898';
  v_meta := '{"district":"Patiala","promoter":"PAMPOSH TOWN PLANNERS PRIVATE LIMITED (Other than Individual)","address":"CONNAUGHT ESTATE, RAJPURA TOWN NEAR JUDICIAL COMPLEX RAJPURA","pin_code":"140401","website":"www.connaughtestaterajpura.com","registration_date":"23-Apr-2024","valid_upto":"16-Feb-2029"}'::jsonb;
  v_desc := 'Promoter: PAMPOSH TOWN PLANNERS PRIVATE LIMITED (Other than Individual). Address: CONNAUGHT ESTATE, RAJPURA TOWN NEAR JUDICIAL COMPLEX RAJPURA. PIN: 140401. Valid upto: 16-Feb-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0198';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MONGA INFRATECH (Other than Individual)","address":"Village Chapar Chiri Khurd, Kharar Landran Road, Sector-115, S.A.S. Nagar Mohali,","pin_code":"140307","registration_date":"23-Apr-2024","valid_upto":"01-Nov-2026"}'::jsonb;
  v_desc := 'Promoter: MONGA INFRATECH (Other than Individual). Address: Village Chapar Chiri Khurd, Kharar Landran Road, Sector-115, S.A.S. Nagar Mohali,. PIN: 140307. Valid upto: 01-Nov-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0896';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"NANDITA APARTMENTS AND LAND DEVELOPERS PVT LTD (Other than Individual)","address":"Adjoining Metro Town, Kishanpura, Bollywood Heights, Peer Muchalla, Zirakpur","pin_code":"140603","registration_date":"23-Apr-2024","valid_upto":"30-Mar-2028"}'::jsonb;
  v_desc := 'Promoter: NANDITA APARTMENTS AND LAND DEVELOPERS PVT LTD (Other than Individual). Address: Adjoining Metro Town, Kishanpura, Bollywood Heights, Peer Muchalla, Zirakpur. PIN: 140603. Valid upto: 30-Mar-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL20-PR0891';
  v_meta := '{"district":"Fazilka","promoter":"Sandeep  Gilhotra (Individual)","address":"Mouzam Road, Near MR Enclave, Village Sultanpura","pin_code":"152123","registration_date":"18-Apr-2024","valid_upto":"31-Jul-2026"}'::jsonb;
  v_desc := 'Promoter: Sandeep  Gilhotra (Individual). Address: Mouzam Road, Near MR Enclave, Village Sultanpura. PIN: 152123. Valid upto: 31-Jul-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PI0017';
  v_meta := '{"district":"Ludhiana","promoter":"CIRCLE LAND DEVELOPERS (Other than Individual)","address":"Village Seerah, H.B.No.72 & Village Khawjke, H.B.No.65, Ludhiana East","pin_code":"141001","registration_date":"18-Apr-2024","valid_upto":"05-Nov-2028"}'::jsonb;
  v_desc := 'Promoter: CIRCLE LAND DEVELOPERS (Other than Individual). Address: Village Seerah, H.B.No.72 & Village Khawjke, H.B.No.65, Ludhiana East. PIN: 141001. Valid upto: 05-Nov-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR0888';
  v_meta := '{"district":"Ludhiana","promoter":"Gulab Valley Housing Pvt. Ltd. (Other than Individual)","address":"River Heights, South City,, Village Birmi, Mullanpur-Dakha","pin_code":"141001","registration_date":"19-Apr-2024","valid_upto":"10-Jul-2028"}'::jsonb;
  v_desc := 'Promoter: Gulab Valley Housing Pvt. Ltd. (Other than Individual). Address: River Heights, South City,, Village Birmi, Mullanpur-Dakha. PIN: 141001. Valid upto: 10-Jul-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0852';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Malwa Projects Private Limited (Other than Individual)","address":"Village Chhat, Patiala Road, Dera Bassi,, Distt. Sahibzada Ajit Singh Nagar (Mohali)","pin_code":"140603","registration_date":"10-May-2023","valid_upto":"31-Dec-2026"}'::jsonb;
  v_desc := 'Promoter: Malwa Projects Private Limited (Other than Individual). Address: Village Chhat, Patiala Road, Dera Bassi,, Distt. Sahibzada Ajit Singh Nagar (Mohali). PIN: 140603. Valid upto: 31-Dec-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR01-PR0713';
  v_meta := '{"district":"Amritsar","promoter":"Nijjar Realtors (Other than Individual)","address":"VPO Ajnala,, Main Ajnala-Amritsar Road,","pin_code":"143102","registration_date":"03-Jun-2021","valid_upto":"27-Jul-2025"}'::jsonb;
  v_desc := 'Promoter: Nijjar Realtors (Other than Individual). Address: VPO Ajnala,, Main Ajnala-Amritsar Road,. PIN: 143102. Valid upto: 27-Jul-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR0881';
  v_meta := '{"district":"Bathinda","promoter":"AGGARWAL BUILDERS & PROMOTERS (Other than Individual)","address":"Malout Road, Bathinda","pin_code":"151001","registration_date":"08-Jan-2024","valid_upto":"31-Mar-2025"}'::jsonb;
  v_desc := 'Promoter: AGGARWAL BUILDERS & PROMOTERS (Other than Individual). Address: Malout Road, Bathinda. PIN: 151001. Valid upto: 31-Mar-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MNS49-PR0887';
  v_meta := '{"district":"Mansa","promoter":"GARG LAND PROMOTERS (Other than Individual)","address":"BUDHLADA, DISTT MANSA","pin_code":"151502","registration_date":"08-Jan-2024","valid_upto":"28-Aug-2028"}'::jsonb;
  v_desc := 'Promoter: GARG LAND PROMOTERS (Other than Individual). Address: BUDHLADA, DISTT MANSA. PIN: 151502. Valid upto: 28-Aug-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0193';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MS DEVELOPERS  (Other than Individual)","address":"VILLAGE GAZIPUR , HADBAST NO. 50, ZIRAKPUR","pin_code":"140603","registration_date":"08-Jan-2024","valid_upto":"18-Jun-2028"}'::jsonb;
  v_desc := 'Promoter: MS DEVELOPERS  (Other than Individual). Address: VILLAGE GAZIPUR , HADBAST NO. 50, ZIRAKPUR. PIN: 140603. Valid upto: 18-Jun-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0880';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MS DEVELOPERS  (Other than Individual)","address":"H.B.No. 50, VILLAGE GAZIPUR, ZIRAKPUR","pin_code":"140603","registration_date":"08-Jan-2024","valid_upto":"10-Jun-2028"}'::jsonb;
  v_desc := 'Promoter: MS DEVELOPERS  (Other than Individual). Address: H.B.No. 50, VILLAGE GAZIPUR, ZIRAKPUR. PIN: 140603. Valid upto: 10-Jun-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0879';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SRV INFRASTRUCTURE (Other than Individual)","address":"Village Padiala, Ward No. 9, Kurali, Tehsil Kharar","pin_code":"140103","registration_date":"08-Jan-2024","valid_upto":"12-Mar-2028"}'::jsonb;
  v_desc := 'Promoter: SRV INFRASTRUCTURE (Other than Individual). Address: Village Padiala, Ward No. 9, Kurali, Tehsil Kharar. PIN: 140103. Valid upto: 12-Mar-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0889';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GARG BUILDERS AND PROMOTERS LLP (Other than Individual)","address":"GROUP HOUSING CHUNK SITE NO. 07, BLOCK-C, IT CITY, SECTOR-83 ALPHA","pin_code":"140308","registration_date":"08-Jan-2024","valid_upto":"31-Dec-2030"}'::jsonb;
  v_desc := 'Promoter: GARG BUILDERS AND PROMOTERS LLP (Other than Individual). Address: GROUP HOUSING CHUNK SITE NO. 07, BLOCK-C, IT CITY, SECTOR-83 ALPHA. PIN: 140308. Valid upto: 31-Dec-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0885';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Integrated Residential Township, New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"08-Jan-2024","valid_upto":"31-Jan-2028"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Integrated Residential Township, New Chandigarh. PIN: 140901. Valid upto: 31-Jan-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0195';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Integrated Residential Township,, New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"08-Jan-2024","valid_upto":"30-Sep-2028"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Integrated Residential Township,, New Chandigarh. PIN: 140901. Valid upto: 30-Sep-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0884';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Integrated Residential Township, New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"08-Jan-2024","valid_upto":"30-Apr-2028"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Integrated Residential Township, New Chandigarh. PIN: 140901. Valid upto: 30-Apr-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0883';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Integrated Residential Township, New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"08-Jan-2024","valid_upto":"30-Apr-2028"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Integrated Residential Township, New Chandigarh. PIN: 140901. Valid upto: 30-Apr-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-KPT39-PR0882';
  v_meta := '{"district":"Kapurthala","promoter":"SAFFRON INFRAPROJECTS INDIA LIMITED (Other than Individual)","address":"SAFFRON RESIDENCY, NEAR RAMADA HOTEL, WADALA KALAN, KAPURTHALA","pin_code":"144601","website":"https://www.saffronhomes.in/","registration_date":"08-Jan-2024","valid_upto":"29-Jun-2026"}'::jsonb;
  v_desc := 'Promoter: SAFFRON INFRAPROJECTS INDIA LIMITED (Other than Individual). Address: SAFFRON RESIDENCY, NEAR RAMADA HOTEL, WADALA KALAN, KAPURTHALA. PIN: 144601. Valid upto: 29-Jun-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0529';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Malwa Projects Private Limited (Other than Individual)","address":"Village Chhat, Patiala Road, Dera Bassi, Distt. Sahibzada Ajit Singh Nagar (Mohali)","pin_code":"140603","registration_date":"04-Oct-2019","valid_upto":"31-May-2025"}'::jsonb;
  v_desc := 'Promoter: Malwa Projects Private Limited (Other than Individual). Address: Village Chhat, Patiala Road, Dera Bassi, Distt. Sahibzada Ajit Singh Nagar (Mohali). PIN: 140603. Valid upto: 31-May-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PR0874';
  v_meta := '{"district":"Barnala","promoter":"OSWAL GREENTECH LIMITED (Other than Individual)","address":"Village Harigarh, Raikot Barnala Road","pin_code":"148101","registration_date":"24-Nov-2023","valid_upto":"31-Dec-2024"}'::jsonb;
  v_desc := 'Promoter: OSWAL GREENTECH LIMITED (Other than Individual). Address: Village Harigarh, Raikot Barnala Road. PIN: 148101. Valid upto: 31-Dec-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR0878';
  v_meta := '{"district":"Bathinda","promoter":"R K Enterprises (Other than Individual)","address":"Lal Singh Basti, Main Road, Adjoining Sukhmani Enclave","pin_code":"151005","registration_date":"01-Dec-2023","valid_upto":"31-Dec-2027"}'::jsonb;
  v_desc := 'Promoter: R K Enterprises (Other than Individual). Address: Lal Singh Basti, Main Road, Adjoining Sukhmani Enclave. PIN: 151005. Valid upto: 31-Dec-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0877';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"LEELA RESIDENCIES PRIVATE LIMITED (Other than Individual)","address":"Village Khuni Majra, Sector-115, Kharar-Landran Road, District SAS Nagar, Mohali","pin_code":"140301","registration_date":"01-Dec-2023","valid_upto":"31-Dec-2024"}'::jsonb;
  v_desc := 'Promoter: LEELA RESIDENCIES PRIVATE LIMITED (Other than Individual). Address: Village Khuni Majra, Sector-115, Kharar-Landran Road, District SAS Nagar, Mohali. PIN: 140301. Valid upto: 31-Dec-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0876';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Touch Homes (Other than Individual)","address":"at Sunny Heights, Block 8, Sector-123, Mohali, Kharar","pin_code":"140301","registration_date":"24-Nov-2023","valid_upto":"31-Mar-2025"}'::jsonb;
  v_desc := 'Promoter: Touch Homes (Other than Individual). Address: at Sunny Heights, Block 8, Sector-123, Mohali, Kharar. PIN: 140301. Valid upto: 31-Mar-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0188';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"V.R. Developers (Other than Individual)","address":"Village Bishangarh & Bishanpura, The. Zirakpur, Dist SAS Nagar, Mohali","pin_code":"140603","registration_date":"24-Nov-2023","valid_upto":"02-May-2028"}'::jsonb;
  v_desc := 'Promoter: V.R. Developers (Other than Individual). Address: Village Bishangarh & Bishanpura, The. Zirakpur, Dist SAS Nagar, Mohali. PIN: 140603. Valid upto: 02-May-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PC0191';
  v_meta := '{"district":"Jalandhar","promoter":"Francolin Infrastructure Private Limited (Other than Individual)","address":"Village Paragpur G T Road, Next to Best Price","pin_code":"144001","registration_date":"24-Nov-2023","valid_upto":"14-Apr-2028"}'::jsonb;
  v_desc := 'Promoter: Francolin Infrastructure Private Limited (Other than Individual). Address: Village Paragpur G T Road, Next to Best Price. PIN: 144001. Valid upto: 14-Apr-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR01-PC0192';
  v_meta := '{"district":"Amritsar","promoter":"Nijjar Realtors (Other than Individual)","address":"VPO AJNALA,, MAIN AJNALA-AMRITSAR ROAD,","pin_code":"143102","registration_date":"24-Nov-2023","valid_upto":"17-Apr-2028"}'::jsonb;
  v_desc := 'Promoter: Nijjar Realtors (Other than Individual). Address: VPO AJNALA,, MAIN AJNALA-AMRITSAR ROAD,. PIN: 143102. Valid upto: 17-Apr-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0189';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SRG Builder and Promoters Pvt Limited (Other than Individual)","address":"Kharar Kurali Road, NH 205  Village Daun Majra","pin_code":"140301","registration_date":"24-Nov-2023","valid_upto":"20-Nov-2027"}'::jsonb;
  v_desc := 'Promoter: SRG Builder and Promoters Pvt Limited (Other than Individual). Address: Kharar Kurali Road, NH 205  Village Daun Majra. PIN: 140301. Valid upto: 20-Nov-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR0875';
  v_meta := '{"district":"Bathinda","promoter":"LEO''Z COUNTY (Other than Individual)","address":"Village Naruana H.B. No- 65 and Jodhpur Romana (H.B. No.64),, Tehsil & District- Bathinda, Punjab","pin_code":"151001","registration_date":"24-Nov-2023","valid_upto":"31-Mar-2029"}'::jsonb;
  v_desc := 'Promoter: LEO''Z COUNTY (Other than Individual). Address: Village Naruana H.B. No- 65 and Jodhpur Romana (H.B. No.64),, Tehsil & District- Bathinda, Punjab. PIN: 151001. Valid upto: 31-Mar-2029';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL65-PI0005';
  v_meta := '{"district":"Patiala","promoter":"VIVIDHA INFRASTRUCTURE PVT LTD (Other than Individual)","address":"VILL. CHAMARU (H.B NO-79) and MEHTABGARH (H.B. NO.-77), Tehsil RAJPURA","pin_code":"140401","website":"vividhainfra.com","registration_date":"20-Apr-2018","valid_upto":"31-Mar-2022"}'::jsonb;
  v_desc := 'Promoter: VIVIDHA INFRASTRUCTURE PVT LTD (Other than Individual). Address: VILL. CHAMARU (H.B NO-79) and MEHTABGARH (H.B. NO.-77), Tehsil RAJPURA. PIN: 140401. Valid upto: 31-Mar-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0180';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Bliss Builders and Promoters (Other than Individual)","address":"Village Singhpura, Tehsil Derabassi, Zirakpur","pin_code":"140603","registration_date":"03-Aug-2018","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: Bliss Builders and Promoters (Other than Individual). Address: Village Singhpura, Tehsil Derabassi, Zirakpur. PIN: 140603. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0665';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CHANDIGARH REAL ESTATE DEVELOPERS (Other than Individual)","address":"village Padiala, Kurali, Distt. SAS Nagar","pin_code":"140103","registration_date":"06-Nov-2020","valid_upto":"31-Mar-2025"}'::jsonb;
  v_desc := 'Promoter: CHANDIGARH REAL ESTATE DEVELOPERS (Other than Individual). Address: village Padiala, Kurali, Distt. SAS Nagar. PIN: 140103. Valid upto: 31-Mar-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0391';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SRG Developers & Promoters (Other than Individual)","address":"Group Housing Site No. 3, Sector 82 Alpha, SAS Nagar","pin_code":"160055","registration_date":"28-Sep-2018","valid_upto":"31-Dec-2024"}'::jsonb;
  v_desc := 'Promoter: SRG Developers & Promoters (Other than Individual). Address: Group Housing Site No. 3, Sector 82 Alpha, SAS Nagar. PIN: 160055. Valid upto: 31-Dec-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PM0136';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"NITIN ASSOCIATES (Other than Individual)","address":"Vill-morthrikri,tehsil-Zirakpur","pin_code":"140603","registration_date":"22-Feb-2019","valid_upto":"30-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: NITIN ASSOCIATES (Other than Individual). Address: Vill-morthrikri,tehsil-Zirakpur. PIN: 140603. Valid upto: 30-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0873';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KRISHNA REAL ESTATE  (Other than Individual)","address":"VILLAGE GULABGARH & MADHOPUR, HADBAST 11, DERA BASSI","pin_code":"140507","registration_date":"10-Nov-2023","valid_upto":"28-Jul-2028"}'::jsonb;
  v_desc := 'Promoter: KRISHNA REAL ESTATE  (Other than Individual). Address: VILLAGE GULABGARH & MADHOPUR, HADBAST 11, DERA BASSI. PIN: 140507. Valid upto: 28-Jul-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0870';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Singla Builders and promoters Ltd. (Other than Individual)","address":"Rakba Rauni, HB No, Tehsil Derabassi,","pin_code":"134112","registration_date":"09-Oct-2023","valid_upto":"08-Feb-2028"}'::jsonb;
  v_desc := 'Promoter: Singla Builders and promoters Ltd. (Other than Individual). Address: Rakba Rauni, HB No, Tehsil Derabassi,. PIN: 134112. Valid upto: 08-Feb-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0867';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"AMARSONS AND ASSOCiATES (Other than Individual)","address":"Village Dayalpura, MC Zirakpur","pin_code":"140603","registration_date":"09-Oct-2023","valid_upto":"30-Mar-2028"}'::jsonb;
  v_desc := 'Promoter: AMARSONS AND ASSOCiATES (Other than Individual). Address: Village Dayalpura, MC Zirakpur. PIN: 140603. Valid upto: 30-Mar-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR0869';
  v_meta := '{"district":"Bathinda","promoter":"GOKUL DHAM WELFARE SOCIETY (Other than Individual)","address":"Gokuldham Society Rampura Near Royale State Clony, Rampura Phul","pin_code":"151103","registration_date":"09-Oct-2023","valid_upto":"31-Jan-2025"}'::jsonb;
  v_desc := 'Promoter: GOKUL DHAM WELFARE SOCIETY (Other than Individual). Address: Gokuldham Society Rampura Near Royale State Clony, Rampura Phul. PIN: 151103. Valid upto: 31-Jan-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR0871';
  v_meta := '{"district":"Bathinda","promoter":"Pee Jay Infra (Other than Individual)","address":"Village Bhucho Kalan H.B. No 201, Tehsil Nathana","pin_code":"151101","registration_date":"09-Oct-2023","valid_upto":"31-Jul-2027"}'::jsonb;
  v_desc := 'Promoter: Pee Jay Infra (Other than Individual). Address: Village Bhucho Kalan H.B. No 201, Tehsil Nathana. PIN: 151101. Valid upto: 31-Jul-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0868';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SKYLINE DEVELOPERS (Other than Individual)","address":"PR7 INTERNATIONAL AIRPORT ROAD ZIRAKPUR","pin_code":"140603","registration_date":"09-Oct-2023","valid_upto":"31-Dec-2026"}'::jsonb;
  v_desc := 'Promoter: SKYLINE DEVELOPERS (Other than Individual). Address: PR7 INTERNATIONAL AIRPORT ROAD ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0866';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Turnstone Realty LLP (Other than Individual)","address":"Sector 67","pin_code":"160062","registration_date":"29-Sep-2023","valid_upto":"30-Nov-2030"}'::jsonb;
  v_desc := 'Promoter: Turnstone Realty LLP (Other than Individual). Address: Sector 67. PIN: 160062. Valid upto: 30-Nov-2030';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0865';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Aura Builders & Developers (Other than Individual)","address":"VILLAGE NABHA , TEHSIL DERA BASSI ,DISTT SAS NAGAR, ZIRAKPUR","pin_code":"140603","registration_date":"21-Sep-2023","valid_upto":"30-Sep-2027"}'::jsonb;
  v_desc := 'Promoter: Aura Builders & Developers (Other than Individual). Address: VILLAGE NABHA , TEHSIL DERA BASSI ,DISTT SAS NAGAR, ZIRAKPUR. PIN: 140603. Valid upto: 30-Sep-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI10-PR0861';
  v_meta := '{"district":"Bathinda","promoter":"Vatika Promoters and Developers (Other than Individual)","address":"Opp reliance pump, opp Ekam ITI","pin_code":"151103","registration_date":"11-Sep-2023","valid_upto":"31-Jan-2025"}'::jsonb;
  v_desc := 'Promoter: Vatika Promoters and Developers (Other than Individual). Address: Opp reliance pump, opp Ekam ITI. PIN: 151103. Valid upto: 31-Jan-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FZL19-PR0864';
  v_meta := '{"district":"Fazilka","promoter":"Abohar Developers LLP (Other than Individual)","address":"Abohar Hindumalkot Road, near Sachkhand High School","pin_code":"152116","registration_date":"06-Sep-2023","valid_upto":"24-Jul-2024"}'::jsonb;
  v_desc := 'Promoter: Abohar Developers LLP (Other than Individual). Address: Abohar Hindumalkot Road, near Sachkhand High School. PIN: 152116. Valid upto: 24-Jul-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0738';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GHB Infra (Other than Individual)","address":"Village Dyalpura and Nabha, MC Zirakpur","pin_code":"140603","registration_date":"02-Sep-2021","valid_upto":"30-Jun-2024"}'::jsonb;
  v_desc := 'Promoter: GHB Infra (Other than Individual). Address: Village Dyalpura and Nabha, MC Zirakpur. PIN: 140603. Valid upto: 30-Jun-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0552';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PUNJAB LEGISLATORS CO OPERATIVE HOUSE BUILDING SOCIETY LTD (Other than Individual)","address":"MULLANPUR, NEW CHANDIGARH","pin_code":"140901","registration_date":"10-Dec-2019","valid_upto":"31-Mar-2021"}'::jsonb;
  v_desc := 'Promoter: PUNJAB LEGISLATORS CO OPERATIVE HOUSE BUILDING SOCIETY LTD (Other than Individual). Address: MULLANPUR, NEW CHANDIGARH. PIN: 140901. Valid upto: 31-Mar-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0664';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Land Developers  (Other than Individual)","address":"Village Kailon, Sector 114","pin_code":"140307","registration_date":"05-Nov-2020","valid_upto":"11-Oct-2025"}'::jsonb;
  v_desc := 'Promoter: Land Developers  (Other than Individual). Address: Village Kailon, Sector 114. PIN: 140307. Valid upto: 11-Oct-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0320';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"22-Mar-2018","valid_upto":"30-Apr-2021"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 30-Apr-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0711';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"UBBER BUILDERS (Other than Individual)","address":"Villagge Tolemajra, Sector 115, Near Cavanal Hill Resort","pin_code":"140307","registration_date":"02-Jun-2021","valid_upto":"31-Dec-2028"}'::jsonb;
  v_desc := 'Promoter: UBBER BUILDERS (Other than Individual). Address: Villagge Tolemajra, Sector 115, Near Cavanal Hill Resort. PIN: 140307. Valid upto: 31-Dec-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR0772';
  v_meta := '{"district":"Ludhiana","promoter":"Tampra Homes Private Limited (Other than Individual)","address":"Village Alamgir","pin_code":"141116","website":"tamprahomes.com","registration_date":"23-Feb-2022","valid_upto":"24-Nov-2026"}'::jsonb;
  v_desc := 'Promoter: Tampra Homes Private Limited (Other than Individual). Address: Village Alamgir. PIN: 141116. Valid upto: 24-Nov-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0857';
  v_meta := '{"district":"Ludhiana","promoter":"Boutique Homes (Other than Individual)","address":"At Mega Group Housing Project named Omaxe Royal Residency  at Village Thakkarwal and DAD","pin_code":"141013","registration_date":"16-Jun-2023","valid_upto":"31-Mar-2027"}'::jsonb;
  v_desc := 'Promoter: Boutique Homes (Other than Individual). Address: At Mega Group Housing Project named Omaxe Royal Residency  at Village Thakkarwal and DAD. PIN: 141013. Valid upto: 31-Mar-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0856';
  v_meta := '{"district":"Ludhiana","promoter":"Boutique Homes (Other than Individual)","address":"At Mega Group Housing Project named Omaxe Royal Residency  at Village Thakkarwal and DAD","pin_code":"141013","registration_date":"16-Jun-2023","valid_upto":"31-Mar-2026"}'::jsonb;
  v_desc := 'Promoter: Boutique Homes (Other than Individual). Address: At Mega Group Housing Project named Omaxe Royal Residency  at Village Thakkarwal and DAD. PIN: 141013. Valid upto: 31-Mar-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL64-PR0859';
  v_meta := '{"district":"Patiala","promoter":"Metro Developers And Builders (Other than Individual)","address":"Patran Tehsil Patran","pin_code":"147105","registration_date":"16-Jun-2023","valid_upto":"31-Dec-2026"}'::jsonb;
  v_desc := 'Promoter: Metro Developers And Builders (Other than Individual). Address: Patran Tehsil Patran. PIN: 147105. Valid upto: 31-Dec-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PC0186';
  v_meta := '{"district":"Ludhiana","promoter":"R.K.S Builders (Other than Individual)","address":"B-11, 124/P, Shahpur Road,, Ludhiana","pin_code":"141008","registration_date":"08-Jun-2023","valid_upto":"31-Dec-2025"}'::jsonb;
  v_desc := 'Promoter: R.K.S Builders (Other than Individual). Address: B-11, 124/P, Shahpur Road,, Ludhiana. PIN: 141008. Valid upto: 31-Dec-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PC0187';
  v_meta := '{"district":"Bathinda","promoter":"JRB PROMOTERS (Other than Individual)","address":"MALOUT ROAD BATHINDA","pin_code":"151001","registration_date":"08-Jun-2023","valid_upto":"31-Dec-2025"}'::jsonb;
  v_desc := 'Promoter: JRB PROMOTERS (Other than Individual). Address: MALOUT ROAD BATHINDA. PIN: 151001. Valid upto: 31-Dec-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0855';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jubilee Infra Planner LLP (Other than Individual)","address":"Jubilee Hamellia, Jubilee City Gardens, Sector92 & Sector 116","pin_code":"140308","website":"www.jubileegroup.in","registration_date":"08-Jun-2023","valid_upto":"30-Jun-2025"}'::jsonb;
  v_desc := 'Promoter: Jubilee Infra Planner LLP (Other than Individual). Address: Jubilee Hamellia, Jubilee City Gardens, Sector92 & Sector 116. PIN: 140308. Valid upto: 30-Jun-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0851';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Motia Real Estate Developers (Other than Individual)","address":"Village Mundi, Kharar","pin_code":"140301","registration_date":"10-May-2023","valid_upto":"31-Dec-2025"}'::jsonb;
  v_desc := 'Promoter: Motia Real Estate Developers (Other than Individual). Address: Village Mundi, Kharar. PIN: 140301. Valid upto: 31-Dec-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0799';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GILL DEVELOPERS AND PROMOTORS PRIVATE LIMITED (Other than Individual)","address":"Site No.-11-D, Sector-90-91, JLPL","pin_code":"160071","registration_date":"20-May-2022","valid_upto":"26-Mar-2027"}'::jsonb;
  v_desc := 'Promoter: GILL DEVELOPERS AND PROMOTORS PRIVATE LIMITED (Other than Individual). Address: Site No.-11-D, Sector-90-91, JLPL. PIN: 160071. Valid upto: 26-Mar-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0850';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"WAVE ESTATE, sector-85","pin_code":"143308","registration_date":"09-May-2023","valid_upto":"22-Jan-2028"}'::jsonb;
  v_desc := 'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: WAVE ESTATE, sector-85. PIN: 143308. Valid upto: 22-Jan-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0185';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KLG Infra (Other than Individual)","address":"Pocket No. 2, Block-E, Aero City, SAS Nagar Mohali","pin_code":"140603","registration_date":"24-Apr-2023","valid_upto":"30-Nov-2027"}'::jsonb;
  v_desc := 'Promoter: KLG Infra (Other than Individual). Address: Pocket No. 2, Block-E, Aero City, SAS Nagar Mohali. PIN: 140603. Valid upto: 30-Nov-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0849';
  v_meta := '{"district":"Ludhiana","promoter":"Home Life  Buildcon Private Limited (Other than Individual)","address":"Village Ayali Kalan, H.B. No. 155, Ludhiana","pin_code":"141012","registration_date":"24-Apr-2023","valid_upto":"31-Mar-2028"}'::jsonb;
  v_desc := 'Promoter: Home Life  Buildcon Private Limited (Other than Individual). Address: Village Ayali Kalan, H.B. No. 155, Ludhiana. PIN: 141012. Valid upto: 31-Mar-2028';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0149';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Tripple R Developers (Other than Individual)","address":"village lohgarh, Zirakpur","pin_code":"140603","registration_date":"11-Jun-2021","valid_upto":"31-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: Tripple R Developers (Other than Individual). Address: village lohgarh, Zirakpur. PIN: 140603. Valid upto: 31-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0408';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Hermitage Infra Developers (Other than Individual)","address":"HERMITAGE CENTRALIS, VIP ROAD, VILL BISHANPURA ZIRAKPUR","pin_code":"140603","registration_date":"08-Jan-2019","valid_upto":"01-Nov-2023"}'::jsonb;
  v_desc := 'Promoter: Hermitage Infra Developers (Other than Individual). Address: HERMITAGE CENTRALIS, VIP ROAD, VILL BISHANPURA ZIRAKPUR. PIN: 140603. Valid upto: 01-Nov-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0847';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Mahavir Builders (Other than Individual)","address":"Future Heights Block B,C,D, Village Aujla, Tehsl Kharar , SAS Nagar Mohali Punjab","pin_code":"140301","registration_date":"22-Mar-2023","valid_upto":"06-Oct-2025"}'::jsonb;
  v_desc := 'Promoter: Mahavir Builders (Other than Individual). Address: Future Heights Block B,C,D, Village Aujla, Tehsl Kharar , SAS Nagar Mohali Punjab. PIN: 140301. Valid upto: 06-Oct-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0846';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Mahavir Builders (Other than Individual)","address":"Future Heights Block A, Village Aujla, Tehsil Kharar, SAS Nagar (Mohali)","pin_code":"140301","registration_date":"22-Mar-2023","valid_upto":"06-Oct-2025"}'::jsonb;
  v_desc := 'Promoter: Mahavir Builders (Other than Individual). Address: Future Heights Block A, Village Aujla, Tehsil Kharar, SAS Nagar (Mohali). PIN: 140301. Valid upto: 06-Oct-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0715';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Mahakali Developers & Resorts Private Limited (Other than Individual)","address":"M.K Residency, Village Tangori","pin_code":"140306","website":"www.mahakali-developers.com","registration_date":"11-Jun-2021","valid_upto":"07-Mar-2026"}'::jsonb;
  v_desc := 'Promoter: Mahakali Developers & Resorts Private Limited (Other than Individual). Address: M.K Residency, Village Tangori. PIN: 140306. Valid upto: 07-Mar-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0095';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jubilee Joy Homes LLP (Other than Individual)","address":"Jubilee Juncttion, Sector 66","pin_code":"160062","registration_date":"14-Jun-2019","valid_upto":"31-Mar-2022"}'::jsonb;
  v_desc := 'Promoter: Jubilee Joy Homes LLP (Other than Individual). Address: Jubilee Juncttion, Sector 66. PIN: 160062. Valid upto: 31-Mar-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0819';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jubilee Joy Homes LLP (Other than Individual)","address":"Sector 120-121, Village Daun, H.B.No. 27","pin_code":"140308","website":"www.jubileegroup.in","registration_date":"05-Aug-2022","valid_upto":"18-Jul-2025"}'::jsonb;
  v_desc := 'Promoter: Jubilee Joy Homes LLP (Other than Individual). Address: Sector 120-121, Village Daun, H.B.No. 27. PIN: 140308. Valid upto: 18-Jul-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PC0184';
  v_meta := '{"district":"Patiala","promoter":"Metro Developers And Builders (Other than Individual)","address":"Viilage Bir Bahadurgarh And Village Kasba Urf Rurki Tehsil Patiala","pin_code":"147002","registration_date":"14-Mar-2023","valid_upto":"29-Sep-2027"}'::jsonb;
  v_desc := 'Promoter: Metro Developers And Builders (Other than Individual). Address: Viilage Bir Bahadurgarh And Village Kasba Urf Rurki Tehsil Patiala. PIN: 147002. Valid upto: 29-Sep-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0845';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"DLF Home Developers Limited (Other than Individual)","address":"Hyde Park Estate, New Chandigarh, Mullanpur","pin_code":"140901","registration_date":"14-Mar-2023","valid_upto":"30-Sep-2025"}'::jsonb;
  v_desc := 'Promoter: DLF Home Developers Limited (Other than Individual). Address: Hyde Park Estate, New Chandigarh, Mullanpur. PIN: 140901. Valid upto: 30-Sep-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0843';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"RLTS Infra Private Limited (Other than Individual)","address":"Kurali Ropar Road, MC Kurali","pin_code":"143432","registration_date":"07-Mar-2023","valid_upto":"31-Jul-2027"}'::jsonb;
  v_desc := 'Promoter: RLTS Infra Private Limited (Other than Individual). Address: Kurali Ropar Road, MC Kurali. PIN: 143432. Valid upto: 31-Jul-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MNS50-PR0744';
  v_meta := '{"district":"Mansa","promoter":"Friendswood Developers Private Limited (Other than Individual)","address":"Village Mansa Khurd, Tehsil and District Mansa","pin_code":"151505","website":"www.sushma.co.in","registration_date":"13-Sep-2021","valid_upto":"01-Jul-2026"}'::jsonb;
  v_desc := 'Promoter: Friendswood Developers Private Limited (Other than Individual). Address: Village Mansa Khurd, Tehsil and District Mansa. PIN: 151505. Valid upto: 01-Jul-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BNL06-PR0783';
  v_meta := '{"district":"Barnala","promoter":"Dayanidhi Buildtech Private Limited (Other than Individual)","address":"Village Dhanaula-B, H.B. No. 59, Dhanaula - Barnala Highway","pin_code":"148105","website":"www.sushma.co.in","registration_date":"28-Apr-2022","valid_upto":"07-Feb-2027"}'::jsonb;
  v_desc := 'Promoter: Dayanidhi Buildtech Private Limited (Other than Individual). Address: Village Dhanaula-B, H.B. No. 59, Dhanaula - Barnala Highway. PIN: 148105. Valid upto: 07-Feb-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0841';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"JSJ KLV DEVELOPERS LLP (Other than Individual)","address":"Providence Abodes, Sector 115, Village Khooni Majra","pin_code":"140307","registration_date":"09-Feb-2023","valid_upto":"14-Jul-2027"}'::jsonb;
  v_desc := 'Promoter: JSJ KLV DEVELOPERS LLP (Other than Individual). Address: Providence Abodes, Sector 115, Village Khooni Majra. PIN: 140307. Valid upto: 14-Jul-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0838';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Shri Builders (Other than Individual)","address":"Village Dialpura, Chimney Heights Road, Zirakpur","pin_code":"140601","registration_date":"09-Feb-2023","valid_upto":"31-Oct-2024"}'::jsonb;
  v_desc := 'Promoter: Shri Builders (Other than Individual). Address: Village Dialpura, Chimney Heights Road, Zirakpur. PIN: 140601. Valid upto: 31-Oct-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH42-PR0840';
  v_meta := '{"district":"Ludhiana","promoter":"OMAXE LIMITED (Other than Individual)","address":"The Royal Signature , Omaxe Royal Residency,, Pakhowal Road , DAD","pin_code":"142022","website":"www.omaxe.com","registration_date":"09-Feb-2023","valid_upto":"31-Oct-2027"}'::jsonb;
  v_desc := 'Promoter: OMAXE LIMITED (Other than Individual). Address: The Royal Signature , Omaxe Royal Residency,, Pakhowal Road , DAD. PIN: 142022. Valid upto: 31-Oct-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0839';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh Developers Private Limited","pin_code":"140901","website":"www.omaxe.com","registration_date":"09-Feb-2023","valid_upto":"31-Jul-2027"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh Developers Private Limited. PIN: 140901. Valid upto: 31-Jul-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0666';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Krishna Buildtech (Other than Individual)","address":"Block B  Wave Estate Sector 85","pin_code":"140308","registration_date":"18-Nov-2020","valid_upto":"31-Aug-2023"}'::jsonb;
  v_desc := 'Promoter: Krishna Buildtech (Other than Individual). Address: Block B  Wave Estate Sector 85. PIN: 140308. Valid upto: 31-Aug-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0033';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omaxe New Chandigarh Developers Private Ltd. (Other than Individual)","address":"Omaxe New Chandigarh","pin_code":"140901","website":"www.omaxe.com","registration_date":"06-Sep-2017","valid_upto":"31-Jul-2020"}'::jsonb;
  v_desc := 'Promoter: Omaxe New Chandigarh Developers Private Ltd. (Other than Individual). Address: Omaxe New Chandigarh. PIN: 140901. Valid upto: 31-Jul-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0836';
  v_meta := '{"district":"Ludhiana","promoter":"Trimurti Homes private limited (Other than Individual)","address":"Booth No. 33, Basant City, Extension 2, Village Threekay","pin_code":"142028","registration_date":"20-Jan-2023","valid_upto":"01-Nov-2027"}'::jsonb;
  v_desc := 'Promoter: Trimurti Homes private limited (Other than Individual). Address: Booth No. 33, Basant City, Extension 2, Village Threekay. PIN: 142028. Valid upto: 01-Nov-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR0835';
  v_meta := '{"district":"Bathinda","promoter":"Banson Estates (Other than Individual)","address":"Dabwali Road","pin_code":"151001","registration_date":"20-Jan-2023","valid_upto":"06-Oct-2027"}'::jsonb;
  v_desc := 'Promoter: Banson Estates (Other than Individual). Address: Dabwali Road. PIN: 151001. Valid upto: 06-Oct-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0834';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"ABHISHEK  KANSAL (Individual)","address":"KHARAR KURALI ROAD, KURALI","pin_code":"140103","registration_date":"20-Jan-2023","valid_upto":"18-Jul-2023"}'::jsonb;
  v_desc := 'Promoter: ABHISHEK  KANSAL (Individual). Address: KHARAR KURALI ROAD, KURALI. PIN: 140103. Valid upto: 18-Jul-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0837';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"VISION DEVELOPERS (Other than Individual)","address":"VILLAGE GAZIPUR, HADBAST NO.50, Zirakpur","pin_code":"140603","registration_date":"20-Jan-2023","valid_upto":"31-Aug-2025"}'::jsonb;
  v_desc := 'Promoter: VISION DEVELOPERS (Other than Individual). Address: VILLAGE GAZIPUR, HADBAST NO.50, Zirakpur. PIN: 140603. Valid upto: 31-Aug-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0673';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Shubham Builders (Other than Individual)","address":"SANTE MAJRA, H.B. No. 186, Tehsil KHARAR","pin_code":"140301","registration_date":"04-Dec-2020","valid_upto":"28-Sep-2025"}'::jsonb;
  v_desc := 'Promoter: Shubham Builders (Other than Individual). Address: SANTE MAJRA, H.B. No. 186, Tehsil KHARAR. PIN: 140301. Valid upto: 28-Sep-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PM0069';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GK Residency Private Limited (Other than Individual)","address":"Village Santemajra, sector 115","pin_code":"140301","registration_date":"18-Apr-2018","valid_upto":"18-Apr-2023"}'::jsonb;
  v_desc := 'Promoter: GK Residency Private Limited (Other than Individual). Address: Village Santemajra, sector 115. PIN: 140301. Valid upto: 18-Apr-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL65-PR0697';
  v_meta := '{"district":"Patiala","promoter":"Industrial Cables India Ltd (Other than Individual)","address":"ICL ROAD, RAJPURA","pin_code":"140401","registration_date":"03-Mar-2021","valid_upto":"30-Sep-2025"}'::jsonb;
  v_desc := 'Promoter: Industrial Cables India Ltd (Other than Individual). Address: ICL ROAD, RAJPURA. PIN: 140401. Valid upto: 30-Sep-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0182';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"KLG Infra (Other than Individual)","address":"Block-F, Aero City, SAS Nagar Mohali","pin_code":"140603","registration_date":"19-Dec-2022","valid_upto":"25-Mar-2027"}'::jsonb;
  v_desc := 'Promoter: KLG Infra (Other than Individual). Address: Block-F, Aero City, SAS Nagar Mohali. PIN: 140603. Valid upto: 25-Mar-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0180';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"VRS INFRASTRUCTURES (Other than Individual)","address":"Plot No - CP 02, Industrial Focal Point, Phase 8 A, Sector 75","pin_code":"160062","registration_date":"19-Dec-2022","valid_upto":"31-Dec-2026"}'::jsonb;
  v_desc := 'Promoter: VRS INFRASTRUCTURES (Other than Individual). Address: Plot No - CP 02, Industrial Focal Point, Phase 8 A, Sector 75. PIN: 160062. Valid upto: 31-Dec-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PR0833';
  v_meta := '{"district":"Bathinda","promoter":"SHRIJI DEVELOPERS (Other than Individual)","address":"BATHINDA TO JASSI JODHPUR ROAD","pin_code":"151001","registration_date":"19-Dec-2022","valid_upto":"31-Mar-2025"}'::jsonb;
  v_desc := 'Promoter: SHRIJI DEVELOPERS (Other than Individual). Address: BATHINDA TO JASSI JODHPUR ROAD. PIN: 151001. Valid upto: 31-Mar-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR77-PC0183';
  v_meta := '{"district":"Sangrur","promoter":"NH 7 PR Realtors (Other than Individual)","address":"Village Gurdaspur, Tehsil & District Sangrur","pin_code":"148001","registration_date":"19-Dec-2022","valid_upto":"31-Dec-2027"}'::jsonb;
  v_desc := 'Promoter: NH 7 PR Realtors (Other than Individual). Address: Village Gurdaspur, Tehsil & District Sangrur. PIN: 148001. Valid upto: 31-Dec-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0181';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jubilee Joy Homes LLP (Other than Individual)","address":"Jubilee Clio, Site No. CP-3,, IFP, Phase 8A,","pin_code":"160062","registration_date":"19-Dec-2022","valid_upto":"31-Dec-2026"}'::jsonb;
  v_desc := 'Promoter: Jubilee Joy Homes LLP (Other than Individual). Address: Jubilee Clio, Site No. CP-3,, IFP, Phase 8A,. PIN: 160062. Valid upto: 31-Dec-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0831';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Motia Land Developers (Other than Individual)","address":"H.B. No. 289, Village - Dyalpura,, Sub Tehsil - Zirakpur, Tehsil - Derabassi","pin_code":"140601","registration_date":"01-Dec-2022","valid_upto":"10-Feb-2024"}'::jsonb;
  v_desc := 'Promoter: Motia Land Developers (Other than Individual). Address: H.B. No. 289, Village - Dyalpura,, Sub Tehsil - Zirakpur, Tehsil - Derabassi. PIN: 140601. Valid upto: 10-Feb-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0832';
  v_meta := '{"district":"Jalandhar","promoter":"AGI INFRA LIMITED (Other than Individual)","address":"Village Pholriwal (H.B.No.252)","pin_code":"144022","website":"www.agiinfra.com","registration_date":"01-Dec-2022","valid_upto":"07-Nov-2027"}'::jsonb;
  v_desc := 'Promoter: AGI INFRA LIMITED (Other than Individual). Address: Village Pholriwal (H.B.No.252). PIN: 144022. Valid upto: 07-Nov-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PR0598';
  v_meta := '{"district":"Jalandhar","promoter":"DEEP INFRASTRUCTURES  (Other than Individual)","address":"#292 VILLAGE KADAIAWALI","pin_code":"144004","registration_date":"28-Feb-2020","valid_upto":"31-Mar-2022"}'::jsonb;
  v_desc := 'Promoter: DEEP INFRASTRUCTURES  (Other than Individual). Address: #292 VILLAGE KADAIAWALI. PIN: 144004. Valid upto: 31-Mar-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PC0179';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Turnstone Realty LLP (Other than Individual)","address":"Commercial Site No.- 2 and 3, Sector-68, SAS Nagar","pin_code":"160062","registration_date":"21-Nov-2022","valid_upto":"31-Aug-2025"}'::jsonb;
  v_desc := 'Promoter: Turnstone Realty LLP (Other than Individual). Address: Commercial Site No.- 2 and 3, Sector-68, SAS Nagar. PIN: 160062. Valid upto: 31-Aug-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0829';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Rajnish   Kumar (Individual)","address":"Padiala to Kalewal Road, Hadbast no.- 379,, Vilage - Padiala, Tehsil - Kharar, SAS Nagar","pin_code":"140301","registration_date":"21-Nov-2022","valid_upto":"04-May-2026"}'::jsonb;
  v_desc := 'Promoter: Rajnish   Kumar (Individual). Address: Padiala to Kalewal Road, Hadbast no.- 379,, Vilage - Padiala, Tehsil - Kharar, SAS Nagar. PIN: 140301. Valid upto: 04-May-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0830';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"Wave Estate, Sec-99","pin_code":"140308","registration_date":"21-Nov-2022","valid_upto":"30-Mar-2027"}'::jsonb;
  v_desc := 'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: Wave Estate, Sec-99. PIN: 140308. Valid upto: 30-Mar-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PM0167';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Mannat Maple Builders and Realtors (Other than Individual)","address":"H.B. No. 289, Village Dayalpura, Zirakpur","pin_code":"140603","registration_date":"21-Nov-2022","valid_upto":"19-May-2023"}'::jsonb;
  v_desc := 'Promoter: Mannat Maple Builders and Realtors (Other than Individual). Address: H.B. No. 289, Village Dayalpura, Zirakpur. PIN: 140603. Valid upto: 19-May-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0728';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PARADIGM BUSINESS VENTURES (Other than Individual)","address":"Village Dhakoli, HB No. 48, MC Zirakpur","pin_code":"140603","website":"www.thehermitagepark.com","registration_date":"26-Jul-2021","valid_upto":"31-Dec-2023"}'::jsonb;
  v_desc := 'Promoter: PARADIGM BUSINESS VENTURES (Other than Individual). Address: Village Dhakoli, HB No. 48, MC Zirakpur. PIN: 140603. Valid upto: 31-Dec-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0828';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"HERO REALTY PRIVATE LIMITED (Other than Individual)","address":"Group Housing Site No.1, Sector 88, SAS Nagar, Mohali","pin_code":"140308","website":"www.herohomes.in","registration_date":"11-Nov-2022","valid_upto":"31-Jul-2027"}'::jsonb;
  v_desc := 'Promoter: HERO REALTY PRIVATE LIMITED (Other than Individual). Address: Group Housing Site No.1, Sector 88, SAS Nagar, Mohali. PIN: 140308. Valid upto: 31-Jul-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0777';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Svastiga Infra Private Limited (Other than Individual)","address":"Village - Nabha, H.B. No. 290, Sub tehsil - Zirakpur,, Tehsil Zirakpur, SAS Nagar","pin_code":"140603","registration_date":"29-Mar-2022","valid_upto":"31-Dec-2025"}'::jsonb;
  v_desc := 'Promoter: Svastiga Infra Private Limited (Other than Individual). Address: Village - Nabha, H.B. No. 290, Sub tehsil - Zirakpur,, Tehsil Zirakpur, SAS Nagar. PIN: 140603. Valid upto: 31-Dec-2025';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0560';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Jagmohan Singh Kang (Other than Individual)","address":"Village Bhagomajra, Khanpur, Tehsil Kharar, Sahibzada Ajit Singh Nagar (Mohali)","pin_code":"140307","registration_date":"24-Dec-2019","valid_upto":"30-Nov-2023"}'::jsonb;
  v_desc := 'Promoter: Jagmohan Singh Kang (Other than Individual). Address: Village Bhagomajra, Khanpur, Tehsil Kharar, Sahibzada Ajit Singh Nagar (Mohali). PIN: 140307. Valid upto: 30-Nov-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0447';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Rakesh  Kumar (Individual)","address":"Village Lalru H.B No. 20","pin_code":"140501","registration_date":"12-Apr-2019","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: Rakesh  Kumar (Individual). Address: Village Lalru H.B No. 20. PIN: 140501. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0701';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Omni Pacific Colonizers Pvt Ltd (Other than Individual)","address":"Amayra Luxury-One, Vill. Khanpur, kharar kurali road, kharar","pin_code":"140301","registration_date":"16-Apr-2021","valid_upto":"28-Jan-2026"}'::jsonb;
  v_desc := 'Promoter: Omni Pacific Colonizers Pvt Ltd (Other than Individual). Address: Amayra Luxury-One, Vill. Khanpur, kharar kurali road, kharar. PIN: 140301. Valid upto: 28-Jan-2026';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0827';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Cross Country Realtors (Other than Individual)","address":"Chaju Majra, Kharar","pin_code":"140301","registration_date":"26-Oct-2022","valid_upto":"31-Mar-2027"}'::jsonb;
  v_desc := 'Promoter: Cross Country Realtors (Other than Individual). Address: Chaju Majra, Kharar. PIN: 140301. Valid upto: 31-Mar-2027';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0092';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Manohar Infrastructure and Constructions Pvt Ltd (Other than Individual)","address":"SECTOR 3, LPA MULLANPUR, NEW CHANDIGARH","pin_code":"140901","website":"https://www.manoharrealty.com/palm-residency-mohali/","registration_date":"15-Sep-2017","valid_upto":"31-Jul-2018"}'::jsonb;
  v_desc := 'Promoter: Manohar Infrastructure and Constructions Pvt Ltd (Other than Individual). Address: SECTOR 3, LPA MULLANPUR, NEW CHANDIGARH. PIN: 140901. Valid upto: 31-Jul-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0242';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Future City developers private limited (Other than Individual)","address":"Kharar Landra Road, Sector 115","pin_code":"140307","website":"www.casahomes.com","registration_date":"06-Feb-2018","valid_upto":"31-Oct-2019"}'::jsonb;
  v_desc := 'Promoter: Future City developers private limited (Other than Individual). Address: Kharar Landra Road, Sector 115. PIN: 140307. Valid upto: 31-Oct-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0036';
  v_meta := '{"district":"Ludhiana","promoter":"Richville Infra Pvt.LTD (Other than Individual)","address":"Barewal , Ludhiana","pin_code":"141001","registration_date":"14-Dec-2017","valid_upto":"31-Oct-2018"}'::jsonb;
  v_desc := 'Promoter: Richville Infra Pvt.LTD (Other than Individual). Address: Barewal , Ludhiana. PIN: 141001. Valid upto: 31-Oct-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0197';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"UBBER REALTY (Other than Individual)","address":"Ubber Mews Gate  at Village Khanpur/Aujlan, Tehsil Kharar, Distt Mohali","pin_code":"140307","registration_date":"09-Nov-2017","valid_upto":"31-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: UBBER REALTY (Other than Individual). Address: Ubber Mews Gate  at Village Khanpur/Aujlan, Tehsil Kharar, Distt Mohali. PIN: 140307. Valid upto: 31-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0039';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"OMAXE LIMITED (Other than Individual)","address":"Omaxe Greens, Village jharmari, Tehsil derabassi,","pin_code":"140501","website":"www.omaxe.com","registration_date":"06-Sep-2018","valid_upto":"31-Jan-2019"}'::jsonb;
  v_desc := 'Promoter: OMAXE LIMITED (Other than Individual). Address: Omaxe Greens, Village jharmari, Tehsil derabassi,. PIN: 140501. Valid upto: 31-Jan-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0119';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Emaar MGF Land  Limited (Other than Individual)","address":"Sector 105, Mohali","pin_code":"160055","website":"www.emaar-india.com","registration_date":"01-Jun-2018","valid_upto":"30-Jun-2020"}'::jsonb;
  v_desc := 'Promoter: Emaar MGF Land  Limited (Other than Individual). Address: Sector 105, Mohali. PIN: 160055. Valid upto: 30-Jun-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0015';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PARADIGM BUSINESS VENTURES (Other than Individual)","address":"Village Dhakauli, Zirakpur, Tehsil Derabassi","pin_code":"140603","registration_date":"15-Sep-2017","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: PARADIGM BUSINESS VENTURES (Other than Individual). Address: Village Dhakauli, Zirakpur, Tehsil Derabassi. PIN: 140603. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0030';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"MOTIA ASSOCIATES LLP (Other than Individual)","address":"PACIFICE CENTRE KISHANPURA","pin_code":"140603","website":"http://www.motiablueridge.org.in","registration_date":"06-Nov-2017","valid_upto":"27-Jan-2020"}'::jsonb;
  v_desc := 'Promoter: MOTIA ASSOCIATES LLP (Other than Individual). Address: PACIFICE CENTRE KISHANPURA. PIN: 140603. Valid upto: 27-Jan-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-HPR31-PM0083';
  v_meta := '{"district":"Hoshiarpur","promoter":"Ranjodh  Singh (Individual)","address":"Village Jian, Distt. Hoshiarpur","pin_code":"146102","registration_date":"23-Mar-2018","valid_upto":"19-Feb-2020"}'::jsonb;
  v_desc := 'Promoter: Ranjodh  Singh (Individual). Address: Village Jian, Distt. Hoshiarpur. PIN: 146102. Valid upto: 19-Feb-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0016';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Manohar Infrastructure and Constructions Pvt Ltd (Other than Individual)","address":"SECTOR 3 LPA MULLANPUR, NEW CHANDIGARH","pin_code":"140901","website":"https://www.manoharrealty.com/palm-downtown-new-chandigarh/","registration_date":"15-Sep-2017","valid_upto":"31-Jul-2018"}'::jsonb;
  v_desc := 'Promoter: Manohar Infrastructure and Constructions Pvt Ltd (Other than Individual). Address: SECTOR 3 LPA MULLANPUR, NEW CHANDIGARH. PIN: 140901. Valid upto: 31-Jul-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR75-PM0046';
  v_meta := '{"district":"Sangrur","promoter":"GIVE REALTY PRIVATE LIMITED (Other than Individual)","address":"B-5/24, NAUDHRANI ROAD, MALERKOTLA","pin_code":"148023","website":"www.givegrand.in","registration_date":"08-Mar-2018","valid_upto":"31-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: GIVE REALTY PRIVATE LIMITED (Other than Individual). Address: B-5/24, NAUDHRANI ROAD, MALERKOTLA. PIN: 148023. Valid upto: 31-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PM0032';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Canam Project (Other than Individual)","address":"Village Sadhemajra, Haibatpur Road, derabassi","pin_code":"140603","registration_date":"23-Feb-2018","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: Canam Project (Other than Individual). Address: Village Sadhemajra, Haibatpur Road, derabassi. PIN: 140603. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PC0010';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"CITI CENTRE DEVELOPERS (Other than Individual)","address":"CHANDIGARH CITI CENTER, VIP ROAD, NEAR METRO CASH N CARRY","pin_code":"140603","website":"www.chandigarhciticenter.in","registration_date":"11-Sep-2017","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: CITI CENTRE DEVELOPERS (Other than Individual). Address: CHANDIGARH CITI CENTER, VIP ROAD, NEAR METRO CASH N CARRY. PIN: 140603. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0038';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Reliant Infrastructure (Other than Individual)","address":"Kharar Landran road Sector 115 Kharar","pin_code":"140301","registration_date":"13-Feb-2018","valid_upto":"31-Jul-2021"}'::jsonb;
  v_desc := 'Promoter: Reliant Infrastructure (Other than Individual). Address: Kharar Landran road Sector 115 Kharar. PIN: 140301. Valid upto: 31-Jul-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PM0026';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Gupta Property Developers Pvt. Ltd. (Other than Individual)","address":"New Model Town","pin_code":"140413","website":"www.gpdpl.in","registration_date":"11-Jul-2018","valid_upto":"11-Dec-2012"}'::jsonb;
  v_desc := 'Promoter: Gupta Property Developers Pvt. Ltd. (Other than Individual). Address: New Model Town. PIN: 140413. Valid upto: 11-Dec-2012';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PR0077';
  v_meta := '{"district":"Ludhiana","promoter":"Vardhman Amrante Pvt Ltd (Other than Individual)","address":"MUNDIAN KHURD CHANDIGARH ROAD LUDHIANA","pin_code":"141123","registration_date":"13-Sep-2017","valid_upto":"30-Jul-2024"}'::jsonb;
  v_desc := 'Promoter: Vardhman Amrante Pvt Ltd (Other than Individual). Address: MUNDIAN KHURD CHANDIGARH ROAD LUDHIANA. PIN: 141123. Valid upto: 30-Jul-2024';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PM0017';
  v_meta := '{"district":"Ludhiana","promoter":"VIPUL LIMITED (Other than Individual)","address":"village Bhanohar & Dhaka, Tehsil Mallanpur","pin_code":"141102","website":"http://www.vipulgroup.in/project/vipul-world-ludhiana","registration_date":"13-Sep-2017","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: VIPUL LIMITED (Other than Individual). Address: village Bhanohar & Dhaka, Tehsil Mallanpur. PIN: 141102. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PM0041';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Sunita   Rani (Individual)","address":"Village Mahiwalan","pin_code":"140506","website":"www.gpdpl.in","registration_date":"01-Mar-2018","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: Sunita   Rani (Individual). Address: Village Mahiwalan. PIN: 140506. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PM0014';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Janta Land Promoters Pvt. Ltd.  (Other than Individual)","address":"Mega Residential Project, Sector-94","pin_code":"140307","website":"www.jantahousing.com","registration_date":"03-Nov-2017","valid_upto":"10-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: Janta Land Promoters Pvt. Ltd.  (Other than Individual). Address: Mega Residential Project, Sector-94. PIN: 140307. Valid upto: 10-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0143';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"PARKWOOD DEVELOPERS PVT. LTD (Other than Individual)","address":"VILLAGE SANTEMAJRA, TEHSIL KHARAR","pin_code":"140301","website":"http://www.parkwoodgroup.in/","registration_date":"10-Oct-2017","valid_upto":"31-Jul-2018"}'::jsonb;
  v_desc := 'Promoter: PARKWOOD DEVELOPERS PVT. LTD (Other than Individual). Address: VILLAGE SANTEMAJRA, TEHSIL KHARAR. PIN: 140301. Valid upto: 31-Jul-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PM0058';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"SBP Dream City Private Limited (Other than Individual)","address":"Village Nabha, MC Zirakpur, Patiala Road, Zirakpur","pin_code":"140603","registration_date":"09-Apr-2018","valid_upto":"31-May-2023"}'::jsonb;
  v_desc := 'Promoter: SBP Dream City Private Limited (Other than Individual). Address: Village Nabha, MC Zirakpur, Patiala Road, Zirakpur. PIN: 140603. Valid upto: 31-May-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH42-PM0059';
  v_meta := '{"district":"Ludhiana","promoter":"Greater Ludhiana Area Development Authority (Other than Individual)","address":"Development Urban Estate, Old Sugar Mill Site, Jagraon","pin_code":"142026","registration_date":"12-Dec-2017","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: Greater Ludhiana Area Development Authority (Other than Individual). Address: Development Urban Estate, Old Sugar Mill Site, Jagraon. PIN: 142026. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PM0044';
  v_meta := '{"district":"Patiala","promoter":"Bajwa Developers Limited (Other than Individual)","address":"Sunny Enclave, Patiala","pin_code":"147001","registration_date":"01-Mar-2018","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: Bajwa Developers Limited (Other than Individual). Address: Sunny Enclave, Patiala. PIN: 147001. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PM0067';
  v_meta := '{"district":"Patiala","promoter":"Patiala Urban Planning and Development Authority (Other than Individual)","address":"Nabha Road, Patiala","pin_code":"147001","registration_date":"16-Apr-2018","valid_upto":"30-Apr-2018"}'::jsonb;
  v_desc := 'Promoter: Patiala Urban Planning and Development Authority (Other than Individual). Address: Nabha Road, Patiala. PIN: 147001. Valid upto: 30-Apr-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-RPR70-PM0096';
  v_meta := '{"district":"Rupnagar (Ropar)","promoter":"Ropar Properties & Builders Pvt Ltd (Other than Individual)","address":"Sun City II, Village Chhoti Haveli","pin_code":"140001","registration_date":"01-Jun-2018","valid_upto":"30-Jun-2020"}'::jsonb;
  v_desc := 'Promoter: Ropar Properties & Builders Pvt Ltd (Other than Individual). Address: Sun City II, Village Chhoti Haveli. PIN: 140001. Valid upto: 30-Jun-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PM0066';
  v_meta := '{"district":"Patiala","promoter":"Patiala Urban Planning and Development Authority (Other than Individual)","address":"Puda Enclave (Open Jail) Vill Bir,, Bhawanigarh Road Nabha, Teh Nabha","pin_code":"147201","registration_date":"16-Apr-2018","valid_upto":"30-Apr-2018"}'::jsonb;
  v_desc := 'Promoter: Patiala Urban Planning and Development Authority (Other than Individual). Address: Puda Enclave (Open Jail) Vill Bir,, Bhawanigarh Road Nabha, Teh Nabha. PIN: 147201. Valid upto: 30-Apr-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SBS84-PM0063';
  v_meta := '{"district":"Shahid Bhagat Singh Nagar (Nawanshahr)","promoter":"Verma colonisers private limited (Other than Individual)","address":"saloh, nawanshahr","pin_code":"144514","registration_date":"16-Apr-2018","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Verma colonisers private limited (Other than Individual). Address: saloh, nawanshahr. PIN: 144514. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PM0061';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Shiva Developers (Other than Individual)","address":"Vill-Dhakoli, Sub. Tehsil-Derabassi,","pin_code":"140603","registration_date":"21-May-2018","valid_upto":"30-Apr-2021"}'::jsonb;
  v_desc := 'Promoter: Shiva Developers (Other than Individual). Address: Vill-Dhakoli, Sub. Tehsil-Derabassi,. PIN: 140603. Valid upto: 30-Apr-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI10-PM0071';
  v_meta := '{"district":"Bathinda","promoter":"J C Developers (Other than Individual)","address":"Vill Rampura Phul, Distt. Bathinda","pin_code":"151103","registration_date":"20-Apr-2018","valid_upto":"19-Apr-2020"}'::jsonb;
  v_desc := 'Promoter: J C Developers (Other than Individual). Address: Vill Rampura Phul, Distt. Bathinda. PIN: 151103. Valid upto: 19-Apr-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTK60-PM0087';
  v_meta := '{"district":"Pathankot","promoter":"Ansal Buildwell Limited (Other than Individual)","address":"Florence city , Village Kingrian, Rare & Kingrian","pin_code":"145001","website":"www.ansalabl.com","registration_date":"11-May-2018","valid_upto":"31-May-2021"}'::jsonb;
  v_desc := 'Promoter: Ansal Buildwell Limited (Other than Individual). Address: Florence city , Village Kingrian, Rare & Kingrian. PIN: 145001. Valid upto: 31-May-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-ASR02-PM0070';
  v_meta := '{"district":"Amritsar","promoter":"BLUE CITY TOWNSHIP & COLONISERS PRIVATE LIMITED (Other than Individual)","address":"Meerankot Road","pin_code":"143001","website":"www.theaddressamritsar.in","registration_date":"20-Apr-2018","valid_upto":"28-Aug-2019"}'::jsonb;
  v_desc := 'Promoter: BLUE CITY TOWNSHIP & COLONISERS PRIVATE LIMITED (Other than Individual). Address: Meerankot Road. PIN: 143001. Valid upto: 28-Aug-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-PTL63-PM0078';
  v_meta := '{"district":"Patiala","promoter":"Jitu Real Estate Private Limited (Other than Individual)","address":"TAJ GREEN VALLEY, Village Seona, Bhadson Road","pin_code":"147001","registration_date":"02-May-2018","valid_upto":"31-Mar-2019"}'::jsonb;
  v_desc := 'Promoter: Jitu Real Estate Private Limited (Other than Individual). Address: TAJ GREEN VALLEY, Village Seona, Bhadson Road. PIN: 147001. Valid upto: 31-Mar-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PM0051';
  v_meta := '{"district":"Bathinda","promoter":"SILVER OAKS TOWNSHIP LIMITED (Other than Individual)","address":"VILLAGE BIBIWALA, BATHINDA","pin_code":"151001","registration_date":"12-Mar-2018","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: SILVER OAKS TOWNSHIP LIMITED (Other than Individual). Address: VILLAGE BIBIWALA, BATHINDA. PIN: 151001. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SBS84-PM0062';
  v_meta := '{"district":"Jalandhar","promoter":"AGI INFRA LIMITED (Other than Individual)","address":"VILLAGE KHOTHRAN","pin_code":"144407","website":"www.agiinfra.com","registration_date":"16-Apr-2018","valid_upto":"30-Sep-2018"}'::jsonb;
  v_desc := 'Promoter: AGI INFRA LIMITED (Other than Individual). Address: VILLAGE KHOTHRAN. PIN: 144407. Valid upto: 30-Sep-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PM0034';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Ubber Buildcon Private Limited (Other than Individual)","address":"Vill-haibatpur,Tehsil-Derabassi,Mohali","pin_code":"140603","registration_date":"26-Feb-2018","valid_upto":"30-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: Ubber Buildcon Private Limited (Other than Individual). Address: Vill-haibatpur,Tehsil-Derabassi,Mohali. PIN: 140603. Valid upto: 30-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PM0056';
  v_meta := '{"district":"Bathinda","promoter":"Indira Infratech Private Limited (Other than Individual)","address":"Kharsa No. 4812, Multania Road","pin_code":"151001","registration_date":"14-Mar-2018","valid_upto":"14-Sep-2019"}'::jsonb;
  v_desc := 'Promoter: Indira Infratech Private Limited (Other than Individual). Address: Kharsa No. 4812, Multania Road. PIN: 151001. Valid upto: 14-Sep-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PM0060';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"DAMINI RESORTS & BUILDERS PVT. LTD. (Other than Individual)","address":"VILLAGE BALIALI","pin_code":"160055","registration_date":"12-Apr-2018","valid_upto":"30-Apr-2023"}'::jsonb;
  v_desc := 'Promoter: DAMINI RESORTS & BUILDERS PVT. LTD. (Other than Individual). Address: VILLAGE BALIALI. PIN: 160055. Valid upto: 30-Apr-2023';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PM0053';
  v_meta := '{"district":"Bathinda","promoter":"SILVER OAKS TOWNSHIP LIMITED (Other than Individual)","address":"VILLAGE BIBIWALA, BATHINDA","pin_code":"151001","registration_date":"12-Mar-2018","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: SILVER OAKS TOWNSHIP LIMITED (Other than Individual). Address: VILLAGE BIBIWALA, BATHINDA. PIN: 151001. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-RPR67-PM0064';
  v_meta := '{"district":"Rupnagar (Ropar)","promoter":"Bhagwati dream homes private limited (Other than Individual)","address":"Village Sahota and nanowal, anandpur sahib","pin_code":"140118","registration_date":"16-Apr-2018","valid_upto":"30-Sep-2020"}'::jsonb;
  v_desc := 'Promoter: Bhagwati dream homes private limited (Other than Individual). Address: Village Sahota and nanowal, anandpur sahib. PIN: 140118. Valid upto: 30-Sep-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-BTI08-PM0052';
  v_meta := '{"district":"Bathinda","promoter":"SILVER OAK TOWNSHIP LIMITED (Other than Individual)","address":"VILLAGE BIBIWALA, BATHINDA","pin_code":"151001","registration_date":"12-Mar-2018","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: SILVER OAK TOWNSHIP LIMITED (Other than Individual). Address: VILLAGE BIBIWALA, BATHINDA. PIN: 151001. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PM0054';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Saini Developers & Promoters Pvt. Ltd. (Other than Individual)","address":"Village- Samlehri, Lalru, Derabassi","pin_code":"140507","registration_date":"13-Mar-2018","valid_upto":"31-Oct-2020"}'::jsonb;
  v_desc := 'Promoter: Saini Developers & Promoters Pvt. Ltd. (Other than Individual). Address: Village- Samlehri, Lalru, Derabassi. PIN: 140507. Valid upto: 31-Oct-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PM0055';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Saini Developers & Promoters Pvt. Ltd. (Other than Individual)","address":"Village Kaulimajra, MC Lalru","pin_code":"140507","registration_date":"13-Mar-2018","valid_upto":"15-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: Saini Developers & Promoters Pvt. Ltd. (Other than Individual). Address: Village Kaulimajra, MC Lalru. PIN: 140507. Valid upto: 15-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PM0033';
  v_meta := '{"district":"Ludhiana","promoter":"HCS Infrastructure Projects Pvt Ltd (Other than Individual)","address":"Village Machhiwara, Samrala, District Ludhiana","pin_code":"141114","registration_date":"23-Feb-2018","valid_upto":"29-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: HCS Infrastructure Projects Pvt Ltd (Other than Individual). Address: Village Machhiwara, Samrala, District Ludhiana. PIN: 141114. Valid upto: 29-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PM0043';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Rohit   Bansal  (Individual)","address":"Vill-Jharmari, Tehsil-Derabassi","pin_code":"141601","registration_date":"01-Mar-2018","valid_upto":"30-Dec-2022"}'::jsonb;
  v_desc := 'Promoter: Rohit   Bansal  (Individual). Address: Vill-Jharmari, Tehsil-Derabassi. PIN: 141601. Valid upto: 30-Dec-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PM0040';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GOLDEN ESTATES (Other than Individual)","address":"GREEN VALLEY, GHOLUMAJRA NAC LALRU","pin_code":"140507","registration_date":"01-Mar-2018","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: GOLDEN ESTATES (Other than Individual). Address: GREEN VALLEY, GHOLUMAJRA NAC LALRU. PIN: 140507. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PM0076';
  v_meta := '{"district":"Ludhiana","promoter":"Ratnesh Infrastructures Pvt Ltd (Other than Individual)","address":"Ridhi Enclave, Village Jassar, Ludhiana","pin_code":"141206","registration_date":"01-May-2018","valid_upto":"29-Apr-2020"}'::jsonb;
  v_desc := 'Promoter: Ratnesh Infrastructures Pvt Ltd (Other than Individual). Address: Ridhi Enclave, Village Jassar, Ludhiana. PIN: 141206. Valid upto: 29-Apr-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PM0042';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"GOLDEN ESTATE III (Other than Individual)","address":"GREEN VALLEY, VILLAGE GULABGARH DERABASSI","pin_code":"140507","registration_date":"01-Mar-2018","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: GOLDEN ESTATE III (Other than Individual). Address: GREEN VALLEY, VILLAGE GULABGARH DERABASSI. PIN: 140507. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR75-PM0098';
  v_meta := '{"district":"Sangrur","promoter":"Grewal Properties & Real Estate (Other than Individual)","address":"Village Mangwal on Sangrur Patiala road","pin_code":"148001","registration_date":"18-Sep-2017","valid_upto":"30-Sep-2018"}'::jsonb;
  v_desc := 'Promoter: Grewal Properties & Real Estate (Other than Individual). Address: Village Mangwal on Sangrur Patiala road. PIN: 148001. Valid upto: 30-Sep-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PM0016';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Chandigarh Infrastructure & Developers (Other than Individual)","address":"Village Derabassi","pin_code":"140603","registration_date":"19-Dec-2017","valid_upto":"31-Dec-2018"}'::jsonb;
  v_desc := 'Promoter: Chandigarh Infrastructure & Developers (Other than Individual). Address: Village Derabassi. PIN: 140603. Valid upto: 31-Dec-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH44-PC0028';
  v_meta := '{"district":"Ludhiana","promoter":"Kwality Colonisers Pvt Ltd (Other than Individual)","address":"Chandigarh Road, Ludhiana","pin_code":"141010","registration_date":"29-Nov-2018","valid_upto":"31-Jul-2022"}'::jsonb;
  v_desc := 'Promoter: Kwality Colonisers Pvt Ltd (Other than Individual). Address: Chandigarh Road, Ludhiana. PIN: 141010. Valid upto: 31-Jul-2022';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PM0037';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Rana Infracon (India)Private Limited (Other than Individual)","address":"Vill-Chaundheri, lalru,tehsil-derabassi","pin_code":"140601","registration_date":"26-Feb-2018","valid_upto":"30-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: Rana Infracon (India)Private Limited (Other than Individual). Address: Vill-Chaundheri, lalru,tehsil-derabassi. PIN: 140601. Valid upto: 30-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PR0350';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Reliant Infrastructure (Other than Individual)","address":"WORLD 1 (Phase 1 and Block-E), Kkarar Landran Road,, Sector 115, Teh- Kharar, Distt, SAS Nagar Mohali, Punjab.","pin_code":"140301","registration_date":"27-Apr-2018","valid_upto":"30-Apr-2020"}'::jsonb;
  v_desc := 'Promoter: Reliant Infrastructure (Other than Individual). Address: WORLD 1 (Phase 1 and Block-E), Kkarar Landran Road,, Sector 115, Teh- Kharar, Distt, SAS Nagar Mohali, Punjab.. PIN: 140301. Valid upto: 30-Apr-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-MNS50-PM0086';
  v_meta := '{"district":"Mansa","promoter":"MANOHAR LAL GARG -KARTA (Individual)","address":"Barnala Road","pin_code":"151505","registration_date":"10-May-2018","valid_upto":"11-Mar-2019"}'::jsonb;
  v_desc := 'Promoter: MANOHAR LAL GARG -KARTA (Individual). Address: Barnala Road. PIN: 151505. Valid upto: 11-Mar-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS80-PC0018';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"G.S. PROMOTERS AND DEVELOPERS (Other than Individual)","address":"MAUJA NABHA, MC ZIRAKPUR","pin_code":"140603","registration_date":"26-Sep-2017","valid_upto":"31-Dec-2020"}'::jsonb;
  v_desc := 'Promoter: G.S. PROMOTERS AND DEVELOPERS (Other than Individual). Address: MAUJA NABHA, MC ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-RPR70-PM0097';
  v_meta := '{"district":"Rupnagar (Ropar)","promoter":"Ropar Properties & Builders Pvt Ltd (Other than Individual)","address":"Top Enclave, Vill Arazi, Ropar","pin_code":"140001","registration_date":"07-Jun-2018","valid_upto":"30-Jun-2020"}'::jsonb;
  v_desc := 'Promoter: Ropar Properties & Builders Pvt Ltd (Other than Individual). Address: Top Enclave, Vill Arazi, Ropar. PIN: 140001. Valid upto: 30-Jun-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PM0079';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Darshan   Singh (Individual)","address":"Near ITI Lalru","pin_code":"140601","registration_date":"02-May-2018","valid_upto":"30-Aug-2020"}'::jsonb;
  v_desc := 'Promoter: Darshan   Singh (Individual). Address: Near ITI Lalru. PIN: 140601. Valid upto: 30-Aug-2020';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-FDK12-PM0095';
  v_meta := '{"district":"Faridkot","promoter":"Rajdewinder  Singh (Individual)","address":"Kotkapura , Faridkot","pin_code":"151203","registration_date":"30-May-2018","valid_upto":"21-Mar-2019"}'::jsonb;
  v_desc := 'Promoter: Rajdewinder  Singh (Individual). Address: Kotkapura , Faridkot. PIN: 151203. Valid upto: 21-Mar-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SGR75-PM0090';
  v_meta := '{"district":"Sangrur","promoter":"Grewal Properties & Real Estate (Other than Individual)","address":"Village Akoi, Sangrur-Dhuri Road","pin_code":"148001","registration_date":"18-May-2018","valid_upto":"30-Sep-2018"}'::jsonb;
  v_desc := 'Promoter: Grewal Properties & Real Estate (Other than Individual). Address: Village Akoi, Sangrur-Dhuri Road. PIN: 148001. Valid upto: 30-Sep-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-JAL33-PM0081';
  v_meta := '{"district":"Jalandhar","promoter":"PARAMOUNT TRADE VENTURE PVT LTD (Other than Individual)","address":"VPO CHUHARWALI, TEH ADAMPUR","pin_code":"144004","registration_date":"04-May-2018","valid_upto":"30-Apr-2021"}'::jsonb;
  v_desc := 'Promoter: PARAMOUNT TRADE VENTURE PVT LTD (Other than Individual). Address: VPO CHUHARWALI, TEH ADAMPUR. PIN: 144004. Valid upto: 30-Apr-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-LDH45-PR0156';
  v_meta := '{"district":"Ludhiana","promoter":"OMAXE LIMITED (Other than Individual)","address":"Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana","pin_code":"142022","website":"www.omaxe.com","registration_date":"11-Oct-2017","valid_upto":"31-Oct-2017"}'::jsonb;
  v_desc := 'Promoter: OMAXE LIMITED (Other than Individual). Address: Village Thakarwal & Dad, Pakhowal Road, Tehsil and Distt. Ludhiana. PIN: 142022. Valid upto: 31-Oct-2017';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0154';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"WAVE ESTATE, SECTOR -85 & 99","pin_code":"143308","registration_date":"11-Oct-2017","valid_upto":"28-Feb-2021"}'::jsonb;
  v_desc := 'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: WAVE ESTATE, SECTOR -85 & 99. PIN: 143308. Valid upto: 28-Feb-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0151';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual)","address":"WAVE ESTATE, SECTOR -85","pin_code":"143308","registration_date":"11-Oct-2017","valid_upto":"30-Jun-2018"}'::jsonb;
  v_desc := 'Promoter: COUNTRY COLONISERS PRIVATE LIMITED (Other than Individual). Address: WAVE ESTATE, SECTOR -85. PIN: 143308. Valid upto: 30-Jun-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0124';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Acme Builders Pvt Ltd (Other than Individual)","address":"Acme Builders Pvt Ltd, GH.10, JLPL,Sector 91","pin_code":"160062","website":"http://www.acmebuilders.in/","registration_date":"27-Sep-2017","valid_upto":"31-Dec-2019"}'::jsonb;
  v_desc := 'Promoter: Acme Builders Pvt Ltd (Other than Individual). Address: Acme Builders Pvt Ltd, GH.10, JLPL,Sector 91. PIN: 160062. Valid upto: 31-Dec-2019';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0127';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"HIGHLAND PARK HOMES (Other than Individual)","address":"VILLAGE BHABHAT, ZIRAKPUR","pin_code":"140603","registration_date":"29-Sep-2017","valid_upto":"31-Dec-2021"}'::jsonb;
  v_desc := 'Promoter: HIGHLAND PARK HOMES (Other than Individual). Address: VILLAGE BHABHAT, ZIRAKPUR. PIN: 140603. Valid upto: 31-Dec-2021';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS79-PR0043';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"Indian Railway Welfare Organisation ( IRWO ) (Other than Individual)","address":"RAIL VIHAR at VIP road, Zirakpur, zirakpur","pin_code":"140603","website":"www.irwo.net","registration_date":"08-Sep-2017","valid_upto":"31-Oct-2018"}'::jsonb;
  v_desc := 'Promoter: Indian Railway Welfare Organisation ( IRWO ) (Other than Individual). Address: RAIL VIHAR at VIP road, Zirakpur, zirakpur. PIN: 140603. Valid upto: 31-Oct-2018';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  v_rera := 'PBRERA-SAS81-PR0308';
  v_meta := '{"district":"Sahibzada Ajit Singh Nagar (Mohali)","promoter":"TDI INFRATECH LIMITED (Other than Individual)","address":"WELLINGTON HEIGHTS 2, SECTOR 117 TDI CITY I","pin_code":"140301","registration_date":"07-Mar-2018","valid_upto":"26-Oct-2017"}'::jsonb;
  v_desc := 'Promoter: TDI INFRATECH LIMITED (Other than Individual). Address: WELLINGTON HEIGHTS 2, SECTOR 117 TDI CITY I. PIN: 140301. Valid upto: 26-Oct-2017';
  UPDATE projects SET metadata = v_meta, description = v_desc WHERE tenant_id = v_tenant_id AND rera_number = v_rera AND metadata = '{}'::jsonb;
  IF FOUND THEN v_updated := v_updated + 1; END IF;

  RAISE NOTICE 'Part 5: updated % projects', v_updated;
END $$;