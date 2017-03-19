package ${packageName};


import com.core.op.lib.base.BDViewModel;
import ${application}.databinding.Dlg${activityClass}Binding;

import javax.inject.Inject;

@PerActivity
public class ${activityClass}ViewModel extends BDViewModel<Dlg${activityClass}Binding>{
	
    @Inject
    public ${activityClass}ViewModel(RxAppCompatActivity activity) {
        super(activity);
    }

}