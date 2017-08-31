package ${packageName};

import ${appPackageName}.R;
import ${appPackageName}.BR;
import com.core.op.lib.base.BFragment;
import ${appPackageName}.databinding.Frg${activityClass}Binding;
import ${appPackageName}.di.components.${attachtoactivityClass}Component;
import com.core.op.lib.utils.inject.AfterViews;
import com.core.op.lib.utils.inject.BeforeViews;
import com.core.op.lib.utils.inject.RootView;

public final class ${activityClass}Fragment extends BaseFragment<${activityClass}ViewModel,Frg${activityClass}Binding>{

    public static ${activityClass}Fragment instance() {
        return new ${activityClass}Fragment();
    }

    @Override
    public ItemView rootView() {
        return ItemView.of(BR.viewModel, R.layout.frg_${activityClass?lower_case});
    }

    @BeforeViews
    void beforViews() {
        getComponent(${attachtoactivityClass}Component.class).inject(this);
    }

    @AfterViews
    void afterViews() {
    }
}
