(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-398008a3"],{"1ffd":function(t,e,n){"use strict";n.r(e);var i=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("b-card",{attrs:{"border-variant":t.getCombinationStyle(),header:t.getCombinationStyle(),"header-bg-variant":t.getCombinationStyle(),"header-text-variant":"white"},on:{click:t.setFocusComponent},scopedSlots:t._u([{key:"header",fn:function(){return[n("b-row",{style:{height:t.isStyle1?"50px":"30px"},attrs:{"align-h":"between"}},[t.isStyle1?n("h5",{staticClass:"m-md-2"},[t._v("Combination Card")]):n("span",{staticStyle:{"font-weight":"bold"}},[t._v("Combination Card")])])]},proxy:!0}])},[n("b-card-text",[n("b-card",{attrs:{"border-variant":t.getRecommendationStyle(),header:t.getRecommendationStyle(),"header-bg-variant":t.getRecommendationStyle(),"header-text-variant":"white",id:"recommendationCard"},scopedSlots:t._u([{key:"header",fn:function(){return[n("b-row",{style:{height:t.isStyle1?"50px":"30px"},attrs:{"align-h":"between"}},[t.isStyle1?n("h5",{staticClass:"m-md-2"},[t._v("Recommendation Card")]):n("span",{staticStyle:{"font-weight":"bold"}},[t._v("Recommendation Card")]),n("b-row",{staticClass:"mr-2"},[0==t.selected.length?n("b-button",{attrs:{size:"sm",variant:"primary"},on:{click:t.showAddModal}},[t._v("Add")]):t._e(),0==t.selected.length?n("b-button",{staticClass:"ml-2",attrs:{variant:"primary",size:"sm"},on:{click:t.showMultiChangeModal}},[t._v("Multi change")]):t._e(),t.selected.length>0?n("b-button",{attrs:{variant:"danger"},on:{click:t.multidiscontinue}},[t._v("Discontinue")]):t._e()],1)],1)]},proxy:!0}])},[n("b-card-text",[n("table",{staticClass:"table table-bordered table-sm table-hover"},[n("thead",[n("tr",t._l(t.recommendationFields,(function(e,i){return n("th",{key:"field-"+i,attrs:{scope:"col"}},[t._v(t._s(e))])})),0)]),n("tbody",t._l(t.recommendationItems,(function(e,i){return n("tr",{key:"item-"+i,class:{"table-active":t.checkActiveStatus(e),"table-primary":t.checkRecommendationFocusStatus(i)},staticStyle:{cursor:"pointer"}},[n("td",{on:{click:function(n){return t.selectTableRow(e)}}},[t._v(t._s(e.description))]),n("td",{on:{click:function(n){return t.selectTableRow(e)}}},[t._v(t._s(e.createdAt))]),0==t.selected.length?n("td",[n("b-button",{attrs:{size:t.isStyle1?"":"sm",variant:"outline-primary"},on:{click:function(n){return t.openEditModal(e,n)}}},[t._v("Change")]),n("b-button",{staticClass:"ml-2",attrs:{variant:"outline-danger",size:t.isStyle1?"":"sm"},on:{click:function(n){return t.discontinueRecommendation(e)}}},[t._v("Discontinue")])],1):t._e()])})),0)])])],1),n("b-card",{attrs:{"border-variant":t.getReminderStyle(),header:t.getReminderStyle(),"header-bg-variant":t.getReminderStyle(),"header-text-variant":"white",id:"reminderCard"},on:{click:t.setFocusComponent},scopedSlots:t._u([{key:"header",fn:function(){return[n("b-row",{style:{height:t.isStyle1?"50px":"30px"},attrs:{"align-h":"between"}},[t.isStyle1?n("h5",{staticClass:"m-md-2"},[t._v("Reminder Card")]):n("span",{staticStyle:{"font-weight":"bold"}},[t._v("Reminder Card")]),n("b-row",{staticClass:"mr-2"},[0==t.selected.length?n("b-button",{attrs:{size:"sm",variant:"primary"},on:{click:t.showAddModal}},[t._v("Add")]):t._e(),0==t.selected.length?n("b-button",{staticClass:"ml-2",attrs:{variant:"primary",size:"sm"},on:{click:t.showMultiChangeModal}},[t._v("Multi change")]):t._e(),t.selected.length>0?n("b-button",{attrs:{variant:"danger"},on:{click:t.multidiscontinue}},[t._v("Discontinue")]):t._e()],1)],1)]},proxy:!0}])},[n("b-card-text",[n("table",{staticClass:"table table-bordered table-sm table-hover"},[n("thead",[n("tr",t._l(t.reminderFields,(function(e,i){return n("th",{key:"field-"+i,attrs:{scope:"col"}},[t._v(t._s(e))])})),0)]),n("tbody",t._l(t.reminderItems,(function(e,i){return n("tr",{key:"item-"+i,class:{"table-active":t.checkActiveStatus(e),"table-primary":t.checkReminderFocusStatus(i)},staticStyle:{cursor:"pointer"}},[n("td",{on:{click:function(n){return t.selectTableRow(e)}}},[t._v(t._s(e.description))]),n("td",{on:{click:function(n){return t.selectTableRow(e)}}},[t._v(t._s(e.createdAt))]),0==t.selected.length?n("td",[n("b-button",{attrs:{size:t.isStyle1?"":"sm",variant:"outline-primary"},on:{click:function(n){return t.openEditModal(e,n)}}},[t._v("Change")]),n("b-button",{staticClass:"ml-2",attrs:{variant:"outline-danger",size:t.isStyle1?"":"sm"},on:{click:function(n){return t.discontinueReminder(e)}}},[t._v("Discontinue")])],1):t._e()])})),0)])])],1)],1)],1)},o=[],s=(n("a4d3"),n("e01a"),n("4de4"),n("4160"),n("159b"),n("cc98")),a=n.n(s),r=n("b441"),c={components:{},data:function(){return{modalShow:!1,data:{description:""},selected:[],modalType:r["ADD_DIALOG"],timer:-1,focusIndex:-1,discontinueAction:!1,showEditModal:!1}},computed:{validation:function(){return this.data.description.length>0},modalTitle:function(){return this.modalType==r["ADD_DIALOG"]?"Add Recommendation":"Edit Recommendation"},recommendationItems:function(){var t=this;return this.$store.state.recommendation.list.filter((function(e){return e.patientId==t.id&&1!=e.discontinue}))},recommendationFields:function(){return this.selected.length>0?["Description","Created At"]:["Description","Created At","Action"]},id:function(){return this.$route.query.patient_id},isStyle1:function(){return this.style==r["STYLE_1"]},modalDialogButton:function(){return this.modalType==r["ADD_DIALOG"]?"Save":"Update"},style:function(){return this.$store.state.setting.style},focusComponent:function(){return this.$store.state.focusComponent},rightPanelComponents:function(){return this.$store.state.rightPanel.list},reminderFields:function(){return this.selected.length>0?["Description","Created At"]:["Description","Created At","Action"]},reminderItems:function(){var t=this;return this.$store.state.reminder.list.filter((function(e){return e.patientId==t.id&&1!=e.discontinue}))}},watch:{focusComponent:function(){this.focusIndex=0}},mounted:function(){this.$store.dispatch("getRecommendations",{patientId:this.id,toast:this.$bvToast}),window.addEventListener("keydown",this.keyHandler)},methods:{onRowSelected:function(t){this.selected=t},showAddModal:function(){var t=n("6ee5");this.$store.commit("setTabList",[{key:r["ADD_RECOMMENDATION"],value:t.default}]),this.$store.commit("setRecommendationTabType",r["ADD_RECOMMENDATION"]),this.$store.commit("setTabDialogVisibility",!0)},showMultiChangeModal:function(){var t=n("50fb");this.$store.commit("setTabList",[{key:r["MULTIPLE_CHANGE_RECOMMENDATION"],value:t.default}]),this.$store.commit("setRecommendationTabType",r["MULTIPLE_CHANGE_RECOMMENDATION"]),this.$store.commit("setTabDialogVisibility",!0)},save:function(){if(this.modalType==r["ADD_DIALOG"]){var t=new Date;this.data["createdAt"]=t.toDateString(),this.data["id"]=a()(),this.data["patientId"]=this.id,this.$store.dispatch("addRecommendation",{data:this.data,toast:this.$bvToast})}else this.$store.dispatch("updateRecommendation",{data:this.data,toast:this.$bvToast});this.modalShow=!1},openEditModal:function(t){var e={id:t["id"],description:t["description"],createdAt:t["createdAt"],patientId:t["patientId"]},i=n("6ee5");this.$store.commit("setTabList",[{key:r["ADD_RECOMMENDATION"],value:i.default}]),this.$store.commit("setTabDialogVisibility",!0),this.$store.commit("setRecommendationTabType",r["EDIT_RECOMMENDATION"]),this.$store.commit("setRecommendationData",e)},discontinueRecommendation:function(t){this.discontinueAction=!0,this.$store.dispatch("discontinueRecommendation",{data:t,toast:this.$bvToast})},multidiscontinue:function(){var t=[],e=[];this.selected.forEach((function(n){t.push(n.id),e.push(n)})),this.selected=[],this.$store.dispatch("multidiscontinueRecommendation",{selectedIds:t,selectedDatas:e,toast:this.$bvToast})},getStyleClass:function(){return this.style==r["STYLE_1"]?"info":"dark"},keyHandler:function(t){if("combination"==this.focusComponent&&1!=this.modalShow)if("a"==t.key)this.showAddModal();else if("c"==t.key)this.showEditModal=!0;else if("ArrowDown"==t.key)this.focusIndex<1+(this.recommendationItems.length+this.reminderItems.length)?this.focusIndex+=1:this.moveFocusToNextComponent();else if("ArrowUp"==t.key)this.focusIndex>1?this.focusIndex-=1:this.moveFocusToPrevComponent();else if("ArrowLeft"==t.key)this.moveFocusToPrevComponent();else if("ArrowRight"==t.key)this.moveFocusToNextComponent();else if("e"==t.key){var e=this.focusIndex-2;e>-1&&this.openEditModal(this.recommendationItems[e])}else if("d"==t.key){var n=this.focusIndex-2;n>-1&&this.discontinueRecommendation(this.recommendationItems[n])}},moveFocusToNextComponent:function(){var t=this,e=this.rightPanelComponents[this.getCurrentComponentIndex()+1];null==e?setTimeout((function(){t.$store.commit("setFocusComponent","search-box")}),50):setTimeout((function(){t.$store.commit("setFocusComponent",e["key"])}),50)},moveFocusToPrevComponent:function(){var t=this;if(0==this.getCurrentComponentIndex())setTimeout((function(){t.$store.commit("setFocusComponent","search-box")}),50);else{var e=this.rightPanelComponents[this.getCurrentComponentIndex()-1];setTimeout((function(){t.$store.commit("setFocusComponent",e["key"])}),50)}},getCurrentComponentIndex:function(){var t=-1;return this.rightPanelComponents.forEach((function(e,n){"combination"==e.key&&(t=n)})),t},getStyle:function(){return"combination"==this.focusComponent?this.focusIndex>1?"warning":"success":this.isStyle1?"info":"dark"},getCombinationStyle:function(){return"combination"==this.focusComponent?"success":this.isStyle1?"info":"dark"},getRecommendationStyle:function(){return"combination"==this.focusComponent?this.focusIndex>1&&this.focusIndex<this.recommendationItems.length+1?"warning":"success":this.isStyle1?"info":"dark"},getReminderStyle:function(){return"combination"==this.focusComponent?this.focusIndex>1+this.recommendationItems.length?"warning":"success":this.isStyle1?"info":"dark"},selectTableRow:function(t){if(this.modalShow||this.discontinueAction)this.discontinueAction=!1;else{var e=[],n=!1;this.selected.forEach((function(i){i.id==t.id?n=!0:e.push(i)})),n?this.selected=e:this.selected.push(t)}},checkActiveStatus:function(t){var e=!1;return this.selected.forEach((function(n){n.id==t.id&&(e=!0)})),e},checkRecommendationFocusStatus:function(t){return t+2==this.focusIndex},checkReminderFocusStatus:function(t){return t+2+this.recommendationItems.length==this.focusIndex},setFocusComponent:function(){this.$store.commit("setFocusComponent","combination"),this.focusIndex=0}},beforeDestroy:function(){clearInterval(this.timer),window.removeEventListener("keydown",this.keyHandler)}},d=c,l=(n("7ae4"),n("2877")),u=Object(l["a"])(d,i,o,!1,null,null,null);e["default"]=u.exports},"7ae4":function(t,e,n){"use strict";var i=n("da8a"),o=n.n(i);o.a},da8a:function(t,e,n){}}]);
//# sourceMappingURL=chunk-398008a3.fc19ce73.js.map