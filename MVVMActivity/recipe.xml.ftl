<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

    <#include "activity_layout_recipe.xml.ftl" />

    <instantiate from="src/app_package/classes/Activity.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${activityClass}Activity.java" />

    <instantiate from="src/app_package/classes/Component.java.ftl"
      to="${escapeXmlAttribute(manifestOut)}/java/${slashedPackageName(appPackageName)}/di/components/${activityClass}Component.java" />

    <instantiate from="src/app_package/classes/Module.java.ftl"
      to="${escapeXmlAttribute(manifestOut)}/java/${slashedPackageName(appPackageName)}/di/modules/${activityClass}Module.java" />

    <instantiate from="src/app_package/classes/ViewModel.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${activityClass}ViewModel.java" />

</recipe>
