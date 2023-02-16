##############################################################
##         Initial Encounter Configuration                  ##
## Script Generated for Undergrad class of microelectronics ##
## Generated by Matheus Moreira/Fernando Moraes - 2018      ##
##                                                          ##
## Functionalities of this script:                          ##
##  -Add filler cells to the design                         ##
##  -Generate a summary report of the final design          ##
##############################################################

##Add filler cells
#add_fillers -base_cells HS65_GS_FILLERPFP4 HS65_GS_FILLERPFP3 HS65_GS_FILLERPFP2 HS65_GS_FILLERPFP1 -prefix FILLER
add_fillers -base_cells FEED1 FEED2 FEED3 FEED5 FEED7 FEED10 FEED15 FEED25 -prefix FILLER

# Check Geometry
eval_legacy {verifyGeometry -noOverlap}

##Generate reports
report_summary -out_dir summaryReport
time_design -post_route

