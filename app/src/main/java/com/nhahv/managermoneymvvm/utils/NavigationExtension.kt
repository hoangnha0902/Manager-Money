package com.nhahv.managermoneymvvm.utils

import android.app.Activity
import android.support.v4.app.Fragment
import androidx.navigation.Navigation
import com.nhahv.managermoneymvvm.R

fun Activity.navController() = Navigation.findNavController(this, R.id.nav_host)
fun Fragment.navController() = Navigation.findNavController(requireActivity(), R.id.nav_host)