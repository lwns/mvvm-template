package ${packageName};



import ${appPackageName}.lib.base.BAViewModel;
import ${appPackageName}.lib.di.PerActivity;
import com.trello.rxlifecycle.components.support.RxAppCompatActivity;

import javax.inject.Inject;

@PerActivity
public class ${activityClass}ViewModel extends BAViewModel<Act${activityClass}Binding>{
	
	private final RxAppCompatActivity activity;

    @Inject
    public ${activityClass}ViewModel(RxAppCompatActivity activity) {
        super(activity);
    }

    @Override
    public void afterViews() {

    }
}