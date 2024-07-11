import { BrowserRouter as Router, Route, BrowserRouter, Routes } from 'react-router-dom'
import Navbar from './Components/Navbar'
import Sidebar from '../src/Components/Sidebar'
import Home from './pages/Home'
import Sales from './pages/Sales'
import Clients from './pages/Clients'
import './App.scss';

function App() {
  return (
    <Router>
      <Navbar />
      <Sidebar />
      <Routes>
        <Route exact path='*' element={<Navbar />}></Route>
        <Route exact path='/' element={<Home />}> </Route>
        <Route exact path='/sales' element={<Sales />}> </Route>
        <Route exact path='/clients' element={<Clients />}> </Route>
      </Routes>
    </Router>

  );
}

export default App;
