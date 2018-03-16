select count(*) as Minus_Cnt
from(
sel	
CASE	WHEN GLEL_DATA.G_GE_EXC_FLG='Y' THEN 'N' 
ELSE	'Y' 
END	as PS_PST_FL,
GLEL_DATA.TRADEID as TRD_ID,
R00322_001_TRADE.NOTIONALAMOUNT2 as NOTIONAL_AMT_2,
GLEL_DATA.G_GL_CUST_CLASS as PS_CLAS_FLD_ID,
R00322_001_TRADE.PORTFOLIONAME as PTFOL_NM,
GLEL_DATA.G_GL_AFFILIATE as PS_AFFL_ID,
R00322_001_TRADE.IFRSCLASSIFICATION as IFRS_CLSN_CD,
GLEL_DATA.G_GL_TXN_CCY as TRAN_CURY_CD,
R00322_001_TRADE.INSERTIONDATE as TRD_INSRT_DT,
GLEL_DATA.G_GL_ACCOUNT as PS_ACCT_ID,
R00322_001_TRADE.BUYSELLINDICATOR2 as BUY_SEL_IN_2,
R00322_001_TRADE.COSTCENTERREF as CC_CD,
R00322_001_TRADE.NOTIONALAMOUNT1  as NOTIONAL_AMT_1,
V_CNTPTY_REF_SYS.SCI_LSP_ID as SCI_LSP_ID,
R00322_001_TRADE.NEXTFIXINGDATE1 as NEXT_FXING_DT,
R00322_001_TRADE.TRADECONTRACTUSAGE as TRD_CNTC_USG_DESC,
R00322_001_TRADE.PRODUCTACCOUNTINGTYPOLOGY as PROD_ACTG_TPLGY_CD,
R00322_001_TRADE.HEDGEID as HEDGE_ID,
R00322_001_TRADE.CONTRACTID as CNTC_ID,
R00322_001_TRADE.PRODUCTCODE as PROD_CD,
R00322_001_TRADE.DISCOUNTEDMARKETVALUE as DISC_MARKET_VAL,
R00322_001_TRADE.ADJUSTEDVALUEDATE1 as VAL_DT,
PSFN3_BU_COUNTRY.COUNTRY as CTRY_CD,
R00322_001_TRADE.LIENAMOUNT as LIENAMOUNT,
R00322_001_TRADE.EXTERNALTRADEID as EXTR_TRD_ID,
R00315_008_TPTSLACCTHIER.ACCOUNTING_CATEGORY as ACCT_SUB_CAT_NM,
CASE	WHEN GLEL_DATA.G_GL_TXN_CCY = 'USD' THEN TP_BAL_AMT 
ELSE	CAST(COALESCE(GLEL_DATA.G_GE_BAL_AMT, GLEL_DATA.G_GL_BAL_AMT) * V_CURY_TRNSL_RT.SRC_TO_TGT_CURY_RT as DECIMAL (38,4)) 
END	as TP_BAL_USD_AMT,
GLEL_DATA.G_GL_BUS_UNIT_GL as PS_BUSN_UNIT_ID,
R00322_001_TRADE.BCDFTRADEID as TP_TRD_KEY,
('G') as GAAP_CD,
R00322_001_TRADE.PAYRECINDICATOR1 as PAY_RECV_IN,
R00322_001_TRADE.PACKAGEID as PKG_ID,
R00322_001_TRADE.TPCOSTCENTER as PTFOL_ID,
GLEL_DATA.G_GL_TXN_CCY as PS_CURY_CD,
R00322_001_TRADE.EXTERNALSYSTEM as EXTR_SYS_NM,
R00322_001_TRADE.CONTRACTVERSION as CNTC_VERS_NO,
('F') as MGMT_BOOK_CD,
R00322_001_TRADE.NOTIONALCURRENCY1 as NOTIONAL_CCY_1,
R00322_001_TRADE.ORIGINALTRADEID as ORIG_TRD_ID,
R00322_001_TRADE.INSTRUMENTNAME as INSTM_ID,
R00322_001_TRADE.PRODUCTTYPE as PROD_TYPE_CD,
R00322_001_TRADE.TRADEDATE as TRD_DT,
R00322_001_TRADE.NEARFARFLAG as NEAR_FAR_LEG_IN,
V_CNTPTY_REF_SYS.INTG_CNTPTY_ID as INTG_CNTPTY_ID,
R00322_001_TRADE.IFRSLEVEL as IFRS_LVL_NO,
R00322_001_TRADE.INITIALEXCHANGEFLAG as INTL_EXCHANGE_FLAG,
R00322_001_TRADE.TRADEVERSION as TRD_SEQ_NO,
CAST('2017-11-30' as DATE) AS COB_DT,
R00322_001_TRADE.TRADETYPOLOGY as TRD_TPLGY_NM,
GLEL_DATA.G_GL_OPERAT_UNIT as PS_OPRT_UNIT_ID,
R00322_001_TRADE.INTERNALDEALFLAG as INTRNL_DEAL_FL,
R00322_001_TRADE.LegalEntityID as LEGAL_ENTITY_ID,
R00322_001_TRADE.INTERESTRATE1 as INT_RT,
('FEDS') as TP_SYS_NM,
GLEL_DATA.G_GL_DEPARTMENT as PS_DEPT_ID,
R00315_008_TPTSLACCTHIER.TRADE_SUB_LEDGER_CATEGORY     as ACCT_CAT_NM,
R00322_001_TRADE.NOTIONALCURRENCY2 as NOTIONAL_CCY_2,
GLEL_DATA.G_DM_ACCT_GROUP as ACCT_GRP_CD,
GLEL_DATA.G_DM_ACCT_CLASS as G_DM_ACCT_CLASS,
GLEL_DATA.G_DM_AMT_GROUP  as AMT_GRP_CD,
R00322_001_TRADE.PRODUCTGROUP as PROD_GRP_CD,
COALESCE(GLEL_DATA.G_GE_BAL_AMT, GLEL_DATA.G_GL_BAL_AMT) AS TP_BAL_AMT,
V_CNTPTY_REF_SYS.SCI_LE_ID as SCI_LE_ID,
--('322' || TRIM(CAST(CSUM(1,1) AS VARCHAR(30)))) as SURR_KEY,
GLEL_DATA.G_GE_CR_DR as DR_CR_TYPE_CD,
R00322_001_TRADE.TRADERID as TRDR_ID,
R00322_001_TRADE.LIFECYCLESTATUS as LIFE_CYCLE_STATUS,
R00322_001_TRADE.NONDISCOUNTEDMARKETVALUE as NON_DISC_MARKET_VAL,
PSFN3_PS_BUS_UNIT_GL_RB1.BU_BASE_CURRENCY as LOCAL_CURY_CD,
R00322_001_TRADE.PRODUCTFAMILY as PROD_FMLY_CD,
R00322_001_TRADE.ADJUSTEDMATURITYDATE as TRD_MATURITY_DT,
GLEL_DATA.G_GL_PRODUCT as PS_PROD_ID,
R00322_001_TRADE.TPENTITYNAME as TP_ENTITY_NM,
V_CURY_TRNSL_RT.SRC_TO_TGT_CURY_RT as EXCH_RT,
R00322_001_TRADE.FINALEXCHANGEFLAG as FNL_EXHANGE_FL,
GLEL_DATA.G_DM_AMT_TYPE as AMT_TYPE_CD,
R00322_001_TRADE.BUYSELLINDICATOR1 as BUY_SEL_IN,
CAST(CAST(R00322_001_TRADE.COUNTERPARTYID AS INTEGER) AS VARCHAR(100))  as TP_CNTPTY_ID,
R00322_001_TRADE.TRADEPURPOSE as TRD_PRPS_DESC

FROM	(
select	* 
from	(
SELECT	G_DM_ACCT_CLASS, G_GL_BAL_AMT,G_DM_ACCT_GROUP, G_DM_AMT_GROUP,
		COALESCE(G_GE_EXC_FLG,'N') AS G_GE_EXC_FLG, G_GE_BAL_AMT, G_TA_TP_BAL_AMT,
		CASE 
	WHEN	G_DM_AMT_TYPE='' THEN NULL 
ELSE	 G_DM_AMT_TYPE 
END	AS G_DM_AMT_TYPE ,G_TA_PRODUCT_CODE ,G_TA_TP_ACCOUNT ,PF_TRANS_DT ,
		G_GE_PORTFOLIO ,G_TA_TRADE_ID ,G_GL_OPERAT_UNIT ,G_GL_TXN_CCY ,
		G_GE_STRUCT_FLG ,G_GL_DEPARTMENT ,G_GL_CUST_CLASS ,G_GL_BUS_UNIT_GL ,
		G_GL_AFFILIATE ,G_GL_ACCOUNT ,G_GL_RP_PRODUCT ,G_GL_PRODUCT ,
		G_GE_CR_DR ,G_GE_STR_PRD_GRP, 
CASE	WHEN G_DM_AMT_TYPE = 'TGT' THEN 3 
	WHEN	G_DM_AMT_TYPE = 'PTH' THEN 2 
	WHEN	G_DM_AMT_TYPE = 'ADJ' THEN 1 
ELSE	0 
END	AS G_DM_AMT_TYP_IND, COALESCE(
CASE	WHEN TRIM(G_TA_TRADE_ID) = '' THEN NULL 
ELSE	G_TA_TRADE_ID 
END	,G_GE_TRADE_ID) AS TRADEID 
FROM	SCS07_SRI_VR.R00292_004_ACCTNGBS 
WHERE	PF_TRANS_DT = '2017-11-30' 
	AND	RECORD_DELETED_FLAG=0 
	AND	G_DM_AMT_TYPE IN ('PTH', 'TGT') 
QUALIFY	 MAX(G_DM_AMT_TYP_IND) OVER (PARTITION BY TRADEID,G_DM_ACCT_GROUP,
		G_DM_AMT_GROUP) = G_DM_AMT_TYP_IND 
UNION	
 SELECT G_DM_ACCT_CLASS, G_GL_BAL_AMT, G_DM_ACCT_GROUP, G_DM_AMT_GROUP,
		COALESCE(G_GE_EXC_FLG,'N') AS G_GE_EXC_FLG, G_GE_BAL_AMT, G_TA_TP_BAL_AMT,
		CASE 
	WHEN	G_DM_AMT_TYPE='' THEN NULL 
ELSE	 G_DM_AMT_TYPE 
END	AS G_DM_AMT_TYPE ,G_TA_PRODUCT_CODE ,G_TA_TP_ACCOUNT ,PF_TRANS_DT ,
		G_GE_PORTFOLIO ,G_TA_TRADE_ID ,G_GL_OPERAT_UNIT ,G_GL_TXN_CCY ,
		G_GE_STRUCT_FLG ,G_GL_DEPARTMENT ,G_GL_CUST_CLASS ,G_GL_BUS_UNIT_GL ,
		G_GL_AFFILIATE ,G_GL_ACCOUNT ,G_GL_RP_PRODUCT ,G_GL_PRODUCT ,
		G_GE_CR_DR ,G_GE_STR_PRD_GRP, 
CASE	WHEN G_DM_AMT_TYPE = 'TGT' THEN 3 
	WHEN	G_DM_AMT_TYPE = 'PTH' THEN 2 
	WHEN	G_DM_AMT_TYPE = 'ADJ' THEN 1 
ELSE	0 
END	AS G_DM_AMT_TYP_IND, COALESCE(
CASE	WHEN TRIM(G_TA_TRADE_ID) = '' THEN NULL 
ELSE	G_TA_TRADE_ID 
END	,G_GE_TRADE_ID) AS TRADEID 
FROM	SCS07_SRI_VR.R00292_003_ACCTNGPL 
WHERE	PF_TRANS_DT = '2017-11-30' 
	AND	RECORD_DELETED_FLAG=0 
	AND	G_DM_AMT_TYPE IN ('PTH', 'TGT') 
QUALIFY	 MAX(G_DM_AMT_TYP_IND) OVER (PARTITION BY TRADEID,G_DM_ACCT_GROUP,
		G_DM_AMT_GROUP) = G_DM_AMT_TYP_IND)  AS GLEL_DATA) as GLEL_DATA
 LEFT JOIN (
select	* 
from	SCS07_SRI_VR.R00322_001_TRADE AS R00322_001_TRADE
 where R00322_001_TRADE.ASOFDATE = '2017-11-30' 
	AND	R00322_001_TRADE.RECORD_DELETED_FLAG=0) as R00322_001_TRADE
	on	GLEL_DATA.G_TA_TRADE_ID = R00322_001_TRADE.TRADEID 
	AND	GLEL_DATA.G_GE_PORTFOLIO = R00322_001_TRADE.PORTFOLIONAME 
	AND	GLEL_DATA.PF_TRANS_DT = R00322_001_TRADE.ASOFDATE 
 LEFT JOIN (
select	* 
from	SCS07_FCM_VR.V_CNTPTY_REF_SYS AS V_CNTPTY_REF_SYS
 where REF_SYS_CD='ATLAS' 
	AND	date '2017-11-30' between start_date and end_date  
	AND	RECORD_DELETED_FLAG=0  
QUALIFY	ROW_NUMBER() OVER (PARTITION BY REF_SYS_CNTPTY_ID 
ORDER	BY REF_SYS_CNTPTY_ID) = 1) as V_CNTPTY_REF_SYS
	on	CAST(CAST(R00322_001_TRADE.COUNTERPARTYID AS INTEGER) AS VARCHAR(100))  = V_CNTPTY_REF_SYS.REF_SYS_CNTPTY_ID 
 LEFT JOIN (
select	* 
from	(
SELECT	 BUSINESS_UNIT,COUNTRY 
FROM	SCS07_CORE_VR.PSFN3_BU_COUNTRY 
WHERE	END_DATE ='9999-12-31' 
	AND	RECORD_DELETED_FLAG=0 
GROUP	BY BUSINESS_UNIT,COUNTRY) AS PSFN3_BU_COUNTRY) as PSFN3_BU_COUNTRY
	on	PSFN3_BU_COUNTRY.BUSINESS_UNIT = GLEL_DATA.G_GL_BUS_UNIT_GL 
 LEFT JOIN (
select	* 
from	SCS07_CORE_VR.PSFN3_PS_BUS_UNIT_GL_RB1 AS PSFN3_PS_BUS_UNIT_GL_RB1
 where END_DATE ='9999-12-31' 
	AND	RECORD_DELETED_FLAG=0) as PSFN3_PS_BUS_UNIT_GL_RB1
	on	PSFN3_PS_BUS_UNIT_GL_RB1.PS_BUSINESS_UNIT_ID = GLEL_DATA.G_GL_BUS_UNIT_GL 
 LEFT JOIN (
select	* 
from	(
SELECT	MAX(SRC_TO_TGT_CURY_RT) AS SRC_TO_TGT_CURY_RT, SRC_CURY_CD 
FROM	SCS07_CORE_VR.V_CURY_TRNSL_RT 
WHERE	END_DATE ='9999-12-31' 
	AND	RECORD_DELETED_FLAG=0 
	AND	TGT_CURY_CD ='USD' 
GROUP	BY SRC_CURY_CD) AS V_CURY_TRNSL_RT) as V_CURY_TRNSL_RT
	on	V_CURY_TRNSL_RT.SRC_CURY_CD = GLEL_DATA.G_GL_TXN_CCY 
 LEFT JOIN (
select	* 
from	SCS07_SRI_VR.R00315_008_TPTSLACCTHIER AS R00315_008_TPTSLACCTHIER
 where END_DATE ='9999-12-31' 
	AND	RECORD_DELETED_FLAG=0) as R00315_008_TPTSLACCTHIER
	on	GLEL_DATA.G_TA_TP_ACCOUNT||GLEL_DATA.G_TA_PRODUCT_CODE = R00315_008_TPTSLACCTHIER.TRADE_SUB_LEDGER_ACCOUNT 

minus	

sel distinct
PS_PST_FL
,TRD_ID
,NOTIONAL_AMT_2
,PS_CLAS_FLD_ID
,PTFOL_NM
,PS_AFFL_ID
,IFRS_CLSN_CD
,TRAN_CURY_CD
,TRD_INSRT_DT
,PS_ACCT_ID
,BUY_SEL_IN_2
,CC_CD
,NOTIONAL_AMT_1
,SCI_LSP_ID
,NEXT_FXING_DT
,TRD_CNTC_USG_DESC
,PROD_ACTG_TPLGY_CD
,HEDGE_ID
,CNTC_ID
,PROD_CD
,DISC_MARKET_VAL
,VAL_DT
,CTRY_CD
,LIENAMOUNT
,EXTR_TRD_ID
,ACCT_SUB_CAT_NM
,TP_BAL_USD_AMT
,PS_BUSN_UNIT_ID
,TP_TRD_KEY
,GAAP_CD
,PAY_RECV_IN
,PKG_ID
,PTFOL_ID
,PS_CURY_CD
,EXTR_SYS_NM
,CNTC_VERS_NO
,MGMT_BOOK_CD
,NOTIONAL_CCY_1
,ORIG_TRD_ID
,INSTM_ID
,PROD_TYPE_CD
,TRD_DT
,NEAR_FAR_LEG_IN
,INTG_CNTPTY_ID
,IFRS_LVL_NO
,INTL_EXCHANGE_FLAG
,TRD_SEQ_NO
,COB_DT
,TRD_TPLGY_NM
,PS_OPRT_UNIT_ID
,INTRNL_DEAL_FL
,LEGAL_ENTITY_ID
,INT_RT
,TP_SYS_NM
,PS_DEPT_ID
,ACCT_CAT_NM
,NOTIONAL_CCY_2
,ACCT_GRP_CD
,G_DM_ACCT_CLASS
,AMT_GRP_CD
,PROD_GRP_CD
,TP_BAL_AMT
,SCI_LE_ID
--,SURR_KEY
,DR_CR_TYPE_CD
,TRDR_ID
,LIFE_CYCLE_STATUS
,NON_DISC_MARKET_VAL
,LOCAL_CURY_CD
,PROD_FMLY_CD
,TRD_MATURITY_DT
,PS_PROD_ID
,TP_ENTITY_NM
,EXCH_RT
,FNL_EXHANGE_FL
,AMT_TYPE_CD
,BUY_SEL_IN
,TP_CNTPTY_ID
,TRD_PRPS_DESC

 from	SCS07_FCM_VR.V_TRD_ACCT			
where	CTL_ID = 322		
	and	start_date = date'2017-11-30'
) tbl