package com.nhahv.managermoneymvvm.di.module

import android.app.Application
import android.arch.persistence.room.Room
import android.content.Context
import android.content.SharedPreferences
import com.nhahv.managermoneymvvm.db.AppDatabase
import dagger.Module
import dagger.Provides

@Module
class AppModule {

    val DATABASE_NAME = "money_manager_db"
    val SHARE_PREF_NAME = "share_pref"

    @Provides
    fun provideAppDatabase(app: Application) = Room.databaseBuilder(app, AppDatabase::class.java, DATABASE_NAME).build()

    @Provides
    fun provideSharePref(app: Application): SharedPreferences {
        return app.getSharedPreferences(SHARE_PREF_NAME, Context.MODE_PRIVATE)
    }

}