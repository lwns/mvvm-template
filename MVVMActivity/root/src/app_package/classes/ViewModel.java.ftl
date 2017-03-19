package ${packageName};



import com.core.op.lib.base.BAViewModel;
import com.core.op.lib.di.PerActivity;
import com.trello.rxlifecycle.components.support.RxAppCompatActivity;

import javax.inject.Inject;

@PerActivity
public class ${activityClass}ViewModel extends BAViewModel<Act${activityClass}Binding>{


    @Inject
    public ${activityClass}ViewModel(RxAppCompatActivity activity) {
        super(activity);
    }

    @Override
    public void afterViews() {

    }
}