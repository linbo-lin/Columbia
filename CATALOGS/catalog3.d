//Catalog model D text file, abbreviate
// 06-22-98 Yu
// note the orders of the tables, the table with no foreign keys should be put first
RelName: R			// string_t 	
Card: 5				// real_t
UCard: 5			// real_t
Width: 0.1
Order: any
OrderKey: ()
CandidateKey: (RRK)
NumOfAttr: 2			// int_t
// Name (S)		Type (E)	UniqeCard(D)       Max (D)	Min (D)        Comment
RRK			real_t		5
RN			string_t	5
NumofIndex: 0
//IndexName(S) 	Attribute (K)	Order (E)	Culstered(F/T)
//NumofBitIndex: 1
//IndexName		Bit_attrs		Index_attr		Predicate
//NNK_RN			(RN)			N.NNK			(OP_EQ, (ATTR(R.RN)), (STR("SREGION")))

RelName: P			// string_t 	
Card: 200000			// real_t
UCard: 200000			// real_t
Width: 0.1
Order: any
OrderKey: ()
CandidateKey: (PPK)
NumOfAttr: 7			// int_t
// Name (S)		Type (E)	UniqeCard(D)       Max (D)	Min (D)        Comment
PPK	 		real_t		200000			   			 
PN	 		string_t	200000		   			
P_MFGR			string_t	5					
PB	 		string_t	25
PT			string_t	150
PS			string_t	50		 
PC		 	string_t	40		
NumofIndex: 0
//IndexName(S) 	Attribute (K)	Order (E)	Culstered(F/T)

RelName: N			// string_t 	
Card: 25			// real_t
UCard: 25			// real_t
Width: 0.1
Order: any
OrderKey: ()
CandidateKey: (NNK)
NumOfAttr: 3			// int_t
// Name (S)		Type (E)	UniqeCard(D)       Max (D)	Min (D)        Comment
NNK			real_t		25
NRK			real_t		5
NN			string_t	25
NumofIndex: 1
//IndexName(S) 	Attribute (K)	Order (E)	Culstered(F/T)
N_NATIONKEY		(NNK)			btree		T
NumofBitIndex: 1
//IndexName		Bit_attrs		Index_attr		Predicate
NN_SSK			(NN)			S.SSK			(OP_EQ, (ATTR(N.NN)), (STR("SNATION")))
NumofForeignKey: 1
//attr			reference to
(NRK)			(R.RRK)

RelName: S			// string_t 	
Card: 10000			// real_t
UCard: 10000			// real_t
Width: 0.1
Order: any
OrderKey: ()
CandidateKey: (SSK)
NumOfAttr: 7			// int_t
// Name (S)		Type (E)	UniqeCard(D)       Max (D)	Min (D)        Comment
SSK	 		real_t		10000			   			 
SNK	 		real_t		25		   			
SN			string_t	10000					
SA	 		string_t	10000
SP			string_t	10000
S_ACCTBAL	real_t		10000		   -1000	10000
SC		 	string_t	10000		
NumofIndex: 0
//IndexName(S) 	Attribute (K)	Order (E)	Culstered(F/T)
NumofForeignKey: 1
//attr			reference to
(SNK)			(N.NNK)

RelName: C			// string_t 	
Card: 150000			// real_t
UCard: 150000			// real_t
Width: 0.1
Order: sorted			// Enum: sorted hashed heap
OrderKey: (CCK)			// string_tCollection : Collection of Attribute
KeyOrder: (ascending)
CandidateKey: (CCK)
NumOfAttr: 8			// int_t
// Name (S)		Type (E)	UniqeCard(D)       Max (D)	Min (D)        Comment
CCK	 		real_t		150000		   			
CNK	 		real_t		25		   			
CN			string_t	150000					
CA	 		string_t	150000
CP	 		string_t	150000		 
C_ACCTBAL		real_t		150000		   10000	-1000
CM		 	real_t		5		
C_COMMENT		string_t	150000
NumofIndex: 1
//IndexName(S) 	Attribute (K)	Order (E)	Clustered(F/T) 
C_CUSTKEY		(CCK)			btree		T
NumofBitIndex: 1
//IndexName		Bit_attrs		Index_attr		Predicate
CM_OOK			(CM)			O.OOK			(OP_EQ, (ATTR(C.CM)), (INT("XXX")))
NumofForeignKey: 1
//attr			reference to
(CNK)			(N.NNK)

RelName: O			// string_t 	
Card: 1500000			// real_t
UCard: 1500000			// real_t
Width: 0.1
Order: sorted			// Enum: sorted hashed heap
OrderKey: (OOK)			// string_tCollection : Collection of Attribute
KeyOrder: (ascending)
CandidateKey: (OOK)
NumOfAttr: 6			// int_t
// Name (S)		Type (E)	UniqeCard(D)       Max (D)	Min (D)        Comment
OOK	 		real_t		1500000			   			 
OCK	 		real_t		150000		   			
OS			string_t	3					
OD	 		int_t		2556		   2555		0
OP			string_t	5		 
O_CLERK		string_t	1000		
NumofIndex: 2
//IndexName(S) 	Attribute (K)	Order (E)	Culstered(F/T)
O_ORDERKEY		(OOK)			btree		T
O_ORDERDATE		(OD)			btree		F
//NumofBitIndex: 1
//IndexName		Bit_attrs		Index_attr		Predicate
//O_CLEAR_L		(O_CLERK)		(L.LOK, L.LN)	(OP_EQ, (ATTR(O.O_CLERK)), (STR("SCLERK")))
NumofForeignKey: 1
//attr			reference to
(OCK)			(C.CCK)

RelName: PS			// string_t 	
Card: 800000			// real_t
UCard: 800000			// real_t
Width: 0.1
Order: sorted			// Enum: sorted hashed heap
OrderKey: (PSPK)		// string_tCollection : Collection of Attribute
KeyOrder: (ascending)
CandidateKey: (PSPK, PSSK)
NumOfAttr: 4			// int_t
// Name (S)		Type (E)	UniqeCard(D)       Max (D)	Min (D)        Comment
PSPK	 		real_t		200000			   			 
PSSK	 		real_t		10000		   			
PSA			real_t		10000		   9999		0					
PSC			real_t		800000		   1000000	0
NumofIndex: 2
//IndexName(S) 	Attribute (K)	Order (E)	Culstered(F/T)
PS_PARTKEY	(PSPK)				btree		T
PS_SUPPKEY	(PSSK)				btree		F
NumofForeignKey: 2
//attr			reference to
(PSPK)			(P.PPK)
(PSSK)			(S.SSK)

RelName: L			// string_t 	
Card: 6000000			// real_t
UCard: 6000000			// real_t
Width: 0.1
Order: sorted			// Enum: sorted hashed heap
OrderKey: (LPK)			// string_tCollection : Collection of Attribute
KeyOrder: (ascending)
CandidateKey: (LOK, LN)
NumOfAttr: 15			// int_t
// Name (S)		Type (E)	UniqeCard(D)       Max (D)	Min (D)        Comment
LOK	 		real_t		1500000		   
LPK	 		real_t		200000		   
LSK			real_t		10000		   
LN	 		int_t		4
LQ	 		int_t		50		   50		1		
LE			real_t		6000000		   
LD		 	real_t		11		   0.1		0		   
LT		 	real_t		9		   0.08		0
LR			string_t	3
LLS			string_t	2	
LSD			int_t		2556		   2555		0
LCD			int_t		2556		   2555		0
LRD			int_t		2556		   2555		0
LSI			string_t	4
LSM			string_t	7		
NumofIndex: 2
//IndexName(S) 	Attribute (K)	Order (E)  Culstered(F/T)
L_PARTKEY		(LPK)			btree		T
L_SHIPDATE		(LSD)			btree		F
NumofForeignKey: 2
//attr			reference to
(LOK)			(O.OOK)
(LPK,LSK)		(PS.PSPK, PS.PSSK)
