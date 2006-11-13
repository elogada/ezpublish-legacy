{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{let current_user=fetch( user, current_user )}
<div id="package" class="create">
    <div id="sid-{$current_step.id|wash}" class="pc-{$creator.id|wash}">

    <form method="post" action={'package/create'|ezurl}>

    {include uri="design:package/create/error.tpl"}

    {include uri="design:package/header.tpl"}

    <p>{'Please provide information on the changes.'|i18n('design/standard/package')}</p>

    <div class="changelog_person">
        <label>{'Name'|i18n('design/standard/package')}</label>
        <input class="textline" type="text" name="PackageChangelogPerson" value="{$persistent_data.changelog_person|wash}" />
    </div>

    <div class="changelog_email">
        <label>{'Email'|i18n('design/standard/package')}</label>
        <input class="textline" type="text" name="PackageChangelogEmail" value="{$persistent_data.changelog_email|wash}" />
    </div>

    <div class="changelog_text">
        <label>{'Changes'|i18n('design/standard/package')}</label>
        <p>{'Start an entry with a marker ( %emstart-%emend (dash) or %emstart*%emend (asterix) ) at the beginning of the line.
The change will continue to the next change marker.'|i18n( 'design/standard/package',, hash( '%emstart', '<em>', '%emend', '</em>' ) )|break}</p>
        <textarea class="description" name="PackageChangelogText">{$persistent_data.changelog_text|wash}</textarea>
    </div>

    {include uri="design:package/navigator.tpl"}

    </form>

    </div>
</div>
{/let}
