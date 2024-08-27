import { Component, Input, OnInit, inject } from '@angular/core';

import {MatFormFieldModule} from '@angular/material/form-field';
import {MatInputModule} from '@angular/material/input';
import {MatButtonModule} from '@angular/material/button';
import {FormBuilder,FormGroup,ReactiveFormsModule} from '@angular/forms';
import { Router } from '@angular/router';
import { ProductosService } from '../../services/productos.service';
import { Productos } from '../../models/products';

@Component({
  selector: 'app-registro',
  standalone: true,
  imports: [MatFormFieldModule,MatInputModule,MatButtonModule,ReactiveFormsModule],
  templateUrl: './registro.component.html',
  styleUrl: './registro.component.css'
})
export class RegistroComponent {
  @Input('id') idEmpleado! : number;
  private productoService = inject(ProductosService);
  public formBuild = inject(FormBuilder);

  public formProducto:FormGroup = this.formBuild.group({
    nombre: [''],
    precio:['']
  });

  constructor(private router:Router){}

  guardar(){
    debugger;
    const objeto : Productos = {
      nombre: this.formProducto.value.nombre,
      precio: this.formProducto.value.precio,
      fechaCreacion: null
    }
  
    this.productoService.registrar(objeto).subscribe({
      next:(data) =>{
        debugger;
        if(data.status == 'Ok'){
          this.router.navigate(["/"]);
        }else{
          alert("Error al crear")
        }
      },
      error:(err) =>{
        console.log(err.message)
      }
    })
  }

  regresar(){
    this.router.navigate(["/"]);
  }

}
