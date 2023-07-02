import React from 'react';
import { useNavigate } from 'react-router-dom';
import '../index.css'


const Button = ({ url }) => {
  const navigate = useNavigate();

  const handleClick = () => {
    navigate(url);
  };

  return (
    <button onClick={handleClick} className='button1'>
      Go to {url}
    </button>
  );
};

export default Button;