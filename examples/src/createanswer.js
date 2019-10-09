$('#nested-answer').click(  function (event) 
{
  event.preventDefault();
  if (PossibleNestedAnswer()){
      valuePar1 = "nestedanswer";
      $('#button-execute').trigger("click");
      if (token.substring(0,10) != 'XXXXXXXXXX'){
        window.open("file:///C:/jQuery/dafo/src/nestedAnswer.html?param1="+token);
      }
  }
  valuePar1="query";
  valuePar2="";
  valuePar3="";
});

//---------------------------------------------------------------
function PossibleNestedAnswer(){
  var treeFlat =$("#treeView").jstree(true).get_json('#', { 'flat': true });
  var numberOfObjProp = -1; // bo root sie nie liczy!
  console.log("Nested answer",treeFlat);
  for (var i = 0; i < treeFlat.length; i++){
     var node = treeFlat[i];
     if (node.text.indexOf("count(")>0) {
          alert("Not applicable to queries with COUNT()!");
          return false;
     }
     if (node.icon == 'glyphicon glyphicon-remove'){
          alert("Not applicable to queries with EXCLUDE!"); 
          return false;    
     }
     if (node.state.checked==true 
           && (node.li_attr.class.indexOf("om")>0 || node.li_attr.class.indexOf("of")>0)){
       console.log("z om of",node);
      numberOfObjProp++;
     }
  }
  if (numberOfObjProp < 1) {
    alert("Not applicable to queries with no object properties!");
    return false;
  }
  if (numberOfObjProp > 1) {
    alert("Not applicable to queries with more than one object property!");
    return false;
  }
  return true;
}

//----------------------------------------------------------------------

$('#button-execute').click(  function (event) 
{event.preventDefault();
      var treeFlat =$("#treeView").jstree(true).get_json('#', { 'flat': true });
      nestStr="{dafo:{par1:'"+valuePar1+"',"
                    +"par2:'"+valuePar2+"',"
                    +"par3:'"+valuePar3+"',"
                    +"tree:[";
      //jesli sa rozszerzenia nazw [], to zredukowac i odbudoewac drzewo
      var rebuildtree = false;
      var notStart = false;
      console.log("treeFlat1:",treeFlat);
      for (var i = 0; i < treeFlat.length; i++){
        var el = treeFlat[i];
        var textName=el.text;
        var pos=textName.indexOf("[");
        if (pos > 0 && textName.indexOf("count(") < 0){
              var nid = '#'+el.id;
              var node = $("#treeView").jstree().get_node(nid);
              textName = textName.substring(0,pos-1);
              el.text = textName;
              node.text = textName.substring(0,pos-1);
              node.li_attr.class = node.li_attr.class.replace("andexpl","and");
              el.li_attr.class=node.li_attr.class;
              rebuildtree = true;
              //console.log("Tak, rebuild, node:",node);
        }      
        if (el.state.checked) {
            if (notStart){
              nestStr+=',';
            } else {
              notStart = true;
            }            
            nestStr+="{id:'"+el.id+"',text:'"+el.text+"',parent:'"+el.parent
            +"',attr:'"+el.li_attr.class+"'}";
            
        }
        //console.log("nowa wersja:",el.id,el.text,el.li_attr.class,el.state.checked);
      }
      nestStr+=']}}';
      if (rebuildtree){
        $('#treeView').jstree(true).redraw(true);
      }
      json = JSON.stringify(nestStr);
      console.log("Wysylam:",json);
      var xhr = new XMLHttpRequest();
      //xhr.open("POST", 'https://localhost:44391/api/treeview', false);
      xhr.open("POST", serverURL, false);
      xhr.setRequestHeader('Content-type', 'application/json; charset=utf-8');
      xhr.onload = function () { 
          //console.log("odp 1:",odp);
          var odp=xhr.responseText;
          token = odp.substring(0,36);
          console.log("token:",token);
          var odp=odp.substring(36);
          if (odp.length > 0)
          {
              console.log("odp 1:",odp);
              //odp=odp.replace(/'/g,'"');
              odp=odp.replace(/"/g,'\\"').replace(/'/g,'"')
                  .replace(/\\-/g,'-')
                  .replace(/\'/g,' ');
              console.log("odp 2",odp);
              jsonresp = JSON.parse(odp);
              console.log("jsonresp 1",jsonresp);
              $('#odp').remove();
              var el="<ol id='odp'>"
              for (var i = 0; i < jsonresp.answer.length; i++){
                el+="<li>"+jsonresp.answer[i].text+"</li>";
              }
              var $ansJQUERY=$(el+"</ol>");
              $('#answers').prepend($ansJQUERY);
          }
          //if (token.substring(0,10) != 'XXXXXXXXXX'){
          //    window.open("file:///C:/jQuery/dafo/src/rewriting.html?param1="+token);
          //}
      }
      xhr.send(json);         
});

//----------------------------------------------------------------------

$("#button-fo-sql").click(  function (event) 
{event.preventDefault();
  if (token.substring(0,10) != 'XXXXXXXXXX'){
    window.open("file:///C:/jQuery/dafo/src/rewriting.html?param1="+token);
  }
});

///$('#focuson-execute').click(  function (event) 
//{event.preventDefault();
function executeFocusOn(){
  //console.log("start-focuson");
      $('#odp').remove();
      var treeFlat =$("#treeView").jstree(true).get_json('#', { 'flat': true });
      nestStr="{dafo:{par1:'"+valuePar1+"',"
                    +"par2:'"+valuePar2+"',"
                    +"par3:'"+valuePar3+"',"
                    +"tree:[";
      var notStart = false;
      for (var i = 0; i < treeFlat.length; i++){
        var el = treeFlat[i];
        if (el.state.checked) {
            if (notStart){
              nestStr+=',';
            } else {
              notStart = true;
            }
            nestStr+="{id:'"+el.id+"',text:'"+el.text+"',parent:'"+el.parent
            +"',attr:'"+el.li_attr.class+"'}";
        }
      }
      nestStr+=']}}';
      json = JSON.stringify(nestStr);
      var xhr = new XMLHttpRequest();
      //xhr.open("POST", 'https://localhost:44391/api/treeview', false);
      xhr.open("POST", serverURL, false);
      xhr.setRequestHeader('Content-type', 'application/json; charset=utf-8');
      xhr.onload = function () {          
          var odp=xhr.responseText.replace(/AndIcon/g,"glyphicon glyphicon-menu-up" )
          .replace(/OrIcon/g,"glyphicon glyphicon-menu-down");
          //console.log("focus-on, odp=",odp);         
          jsonresp = JSON.parse(odp);
          //console.log("Koniec executeFocusOn");
      }
      xhr.send(json);         
};

//--------------------------------------------------------------------------------
function executeExplore(){
  //console.log("start-focuson");
      $('#odp').remove();
      var treeFlat =$("#treeView").jstree(true).get_json('#', { 'flat': true });
      nestStr="{dafo:{par1:'"+valuePar1+"',"
                    +"par2:'"+valuePar2+"',"
                    +"par3:'"+valuePar3+"',"
                    +"tree:[";
      var notStart = false;
      for (var i = 0; i < treeFlat.length; i++){
        var el = treeFlat[i];
        if (el.state.checked) {
            if (notStart){
              nestStr+=',';
            } else {
              notStart = true;
            }
            nestStr+="{id:'"+el.id+"',text:'"+el.text+"',parent:'"+el.parent
            +"',attr:'"+el.li_attr.class+"'}";
        }
      }
      nestStr+=']}}';
      json = JSON.stringify(nestStr);
      var xhr = new XMLHttpRequest();
      //xhr.open("POST", 'https://localhost:44391/api/treeview', false);
      xhr.open("POST", serverURL, false);
      xhr.setRequestHeader('Content-type', 'application/json; charset=utf-8');
      xhr.onload = function () {          
          var odp=xhr.responseText.replace(/AndIcon/g,"glyphicon glyphicon-menu-up" )
          .replace(/OrIcon/g,"glyphicon glyphicon-menu-down");
          //console.log("Explore, odp=",odp);         
          jsonresp = JSON.parse(odp);
          //console.log("Koniec executeFocusOn");
      }
      xhr.send(json);         
};

function verifyExplore(){
  var treeFlat =$("#treeView").jstree(true).get_json('#', { 'flat': true });
  console.log("Explore po reBuild:",treeFlat);
  for (var i = 0; i < treeFlat.length; i++){
    var el = treeFlat[i];
    if (el.state.checked) {
      var nid = '#'+el.id;
      console.log("node id:",nid);
      var node = $("#treeView").jstree(true).get_node(nid);
      console.log("node:",node);
      node.state.checked = true;
    }
  }
  $('#treeView').jstree(true).redraw(true);
}

   