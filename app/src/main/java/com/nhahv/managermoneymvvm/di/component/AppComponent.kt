package com.nhahv.managermoneymvvm.di.component

import android.app.Application
import com.nhahv.managermoneymvvm.AppApplication
import com.nhahv.managermoneymvvm.di.module.AppBuilder
import com.nhahv.managermoneymvvm.di.module.AppModule
import com.nhahv.managermoneymvvm.di.module.NetworkModule
import dagger.BindsInstance
import dagger.Component
import dagger.android.AndroidInjectionModule
import dagger.android.AndroidInjector

@Component(modules = [AndroidInjectionModule::class, AppBuilder::class, AppModule::class, NetworkModule::class])
abstract class AppComponent : AndroidInjector<AppApplication> {

    @Component.Builder
    interface Builder {
        @BindsInstance
        fun application(app: Application): Builder

        fun builder(): AppComponent
    }
}