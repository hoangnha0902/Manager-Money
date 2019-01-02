package com.nhahv.managermoneymvvm

import android.app.Activity
import android.app.Application
import android.support.v4.app.Fragment
import com.nhahv.managermoneymvvm.di.component.DaggerAppComponent
import dagger.android.DispatchingAndroidInjector
import dagger.android.HasActivityInjector
import dagger.android.support.HasSupportFragmentInjector
import javax.inject.Inject

class AppApplication : Application(), HasActivityInjector, HasSupportFragmentInjector {
    @Inject
    lateinit var bindActivity: DispatchingAndroidInjector<Activity>
    @Inject
    lateinit var bindFragment: DispatchingAndroidInjector<Fragment>

    override fun onCreate() {
        super.onCreate()
        DaggerAppComponent.builder().application(this).builder().inject(this)
    }

    override fun activityInjector() = bindActivity

    override fun supportFragmentInjector() = bindFragment
}