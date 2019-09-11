({
    init: function (cmp, event, helper) {
    cmp.set('v.mycolumns', [
                {label: 'Contact Name', fieldName: 'Name', type: 'text'},
                {label: 'Phone', fieldName: 'Phone', type: 'phone'},
                {label: 'Email', fieldName: 'Email', type: 'email'},
                {label: 'Account Name', fieldName: 'AccountName', type: 'text'}
            ]);
        helper.getData(cmp);
    },    
    /*updateSelectedText: function (cmp, event) {
        var selectedRows = event.getParam('selectedRows');
        cmp.set('v.selectedRowsCount', selectedRows.length);
      },  */  
    UpdateSelectedRows : function(component, event, helper) {
        var selectedRows = event.getParam('selectedRows');        
        var setRows = [];
        for (var i = 0; i < selectedRows.length; i++){
            setRows.push(selectedRows[i].id); 
        }
        console.log('rows selected @@@'+setRows);
        component.set("v.rowsSelected", setRows); // <-- Crashed datatable if "v.selectedRows"
    }

})