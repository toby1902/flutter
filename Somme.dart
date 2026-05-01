List<List<int>>trouverPaires(List<int> liste, int sum){

    Set<int> vus = {};
    

    List<List<int>> resultat = [];

    for (int nombre in liste) {

        int complement = sum - nombre;


        if (vus.contains(complement)){

            resultat.add([complement, nombre]);

        }

        vus.add(nombre);
    }

    return resultat;
        
    }

    void main (){
        List<int> liste = [2,4,6,3,1,5];

        int sum = 7;

        print(trouverPaires(liste, sum));
    }

    