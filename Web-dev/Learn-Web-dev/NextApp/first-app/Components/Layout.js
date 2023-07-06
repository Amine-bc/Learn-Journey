import Head from 'next/head'
import Navbar from './Navbar'
import Footer from './Footer'

const Layout = (props) => {
    return (
        <div>
        <Navbar />
        {props.children}
        <Footer />
        </div>
    )
}

export default Layout ;