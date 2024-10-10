CLASS zcl_01_intro DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_intro IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  Data var type /lrn/s4d430_ind.
  Select from /LRN/S4D430_IND_CDS_View
  fields *
  into table @Data(result).
  out->write( result ).
  ENDMETHOD.
ENDCLASS.
