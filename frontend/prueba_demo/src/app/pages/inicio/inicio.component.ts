import { Component, inject } from '@angular/core';
import {MatCardModule} from '@angular/material/card';
import {MatTableModule} from '@angular/material/table';
import {MatIconModule} from '@angular/material/icon';
import {MatButtonModule} from '@angular/material/button';
import { ProductosService } from '../../services/productos.service';
import { Productos } from '../../models/products';
import { Router } from '@angular/router';

@Component({
  selector: 'app-inicio',
  standalone: true,
  imports: [MatCardModule, MatTableModule, MatIconModule, MatButtonModule],
  templateUrl: './inicio.component.html',
  styleUrl: './inicio.component.css'
})
export class InicioComponent {
    private productoService = inject(ProductosService);
    public listaProductos:Productos[]=[];
    public displayedColumns:string[]=['id','nombre','precio'];
    
    constructor(private router:Router){
      debugger;
      this.getProductos();
    }

    getProductos(){
      this.productoService.listarProductos().subscribe({
        next:(data)=>{
          if(data.length > 0){
            this.listaProductos = data;
          }
        },
        error:(err)=>{
          console.log(err.message)
        }
      })
    }

    nuevo(){
      this.router.navigate(['/registro']);
    }
}
