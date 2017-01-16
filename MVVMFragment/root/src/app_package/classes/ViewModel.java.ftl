package ${packageName};


import android.support.v4.app.FragmentManager;
import ${appPackageName}.lib.base.BFViewModel;
import ${appPackageName}.lib.di.PerActivity;
import com.trello.rxlifecycle.components.support.RxAppCompatActivity;
import com.trello.rxlifecycle.components.support.RxFragment;

import javax.inject.Inject;

@PerActivity
public class ${activityClass}ViewModel extends BFViewModel<Frg${activityClass}Binding>{

    @Inject
    public ${activityClass}ViewModel(RxAppCompatActivity activity) {
        super(activity);
    }

    @Override
    public void afterViews() {

    }
}