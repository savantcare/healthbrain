(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-6f07a559"],{"17ba":function(e,t,s){"use strict";s.r(t);var o=function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("div",{style:{width:e.width},attrs:{id:"search_component"}},[s("el-autocomplete",{ref:"search_box",staticStyle:{width:"100%"},attrs:{"fetch-suggestions":e.querySearch,"trigger-on-focus":!1,placeholder:"(Type here - use backstick to highlight)","prefix-icon":"el-icon-search"},on:{select:e.handleSelect,focus:e.handleFocus,input:e.handleInput},model:{value:e.searchKeyword,callback:function(t){e.searchKeyword=t},expression:"searchKeyword"}})],1)},n=[],r=(s("4de4"),s("d81d"),s("b0c0"),s("ac1f"),s("841c"),{name:"search-box",data:function(){return{searchKeyword:"",selectedIndex:0}},computed:{width:function(){return this.$store.state.rightPanel.width},keywordComponents:function(){var e=this;return 0==this.searchKeyword.length?[]:this.$store.state.searchComponentList.filter((function(t){return t.search(e.searchKeyword)>-1}))},focusRow:function(){return this.$store.getters.rightPanelFocusRow}},watch:{focusRow:function(){this.focusRow==this.$options.name?this.setFocus():null!=this.focusRow&&this.removeFocus()}},mounted:function(){this.$store.commit("setRightPanelWidth","calc(30% - 4px)")},methods:{keyupHandler:function(e){if(13==e.keyCode){var t=this.keywordComponents[this.selectedIndex];this.$emit("renderRightPanel",t),this.searchKeyword=""}else"ArrowDown"==e.key?this.selectedIndex<this.keywordComponents.length-1&&(this.selectedIndex+=1):"ArrowUp"==e.key&&this.selectedIndex>0&&(this.selectedIndex-=1);0==this.searchKeyword.length&&(this.selectedIndex=0),this.$store.commit("setRightPanelSearchKeyword",this.searchKeyword)},setFocus:function(){var e=this;setTimeout((function(){e.$refs.search_box.$el.getElementsByTagName("input")[0].focus()}),50)},removeFocus:function(){console.log("removeFocus from the searchBox")},handleFocus:function(){var e=this.$store.state.rightPanel.rows;this.$store.commit("setRightPanelFocusRowIndex",e.length-1)},checkRowFocusStatus:function(e){var t=e.rowIndex;if(t==this.selectedIndex)return{"background-color":"#ecf5ff"}},querySearch:function(e,t){var s=this.$store.state.searchComponentList,o=[];0==e.length&&(o=[]),o=s.filter((function(t){return t.search(e)>-1})),o=o.map((function(e){return{value:e}})),t(o)},handleSelect:function(e){var t=e.value;this.$emit("renderRightPanel",t),this.searchKeyword=""},handleInput:function(){this.$store.commit("setRightPanelSearchKeyword",this.searchKeyword)}}}),c=r,i=(s("c752"),s("2877")),h=Object(i["a"])(c,o,n,!1,null,null,null);t["default"]=h.exports},"195c":function(e,t,s){},c752:function(e,t,s){"use strict";var o=s("195c"),n=s.n(o);n.a},d81d:function(e,t,s){"use strict";var o=s("23e7"),n=s("b727").map,r=s("1dde"),c=s("ae40"),i=r("map"),h=c("map");o({target:"Array",proto:!0,forced:!i||!h},{map:function(e){return n(this,e,arguments.length>1?arguments[1]:void 0)}})}}]);
//# sourceMappingURL=chunk-6f07a559.58effc93.js.map