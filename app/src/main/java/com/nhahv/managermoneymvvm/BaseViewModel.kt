package com.nhahv.managermoneymvvm

import android.arch.lifecycle.ViewModel
import com.nhahv.managermoneymvvm.di.component.DaggerViewModelComponent
import com.nhahv.managermoneymvvm.network.PostAPI
import io.reactivex.disposables.Disposable
import javax.inject.Inject

open class BaseViewModel : ViewModel() {
    var subscription: Disposable? = null
    @Inject
    lateinit var postAPI: PostAPI

    init {
        DaggerViewModelComponent.create().inject(this)
    }

    override fun onCleared() {
        super.onCleared()
        subscription?.dispose()
    }
}