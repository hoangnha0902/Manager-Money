package com.nhahv.managermoneymvvm.di.module

import com.nhahv.managermoneymvvm.MainActivity
import com.nhahv.managermoneymvvm.ui.main.MainFragment
import dagger.Module
import dagger.android.ContributesAndroidInjector


@Module
abstract class AppBuilder {
    @ContributesAndroidInjector
    abstract fun bindMainActivity(): MainActivity

    @ContributesAndroidInjector
    abstract fun bindMainFragment(): MainFragment
}

