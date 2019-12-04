<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
        <style>
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Mansalva', cursive;
                outline: none;
            }

            body{
                font-size: 62.5%;
                background: url('https://images.unsplash.com/photo-1547394765-185e1e68f34e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80') ;
                background-size: cover;
                height: 100vh;
            }

            .neon{
                text-align: center;
                margin:40px;
                font-size:5rem;
                color: #2196f3;
                text-shadow: 0 0 20px #2196f3;
            }


            .neon:hover{
                transform: translateY(-10px);

                transform: rotate(3deg);
            }

            .neon--animated{
                animation: moveInLeft 1s ease-out .75s;
                animation-fill-mode: backwards;

            }



            .container{
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%,-50%);
            }


            .contact-form{
                background: rgba(0 , 0, 0, 0.8);
                padding: 30px;
                border-radius: 5px;
                display: flex;
                box-shadow: 0 0 10px rgba(0 , 0, 0, 0.13);
            }

            .input-fields{
                display: flex;
                flex-direction: column;
                margin-right: 4%;  
            }

            .input-fields,
            .msg{
                width:48%;
            }

            .input-fields .input,
            .msg textarea{
                margin:10px 0;
                background: transparent;
                border: 0;
                border-bottom: 3px solid #c5ecfd;
                padding: 10px;
                color: #c5ecfd;
                width:100%;
            }
            .msg textarea{
                height: 232px;
            }




            #button-blue{
                font-family: 'Montserrat', Arial, Helvetica, sans-serif;
                float:left;
                width: 100%;
                border: #fbfbfb solid 4px;
                cursor:pointer;
                background-color: #3498db;
                color:white;
                font-size:24px;
                padding-top:22px;
                padding-bottom:22px;
                -webkit-transition: all 0.3s;
                -moz-transition: all 0.3s;
                transition: all 0.3s;
                margin-top:-4px;
                font-weight:700;
            }

            #button-blue:hover{
                background-color: rgba(0,0,0,0);
                color: #0493bd;
            }

            .submit:hover {
                color: #3498db;
            }

            .ease {
                width: 0px;
                height: 74px;
                background-color: #fbfbfb;
                -webkit-transition: .3s ease;
                -moz-transition: .3s ease;
                -o-transition: .3s ease;
                -ms-transition: .3s ease;
                transition: .3s ease;
            }

            .submit:hover .ease{
                width:100%;
                background-color:white;
            }


            input :placeholder{
                color: #c5ecfd;
            }

            .tsiko-center{
                background-color: black;
                padding: 30px;
                width:500px;   
                height: 500px;
                border-radius: 5px;
                margin: auto auto;
                box-shadow: 0 0 10px rgba(0 , 0, 0, 0.13);
            }

            .tsiko{
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%,-50%);

            }

            .tsiko--2{
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%,-50%);
            }


            a{
                position: relative;
                display: inline-block;
                padding: 15px 30px;
                top: 10rem;
                color:#2196f3;
                text-transform: uppercase;
                letter-spacing: 4px;
                text-decoration: none;
                font-size:20px;
                overflow: hidden;
                transition:0.2s;

            }

            .space{
                margin-top: 50px;


            }

            a:hover{
                color: #255784;
                background: #2196f3;
                box-shadow: 0 0 10px #2196f3, 0 0 40px #2196f3, 0 0 80px #2196f3;
                transition-delay: 1s;
            }


            a span{
                position:absolute;
                display: block;
            }
            a span:nth-child(1){
                top: 0;
                left: -100%;
                width:100%;
                height:2px;
                background: linear-gradient(90deg,transparent,#2196f3);
            }

            a:hover span:nth-child(1){
                left:100%;
                transition:1s;
            }

            a span:nth-child(3){
                bottom: 0;
                right: -100%;
                width:100%;
                height:2px;
                background: linear-gradient(270deg,transparent,#2196f3);
            }

            a:hover span:nth-child(3){
                right:100%;
                transition:1s;
                transition-delay:0.5s;
            }


            a span:nth-child(2){
                top:-100%;
                right: 0;
                width:2px;
                height:100%;
                background: linear-gradient(180deg,transparent,#2196f3);
            }

            a:hover span:nth-child(2){
                top:100%;
                transition:1s;
                transition-delay:0.25s;
            }

            a span:nth-child(4){
                bottom:-100%;
                left: 0;
                width:2px;
                height:100%;
                background: linear-gradient(360deg,transparent,#2196f3);
            }

            a:hover span:nth-child(4){
                bottom:100%;
                transition:1s;
                transition-delay:0.75s;
            }



            .btn--animated {

                animation: moveInBottom .5s ease-out .75s;
                animation-fill-mode: backwards;
            }



            @keyframes moveInBottom {
                0% {
                    opacity: 0;
                    transform: translateY(3rem);
                }

                100% {
                    opacity: 1;
                    transform: translate(0);
                }
            }


            @keyframes moveInLeft {
                0% {
                    opacity: 0;
                    transform: translateX(-10rem);
                }

                80% {
                    transform: translateX(1rem);
                }

                100% {
                    opacity: 1;
                    transform: translate(0);
                }
            }
        </style>
    </head>

    <body>

        <h1 class="neon neon--animated">[Trainers School]</h1>
        <div class="tsiko-center">


            <div class="tsiko">
                <div class="tsiko--2">

                    <a href="trainer/insertForm.htm" type="submit" class="btn--animated">
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                        Insert trainers

                    </a>

                    <a href="trainer/showtrainers.htm" type="submit" class="btn--animated space">
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                        Show trainers

                    </a>



                </div>




            </div>




        </div>





        <!--        <a href="trainer/insertForm.htm">Insert Trainer</a>
                <a href="trainer/showtrainers.htm">Show Trainers</a>-->
    </body>
</html>
