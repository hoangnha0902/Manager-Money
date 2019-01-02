package com.nhahv.managermoneymvvm.di.component

import com.nhahv.managermoneymvvm.BaseViewModel
import com.nhahv.managermoneymvvm.di.module.NetworkModule
import dagger.Component
import dagger.android.AndroidInjector

@Component(modules = [NetworkModule::class])
abstract class ViewModelComponent : AndroidInjector<BaseViewModel> {
}