<?php

class ModelLibraire extends Crud {

    public $id;

    protected $table = 'Libraire';
    protected $primaryKey = 'id';
    
    protected $fillable = ['id'];

}

?>