package ${packageName};

import ${application}.R;
import ${appPackageName}.base.BaseFragment;
import ${application}.databinding.Frg${activityClass}Binding;
import ${appPackageName}.di.components.${attachtoactivityClass}Component;
import com.core.op.lib.utils.inject.AfterViews;
import com.core.op.lib.utils.inject.BeforeViews;
import com.core.op.lib.utils.inject.RootView;

import javax.inject.Inject;

@RootView(R.layout.frg_${activityClass?lower_case})
public final class ${activityClass}Fragment extends BaseFragment<${activityClass}ViewModel,Frg${activityClass}Binding>{

    public static ${activityClass}Fragment instance() {
        return new ${activityClass}Fragment();
    }

    @BeforeViews
    void beforViews() {
        getComponent(${attachtoactivityClass}Component.class).inject(this);
    }

    @AfterViews
    void afterViews() {
    }
}
