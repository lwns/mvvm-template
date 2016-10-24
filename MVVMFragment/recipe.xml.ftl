<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

    <#include "activity_layout_recipe.xml.ftl" />

    <instantiate from="src/app_package/classes/Fragment.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${activityClass}Fragment.java" />

    <instantiate from="src/app_package/classes/ViewModel.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${activityClass}ViewModel.java" />

</recipe>
