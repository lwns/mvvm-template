package ${packageName};


import ${appPackageName}.lib.base.BViewModel;

import javax.inject.Inject;

public class ${activityClass}ViewModel extends BViewModel<Dlg${activityClass}Binding>{
	
	private final RxAppCompatActivity activity;

    @Inject
    public ${activityClass}ViewModel(RxAppCompatActivity activity) {
        this.activity = activity;
    }

}