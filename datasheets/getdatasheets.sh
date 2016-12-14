#!/bin/bash
#
# getdatasheets.sh - retreive data sheets

# Batteries
# http://www.batteryspace.com/3.2V-UN-Approved-LiFePO4-Rechargeable-Single-Cells.aspx
# http://www.batteryspace.com/lifepo4-18650-rechargeable-cell-3-2v-1500-mah-8-4a-rate-4-32wh-ul-listed-un38-3-passed-ndgr.aspx
# http://www.batteryspace.com/lifepo4-rechargeable-14505-cell-3-2v-600-mah-0-6a-rate-2-22wh-button-top-standard-aa-size-0-18----un38-3-passed-ndgr.aspx
#
# Two sizes: 14504 = AA, 18650 is larger than AA
#
# Discharge curve: http://www.yesa.com.hk/pages.asp?id=19
#

# ----- Battery Charger, LiFePO4
# The TI bq25070 ($2.46)
wget http://www.ti.com/lit/ds/symlink/bq25070.pdf -O bq25070.pdf
# Alternative ($6.31)
#wget http://www.linear.com/docs/41166 -O LTC4156.pdf

# ----- USB micro-B connector
# 3-d model available at
# http://www.fci.com/en/resources/3d-model-search.html
# Search for Part Number: 10118194-0001LF
wget http://portal.fciconnect.com/Comergent/fci/drawing/10118194.pdf -O usb_conn.pdf


# ----- Switch
# Slide switch if needed for programming
#wget 'http://www.ck-components.com/index.php?module=media&action=Display&cmpref=14398&lang=en&width=&height=&format=&alt=' -O JS101011SQCN_sw.pdf
# change to a slightly more expensive switch C&K because the footprint
# is already in KiCAD and I could find a 3d model.
wget 'http://www.ckswitches.com/media/1424/pcm.pdf' -O pcm12SMTR.pdf

# Connector, 6pin FPC
# Amphenol FCI
# 6 Position FFC, FPC Connector Contacts, Top 0.020" (0.50mm) Surface
# Mount, Right Angle
# SFV6R-2STE1HLF
wget 'http://portal.fciconnect.com/Comergent//fci/drawing/10112793.pdf' -O FPC_Connector-6-Pitch0.5mm.pdf

# Amphenol FCI
# 5 Position FFC, FPC Connector Contacts, Top 0.020" (0.50mm) Surface
# Mount, Right Angle
# SFV5R-2STE1HLF
#wget 'http://portal.fciconnect.com/Comergent//fci/drawing/10112793.pdf' -O FPC_Connector-Pitch0.5mm.pdf

# Flat Flex Ribbion Jumper cable, 2" version for 5 pin: Parlex  050R5-51B, $3.96
#wget 'http://www.parlex.com/tech_library/ps-2562.pdf' -O Cable5p.pdf

# Flat Flex Ribbion Jumper cable, 2" version for 6 pin: Parlex 050R6-51B, $3.96
# PDF can not be downloaded by a simple wget.
# The digikey part number is:  HFF-06U-02-ND 
#wget 'http://www.johnsonelectric.com/en/resources-for-engineers/ffc-flat-flexible-cables/ffc-inquiry-form-and-distribution-availability/~/media/2F646F0730D94DC8AA318FF391936451.ashx' -O Cable6p.pdf

# 2-pin JST PH Connector for battery. Will work with Li Batteries from
# Sparkfun. A matching connector with pig-tails is also available from
# Sparkfun.
wget http://www.jst-mfg.com/product/pdf/eng/ePH.pdf -O JST_ePH.pdf
