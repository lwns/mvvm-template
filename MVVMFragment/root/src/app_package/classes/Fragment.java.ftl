package ${packageName};

import ${appPackageName}.R;
import ${appPackageName}.base.BaseFragment;
import ${appPackageName}.databinding.Frg${activityClass}Binding;
import ${appPackageName}.di.components.${attachtoactivityClass}Component;
import ${appPackageName}.lib.utils.inject.AfterViews;
import ${appPackageName}.lib.utils.inject.BeforeViews;
import ${appPackageName}.lib.utils.inject.RootView;

import javax.inject.Inject;

@RootView(R.layout.frg_${activityClass?lower_case})
public final class ${activityClass}Fragment extends BaseFragment<Frg${activityClass}Binding>{

    @Inject
    ${activityClass}ViewModel viewModel;

    @BeforeViews
    void beforViews() {
        getComponent(${attachtoactivityClass}Component.class).inject(this);
        viewModel.setFragment(this);
    }

    @AfterViews
    void afterViews() {
        binding.setViewModel(viewModel);
    }
}
