package ${packageName};


import android.support.v4.app.FragmentManager;
import ${appPackageName}.lib.base.BViewModel;
import ${appPackageName}.lib.di.PerActivity;
import com.trello.rxlifecycle.components.support.RxAppCompatActivity;
import com.trello.rxlifecycle.components.support.RxFragment;

import javax.inject.Inject;

@PerActivity
public class ${activityClass}ViewModel extends BFViewModel<Frg${activityClass}Binding>{
	
	private final RxAppCompatActivity activity;

    private FragmentManager fragmentManager;

    RxFragment fragment;

    @Inject
    public ${activityClass}ViewModel(RxAppCompatActivity activity) {
        this.activity = activity;
    }

    public void setFragment(RxFragment fragment){
        this.fragment = fragment;
    }

    @Override
    public void afterViews() {

    }
}