CLASS zcl_rubicon_hello DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS get_message
      RETURNING VALUE(rv_message) TYPE string.
ENDCLASS.

CLASS zcl_rubicon_hello IMPLEMENTATION.
  METHOD get_message.
    rv_message = 'Hello from Rubicon'.
  ENDMETHOD.
ENDCLASS.

