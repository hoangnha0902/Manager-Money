package com.nhahv.managermoneymvvm.di.module

import com.nhahv.managermoneymvvm.network.PostAPI
import dagger.Module
import dagger.Provides
import io.reactivex.schedulers.Schedulers
import retrofit2.Retrofit
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory
import retrofit2.converter.moshi.MoshiConverterFactory

@Module
class NetworkModule {
    val BASE_URL: String = "https://jsonplaceholder.typicode.com"

    @Provides
    fun provideRetrofit(): Retrofit {
        return Retrofit.Builder()
            .baseUrl(BASE_URL)
            .addConverterFactory(MoshiConverterFactory.create())
            .addCallAdapterFactory(
                RxJava2CallAdapterFactory.createWithScheduler(Schedulers.io())
            ).build()
    }

    @Provides
    fun providePostAPI(retrofit: Retrofit) = retrofit.create(PostAPI::class.java)
}