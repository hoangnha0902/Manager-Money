package com.nhahv.managermoneymvvm.ui.main

import com.nhahv.managermoneymvvm.BaseViewModel

class MainViewModel : BaseViewModel() {
    // TODO: Implement the ViewModel

    init {
        loadDatas()
    }

    private fun loadDatas() {
       /* subscription = postAPI.getPosts()
            .subscribeOn(Schedulers.io())
            .observeOn(AndroidSchedulers.mainThread())
            .doOnSubscribe { println("=================== start") }
            .doOnTerminate { println("=================== end") }
            .subscribe(
                { result -> println("=================== $result") },
                { println("=================== error") }
            )*/
    }
}
