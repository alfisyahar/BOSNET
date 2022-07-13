--SELECT TOP 5 * FROM EIP_EClaim_FeClaimSubmission
--SELECT TOP 3 * FROM EIP_EClaim_FeClaimSubmissionItemNonTransaction
--SELECT TOP 10 * FROM EIP_EClaim_FeClaimSubmissionItemNonTransactionDetail
--SELECT * FROM EIP_EClaim_FPromotionApproval where szProgramId = 'PAF-22-0000537'
--SELECT TOP 3 * FROM EIP_EClaim_FIncentiveProposal
--SELECT TOP 3 * FROM EIP_EClaim_FInternalMemo
--SELECT * FROM EIP_EClaim_FeClaimSubmission WHERE szProgramId = 'PAF-21-0001851'
--SELECT TOP 5 * FROM BOS_AR_Customer
--SELECT TOP 5 * FROM EIP_EClaim_FPromotionApproval
--SELECT TOP 50 * FROM EIP_EClaim_FeClaimSubmission WHERE 
--SELECT TOP 50 * FROM BOS_TIN_CustTaxIndConfig

--SELECT DTL.shItemNumberDetail 
--	                                    , DTL.szCustId 
--	                                    , ISNULL(CUST.szName, '') AS szCustName
--	                                    , DTL.szProductId 
--	                                    , ISNULL(PROD.szName, '') AS szProductName
--	                                    , DTL.szFakturNo 
--	                                    , DTL.decQty 
--	                                    , DTL.decPrice 
--	                                    , DTL.decAmount 
--	                                    , DTL.decPercentRafaksi 
--	                                    , DTL.decAmountRafaksi 
--	                                    , DTL.decClaim 
--	                                    , DTL.dtmPayment
--	                                    , DTL.szKodePPHId
--	                                    , DTL.decPPHPercentage
--	                                    , DTL.decPPH
--	                                    , DTL.bPPN
--	                                    , DTL.decPPN
--                                        , CUSTTAX.szNPWP
--                                        , CUSTTAX.szNoKTP
--                                        , CUSTTAX.szKTPName
--                                        , CUSTTAX.szNPWPName
--                                    FROM EIP_EClaim_FeClaimSubmissionItemNonTransactionDetail DTL
--                                    LEFT JOIN BOS_AR_Customer CUST
--	                                    ON DTL.szCustId = CUST.szCustID
--                                    LEFT JOIN BOS_INV_Product PROD
--	                                    ON DTL.szProductId = PROD.szProductId
--                                    LEFT JOIN BOS_TIN_CustTaxIndConfig CUSTTAX
--                                        ON DTL.szCustId = CUSTTAX.szCustId


ALTER TABLE EIP_EClaim_FeClaimSubmission 
ADD dtmPrinted datetime
CONSTRAINT DF_EIP_EClaim_FeClaimSubmission_dtmPrinted DEFAULT ''

ALTER TABLE EIP_EClaim_FeClaimSubmission 
ADD iPrintedCount int
CONSTRAINT DF_EIP_EClaim_FeClaimSubmission_iPrintedCount DEFAULT ''


--ALTER TABLE EIP_EClaim_FPromotionApproval 
--ADD dtmPrinted datetime
--CONSTRAINT DF_EIP_EClaim_FPromotionApproval_dtmPrinted DEFAULT ''

--ALTER TABLE EIP_EClaim_FIncentiveProposal 
--ADD dtmPrinted datetime
--CONSTRAINT DF_EIP_EClaim_FIncentiveProposal_dtmPrinted DEFAULT ''

--ALTER TABLE EIP_EClaim_FInternalMemo 
--ADD dtmPrinted datetime
--CONSTRAINT DF_EIP_EClaim_FInternalMemo_dtmPrinted DEFAULT ''

--ALTER TABLE EIP_EClaim_FPromotionApproval 
--ADD iPrintedCount int NOT NULL
--CONSTRAINT DF_EIP_EClaim_FPromotionApproval_iPrintedCount DEFAULT ''

--ALTER TABLE EIP_EClaim_FIncentiveProposal 
--ADD iPrintedCount int NOT NULL
--CONSTRAINT DF_EIP_EClaim_FIncentiveProposal_iPrintedCount DEFAULT ''

--ALTER TABLE EIP_EClaim_FInternalMemo 
--ADD iPrintedCount int NOT NULL
--CONSTRAINT DF_EIP_EClaim_FInternalMemo_iPrintedCount DEFAULT ''

--ALTER TABLE EIP_EClaim_FPromotionApproval 
--DROP CONSTRAINT DF_EIP_EClaim_FPromotionApproval_iPrintedCount

--ALTER TABLE EIP_EClaim_FPromotionApproval
--DROP COLUMN iPrintedCount