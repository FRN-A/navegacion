//
//  CalificacionesController.swift
//  Navegacion
//
//  Created by Alumno on 9/23/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class CalificacionesUsuarios : UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    var materias : [Materia] = []
    
    override func viewDidLoad() {
        
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
}
