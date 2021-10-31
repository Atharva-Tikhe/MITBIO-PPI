<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PPI | Home</title>
    
<!--    STYLESHEETS --------------------------------------------->
    
    <link rel="stylesheet" href="static/index.css">
    
    
<!--    SCRIPTS --------------------------------------------->    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous" defer></script>
    <script type="text/javascript" src="static/js/resources/JSmol.GLmol.min.js"></script>   
</head>
<body>
    <div id="jmol_div"></div>
    <div id="jmol_div2"></div>
    
    
    <div id="i1" style=" position: absolute; left: 0%; top: 45.8%; "> <img id="img1" style=" width: 280px; height: 260px;"></div>
    <div id="i2" style=" position: absolute; right: -3.8%; top: 43.6%; opacity: 0.8;"><div id='jmol_div' style="width: 380px; height: 320px;"></div> </div>


    <a href="proteinSearch" id ="search_btn"><button>Protein Search</button></a>
    
       
    <div id="inform" style="border: 3px solid whitesmoke; background-color:whitesmoke; font-style: italic;color: #006666; font-size: 15px; position: absolute; top: 58%; left: 23%; width: 682px;" align="justify"  > Protein-protein interactions are considered as potential targets for inhibitors. They are next generation therapeutic targets. Certain tools are required to understand the chemical space between the proteins interfaces. We will be building a hand curated structural database for protein-protein interaction and the inhibitors associated with it. The current PPI inhibitors databases consider a small set of protein-protein complexes or the set of small molecules. The database involves use of in-house mining tools to consider the protein-protein interaction complexes and inhibitors cited in literature. It includes structural characterization of protein-protein complexes. Relation between protein-protein complexes and the inhibitors using networks will give a new insight to protein-protein interaction inhibitors study. The database will serve as an informative tool for scientists dealing with inhibitor study related to proteins.  </div>
    
    <div id="informhead"></div>

    
    <div id="navbar">
        <a  href="home.jsp">Home</a>
        <a href="advanced2.jsp">Advanced Search</a>
        <a href="protein.jsp">Interactions</a>
        <a href="normsearch.jsp">Statistics</a>
        <a href="help.jsp">Help</a>
        <a href="contact.jsp">About us</a>
    </div>

    
    <footer id="foot"> <small>&copy; Copyright 2021, MIT School of Bioengineering Sciences and Research, Pune</small> </footer>
</body>
</html>