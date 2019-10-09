//$('#button-rewriting').click(function (event) {
function displayFoSQL(){
  createTreeBefore();
  createTreeAfter();
  createSqlQuery();
}
     
function createTreeBefore(){
         $(function() {
           $('#treeViewBefore').jstree({          
             'core' : {
               'datatype':'JSON',
               "check_callback": true,
               'data' : jsonbefore
             }
           });           
         });
         $("#treeViewBefore").bind('ready.jstree', function (event, data) {
          $(this).jstree().open_all(); // open all nodes so they are visible in dom
            $('#treeViewBefore li').each(function (index,value) {
                var node = $("#treeViewBefore").jstree().get_node(this.id);                
                node.icon = " ";
                node.state.opened = true;
                //console.log("node=",node);
                //var lvl = node.parents.length;
                //var idx = index;
                //console.log('node index = ' + idx + ' level = ' + lvl);
            });
            //$(this).jstree().close_all(); // close all again
            $('#treeViewBefore').jstree(true).redraw(true);
        });
} 

function createTreeAfter(){
  $(function() {
    $('#treeViewAfter').jstree({          
      'core' : {
        'datatype':'JSON',
        "check_callback": true,
        'data' : jsonafter
      }
    });           
  });
  $("#treeViewAfter").bind('ready.jstree', function (event, data) {
   $(this).jstree().open_all(); // open all nodes so they are visible in dom
     $('#treeViewAfter li').each(function (index,value) {
         var node = $("#treeViewAfter").jstree().get_node(this.id);                
         node.icon = " ";
         node.state.opened = true;
     });
     $('#treeViewAfter').jstree(true).redraw(true);
 });
} 

function createSqlQuery(){
      //var el="<p id='sql'>"+sqlQuery+"</p>"
      var el="<div class='sql' id='sql'>"+sqlQuery+"</div>"
      var $sqlJQUERY=$(el);
      $('#sqlQuery').prepend($sqlJQUERY);
}