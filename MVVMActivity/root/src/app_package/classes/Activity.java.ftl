package ${packageName};

import ${application}.R;
import ${appPackageName}.base.BaseActivity;
import ${application}.databinding.Act${activityClass}Binding;
import ${appPackageName}.di.components.Dagger${activityClass}Component;
import ${appPackageName}.di.components.${activityClass}Component;
import ${appPackageName}.di.modules.${activityClass}Module;

import com.core.op.lib.utils.inject.AfterViews;
import com.core.op.lib.utils.inject.BeforeViews;
import com.core.op.lib.utils.inject.RootView;

import javax.inject.Inject;

@RootView(R.layout.act_${activityClass?lower_case})
public final class ${activityClass}Activity extends BaseActivity<${activityClass}ViewModel,Act${activityClass}Binding>{
    
    public final static void instance(Context context) {
        instance(context, null);
    }


    public final static void instance(Context context, Bundle bundle) {
        Intent intent = new Intent(context, ${activityClass}Activity.class);
        if (bundle != null) {
            intent.putExtra("data", bundle);
        }
        context.startActivity(intent);
    }

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
    }
}
