(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-4fd54709"],{"17ba":function(e,t,s){"use strict";s.r(t);var o=function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("div",{style:{width:e.width},attrs:{id:"search_component"}},[s("b-list-group",{staticClass:"ml-2 mr-2"},e._l(e.keywordComponents,(function(t,o){return s("b-list-group-item",{key:"search-"+o,attrs:{active:o==e.selectedIndex}},[e._v(e._s(t))])})),1),s("b-form-input",{ref:"search_box",attrs:{placeholder:"(Type here - use backstick to highlight)"},on:{keyup:e.keyupHandler,click:e.onClickSearchBox},model:{value:e.searchKeyword,callback:function(t){e.searchKeyword=t},expression:"searchKeyword"}})],1)},n=[],r=(s("4de4"),s("b0c0"),s("ac1f"),s("841c"),{name:"search-box",data:function(){return{searchKeyword:"",selectedIndex:0}},computed:{width:function(){return this.$store.state.rightPanel.width},keywordComponents:function(){var e=this;return 0==this.searchKeyword.length?[]:this.$store.state.searchComponentList.filter((function(t){return t.search(e.searchKeyword)>-1}))},focusRow:function(){return this.$store.getters.rightPanelFocusRow}},watch:{focusRow:function(){this.focusRow==this.$options.name?this.setFocus():null!=this.focusRow&&this.removeFocus()}},mounted:function(){this.$store.commit("setRightPanelWidth","calc(30% - 4px)")},methods:{keyupHandler:function(e){if(13==e.keyCode){var t=this.keywordComponents[this.selectedIndex];this.$emit("renderRightPanel",t),this.searchKeyword=""}else"ArrowDown"==e.key?this.selectedIndex<this.keywordComponents.length-1&&(this.selectedIndex+=1):"ArrowUp"==e.key&&this.selectedIndex>0&&(this.selectedIndex-=1);0==this.searchKeyword.length&&(this.selectedIndex=0),this.$store.commit("setRightPanelSearchKeyword",this.searchKeyword)},setFocus:function(){var e=this;setTimeout((function(){e.$refs.search_box.focus()}),50)},removeFocus:function(){var e=this;setTimeout((function(){e.$refs.search_box.blur()}),50)},onClickSearchBox:function(){}}}),c=r,i=(s("c752"),s("2877")),h=Object(i["a"])(c,o,n,!1,null,null,null);t["default"]=h.exports},"195c":function(e,t,s){},c752:function(e,t,s){"use strict";var o=s("195c"),n=s.n(o);n.a}}]);
//# sourceMappingURL=chunk-4fd54709.fd50c820.js.map