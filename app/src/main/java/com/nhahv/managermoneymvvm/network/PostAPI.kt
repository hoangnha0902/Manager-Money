package com.nhahv.managermoneymvvm.network

import com.nhahv.managermoneymvvm.data.model.Post
import io.reactivex.Observable
import retrofit2.http.GET

interface PostAPI {

    @GET("/posts")
    fun getPosts(): Observable<List<Post>>
}