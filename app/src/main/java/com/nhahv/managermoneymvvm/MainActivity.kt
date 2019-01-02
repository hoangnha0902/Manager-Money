package com.nhahv.managermoneymvvm

import android.os.Bundle
import android.support.v7.app.AppCompatActivity
import androidx.navigation.ui.NavigationUI
import com.nhahv.managermoneymvvm.db.AppDatabase
import com.nhahv.managermoneymvvm.utils.navController
import dagger.android.AndroidInjection
import kotlinx.android.synthetic.main.main_activity.*
import javax.inject.Inject

class MainActivity : AppCompatActivity() {

    @Inject
    lateinit var db: AppDatabase

    override fun onCreate(savedInstanceState: Bundle?) {
        AndroidInjection.inject(this)
        super.onCreate(savedInstanceState)
        setContentView(R.layout.main_activity)

        NavigationUI.setupWithNavController(bottomView, navController())
        val postDao = db.postDao()
    }
}
