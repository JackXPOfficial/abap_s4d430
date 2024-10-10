CLASS z01_check_and_fill DEFINITION PUBLIC
 FINAL
 CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

ENDCLASS.



CLASS Z01_CHECK_AND_FILL IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

     TYPES t_version TYPE lcl_generator=>t_version.

    CONSTANTS c_version TYPE t_version VALUE lcl_generator=>employee_table_only.
*    CONSTANTS c_version TYPE t_version VALUE lcl_generator=>with_relationships.
*    CONSTANTS c_version TYPE t_version VALUE lcl_generator=>with_extensions.
*
    CONSTANTS Z01_EMPLOY  TYPE tabname VALUE 'Z01_EMPLOY'.
    CONSTANTS c_depment_table TYPE tabname VALUE 'Z01DEPMENT'.

    TRY.
        NEW lcl_generator( i_version       = c_version
                           i_employ_table  = Z01_EMPLOY
                           i_depment_table = c_depment_table
                           i_out           = out
                         )->run( ).

      CATCH cx_abap_not_a_table INTO DATA(excp).
        out->write(  |Error: {  excp->get_text( ) }| ).
    ENDTRY.

  ENDMETHOD.
ENDCLASS.
