import './App.css';
import Login from './pages/Login';
import Register from './pages/Register';
import Saldo from './pages/Saldo';
import Autor from './pages/Autor';
import Contenido from './pages/Contenido';
import Categoria from './pages/Categoria';
import Test from './pages/testing';
import {BrowserRouter as Router, Routes, Route} from 'react-router-dom'
import InfoContenido from './pages/InfoContenido';
import Tienda from "./pages/Tienda"
import Biblioteca from './pages/Biblioteca';


//creamos rutas para cada pagina que hemos creado.
function App() {
  return (
    <div>
    <Router>
      <Routes>
        <Route path='/' element={<Login/>}></Route>
        <Route path='/register' element={<Register/>}></Route>
        <Route path='/CrearSaldo' element={<Saldo/>}></Route>
        <Route path='/CrearContenido' element={<Contenido/>}></Route>
        <Route path='/CrearCategoria' element={<Categoria/>}></Route>
        <Route path='/CrearAutor' element={<Autor/>}></Route>
        <Route path='/testing' element={<Test/>}></Route>
        <Route path='/Tienda/:id' element={<Tienda/>}></Route> 
        <Route path='/Biblioteca/:id' element={<Biblioteca/>}></Route> 
        <Route path='/Contenido/:id' element={<InfoContenido/>}></Route> 
      </Routes> 
    </Router> 
    </div>
  );
}

export default App;
