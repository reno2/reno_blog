CKEDITOR.plugins.add( 'coder', {
    icons: 'coder',
    init: function( editor ) {
        editor.addCommand( 'insertCoder', {
            exec: function( insertCoder ) {
                let reg = /(<code.+>)(.*)(<\/.+>)/;
                let data = editor.getSelection().getStartElement().getOuterHtml();
                if(reg.test(editor.getSelection().getStartElement().getOuterHtml())){
                    //console.log('true')
                    let res = data.replace(reg, '$2')
                    editor.insertHtml( res );    

                }else{
                      
                      editor.insertHtml( '<code class="inner">' + editor.getSelection().getSelectedText() + '</code>' );    
                }
                //editor.insertHtml( '<code class="inner">' + editor.getSelection().getSelectedText() + '</code>' );
                //console.log(editor.getSelection().getStartElement().getOuterHtml());
            }
        });
        editor.ui.addButton( 'coder', {
            label: 'Insert Code',
            command: 'insertCoder',
            toolbar: 'insert'
        });
    }
});