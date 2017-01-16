<recipe>

    <instantiate from="src/app_package/layout/activity_layout.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/dlg_${activityClass?lower_case}.xml" />

</recipe>