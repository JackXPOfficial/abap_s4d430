@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Movie'
@Metadata.allowExtensions: true
define view entity Z01_C_MOVIE
  as select from Z01_R_MOVIE
{
  key MovieUuid,
      Title,
      Genre,
      PublishingYear,
      RuntimeInMin,
      ImageUrl,

      CreatedAt,
      CreatedBy,
      LastChangedAt,
      LastChangedBy
}
