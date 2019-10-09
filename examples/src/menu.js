
function MenuSetAND(data){
    var inst = $.jstree.reference(data.reference);
    var curNode = inst.get_node(data.reference);
    if (curNode.li_attr.class.indexOf("const") > 0){
        alert("Not applicable to constants!");
        return;
    }
    curNode.li_attr.class = curNode.li_attr.class.replace('or','and');
    curNode.li_attr.class = curNode.li_attr.class.replace('noand','no');
    curNode.li_attr.class = curNode.li_attr.class.replace('no','noand');
    if (curNode.icon != 'glyphicon glyphicon-remove'){
        curNode.icon='glyphicon glyphicon-menu-up';     
    }
    $('#treeView').jstree(true).redraw(true);
}
//--------------------------------------------------------------------------
function MenuSetOR(data){
    var inst = $.jstree.reference(data.reference);
    var curNode = inst.get_node(data.reference);
    if (curNode.li_attr.class.indexOf("const") > 0){
        alert("Not applicable to constants!");
        return;
    }
    curNode.li_attr.class = curNode.li_attr.class.replace('noand','no');
    curNode.li_attr.class = curNode.li_attr.class.replace('and','or'); 
    if (curNode.icon != 'glyphicon glyphicon-remove'){
        if (curNode.li_attr.class.indexOf("no") >= 0){
            curNode.icon=' ';
            return;
        }
        curNode.icon='glyphicon glyphicon-menu-down';
    }  
    $('#treeView').jstree(true).redraw(true);
    return;
}

//-------------------------------------------------------------
function MenuExclude(data){ 
    var inst = $.jstree.reference(data.reference);
    var curNode = inst.get_node(data.reference);
    if (curNode.li_attr.class.indexOf("const") > 0){        
        var parentid = '#'+curNode.parent;
        var parent = $("#treeView").jstree().get_node(parentid);     
        parent.li_attr.class = parent.li_attr.class.replace('incl','excl');
        parent.icon='glyphicon glyphicon-remove';
    } else {
        curNode.li_attr.class = curNode.li_attr.class.replace('incl','excl');
        curNode.icon='glyphicon glyphicon-remove';
    }
    curNode.state.opened = true;
    curNode.state.checked = true;
    $('#treeView').jstree(true).redraw(true);
}

//-------------------------------------------------------------
function MenuInclude(data){ 
    var inst = $.jstree.reference(data.reference);
    var curNode = inst.get_node(data.reference);
    curNode.li_attr.class = curNode.li_attr.class.replace('excl','incl');
    if (curNode.li_attr.class.indexOf('and')>=0){
        curNode.icon='glyphicon glyphicon-menu-up';
    } else if (curNode.li_attr.class.indexOf('or')>=0){
        curNode.icon='glyphicon glyphicon-menu-down';
    } else {
        curNode.icon = ' ';
    }
    $('#treeView').jstree(true).redraw(true);
}

//-------------------------------------------------------------
function MenuCountOFF(data){
    var inst = $.jstree.reference(data.reference);
    var curNode = inst.get_node(data.reference);
    const i = curNode.text.indexOf('[ count()');
    if (i > 0){
        curNode.text = curNode.text.substring(0,i);
    }
    $('#treeView').jstree(true).redraw(true);
}

//-------------------------------------------------------------
function MenuCountONLe(data){
    var inst = $.jstree.reference(data.reference);
    var curNode = inst.get_node(data.reference);
    if (curNode.li_attr.class.indexOf("const") > 0){
        alert("Not applicable to constants!");
        return;
    }
    if (curNode.li_attr.class.indexOf("up") > 0){
        alert("Not applicable to classes!");
        return;
    }
    var restr = prompt("k = ");
    if (restr){
        const i = curNode.text.indexOf('[ count()');
        if (i > 0){
curNode.text = curNode.text.substring(0,i);
        }
        curNode.text += ' [ count() < '+ restr + ' ]';
        $('#treeView').jstree(true).redraw(true);
    }
}
//-------------------------------------------------------------
function MenuCountONEq(data){
    var inst = $.jstree.reference(data.reference);
    var curNode = inst.get_node(data.reference);
    if (curNode.li_attr.class.indexOf("const") > 0){
        alert("Not applicable to constants!");
        return;
    }
    if (curNode.li_attr.class.indexOf("up") > 0){
        alert("Not applicable to classes!");
        return;
    }
    var restr = prompt("k = ");
    if (restr){
        const i = curNode.text.indexOf('[ count()');
        if (i > 0){
curNode.text = curNode.text.substring(0,i);
        }
        curNode.text += ' [ count() = '+ restr + ' ]';
        $('#treeView').jstree(true).redraw(true);
    }
}
//-------------------------------------------------------------
function MenuCountONGt(data){
    var inst = $.jstree.reference(data.reference);
    var curNode = inst.get_node(data.reference);
    if (curNode.li_attr.class.indexOf("const") > 0){
        alert("Not applicable to constants!");
        return;
    }
    if (curNode.li_attr.class.indexOf("up") > 0){
        alert("Not applicable to classes!");
        return;
    }
    var restr = prompt("k = ");
    if (restr){
        const i = curNode.text.indexOf('[ count()');
        if (i > 0){
curNode.text = curNode.text.substring(0,i);
        }
        curNode.text += ' [ count() > '+ restr + ' ]';
        $('#treeView').jstree(true).redraw(true);
    }
}

//-------------------------------------------------------------
function MenuValueFromDB(data){
    var inst = $.jstree.reference(data.reference);
    var curNode = inst.get_node(data.reference);
    if (curNode.li_attr.class.indexOf("const") > 0){
        alert("Not applicable to constants!");
        return;
    }
    if (curNode.li_attr.class.indexOf("up") > 0){
        alert("Not applicable to classes!");
        return;
    }
    if (curNode.li_attr.class.indexOf("om") > 0 || curNode.li_attr.class.indexOf("of") > 0){
        alert("Not applicable to object properties!");
        return;
    }
    var parentid = '#'+curNode.parent;
    //console.log("parentid:",parentid);
    var parentNode = $("#treeView").jstree().get_node(parentid);
    //console.log("parentNode:",parentNode);
    var treeFlat =$("#treeView").jstree(true).get_json('#', { 'flat': true });
    //console.log("treeFlat:",treeFlat);
    nestStr="{dafo:{par1:"+"'values',"
      +"par2: '"+curNode.text+"',"
      +"par3: '"+parentNode.id+"',"
      +"tree:[";
    var notStart = false;
    for (var i = 0; i < treeFlat.length; i++){
        var parentNode = treeFlat[i];
        if (parentNode.state.checked) {
            if (notStart){
                nestStr+=',';
            } else {
                notStart = true;
            }
            nestStr+="{id:'"+parentNode.id+"',text:'"+parentNode.text+"',parent:'"+parentNode.parent
            +"',attr:'"+parentNode.li_attr.class+"'}";
        }
    }
    nestStr+=']}}';
    json = JSON.stringify(nestStr);
    var xhr = new XMLHttpRequest();
    //xhr.open('POST', 'https://localhost:44391/api/treeview',false);
    xhr.open('POST', serverURL,false);
    xhr.setRequestHeader('Content-type', 'application/json; charset=utf-8');
    xhr.onload = function () { 
        var odp=xhr.responseText.replace(/"/g,'\\"').replace(/'/g,'"');
        console.log("values:",odp);
        jsonresp = JSON.parse(odp);
        $parent = curNode;
        // usunac stare!
        if (curNode.children.length > 0){
            var toRemove = new Array;         
            for (i = 0; i < curNode.children.length; i++){
                toRemove[i] = '#'+curNode.children[i];
            }
            for (i = 0; i < toRemove.length; i++){
                var nodeid = toRemove[i];
                var remnode = $("#treeView").jstree().get_node(nodeid);
                inst.delete_node(remnode);
            }
        }
        for (var i=0, count=jsonresp.length; i< count; i++){
            curNode = inst.create_node($parent,  jsonresp[i]);
            $parent.state.opened = true;
            $parent.state.checked = true;
        }    
        inst.deselect_all();
        inst.select_node($parent); 
        $('#treeView').jstree(true).redraw(true);   
    }
    xhr.send(json);
}

//---------------------------------------------------------------
function MenuValueAddNew(data){
    var inst = $.jstree.reference(data.reference);
    var curNode = inst.get_node(data.reference);
    if (curNode.li_attr.class.indexOf("const") > 0){
        alert("Not applicable to constants!");
        return;
    }
    if (curNode.li_attr.class.indexOf("up") > 0){
        alert("Not applicable to classes!");
        return;
    }
    if (curNode.li_attr.class.indexOf("om") > 0 || curNode.li_attr.class.indexOf("of") > 0){
        alert("Not applicable to object properties!");
        return;
    }
    curNode.state.checked = true;
    curNode.icon='glyphicon glyphicon-menu-down'; 
    var newNode = inst.create_node(curNode, 
             { icon: ' ', state:{ checked: true},li_attr : {"class" : "val const incl"}
             });
    if(newNode) {
        inst.edit(newNode);
    }
}

//---------------------------------------------------------------
function MenuValueEdit(data){
    var inst = $.jstree.reference(data.reference);
    var curNode = inst.get_node(data.reference);
    if (curNode.li_attr.class.indexOf("up") > 0){
        alert("Not applicable to classes!");
        return;
    }
    if (curNode.li_attr.class.indexOf("om") > 0 || curNode.li_attr.class.indexOf("of") > 0){
        alert("Not applicable to object properties!");
        return;
    }
    if (curNode.li_attr.class.indexOf("dm") > 0 || curNode.li_attr.class.indexOf("df") > 0){
        alert("Not applicable to data properties!");
        return;
    }
    curNode.state.checked = true;
    inst.edit(curNode);
}

//---------------------------------------------------------------
function MenuValueDelete(data){
    var inst = $.jstree.reference(data.reference);
    var curNode = inst.get_node(data.reference);
    if (curNode.li_attr.class.indexOf("up") > 0){
        alert("Not applicable to classes!");
        return;
    }
    if (curNode.li_attr.class.indexOf("om") > 0 || curNode.li_attr.class.indexOf("of") > 0){
        alert("Not applicable to object properties!");
        return;
    }
    if (curNode.li_attr.class.indexOf("dm") > 0 || curNode.li_attr.class.indexOf("df") > 0){
        alert("Not applicable to data properties!");
        return;
    }
    inst.delete_node(curNode);
}

//---------------------------------------------------------------
function MenuRemoveSiblings(data){
    var inst = $.jstree.reference(data.reference);
    var curNode = inst.get_node(data.reference);
    var parentid = '#'+curNode.parent;
    var parentNode = $("#treeView").jstree().get_node(parentid);
    var toRemove = new Array;// lista wszystkich wezlow do usuniecia
    var idx=0;
    for (i = 0; i < parentNode.children.length; i++){
        var nodeid = '#'+parentNode.children[i];
        var remnode = $("#treeView").jstree().get_node(nodeid);
        if (!remnode.state.checked){
            toRemove[idx++]=nodeid;
        }
    }
    for (i = 0; i < toRemove.length; i++){
      var nodeid = toRemove[i];
      var remnode = $("#treeView").jstree().get_node(nodeid);
      inst.delete_node(remnode);
   }
   $('#treeView').jstree(true).redraw(true);
}

//---------------------------------------------------------------
function MenuRemoveAll(data){
    var inst = $.jstree.reference(data.reference);
    var toRemove = new Array;// lista wszystkich wezlow do usuniecia
    var idx=0;
    var treeFlat =$("#treeView").jstree(true).get_json('#', { 'flat': true });
    for (var i = 0; i < treeFlat.length; i++){
       var node = treeFlat[i];
       if (!node.state.checked) {
          toRemove[idx++]=node.id;
       }
    }
    for (i = 0; i < toRemove.length; i++){
        var nodeid = toRemove[i];
        var remnode = $("#treeView").jstree().get_node(nodeid);
        inst.delete_node(remnode);
    }
    $('#treeView').jstree(true).redraw(true);
}

//---------------------------------------------------------------
function MenuFocusOn(data){
    var inst = $.jstree.reference(data.reference);
    var curNode = inst.get_node(data.reference);
    if (curNode.li_attr.class.indexOf("const") > 0){
        alert("Not applicable to constants!");
        return;
    }
    if (curNode.li_attr.class.indexOf("om") > 0 || curNode.li_attr.class.indexOf("of") > 0){
        alert("Not applicable to object properties!");
        return;
    }
    if (curNode.li_attr.class.indexOf("dm") > 0 || curNode.li_attr.class.indexOf("df") > 0){
        alert("Not applicable to data properties!");
        return;
    }
    var treeFlat =$("#treeView").jstree(true).get_json('#', { 'flat': true });
    for (var i = 0; i < treeFlat.length; i++){
       var node = treeFlat[i];
       if (node.text.indexOf("count(")>0) {
            alert("Not applicable to queries with COUNT()!");
            return;
       }
       if (node.icon == 'glyphicon glyphicon-remove'){
            alert("Not applicable to queries with EXCLUDE!"); 
            return;    
       }
    }
    valuePar1="focuson";
    valuePar2=curNode.text;
    valuePar3=curNode.id; 
    executeFocusOn();
    reBuild(jsonresp);
    $('#treeView').jstree(true).redraw(true);
    valuePar1="query";
    valuePar2="";
    valuePar3="";  
}

//---------------------------------------------------------------
function MenuExplore(data){
    var inst = $.jstree.reference(data.reference);
    var curNode = inst.get_node(data.reference);
    if (curNode.li_attr.class.indexOf("const") > 0){
        alert("Not applicable to constants!");
        return;
    }
    if (curNode.li_attr.class.indexOf("om") > 0 || curNode.li_attr.class.indexOf("of") > 0){
        alert("Not applicable to object properties!");
        return;
    }
    if (curNode.li_attr.class.indexOf("dm") > 0 || curNode.li_attr.class.indexOf("df") > 0){
        alert("Not applicable to data properties!");
        return;
    }
    var treeFlat =$("#treeView").jstree(true).get_json('#', { 'flat': true });
    for (var i = 0; i < treeFlat.length; i++){
       var node = treeFlat[i];
       if (node.text.indexOf("count(")>0) {
            alert("Not applicable to queries with COUNT()!");
            return;
       }
       if (node.icon == 'glyphicon glyphicon-remove'){
            alert("Not applicable to queries with EXCLUDE!"); 
            return;    
       }
    }
    valuePar1="explore";
    valuePar2=curNode.text;
    valuePar3=curNode.id; 
    executeExplore();            
    reBuild(jsonresp);
    //verifyExplore();
    $('#treeView').jstree(true).redraw(true);
    valuePar1="query";
    valuePar2="";
    valuePar3="";  
} 

//---------------------------------------------------------------
function MenuCloneSubtree(data){
    var inst = $.jstree.reference(data.reference);
    var curNode = inst.get_node(data.reference);
    var parentid = curNode.parent;
    //var parentNode = $("#treeView").jstree().get_node(parentid);
    //console.log("parentNode-przed:",parentNode);
    //console.log("curNode:",curNode);
    inst.copy_node(inst.get_node(curNode), inst.get_node(parentid));
    inst.open_node(parentid);
}   
