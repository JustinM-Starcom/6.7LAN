MERCSRC.MAP                                       (   L   �   D   p      `                                 PO_850        Purchase_Orders          In1     In2     Out      PO_850_IN       PO_850_OUT      	    File_850 FlatFile     Flat_File_850 FlatFile   $ Partner X12 Inbound Transmission EDI     / LoopPO1 #850 Inbound Partner Set V4010 ANSI EDI  3 Transaction #850 Inbound Partner Set V4010 ANSI EDI      %   850_Out.mtt   mail_in.new   mail_in.txt   850_4010_IN.mtt       , # Memo_No Fields:INVOICE Records:Out  =" "      , # Ship_Id Fields:INVOICE Records:Out  =" "      - # Allow_% Fields:INVOICE Records:Out  =NONE     - # Bill_Id Fields:INVOICE Records:Out  =NONE     - $ Pk_Count Fields:INVOICE Records:Out  =" "     0 & Allow_Rate Fields:INVOICE Records:Out  =NONE      0 & Item_Notes Fields:INVOICE Records:Out  =NONE      2 ( Allow_Amount Fields:INVOICE Records:Out  =NONE    3 * Customer_Ref_# Fields:INVOICE Records:Out  =" "   5 ( DocumentType Fields:INVOICE Records:Out 	 ="ORDER"     7 - Allow_Charge_Code Fields:INVOICE Records:Out  =NONE   < 2 Allow_Charge_Indicator Fields:INVOICE Records:Out  =NONE      F % PO_Number Fields:INVOICE Records:Out  =PO# Element:BEG Segment:In1    L $ Item_Qty Fields:INVOICE Records:Out $ =QtyOrdered Element:PO1 Segment:In2      N & LineNumber Fields:INVOICE Records:Out $ =AssignedID Element:PO1 Segment:In2    U & Item_Price Fields:INVOICE Records:Out + =UnitPrice Element:CTP Segment:LoopCTP:In2     ^ ! Pk_Id Fields:INVOICE Records:Out 9 =SUBSTITUTE(UOMCd Element:PO1 Segment:In2, "EA", "each")    ` * Item_Total_Qty Fields:INVOICE Records:Out 2 =SUM (QtyOrdered Element:PO1 Segment:LoopPO1:In1)      � % Ship_Date Fields:INVOICE Records:Out _ =LOOKUP(Date Element:DTM Segment:In1, MEMBER(DateTimeQual'r Element:DTM Segment:In1, {"002"}))      � $ Ship_Zip Fields:INVOICE Records:Out h =LOOKUP( PostalCd Element:N4 Segment:LoopN1_1:In1 ,  EntityIDCd Element:N1 Segment:LoopN1_1:In1 = "ST")      � % Ship_City Fields:INVOICE Records:Out h =LOOKUP( CityName Element:N4 Segment:LoopN1_1:In1 ,  EntityIDCd Element:N1 Segment:LoopN1_1:In1 = "ST")     � * Po_Total_Price Fields:INVOICE Records:Out f =SUM (QtyOrdered Element:PO1 Segment:LoopPO1:In1 * UnitPrice Element:CTP Segment:LoopCTP:LoopPO1:In1)      � ( Ship_Address Fields:INVOICE Records:Out l =LOOKUP( AddressInfo Element:N3 Segment:LoopN1_1:In1  ,  EntityIDCd Element:N1 Segment:LoopN1_1:In1 = "ST")      � & Ship_State Fields:INVOICE Records:Out p =LOOKUP(  StateProvinceCd Element:N4 Segment:LoopN1_1:In1 ,  EntityIDCd Element:N1 Segment:LoopN1_1:In1 = "ST")    � ) Vendor_Number Fields:INVOICE Records:Out q =LOOKUP(IDCd Element:IDCd MComposite:N1 Segment:LoopN1_1:In1, EntityIDCd Element:N1 Segment:LoopN1_1:In1 = "SU")    � ( Store_Number Fields:INVOICE Records:Out t =LOOKUP( IDCd Element:IDCd MComposite:N1 Segment:LoopN1_1:In1 ,  EntityIDCd Element:N1 Segment:LoopN1_1:In1 = "ST")      � & Sku_Number Fields:INVOICE Records:Out � =LOOKUP( ProdServiceID Element:ProdServiceID MComposite:PO1 Segment:In2,  ProdServiceIDQual'r Element:ProdServiceID MComposite:PO1 Segment:In2= "IN")      � & UPC_Number Fields:INVOICE Records:Out � =LOOKUP( ProdServiceID Element:ProdServiceID MComposite:PO1 Segment:In2,  ProdServiceIDQual'r Element:ProdServiceID MComposite:PO1 Segment:In2= "UK")      6 Flat_File_850:PO_850_OUT =PO_850(Transaction #850 Inbound Partner Set V4010:#850<>F4010<>Inbound Partner Funct'lGroup ANSI:Partner X12 Inbound Interchange:PO_850_IN,LoopPO1:Transaction #850 Inbound Partner Set V4010:#850<>F4010<>Inbound Partner Funct'lGroup ANSI:Partner X12 Inbound Interchange:PO_850_IN)       ' 4 A O ] k y � � � � � � � /Sy���?i��               �             	    ( � �0j�� 5 � @l  �z�T�  P � �  ^ B z �             8�@                   =��U                     ���:       
                                                          	                                                                       �                                                                      &                                         ,          �                                                       �    
  @  �          �Ր(                              �    
  @  �          ���(                              �    
  @  �          ���(                              �    
  @  �          ���(                              �    
  @  �          ���(                              �    
  @  �          ���(    