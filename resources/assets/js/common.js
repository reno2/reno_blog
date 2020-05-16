
// setTimeout(function(){
//     document.querySelector('.info_admin').classList.add('hide');
//
// }, 2000);



import hljs from 'highlight.js';




hljs.configure({tabReplace: '<span class="indent">\t</span>'});
hljs.initHighlightingOnLoad();

$(document).ready(()=>{

    //document.querySelector('.abrand').addEventListener('click', hero1);
    hero1();
    function hero1() {
        TweenMax.to(".hero-text", 1.5, {
            delay: 0,
            x: "50%",
            y: "-50%",
            opacity: 1,
            ease: Expo.easeInOut
        });

        TweenMax.to(".hero-text__deved", 1.5, {
            delay: 1.2,
            y: "0",
            x: "0",

            rotation: 0,
            opacity: 1,
            ease: Expo.easeInOut
        });

        TweenMax.to(".hero-text__first", 1.5, {
            delay: 1,
            x: "0%",
            opacity: 1,
            ease: "circ.out"
        });

        TweenMax.to(".hero-text__second", 1.5, {
            delay: 1.5,
            x: "0%",
            opacity: 1,
            ease: "circ.out"
        });


        TweenMax.to(".hero-text__therd", 1.5, {
            delay: 2,
            x: "0%",
            opacity: 1,
            ease: "circ.out"
        });

        TweenMax.to(".hero-text__four", 1.5, {
            delay: 2.5,
            x: "0%",
            opacity: 1,
            ease: "circ.out"
        });

        TweenMax.to(".hero-text__top", 1, {
            delay: 2.5,
            rotateX: 0,
            ease: "bounce.out"
        });
        return false
    }


    if(document.querySelector('.info_admin')) {
        setTimeout(function () {
            document.querySelector('.info_admin').classList.add('hide');

        }, 2000);
    }


    $('#slug__change').on('change', ()=> {
        if($('input#slug').attr('readonly') == 'readonly') $('input#slug').removeAttr('readonly')
        else $('input#slug').attr('readonly', 'readonly')
    })

})
