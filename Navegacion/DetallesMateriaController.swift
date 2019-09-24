//
//  DetallesMateriaController.swift
//  Navegacion
//
//  Created by Alumno on 9/24/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class DetalleMateriaController : UIViewController {
    
    @IBOutlet weak var lblCalificacionPrimerParcial: UILabel!
    @IBOutlet weak var lblCalificacionSegundoParcial: UILabel!
    @IBOutlet weak var lblCalificacionTercerParcial: UILabel!
    @IBOutlet weak var lblCalificacionFinal: UILabel!
    
    var materia : Materia?
    
    override func viewDidLoad() {
        lblCalificacionPrimerParcial.text = "\(materia?.calificacionPrimerParcial!)"
        lblCalificacionSegundoParcial.text = "\(materia?.calificacionSegundoParcial!)"
        lblCalificacionTercerParcial.text = "\(materia?.calificacionTercerParcial!)"
        lblCalificacionFinal.text = "\(materia?.calificacionFinal!)"
    }
}
