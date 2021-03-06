

  TYPES:
    BEGIN OF lty_s_lines,
      line TYPE string,
    END OF   lty_s_lines.

  DATA lt_lines TYPE TABLE OF lty_s_lines.

  "DESCRIPTION
  lt_lines = VALUE #( BASE lt_lines ( line = |*-------------------------------------------------| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |*To search and add use: | ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |*##ALV_CONST  - constans( optional )| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |*##ALV_TYPES  - type( necessarily )| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |*##ALV_STRUCT - global structure( necessarily )| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |*-------------------------------------------------| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |*Main class method for start: START_OF_SELECTION| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |*-------------------------------------------------| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |*Create screnn 0100 with container name 'CONTAINER'| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |*Methods PAI/PBO must be called from the same screen's INCLUDES| ) ).  
  lt_lines = VALUE #( BASE lt_lines ( line = |*-------------------------------------------------| ) ).  
  APPEND INITIAL LINE TO lt_lines.
  APPEND INITIAL LINE TO lt_lines.

  "CLASS DEFINITION
  lt_lines = VALUE #( BASE lt_lines ( line = |CLASS lcl_main DEFINITION.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |PUBLIC SECTION.| ) ).
  "METHODS
  lt_lines = VALUE #( BASE lt_lines ( line = |CLASS-METHODS:| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |start_of_selection,| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |pbo,| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |pai.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |PRIVATE SECTION.| ) ).
  "CONSTANTS
  lt_lines = VALUE #( BASE lt_lines ( line = |CONSTANTS:| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |BEGIN OF mc_s_params,| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |##ALV_CONST| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |END OF   mc_s_params.| ) ).
  "TYPES
  lt_lines = VALUE #( BASE lt_lines ( line = |TYPES: BEGIN OF mty_s_tab,| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |##ALV_TYPES| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |END OF   mty_s_tab.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |TYPES:| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |mty_t_tab TYPE STANDARD TABLE OF mty_s_tab WITH DEFAULT KEY.| ) ).
  "CLASS_DATA
  lt_lines = VALUE #( BASE lt_lines ( line = |CLASS-DATA:| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |mt_alv TYPE TABLE OF ##ALV_STRUCT,| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |mt_fieldcat TYPE lvc_t_fcat.| ) ).
  "METHODS
  lt_lines = VALUE #( BASE lt_lines ( line = |CLASS-METHODS:| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |check_exists| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |RETURNING VALUE(rt_bapiret) TYPE bapiret2_t,| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |process,| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |get_data| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |RETURNING VALUE(rt_tab) TYPE mty_t_tab,| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |process_alv,| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |create_fcat,| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |get_field_desc| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |IMPORTING is_component     TYPE abap_compdescr| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |RETURNING VALUE(rs_fdescr) TYPE dfies,| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |fill_alv_data| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |IMPORTING| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |it_tab TYPE mty_t_tab.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |ENDCLASS.| ) ).
  APPEND INITIAL LINE TO lt_lines.
  "CLASS IMPLEMENTATION
  lt_lines = VALUE #( BASE lt_lines ( line = |CLASS lcl_main IMPLEMENTATION.| ) ).
  "METHODS
  lt_lines = VALUE #( BASE lt_lines ( line = |METHOD start_of_selection.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |DATA(lt_bapiret) = check_exists( ).| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |IF lt_bapiret IS NOT INITIAL.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |RETURN.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |ENDIF.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |process( ).| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |CALL SCREEN 0100.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |ENDMETHOD.| ) ).
  APPEND INITIAL LINE TO lt_lines.
  lt_lines = VALUE #( BASE lt_lines ( line = |METHOD pai.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |DATA(lv_ok) = sy-ucomm.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |CASE lv_ok.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |WHEN 'BACK' OR 'CANCEL' OR 'EXIT'.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |LEAVE TO SCREEN 0.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |ENDCASE.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |ENDMETHOD.| ) ).
  APPEND INITIAL LINE TO lt_lines.
  lt_lines = VALUE #( BASE lt_lines ( line = |METHOD pbo.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |process_alv( ).| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |ENDMETHOD.| ) ).
  APPEND INITIAL LINE TO lt_lines.
  lt_lines = VALUE #( BASE lt_lines ( line = |METHOD create_fcat.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |DATA:| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |ls_componenet TYPE ##ALV_STRUCT.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |DATA(lo_descr) = | &&
     |CAST cl_abap_structdescr( cl_abap_typedescr=>describe_by_data( ls_componenet ) ).| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |LOOP AT lo_descr->components ASSIGNING FIELD-SYMBOL(<ls_component>).| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |APPEND INITIAL LINE TO mt_fieldcat ASSIGNING FIELD-SYMBOL(<ls_fcat>).| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |<ls_fcat>-fieldname = <ls_component>-name.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |DATA(ls_descr) = get_field_desc( <ls_component> ).| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |<ls_fcat>-scrtext_l = ls_descr-scrtext_l.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |<ls_fcat>-scrtext_m = ls_descr-scrtext_m.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |<ls_fcat>-scrtext_s = ls_descr-scrtext_s.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |<ls_fcat>-col_opt   = abap_true.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |ENDLOOP.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |ENDMETHOD.| ) ).
  APPEND INITIAL LINE TO lt_lines.
  lt_lines = VALUE #( BASE lt_lines ( line = |METHOD get_field_desc.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |CONSTANTS lc_structname TYPE ddobjname VALUE ''##ALV_STRUCT.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |DATA lt_dfies TYPE TABLE OF dfies.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |CALL FUNCTION 'DDIF_FIELDINFO_GET'| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |EXPORTING| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |tabname   = lc_structname| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |fieldname = is_component-name| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |langu     = sy-langu| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |TABLES| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |dfies_tab = lt_dfies.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |rs_fdescr = VALUE #( lt_dfies[ 1 ] OPTIONAL ).| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |ENDMETHOD.| ) ).
  APPEND INITIAL LINE TO lt_lines.
  lt_lines = VALUE #( BASE lt_lines ( line = |METHOD get_data.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |ENDMETHOD.| ) ).
  APPEND INITIAL LINE TO lt_lines.
  lt_lines = VALUE #( BASE lt_lines ( line = |METHOD process_alv.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |CONSTANTS:| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |lc_selmode       TYPE c VALUE 'A',| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |lc_container(40) TYPE c VALUE 'CONTAINER'.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |DATA:| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |lo_container TYPE REF TO cl_gui_custom_container,| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |lo_alv_grid  TYPE REF TO cl_gui_alv_grid.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |create_fcat( ).| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |CREATE OBJECT lo_container| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |EXPORTING| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |container_name = lc_container| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |dynnr          = sy-dynnr| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |repid          = sy-repid.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |IF sy-subrc = 0.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |CREATE OBJECT lo_alv_grid| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |EXPORTING| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |i_parent = lo_container.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |IF sy-subrc = 0.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |CALL METHOD lo_alv_grid->set_table_for_first_display| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |EXPORTING| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |is_layout = VALUE lvc_s_layo( sel_mode = lc_selmode )| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |CHANGING| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |it_outtab       = mt_alv| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |it_fieldcatalog = mt_fieldcat| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |EXCEPTIONS| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |OTHERS          = 4.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |ENDIF.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |ENDIF.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |ENDMETHOD.| ) ).
  APPEND INITIAL LINE TO lt_lines.
  lt_lines = VALUE #( BASE lt_lines ( line = |METHOD fill_alv_data.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |LOOP AT it_tab ASSIGNING FIELD-SYMBOL(<ls_tab>).| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |mt_alv = VALUE #( BASE mt_alv ( CORRESPONDING #( <ls_tab> ) ) ).| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |ENDLOOP.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |ENDMETHOD.| ) ).
  APPEND INITIAL LINE TO lt_lines.
  lt_lines = VALUE #( BASE lt_lines ( line = |METHOD check_exists.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |##ERR_MESSAGE| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |ENDMETHOD.| ) ).
  APPEND INITIAL LINE TO lt_lines.
  lt_lines = VALUE #( BASE lt_lines ( line = |METHOD process.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |DATA(lt_tab) = get_data( ).| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |fill_alv_data( lt_tab ).| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |ENDMETHOD.| ) ).
  lt_lines = VALUE #( BASE lt_lines ( line = |ENDCLASS.| ) ).


  LOOP AT lt_lines ASSIGNING FIELD-SYMBOL(<ls_lines>).
    APPEND <ls_lines>-line  TO buffer.
  ENDLOOP.
