# ALV_PATTERN
 Useful FM-pattern for add local class to show alv.
 
 1. Create pattern 'ZALV_PATTERN'
 
 ![alt text](https://github.com/Sgudkov/ALV_PATTERN/blob/master/Utilties.png)
 
 2. Write '*$&$MUSTER' for add code dynamically from function module which we are will create on next step. 
 
 
 3. Create your FG ( name doesn't matter ). Inside FG create FM with mask <pattern_name>_EDITOR_EXIT = ZALV_PATTERN_EDITOR_EXIT.
 And table parametr BUFFER type RSWSOURCET.
 
 
 4. Past code into your new FM from [link zalv_pattern](https://github.com/Sgudkov/ALV_PATTERN/blob/master/zalv_pattern).
 
 5. And now add your pattern. 
