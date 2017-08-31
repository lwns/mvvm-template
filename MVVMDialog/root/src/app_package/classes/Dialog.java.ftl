package ${packageName};

import ${appPackageName}.R;
import ${appPackageName}.BR;
import ${appPackageName}.databinding.Dlg${activityClass}Binding;
import com.core.op.lib.utils.inject.AfterViews;
import com.core.op.lib.utils.inject.RootView;
import com.core.op.base.BaseDialog;

public final class ${activityClass}Dialog extends BaseDialog<${activityClass}ViewModel,Dlg${activityClass}Binding>{

    @Override
    public ItemView rootView() {
        return ItemView.of(BR.viewModel, R.layout.dlg_${activityClass?lower_case});
    }

    @Inject
    public ${activityClass}Dialog(RxAppCompatActivity activity, ${activityClass}ViewModel viewModel) {
        super(BDialog.newDialog(activity), viewModel);
    }

    @AfterViews
    void afterViews() {
    }
}
