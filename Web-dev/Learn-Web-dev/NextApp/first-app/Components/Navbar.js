import React from 'react';
import Link from 'next/link';

const Navbar = () => {
  return (
    <nav className="navbar">
      <div className="logo">Logo</div>
      <ul className="nav-links">
        <Link className="nav-item" href="/">Home</Link>
        <Link className="nav-item" href="/About" >About</Link>
        <li className="nav-item">Services</li>
        <li className="nav-item">Contact</li>
      </ul>
    </nav>
  );
};

export default Navbar;