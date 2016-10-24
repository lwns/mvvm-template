package ${packageName};



import android.support.v4.app.FragmentManager;
import ${appPackageName}.lib.base.BViewModel;
import ${appPackageName}.lib.di.PerActivity;
import com.trello.rxlifecycle.components.support.RxAppCompatActivity;

import javax.inject.Inject;

@PerActivity
public class ${activityClass}ViewModel implements BViewModel{
	
	private final RxAppCompatActivity activity;

    @Inject
    public ${activityClass}ViewModel(RxAppCompatActivity activity) {
        this.activity = activity;
    }
}