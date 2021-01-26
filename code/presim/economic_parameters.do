
/* These are some Economic parameters */
/* We need to change these based on the Holzer and McConnell parameters */
/* This is the Probability Mass Function of shore, boat, party/head, and charter  See section WTP */

scalar shore=0.20
scalar boat=0.20
scalar party=0.20
scalar charter=0.40

/* This is the Probability Mass Function of Trip lengthSee section WTP */
scalar hour4=0.5
scalar hour8= 0.4
scalar hour12=0.1

/* These are scalars for the marginal and total costs of various types trips */
/* TC is total cost per trip, c is "pseudo-"marginal cost of trip length */
scalar c_chart=30
scalar c_party=11
scalar tc_boat=165
scalar tc_shore=105

/* logit coefficients
Model 2 from Holzer and McConnell */
global pi_cod_keep 0.3127457 
global pi_cod_release 0
global pi_hadd_keep 0.3653523 
global pi_hadd_release 0 
global pi_cost "-0.0015785"
global pi_trip_length 0.0911496
global pi_trip_length2 0

/*  These might not have been used in 2016*/
/* Retention of sub-legal fish */
/* cod_relax: window below the minimum size that anglers might retain sublegal fish */
/* cod_sublegal_keep: probability that an angler will retain a sublegal cod in that size window*/


/* Retention of sub-legal fish */
/* This is coded in 2 parts -- We assume that fish that are "close" to the minimum size have a higher probability of being retained */
/* cod_relax: This defines "small" and "tiny" (along with the minimium size) */
/* cod_sublegal_keep: probability that an angler will retain a sublegal cod that is "small"*/
/* cod_sublegal_keep2: probability that an angler will retain a sublegal cod that is "tiny" */

/* Cod sub-legals in waves 1,2 */
global cod_relax0=0
/* Cod sub-legals after wave 2 */

global cod_relax_main=2
global cod_sublegal_keep=.30
global cod_sublegal_keep2=.01



/* hadd_relax: This defines "small" and "tiny" (along with the minimium size) */
/* haddock_sublegal_keep: probability that an angler will retain a sublegal haddock that is "small"*/
/* haddock_sublegal_keep: probability that an angler will retain a sublegal haddock that is "tiny"*/

/* haddock sub-legals in waves 1,2 */

global hadd_relax0=0
/* haddock sub-legals after wave 2 */
global hadd_relax_main=1

global haddock_sublegal_keep=0.30
global haddock_sublegal_keep2=0.01



/* discard of legal sized fish */
global dl_cod=0
global dl_hadd=0



/* Ignoring the Possession Limit */
/* For GOM Cod, approximately 1.5% of trips which kept cod kept more than the 10 fish possession limit */
/* These 11th and higher fish caught on these trips were responsible for 5.5% of all kept cod (by numbers).*/
/* In order to address this, i'll set 2 globals which are the probability which an angler will `comply with the bag limit'  */

global pcbag_comply=.60
global phbag_comply=.60


global pcbag_non=1-$pcbag_comply
global phbag_non=1-$phbag_comply
