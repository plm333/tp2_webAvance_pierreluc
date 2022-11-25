<?php

class ModelEtudiant extends Crud {
    protected $code_permanent;

    protected $table = 'etudiant';
    protected $primaryKey = 'code_permanent';
    protected $fillable = ['code_permanent'];

}

?>