      
function reBuild(newData)
{
   $('#treeView').jstree(true).settings.core.data = jsonresp;
   $('#treeView').jstree(true).refresh();
}

function createTree(){
   //xhttp.open('GET', 'https://localhost:44391/api/treeview?type=tree&property='+keywordquery, false);// zablokowana asynchronicznosc, false
   xhttp.open('GET', serverURL+'?type=tree&property='+keywordquery, false);// zablokowana asynchronicznosc, false
    odp=xhttp.send();
    var iconRepl = response.replace(/UpIcon/g,"glyphicon glyphicon-menu-up" )
      .replace(/BpIcon/g,"glyphicon glyphicon-menu-down" )
      .replace(/AttIcon/g," " );
    //console.log("createTree:",iconRepl);
    jsonresp = JSON.parse(iconRepl.replace(/'/g, '"')); 
    //console.log("createTree:",jsonresp);          
    if (treecreated){
       $("#treeView").jstree("destroy");
    }
    treecreated = true;
//----------------------------------------------------------        
$(function() {
   $('#treeView').jstree({
   'plugins' : ['checkbox','contextmenu'],
   "contextmenu": {
   "items": function ($node) {
    var tree = $("#treeView").jstree(true);
    return {
    "SetAND": {
        "label": "Set to AND",
        "action": function (data) {
          MenuSetAND(data);
        }
     },
     "SetOR": {
        "label": "Set to OR",
        "action": function (data) {
            MenuSetOR(data);
        }
     },
     "Exclude": {
        "label": "EXCLude",
        "action": function (data) { 
          MenuExclude(data);         
        }
     },
     "Include": {
        "label": "INCLude",
        "action": function (data) {
          MenuInclude(data);          
        }
     },
     "CountOFF": {
        "label": "Count OFF",
        "action": function (data) {
          MenuCountOFF(data);
        }
     },
     "CountON": {
        "label": "Count ON",
        "submenu" : {
            "< k (k > 0)": {
              "label": "count() < k (count() > 0)",
              "action": function (data) {
                MenuCountONLe(data);
                }
              },
            "= k": {
              "label": "count() = k",
              "action": function (data) {
                MenuCountONEq(data);
                }
              },
            "> k": {
              "label": "count() > k",
              "action": function (data) {
                MenuCountONGt(data);
              }
            },
          }
      },
     "Values": {
      "separator_before": false,
      "separator_after": true,
      "label": "Attribute values",
      "action": false,
      "submenu":{
        "Insert": {
            "separator_before": false,
            "separator_after": true,
            "label": "From database",
            "action": false,
            action: function (data) {
              MenuValueFromDB(data);
            }
          
          },
          "AddValue": {
            "separator_before": false,
            "separator_after": true,
            "label": "Add new value node",
            "action": function (data) {
              MenuValueAddNew(data);
            }
          },
          "EditValue": {
            "separator_before": false,
            "separator_after": true,
            "label": "Edit value",
            "action": function (data) {
              MenuValueEdit(data);
            }
          },
          "DeleteValue": {
            "label": "Delete value node",
            "action": function (data) {
                MenuValueDelete(data);
              }
          }
        }
    },
    "RemoveSiblings": {
        "separator_before": false,
        "separator_after": false,
        "label": "Remove unchecked SIBLINGS",
        "action": function (data) {
          MenuRemoveSiblings(data);
        } 
      },
    "RemoveAll": {
      "separator_before": false,
      "separator_after": false,
      "label": "Remove ALL unchecked",
      "action": function (data) {
        MenuRemoveAll(data);    
      }    
    },
    "FocusOn": {
      "separator_before": false,
      "separator_after": true,
      "label": "Focus On",
      "action": function (data) {
            MenuFocusOn(data);
      }   
    },
    "Explore": {
      "separator_before": false,
      "separator_after": true,
      "label": "Explore",
      "action": function (data) {
              MenuExplore(data);        
      }              
   },
   "Clone": {
    "separator_before": false,
    "separator_after": true,
    "label": "Clone subtree",
    "action": function (data) {
            MenuCloneSubtree(data);        
    }              
 },
  }
 }
},
//----------------------------------------------
  'checkbox':{
      "tie_selection": false,
      "whole_node": false,
      "three_state": false,
      "cascade": 'true'
    },
      'core' : {
      'datatype':'JSON',
      "check_callback": true,
      'data' : jsonresp
    }
   });
  });
} // End of create Tree
