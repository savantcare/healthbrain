(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-2d0b8a75"],{3035:function(e,t,a){"use strict";a.r(t);var n=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("b-modal",{attrs:{centered:"","hide-header":"","hide-footer":"",size:"lg"},on:{hidden:e.onCloseDialog},model:{value:e.visibility,callback:function(t){e.visibility=t},expression:"visibility"}},[a("b-card",{attrs:{"no-body":""}},[a("b-tabs",{attrs:{card:""},scopedSlots:e._u([{key:"tabs-end",fn:function(){return[a("b-nav-item",{attrs:{role:"presentation",href:"#"},on:{click:function(t){return t.preventDefault(),e.newTab(t)}}},[a("b",[e._v("+")])])]},proxy:!0},{key:"empty",fn:function(){return[a("div",{staticClass:"text-center text-muted"},[e._v(" There are no open tabs "),a("br"),e._v("Open a new tab using the "),a("b",[e._v("+")]),e._v(" button above. ")])]},proxy:!0}]),model:{value:e.tabIndex,callback:function(t){e.tabIndex=t},expression:"tabIndex"}},[e._l(e.tabList,(function(e,t){return a(e.value,{key:"tab-"+t,tag:"component"})})),e.showNewTab?a("b-tab",{attrs:{title:"New Tab"}},[a("b-form-input",{ref:"search_input",on:{keydown:e.searchBoxKeyDownHandler},model:{value:e.keyword,callback:function(t){e.keyword=t},expression:"keyword"}}),a("b-list-group",{staticClass:"ml-2 mr-2"},e._l(e.searchTabList,(function(t,n){return a("b-list-group-item",{key:"search-item-"+n,attrs:{active:0==n}},[e._v(e._s(t.value))])})),1)],1):e._e()],2)],1)],1)},i=[],o=(a("4de4"),a("4160"),a("ac1f"),a("841c"),a("159b"),a("b441")),s={components:{},data:function(){return{showNewTab:!1,TABS:[{key:o["ADD_RECOMMENDATION"],value:"Add recommendation"},{key:o["MULTIPLE_CHANGE_RECOMMENDATION"],value:"Multi change recommendation"},{key:o["ADD_REMINDER"],value:"Add reminder"},{key:o["MULTIPLE_CHANGE_REMINDER"],value:"Multi change reminder"}],keyword:"",tabIndex:0}},computed:{visibility:{get:function(){return this.$store.state.tabDialog.visibility},set:function(e){this.$store.commit("setTabDialogVisibility",e)}},tabList:function(){return this.$store.state.tabDialog.tabList},searchTabList:function(){var e=this;return this.keyword.length<1?[]:this.TABS.filter((function(t){var a=!1;return e.tabList.forEach((function(e){e.key==t.key&&(a=!0)})),!a&&t.value.search(e.keyword)>-1}))}},methods:{newTab:function(){var e=this;this.showNewTab=!0,setTimeout((function(){e.tabIndex+=1,setTimeout((function(){e.$refs.search_input.focus()}),100)}),100)},onCloseDialog:function(){this.showNewTab=!1,this.$store.commit("setTabList",[])},searchBoxKeyDownHandler:function(e){if(13==e.keyCode){var t=this.searchTabList[0],n=null;switch(t.key){case o["MULTIPLE_CHANGE_RECOMMENDATION"]:n={key:o["MULTIPLE_CHANGE_RECOMMENDATION"],value:a("50fb").default};break;case o["ADD_RECOMMENDATION"]:n={key:o["ADD_RECOMMENDATION"],value:a("6ee5").default},this.$store.commit("setRecommendationTabType",o["ADD_RECOMMENDATION"]);break;case o["ADD_REMINDER"]:n={key:o["ADD_REMINDER"],value:a("459b").default},this.$store.commit("setReminderTabType",o["ADD_REMINDER"]);break;case o["MULTIPLE_CHANGE_REMINDER"]:n={key:o["MULTIPLE_CHANGE_REMINDER"],value:a("d157").default};break}this.$store.commit("addNewTab",n),this.showNewTab=!1}}},mounted:function(){}},r=s,c=a("2877"),u=Object(c["a"])(r,n,i,!1,null,"164782fb",null);t["default"]=u.exports}}]);
//# sourceMappingURL=chunk-2d0b8a75.bf568e6c.js.map