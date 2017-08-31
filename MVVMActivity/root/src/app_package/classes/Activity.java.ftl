package ${packageName};

import ${appPackageName}.R;
import ${appPackageName}.BR;
import com.core.op.lib.base.BActivity;
import ${appPackageName}.databinding.Act${activityClass}Binding;
import ${appPackageName}.di.components.Dagger${activityClass}Component;
import ${appPackageName}.di.components.${activityClass}Component;
import ${appPackageName}.di.modules.${activityClass}Module;

import com.core.op.lib.utils.inject.AfterViews;
import com.core.op.lib.utils.inject.BeforeViews;
import com.core.op.lib.utils.inject.RootView;


public final class ${activityClass}Activity extends BActivity<${activityClass}ViewModel,Act${activityClass}Binding>{
    
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

    @Override
    public ItemView rootView() {
        return ItemView.of(BR.viewModel, R.layout.act_${activityClass?lower_case});
    }

    @BeforeViews
    void beforViews() {
        component = Dagger${activityClass}Component.builder()
                .appComponent(((MainApplication) getApplication()).getAppComponent())
                .activityModule(new ActivityModule(this))
                .${activityClass?lower_case}Module(new ${activityClass}Module())
                .build();
        component.inject(this);
    }

    @AfterViews
    void afterViews() {
    }
}
