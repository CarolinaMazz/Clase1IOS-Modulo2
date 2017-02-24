//
//  DinamicaTableViewController.swift
//  TableViewDinamico-clase1modulo2
//
//  Created by alumno on 23/02/17.
//  Copyright © 2017 Rocío Córdova. All rights reserved.
//

import UIKit

class DinamicaTableViewController: UITableViewController {
    
    let primerArreglo = ["Dato 1.1", "Dato 1.2", "Dato 1.3", "Dato 1.4", "Dato 1.5", "Dato 1.6", "Dato 1.7"]
    let segundoArreglo = ["Dato 2.1", "Dato 2.2", "Dato 2.3", "Dato 2.4", "Dato 2.5"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    //permite conocer cuantas secciones vamos a tener
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    //nos permite definir el numero de celdas de cada seccion
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return primerArreglo.count
        default:
            return segundoArreglo.count
        }
        
    }

    //mostramos las listas segun a la seccion que pertenecen
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //se inicializa la celda
        //let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        var cell:UITableViewCell
        // nos permite seleccionar que se va a mostrar en las celdas
        let indice = indexPath.row
        var texto = ""

        if indexPath.section==0 {
            //obtener datos del primer arreglo
            cell=tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
            texto = primerArreglo[indice]
        }else{
            //obtener datop del segundo arreglo
            cell = tableView.dequeueReusableCell(withIdentifier: "segundacelda", for: indexPath)
            texto = segundoArreglo[indice]
        }
        
        cell.textLabel?.text=texto
        //modificar el color del texto
        cell.textLabel?.textColor = UIColor.red
        
        return cell
    }
    
    //altura del footer y header
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //se le da la altura
        return 50
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        //se le da la altura
        return 30
    }
    
    //titulos del footer y header
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Inicio de Seccion \(section)"
    }
    
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "Final de Seccion \(section)"
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        /*let seccion = indexPath.section
        let fila = indexPath.row
        var alertControler:UIAlertController
        var dato = ""
        
        if seccion == 0 {
            dato = primerArreglo[fila]
            //definimos la alerta que se va a mostrar definimos un controler
            alertControler=UIAlertController(title: "Alert", message: "Dato \(dato)", preferredStyle: UIAlertControllerStyle.alert)
            //creamos la accion
            let accionOK = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
                print("Ok")})
            //asignamos la accion y motramos
            alertControler.addAction(accionOK)
            self.present(alertControler, animated: true, completion: {})
        }else{
            dato = segundoArreglo[fila]
            //definimos la alerta que se va a mostrar definimos un controler
            alertControler=UIAlertController(title: "Alert", message: "Dato \(dato)", preferredStyle: UIAlertControllerStyle.alert)
            //creamos la accion
            let accionOK = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
                print("Ok")})
            //asignamos la accion y motramos
            alertControler.addAction(accionOK)
            self.present(alertControler, animated: true, completion: {})
        
        }*/
        
        var alertControler:UIAlertController
        let cell = tableView.cellForRow(at: indexPath)
        let dato = cell?.textLabel?.text
        
        //definimos la alerta que se va a mostrar definimos un controler
        alertControler=UIAlertController(title: "Alert", message: "\(dato!)", preferredStyle: UIAlertControllerStyle.alert)
        //creamos la accion
        let accionOK = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
            print("Ok")})
        //asignamos la accion y motramos
        alertControler.addAction(accionOK)
        self.present(alertControler, animated: true, completion: {})
        
        
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
