import Link from "next/link";

const About =(props) => {

    return (
        <div>
        <h1 className="text">About</h1>
        <p className="text2" >This is the about page</p>
        <Link href="/" className="button"> Home </Link>
        </div>
    );
    }

    export default About;