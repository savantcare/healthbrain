(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-4fc8d6bc"],{"17ba":function(e,t,o){"use strict";o.r(t);var n=function(){var e=this,t=e.$createElement,o=e._self._c||t;return o("div",{style:{width:e.width},attrs:{id:"search_component"}},[o("el-autocomplete",{ref:"search_box",staticStyle:{width:"100%"},attrs:{"fetch-suggestions":e.querySearch,placeholder:"(Type here - use backstick to highlight)","trigger-on-focus":!1,"prefix-icon":"el-icon-search"},on:{select:e.handleSelect},model:{value:e.searchKeyword,callback:function(t){e.searchKeyword=t},expression:"searchKeyword"}})],1)},s=[],r=(o("4de4"),o("c975"),o("d81d"),o("b0c0"),o("ac1f"),o("841c"),{name:"search-box",data:function(){return{searchKeyword:"",selectedIndex:0}},computed:{width:function(){return this.$store.state.rightPanel.width},keywordComponents:function(){var e=this;return 0==this.searchKeyword.length?[]:this.$store.state.searchComponentList.filter((function(t){return t.search(e.searchKeyword)>-1}))},focusRow:function(){return this.$store.getters.rightPanelFocusRow}},watch:{focusRow:function(){this.focusRow==this.$options.name?this.setFocus():null!=this.focusRow&&this.removeFocus()}},mounted:function(){this.$store.commit("setRightPanelWidth","calc(30% - 4px)")},methods:{keyupHandler:function(e){if(13==e.keyCode){var t=this.keywordComponents[this.selectedIndex];this.$emit("renderRightPanel",t),this.searchKeyword=""}else"ArrowDown"==e.key?this.selectedIndex<this.keywordComponents.length-1&&(this.selectedIndex+=1):"ArrowUp"==e.key&&this.selectedIndex>0&&(this.selectedIndex-=1);0==this.searchKeyword.length&&(this.selectedIndex=0),console.log(this.selectedIndex),this.$store.commit("setRightPanelSearchKeyword",this.searchKeyword)},setFocus:function(){var e=this;setTimeout((function(){e.$refs.search_box.$el.getElementsByTagName("input")[0].focus()}),50)},removeFocus:function(){console.log("removeFocus from the searchBox")},onClickSearchBox:function(){console.log("clicked")},checkRowFocusStatus:function(e){var t=e.rowIndex;if(t==this.selectedIndex)return{"background-color":"#ecf5ff"}},querySearch:function(e,t){var o=this.$store.state.searchComponentList,n=e?o.filter(this.createFilter(e)):o;n=n.map((function(e){return{value:e}})),t(n)},createFilter:function(e){return function(t){return 0===t.toLowerCase().indexOf(e.toLowerCase())}},handleSelect:function(e){console.log(e)}}}),c=r,i=(o("c752"),o("2877")),a=Object(i["a"])(c,n,s,!1,null,null,null);t["default"]=a.exports},"195c":function(e,t,o){},c752:function(e,t,o){"use strict";var n=o("195c"),s=o.n(n);s.a},c975:function(e,t,o){"use strict";var n=o("23e7"),s=o("4d64").indexOf,r=o("a640"),c=o("ae40"),i=[].indexOf,a=!!i&&1/[1].indexOf(1,-0)<0,h=r("indexOf"),u=c("indexOf",{ACCESSORS:!0,1:0});n({target:"Array",proto:!0,forced:a||!h||!u},{indexOf:function(e){return a?i.apply(this,arguments)||0:s(this,e,arguments.length>1?arguments[1]:void 0)}})},d81d:function(e,t,o){"use strict";var n=o("23e7"),s=o("b727").map,r=o("1dde"),c=o("ae40"),i=r("map"),a=c("map");n({target:"Array",proto:!0,forced:!i||!a},{map:function(e){return s(this,e,arguments.length>1?arguments[1]:void 0)}})}}]);
//# sourceMappingURL=chunk-4fc8d6bc.66c86fc3.js.map