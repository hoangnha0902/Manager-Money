package com.nhahv.managermoneymvvm

import android.os.Bundle
import android.support.v7.app.AppCompatActivity
import com.nhahv.managermoneymvvm.network.PostAPI
import com.nhahv.managermoneymvvm.ui.main.MainFragment
import dagger.android.AndroidInjection
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.Disposable
import io.reactivex.schedulers.Schedulers
import javax.inject.Inject

class MainActivity : AppCompatActivity() {

    @Inject
    lateinit var postAPI: PostAPI


    override fun onCreate(savedInstanceState: Bundle?) {
        AndroidInjection.inject(this)
        super.onCreate(savedInstanceState)
        setContentView(R.layout.main_activity)
        if (savedInstanceState == null) {
            supportFragmentManager.beginTransaction()
                    .replace(R.id.container, MainFragment.newInstance())
                    .commitNow()
        }

        if (postAPI == null) {
            println("=========================== null")
        } else {
            println("=========================== not null")
        }


    }

    override fun onStop() {
        super.onStop()
    }

}
