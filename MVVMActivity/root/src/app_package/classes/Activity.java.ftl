package ${packageName};

import ${appPackageName}.R;
import ${appPackageName}.base.BaseActivity;
import ${appPackageName}.databinding.Act${activityClass}Binding;
import ${appPackageName}.di.components.Dagger${activityClass}Component;
import ${appPackageName}.di.components.${activityClass}Component;
import ${appPackageName}.di.modules.${activityClass}Module;

import ${appPackageName}.lib.utils.inject.AfterViews;
import ${appPackageName}.lib.utils.inject.BeforeViews;
import ${appPackageName}.lib.utils.inject.RootView;

import javax.inject.Inject;

@RootView(R.layout.act_${activityClass?lower_case})
public final class ${activityClass}Activity extends BaseActivity<Act${activityClass}Binding>{

    @Inject
    ${activityClass}ViewModel viewModel;

    ${activityClass}Component component;

    @BeforeViews
    void beforViews() {
        component = Dagger${activityClass}Component.builder()
                .appComponent(getApplicationComponent())
                .activityModule(getActivityModule())
                .${activityClass?lower_case}Module(new ${activityClass}Module())
                .build();
        component.inject(this);
    }

    @AfterViews
    void afterViews() {
        binding.setViewModel(viewModel);
    }
}
