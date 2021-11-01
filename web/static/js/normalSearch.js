/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * 
 * Author : Atharva Tikhe
 * 
 * 
 * 
 */

var searchButton = document.getElementById('submit');
var searchedProtein = document.getElementById('t1');


async function getData(url) {
  const response = await fetch(url);

  return response.json();
}


searchButton.addEventListener('click', async function (event){
    event.preventDefault();
    const proteinNames = await getData('http://localhost:8084/PPI-Atharva/converter/resset-to-json');
    
    
    console.log(proteinNames);
    console.log(searchedProtein.value);
    
            const options = {
                // isCaseSensitive: false,
                // includeScore: false,
                // shouldSort: true,
                // includeMatches: false,
                // findAllMatches: false,
                // minMatchCharLength: 1,
                // location: 0,
                // threshold: 0.6,
                // distance: 100,
                // useExtendedSearch: false,
                // ignoreLocation: false,
                // ignoreFieldNorm: false,
                keys: ["pname", "proteina", "proteina", "inhibitor"]
              };
              
               const fuse = new Fuse(proteinNames, options);
               
               var names = [];
               
               var originalQuery = fuse.search(searchedProtein.value);
               
                var errorBox = document.getElementById('errorBox');
               
                if (originalQuery.length !== 0){
                    errorBox.classList.remove('showError');
                    var correctedName = originalQuery[0].item.pname;
                    window.location.assign(`http://localhost:8084/PPI-Atharva/results?corrected=${correctedName}`);
                }
                else{
                    errorBox.classList.add('showError');
                    errorBox.innerHTML = `No Proteins with name ${searchedProtein.value} found...`;
                }
               
});
