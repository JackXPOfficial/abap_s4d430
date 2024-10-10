@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
  serviceQuality: #D,
  sizeCategory: #M,
  dataClass: #MASTER
}
define view entity Z01_C_Employee
  as select from Z01_R_Employee
{
  key EmployeeId,
      FirstName,
      LastName,
      BirthDate,
      EntryDate,
      DepartmentId,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      AnnualSalary,
      CurrencyCode,
      CreatedBy,
      CreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt
}
