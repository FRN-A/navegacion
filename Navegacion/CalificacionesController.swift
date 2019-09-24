//
//  CalificacionesController.swift
//  Navegacion
//
//  Created by Alumno on 9/23/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class CalificacionesController : UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    var materias : [Materia] = []
    
    @IBOutlet weak var tvMaterias: UITableView!
    
    override func viewDidLoad() {
        materias.append(Materia(nombre: "Matemáticas", calificacionPrimerParcial: 8, calificacionSegundoParcial: 6, calificacionTercerParcial: 7, calificacionFinal: 7))
        materias.append(Materia(nombre: "Español", calificacionPrimerParcial: 9, calificacionSegundoParcial: 7, calificacionTercerParcial: 6, calificacionFinal: 7))
    }
    
    //numero de secciones
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //numero de renglones
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materias.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaMateria")
        
        celda?.textLabel?.text = materias[indexPath.row].nombre
        
        return celda!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetallesMateria"{
            
        }
    }
}
