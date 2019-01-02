package com.nhahv.managermoneymvvm.db

import android.arch.persistence.room.Database
import android.arch.persistence.room.RoomDatabase
import com.nhahv.managermoneymvvm.data.model.Post

@Database(entities = [Post::class], version = AppDatabase.DATABASE_VERSION)
abstract class AppDatabase : RoomDatabase() {

    abstract fun postDao(): PostDao

    companion object {
        const val DATABASE_VERSION = 1
    }
}