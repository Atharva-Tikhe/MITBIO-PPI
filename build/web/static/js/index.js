/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var cml_inline = "<?xml version='1.0' encoding='ASCII' standalone='yes'?><molecule xmlns:iupac='http://www.iupac.org/' xmlns='http://www.xml-cml.org/schema' xmlns:cmlx='http://www.xml-cml.org/schema/cmlx' xmlns:convention='http://www.xml-cml.org/convention/' xmlns:cc='http://www.xml-cml.org/dictionary/compchem/' xmlns:compchem='http://www.xml-cml.org/dictionary/compchem/' xmlns:g='http://www.xml-cml.org/dictionary/gaussian/' xmlns:xsd='http://www.w3.org/2001/XMLSchema' xmlns:si='http://www.xml-cml.org/unit/si/' xmlns:nonSi='http://www.xml-cml.org/unit/nonSi/' xmlns:cml='http://www.xml-cml.org/dictionary/cml/' id='mol9999' spinMultiplicity='1' formalCharge='0' convention='convention:molecular'><atomArray><atom id='a1' elementType='C' x3='-0.0134952194' y3='0.0038685998' z3='-0.030382396'/><atom id='a2' elementType='H' x3='-0.0056725438' y3='-1.080265325' z3='-0.0167961727'/><atom id='a3' elementType='Br' x3='1.8682974281' y3='0.6403936943' z3='-0.0463838435'/><atom id='a4' elementType='Cl' x3='-0.9101302027' y3='0.5931117345' z3='1.475597512'/><atom id='a5' elementType='F' x3='-0.6702988923' y3='0.4728913064' z3='-1.1615810297'/></atomArray><bondArray><bond atomRefs2='a1 a2' id='a1_a2' order='S'/><bond atomRefs2='a1 a3' id='a1_a3' order='S'/><bond atomRefs2='a1 a4' id='a1_a4' order='S'/><bond atomRefs2='a1 a5' id='a1_a5' order='S'/></bondArray><property dictRef='cml:molmass'><scalar xmlns:unit='http://www.xml-cml.org/unit/nonSi/' dataType='xsd:double' units='unit:dalton'>147.37404320000002</scalar></property><property dictRef='cc:dipoleMomentVector'><array dataType='xsd:double' units='nonSi:elementaryCharge.bohr' size='3'>0.2026029 -0.6465188 0.0316481</array></property><property xmlns:id='http://www.xml-cml.org/dictionary/identifier/' dictRef='id:smiles'><scalar dataType='xsd:string'>C(Br)(Cl)F</scalar></property><property xmlns:id='http://www.xml-cml.org/dictionary/identifier/' dictRef='id:smiles_H'><scalar dataType='xsd:string'>[CH]([Br])([Cl])[F]</scalar></property><identifier convention='iupac:inchi' value='InChI=1S/CHBrClF/c2-1(3)4/h1H/t1-/m0/s1'/><identifier convention='iupac:inchiKey' value='YNKZSBSRKWVMEZ-SFOWXEAESA-N'/></molecule>";
var dipole = "0.2026029 -0.6465188 0.0316481";
var partial_charges = "-0.295496 0.261652 0.17432 0.139718 -0.280193";
partial_charges = partial_charges.replace(/ /g, '\n') // replace all space with newlines

var dipole_is_on = false;       // dipole vector is not shown upon load

function toggleShowDipole(){
        // JavaScript function that executes one of two Jmol scripts, 
        // depending on whether variable dipole_is_on is true or false
        var jm_script = '';
        if (dipole_is_on == true) {
                jm_script = "draw ID dipole off;"
                dipole_is_on = false;    // remember that dipole vector is off now
        } else {
                jm_script = 'v1 = {' + dipole + '};'   // dipole moment vector
                        + 'p1 = {*}.xyz ;'                 // center of the molecule as origin
                        + 'p2 = @{ v1 * 4} + p1;'          // scale the vector by factor 5 and shift to the origin
                        + 'draw ID dipole arrow DIAMETER 0.15  @p1 @p2;'; //# draw the arrow
                dipole_is_on = true ;    // remember that dipole vector is on now 
        }
        Jmol.script(myJmol, jm_script);
};

function load_charges(){
        var jm_script = [                    // create Jmol script as array of commands
                'select *;',
                'data "property_partialCharge"',        // load charges into temporary property
                partial_charges,
                'end "property_partialCharge";',
                'show data;',
                '{*}.partialCharge = {*}.property_partialCharge.all;', // assign charges to correct property
                // 'label %.3P;'
        ].join('\n');                        // join array to newline-separated string
        Jmol.script(myJmol, jm_script);
};


