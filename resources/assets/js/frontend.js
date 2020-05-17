
import hljs from 'highlight.js';

document.addEventListener('DOMContentLoaded', function(){


    hljs.configure({tabReplace: '<span class="indent">\t</span>'});
    hljs.initHighlightingOnLoad();

    hero1();

})



function hero1() {
    // TweenMax.to(".hero-text", 1.5, {
    //     delay: 0,
    //     x: "0%",
    //     y: "0%",
    //     opacity: 1,
    //     ease: Expo.easeInOut
    // });

    TweenMax.to(".hero-text__one", 3, {
        delay: 0.5,
        translateX: 0,
        skewX: 0,
        opacity: 1,
        ease: Bounce.easeOut
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
        opacity: 1,
        ease: Bounce.easeOut
    });
    return false
}