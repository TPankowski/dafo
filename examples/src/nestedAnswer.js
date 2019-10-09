//$('#button-rewriting').click(function (event) {
  function displayNestedAnswer(){
    createTreeNested();
    $("#treetreeViewNested").jstree("close_all", -1);
  }
       
  function createTreeNested(){
           $(function() {
             $('#treeViewNested').jstree({     
               'core' : {
                 'datatype':'JSON',
                 "check_callback": true,
                 "expand_selected_onload" : false,
                 'data' : jsonnested
               }
             });           
           });
           $("#treeViewNested").bind('ready.jstree', function (event, data) {
            $(this).jstree().open_all(); // open all nodes so they are visible in dom
              $('#treeViewNested li').each(function (index,value) {
                  var node = $("#treeViewNested").jstree().get_node(this.id);                
                  node.icon = " ";
                  node.state.opened = true;
              });
              //$(this).jstree().close_all(); // close all again
              var parentid = '#';
              var root = $("#treeViewNested").jstree().get_node(parentid);
              //console.log("el 0",root,root.children,root.children[0],root.children[1],root.children[2]);
              for (var i = 0; i < root.children.length; i++){
                var nid = "#"+root.children[i];
                var el = $("#treeViewNested").jstree().get_node(nid);
                //console.log("111:","i=",i,"nid=",nid,"el=",el);
                el.state.opened=false;
                //console.log("222:","i=",i,"nid=",nid,"el=",el);
              }              
              $("#treetreeViewNested").jstree("close_all", -1);
              $('#treeViewNested').jstree(true).redraw(true);
          });
  } 
