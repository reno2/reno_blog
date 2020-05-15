CKEDITOR.plugins.add( 'coder', {
    icons: 'coder',
    init: function( editor ) {
        editor.addCommand( 'insertCoder', {
            exec: function( insertCoder ) {
                editor.insertHtml( '<code class="inner">' + editor.getSelection().getSelectedText() + '</code>' );
            }
        });
        editor.ui.addButton( 'coder', {
            label: 'Insert Code',
            command: 'insertCoder',
            toolbar: 'insert'
        });
    }
});