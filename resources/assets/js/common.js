
// setTimeout(function(){
//     document.querySelector('.info_admin').classList.add('hide');
//
// }, 2000);


$(document).ready(()=>{

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
