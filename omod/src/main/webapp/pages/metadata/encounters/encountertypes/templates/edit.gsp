<h2 ng-hide="encounterType.uuid">${ui.message('adminui.addNewEncounterType.title')}</h2>
<h2 ng-show="encounterType.uuid">${ui.message('adminui.editEncounterType.title')}</h2>

<fieldset class="right" ng-show="encounterType.uuid">
    <legend>${ui.message('general.auditInfo')}</legend>
    <p>
        ${ui.message('general.uuid')}: {{ encounterType.uuid }}
    </p>
    <p>
        ${ui.message('general.createdBy')}:
        {{ encounterType.auditInfo.creator | omrsDisplay }}
        ${ui.message('general.onDate')}
        {{ encounterType.auditInfo.dateCreated | serverDate }}
    </p>
    <p ng-show="encounterType.changedBy">
        ${ui.message('general.changedBy')}:
        {{ encounterType.auditInfo.changedBy | omrsDisplay }}
        ${ui.message('general.onDate')}
        {{ encounterType.auditInfo.dateChanged | serverDate }}
    </p>
</fieldset>


<form class="simple-form-ui" name="encounterTypeForm" novalidate ng-submit="save()">
    <p>
        <label>${ui.message('general.name')}</label>
        <input ng-model="encounterType.name" required/>
    </p>
    <p>
        <label>${ui.message('general.description')}</label>
        <textarea ng-model="encounterType.description" cols="54" required></textarea>
    </p>

<p> <label>${ui.message('adminui.editPrivilege.label')}</label>
 <select name="singleSelect" id="singleSelect" ng-model="encounterType.editPrivilege">
      <option value="">---Please select---</option>
      <option value="{{data.model}}">Option 1</option>
    </select>The privilege needed by a user to edit encounters of this type
    </p>
 <label>${ui.message('adminui.privilege.view')}</label>
     <select name="singleSelect" id="singleSelect" ng-model="encounterType.viewPrivilege">
          <option value="">---Please select---</option>
          <option value="{{privileges}}">Option 1</option>
        </select><p>The privilege needed by a user to view encounters of this type</p>
    <p>
        <button ng-disabled="encounterTypeForm.\$invalid" type="submit" class="confirm right">${ui.message('general.save')}</button>
        <button type="button" class="cancel" ui-sref="list">${ui.message('general.cancel')}</button>
    </p>
</form>

