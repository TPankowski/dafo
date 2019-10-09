   $('#button-kq-accept').click(function (event) {
      event.preventDefault();
      $('#odp').remove();
      sel1 = $.trim($('#root1').val());
      sel2 = $.trim($('#root2').val());
      sel3 = $.trim($('#root3').val());
      rest1dSel = $.trim($('#dom1').val());
      rest1rSel = $.trim($('#rng1').val());
      rest2dSel = $.trim($('#dom2').val());
      rest2rSel = $.trim($('#rng2').val());
      rest3dSel = $.trim($('#dom3').val());
      rest3rSel = $.trim($('#rng3').val());
      if (sel1.length > 0 && sel1.indexOf('--') < 0){
         keywordquery=sel1;
         if (sel2.length > 0 && sel2 != 'default'){
            keywordquery+= ','+sel2;
            if (sel3.length > 0 && sel3 != 'default'){
               keywordquery+= ','+sel3;
            }
         }
      }     
      // przygotowanie tabeli ograniczen
      rest_d=''; rest_r='';
      if (rest1dSel.length > 0 && rest1dSel != 'default'
         && rest1rSel.length > 0 && rest1rSel != 'default'){
            rest_d = rest1dSel;
            rest_r = rest1rSel;
      }
      if (rest2dSel.length > 0 && rest2dSel != 'default'
         && rest2rSel.length > 0 && rest2rSel != 'default'){
         if (rest_d.length > 0) {
            rest_d += ',';
            rest_r += ',';
         }
         rest_d += rest2dSel;
         rest_r += rest2rSel;
      }
      if (rest3dSel.length > 0 && rest3dSel != 'default'
         && rest3rSel.length > 0 && rest3rSel != 'default'){
         if (rest_d.length > 0) {
            rest_d += ',';
            rest_r += ',';
         }
         rest_d += rest3dSel;
         rest_r += rest3rSel;
      }
      if (keywordquery.length > 0){
         keywordquery += ';'+rest_d+';'+rest_r;
         console.log('kq_full: keywordquery= ',keywordquery);
         //
         // wyslanie do serwera z pobraniem TREE_JSON
         //
         
         createTree();
         //jsonbefore = jsonresp
          //window.open("file:///C:/jQuery/dafo/src/rewriting.html?param1="+keywordquery);
      } else {
         alert('Keyword query is empty !')
      }

   }); //koniec: akceptacja keyword query i przejście do interfejsu

   
   $( "#root1" ).change(function() {
      //console.log('Wybrany tekst 1: ',$.trim($('#root1').val()));
      sel1 = $.trim($('#root1').val());
      max1 = maxClass(sel1);
      createDropDown2();
      createDropDownDom1();
      $('#root2').show();
   });// obsluga pierwszego selectu

      $( "#root2" ).change(function() {
         sel2 = $.trim($('#root2').val());
         max2 = maxClass(sel2);
         createDropDown3();
         createDropDownDom1();
         $('#root3').show();
      }); // obsluga drugiego selectu

      $( "#root3" ).change(function() {
         sel3 = $.trim($('#root3').val());
         max3 = maxClass(sel3);
         createDropDownDom1();
      }); // obsluga trzeciego selectu
//===================================================== Edges
      $( "#dom1" ).change(function() {
         rest1dSel = $.trim($('#dom1').val());
         max1dSel = maxClass(rest1dSel);
         createDropDownRng1();
      }); 

      $( "#rng1" ).change(function() {
         rest1rSel = $.trim($('#rng1').val());
         max1rSel = maxClass(rest1rSel);
         createDropDownDom2();
         $('#edge2').show();
      });

      $( "#dom2" ).change(function() {
         rest2dSel = $.trim($('#dom2').val());
         max2dSel = maxClass(rest2dSel);
         createDropDownRng2();
      }); 

      $( "#rng2" ).change(function() {
         rest2rSel = $.trim($('#rng2').val());
         max2rSel = maxClass(rest2rSel);
         createDropDownDom3();
         $('#edge3').show();
      });

      $( "#dom3" ).change(function() {
         rest3dSel = $.trim($('#dom3').val());
         max3dSel = maxClass(rest3dSel);
         createDropDownRng3();
      }); 

      $( "#rng3" ).change(function() {
         rest3rSel = $.trim($('#rng3').val());
         max3rSel = maxClass(rest3rSel);
      });

      function createDropDownDom1(){
         $('#dom1').empty();
         var classHTML='<option value="default" selected>------------</option>';
         classHTML += createOptions(sel1+','+sel2+','+sel3, '');
         var $classJQUERY=$(classHTML);
         $('#dom1').prepend($classJQUERY);
      } 

      function createDropDownRng1(){
         $('#rng1').empty();
         var classHTML='<option value="default" selected>------------</option>';
         classHTML += createOptionsNot(max1dSel);
         var $classJQUERY=$(classHTML);
         $('#rng1').prepend($classJQUERY);
      } 

      function createDropDownDom2(){
         $('#dom2').empty();
         var classHTML='<option value="default" selected>------------</option>';
         classHTML += createOptions(sel1+','+sel2+','+sel3+','+rest1rSel, '');
         var $classJQUERY=$(classHTML);
         $('#dom2').prepend($classJQUERY);
      } 

      function createDropDownRng2(){
         $('#rng2').empty();
         var classHTML='<option value="default" selected>------------</option>';
         classHTML += createOptionsNot(max2dSel);
         var $classJQUERY=$(classHTML);
         $('#rng2').prepend($classJQUERY);
      } 

      function createDropDownDom3(){
         $('#dom3').empty();
         var classHTML='<option value="default" selected>------------</option>';
         classHTML += createOptions(sel1+','+sel2+','+sel3+','+rest1rSel+','+rest2rSel, '');
         var $classJQUERY=$(classHTML);
         $('#dom3').prepend($classJQUERY);
      } 

      function createDropDownRng3(){
         $('#rng3').empty();
         var classHTML='<option value="default" selected>------------</option>';
         classHTML += createOptionsNot(max3dSel);
         var $classJQUERY=$(classHTML);
         $('#rng3').prepend($classJQUERY);
      } 

            function createDropDown1(){
               $('#root1').empty();
               var classHTML='<option value="default" selected>------------</option>';
               //console.log('classList: 1',classList);
               classHTML += createOptions('','');    
               var $classJQUERY=$(classHTML);
               $('#root1').prepend($classJQUERY);
            } // End of createDropDown1

            function createDropDown2(){
               $('#root2').empty();
               var classHTML='<option value="default" selected>------------</option>';
               classHTML += createOptions('', max1);
               var $classJQUERY=$(classHTML);
               $('#root2').prepend($classJQUERY);
            } // End of createDropDown2

            function createDropDown3(){
               $('#root3').empty();
               var classHTML='<option value="default" selected>------------</option>';
               classHTML += createOptions('', max1);;
               var $classJQUERY=$(classHTML);
               //$('#root3.option').remove();
               $('#root3').prepend($classJQUERY);
            } // End of createDropDown3
      
         function createOptions(clList, mxList){
            //console.log('Pocz.createOptions:', clList);
            var classHTML='';
            var inoptgroup = false;
               for (var i = 0, count=classList.length; i< count; i++){
                  if (incl(classList[i],clList) && incl(classMaxList[i],mxList)){
                     if (classList[i] == classMaxList[i]){
                        if (inoptgroup){
                           classHTML+='</optgroup>';
                           inoptgroup = false;
                        }
                        classHTML+='<optgroup label="'+classList[i]+'"></optgroup>';
                        inoptgroup = true;
                     }
                     classHTML+='<option value="'+classList[i]+'">'+classList[i]+'</option>';
                  }
               }      
               classHTML+='</optgroup>';   
               //console.log('Kon.createOptions:', classHTML);
               return classHTML;
         }

         function createOptionsNot(mxSel){
            //console.log('Pocz.createOptions:', classList);
            var classHTML='';
            var inoptgroup = false;
               for (var i = 0, count=classList.length; i< count; i++){
                  if (classMaxList[i] != mxSel){
                     if (classList[i] == classMaxList[i]){
                        if (inoptgroup){
                           classHTML+='</optgroup>';
                           inoptgroup = false;
                        }
                        classHTML+='<optgroup label="'+classList[i]+'"></optgroup>';
                        inoptgroup = true;
                     }
                     classHTML+='<option value="'+classList[i]+'">'+classList[i]+'</option>';
                  }
               }      
               classHTML+='</optgroup>';   
               //console.log('Kon.createOptions:', classHTML);
               return classHTML;
         }

         function incl(c,L){
            if (L === ''){
               return true;
            } else {
               var list=L.split(',');
               for (var i = 0, count=list.length; i< count; i++){
                  if (list[i] === c){
                        return true
                  }
               }
            }
            return false;
         }

         function maxClass(sel){
            for (var i = 0, count=classList.length; i< count; i++){
               if (classList[i] == sel){
                  return classMaxList[i];
               }
             }
         }


      
