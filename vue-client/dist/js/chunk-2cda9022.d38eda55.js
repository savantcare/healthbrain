(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-2cda9022"],{4981:function(t,e,i){"use strict";i.r(e);var s=function(){var t=this,e=t.$createElement,i=t._self._c||e;return i("div",[i("b-card",{attrs:{id:"reminderCard"},scopedSlots:t._u([{key:"header",fn:function(){return[i("CardHeader",{attrs:{title:"Reminder",actions:"[A,M,F,D]",type:"card"}})]},proxy:!0}])},[i("b-card-text",[i("DataViewTable",{attrs:{data:t.tableData,title:"reminder",type:"card"}})],1)],1)],1)},n=[],o=(i("99af"),i("4de4"),i("4160"),i("b0c0"),i("159b"),i("180d")),r=i("19de"),a={name:"reminder",components:{CardHeader:o["a"],DataViewTable:r["a"]},data:function(){return{selected:[],showEditModal:!1}},computed:{items:function(){var t=this;return this.$store.state.reminder.list.filter((function(e){return e.patientId==t.id&&1!=e.discontinue}))},fields:function(){return this.selected.length>0?["Description","Created At"]:["Description","Created At","Action"]},id:function(){return this.$route.query.patient_id},style:function(){return this.$store.getters.style},focusRow:function(){return this.$store.getters.rightPanelFocusRow},tableData:function(){var t=this.$store.getters.reminders;return[{label:"Yours",columns:[{label:"Description",field:"description",responsiveness_priority:1},{label:"Created At",field:"createdAt",responsiveness_priority:2},{label:"",field:"action",responsiveness_priority:3,display:"on-row-active"}],rows:t,actions:["C","D"]},{label:"Other's",columns:[{label:"Description",field:"description",responsiveness_priority:1},{label:"Created At",field:"createdAt",responsiveness_priority:2},{label:"",field:"action",responsiveness_priority:3,display:"on-row-active"}],rows:t,actions:["C"]},{label:"Custom",columns:[{label:"Description",field:"description",responsiveness_priority:1},{label:"Created At",field:"createdAt",responsiveness_priority:2},{label:"",field:"action",responsiveness_priority:3,display:"on-row-active"}],rows:t,actions:["D"]}]}},mounted:function(){this.$store.dispatch("getReminders",{patientId:this.id,toast:this.$bvToast})},methods:{onRowSelected:function(t){this.selected=t},showAddModal:function(){this.$store.commit("showAddReminderModal")},showMultiChangeModal:function(){this.$store.commit("showMultiChangeReminderModal")},openEditModal:function(t){this.$store.commit("showEditReminderModal",t)},discontinueItem:function(t){this.$store.dispatch("discontinueReminder",{data:t,toast:this.$bvToast}),this.$store.dispatch("updateRightPanelRow")},multidiscontinue:function(){var t=[],e=[];this.selected.forEach((function(i){t.push(i.id),e.push(i)})),this.selected=[],this.$store.dispatch("multidiscontinueReminder",{selectedIds:t,selectedDatas:e,toast:this.$bvToast}),this.$store.dispatch("updateRightPanelRow")},getStyle:function(){return this.focusRow=="".concat(this.$options.name,"-0")?"success":this.style},selectTableRow:function(t){var e=[],i=!1;this.selected.forEach((function(s){s.id==t.id?i=!0:e.push(s)})),i?this.selected=e:this.selected.push(t)},checkActiveStatus:function(t){var e=!1;return this.selected.forEach((function(i){i.id==t.id&&(e=!0)})),e},checkFocusStatus:function(t){return this.focusRow=="".concat(this.$options.name,"-").concat(t+1)},focusPanel:function(){console.log("focus panel")}}},c=a,d=(i("6cd3"),i("2877")),l=Object(d["a"])(c,s,n,!1,null,null,null);e["default"]=l.exports},"6cd3":function(t,e,i){"use strict";var s=i("98c7"),n=i.n(s);n.a},"98c7":function(t,e,i){}}]);
//# sourceMappingURL=chunk-2cda9022.d38eda55.js.map