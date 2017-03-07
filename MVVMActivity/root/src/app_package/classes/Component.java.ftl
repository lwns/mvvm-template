package ${appPackageName}.di.components;

import dagger.Component;


import ${appPackageName}.di.modules.ActivityModule;
import ${appPackageName}.di.modules.${activityClass}Module;
import ${packageName}.${activityClass}Activity;
import com.core.op.lib.di.PerActivity;

import dagger.Component;

@PerActivity
@Component(dependencies = AppComponent.class, modules = {ActivityModule.class, ${activityClass}Module.class})
public interface ${activityClass}Component extends ActivityComponent {
    void inject(${activityClass}Activity activity);
}