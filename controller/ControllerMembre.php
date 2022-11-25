<?php
RequirePage::requireModel('Crud');
RequirePage::requireModel('ModelMembre');
RequirePage::requireModel('ModelLivre');
RequirePage::requireModel('ModelLibraire');
RequirePage::requireModel('ModelEtudiant');
RequirePage::requireModel('ModelBibliotheque');

class ControllerMembre{

    public function index(){
        $membre = new ModelMembre;
        $select = $membre->select();
        twig::render("membre-index.php", ['membres' => $select, 
                                        'membre_list' => "Liste des Membres"]);
    }

    public function create(){
        twig::render('membre-create.php');
    }

    public function store(){
     // print_r($_POST);
        $membre = new ModelMembre;
        $insert = $membre->insert($_POST);
        $livre = new ModelLivre;
        $insertLivre = $livre->insert($_POST);
        $libraire = new ModelLibraire;
        $insertLibraire = $libraire->insert($_POST);
        $etudiant = new ModelEtudiant;
        $insertEtudiant = $etudiant->insert($_POST);
        $bibliotheque = new ModelBibliotheque;
        $insertBibliotheque = $bibliotheque->insert($_POST);

        requirePage::redirectPage('membre');
    }

    public function show($id){
        $membre = new ModelMembre;
        $selectMembre = $membre->selectId($id);
        twig::render('membre-show.php', ['membre' => $selectMembre]);
    }

    public function edit($id){
        $membre = new ModelMembre;
        $selectMembre = $membre->selectId($id);
        twig::render('membre-edit.php', ['membre' => $selectMembre]);
    }

    public function update(){
        $membre = new ModelMembre;
        $update = $membre->update($_POST);
        RequirePage::redirectPage('membre/show/'.$_POST['id']);
    }
    public function delete(){
        $membre = new ModelMembre;
        $delete = $membre->delete($_POST['id']);
        RequirePage::redirectPage('membre');
    }
}
?>
