<recipe>

    <instantiate from="src/app_package/layout/activity_layout.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/act_${activityClass?lower_case}.xml" />

</recipe>