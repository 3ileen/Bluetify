
// import './App.css';
import './App.css';
import Login from './pages/Login';
import Register from './pages/Register';
import Saldo from './pages/Saldo';
import Autor from './pages/Autor';
import Contenido from './pages/Contenido';
import Categoria from './pages/Categoria';
import Tienda from "./pages/Tienda"




import {BrowserRouter as Router, Routes, Route} from 'react-router-dom'

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
        <Route path='/Tienda' element={<Tienda/>}></Route> 
      </Routes> 
    </Router> 
    </div>
  );
}

export default App;
