import { HttpClient } from '@angular/common/http';
import { inject, Injectable } from '@angular/core';
import { environment } from '../../environments/environment.development';
import { Productos } from '../models/products';

@Injectable({
  providedIn: 'root'
})
export class ProductosService {
  
  private http = inject(HttpClient);
  private apiUrl:string= environment.apiUrlBE + "api/Productos";
  constructor() { }

  listarProductos(){
      return this.http.get<Productos[]>(this.apiUrl+"/Consultar");
  }

  registrar(objeto:Productos){
    return this.http.post<any>(this.apiUrl+"/Insertar",objeto);
  }
}
