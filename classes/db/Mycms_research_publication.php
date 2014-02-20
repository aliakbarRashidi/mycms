<?php
/**
 * Table Definition for mycms_research_publication
 */
require_once 'DB/DataObject.php';

class Mycms_research_publication extends DB_DataObject 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'mycms_research_publication';    // table name
    public $publication_id;                  // int(11)  not_null primary_key
    public $research_id;                     // int(11)  not_null primary_key multiple_key

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
