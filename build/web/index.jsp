<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PPI | Home</title>
    
<!--    STYLESHEETS --------------------------------------------->
    
    <link rel="stylesheet" href="static/index.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
    
<!--    SCRIPTS --------------------------------------------->
    <script src="https://3Dmol.org/build/3Dmol-min.js" async></script> 
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous" defer></script>
    <script type="text/javascript" src="static/js/resources/JSmol.GLmol.min.js"></script>   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
    
    

    <!--id="navbar"-->
    <nav  id="navbar" class="navbar flex mx-5 mb-6">
        <div class="navbar-brand d-flex justify-content-center align-items-center mx-2 flex-wrap gap-3">
            <img src="static/imgs/mitbio-logo.png" alt="MITBIO-logo"/>
            <h5 class="font-size-14"> | Protein - Protein Interaction Web Portal </h5>
        </div>
        <a href="advanced2.jsp">Advanced Search</a>
        <a href="protein.jsp">Interactions</a>
        <a href="normsearch.jsp">Statistics</a>
        <a href="help.jsp">Help</a>
        <a href="contact.jsp">About us</a>
    </nav>
    
    
    <div id="mid-container">
        
        <a href="proteinSearch" id ="search_btn">Protein Search</a>
    
        <div id="proteinExample_1" style="height: 400px; width: 400px; position: relative;" class='viewer_3Dmoljs' data-pdb='2POR' data-backgroundcolor='0xffffff' data-style="stick"></div>

<!--        viewer.animate({loop: "forward",reps: 1});-->
        <div id="proteinExample_2"style="height: 400px; width: 400px; position: relative;" class='viewer_3Dmoljs' data-pdb='4MZI' data-backgroundcolor='0xffffff' data-style='stick'></div>
     
    </div>

    <div class="mx-3 flex"> Protein-protein interactions are considered as potential targets for inhibitors. They are next generation therapeutic targets. Certain tools are required to understand the chemical space between the proteins interfaces. We will be building a hand curated structural database for protein-protein interaction and the inhibitors associated with it. The current PPI inhibitors databases consider a small set of protein-protein complexes or the set of small molecules. The database involves use of in-house mining tools to consider the protein-protein interaction complexes and inhibitors cited in literature. It includes structural characterization of protein-protein complexes. Relation between protein-protein complexes and the inhibitors using networks will give a new insight to protein-protein interaction inhibitors study. The database will serve as an informative tool for scientists dealing with inhibitor study related to proteins.  </div>
            <script>
//            setInterval(function() {
//    if($3Dmol.viewers) if($3Dmol.viewers[0]) {
//      var view = $3Dmol.viewers[0];
//      console.log(view);
//      view.rotate(1);
//    }
//  }, 50);
        setTimeout(function(){
        console.log($3Dmol.viewers);
           console.log(Array($3Dmol.viewers)[0])}, 50)
        </script>
    <footer id="foot"> <small>&copy; Copyright 2021, MIT School of Bioengineering Sciences and Research, Pune</small> </footer>
</body>
</html>