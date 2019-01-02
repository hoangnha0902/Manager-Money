package com.nhahv.managermoneymvvm.utils

import android.app.Activity
import android.support.v4.app.Fragment
import androidx.navigation.Navigation
import com.nhahv.managermoneymvvm.R

fun Activity.navControler() = Navigation.findNavController(this, R.id.nav_host)
fun Fragment.navControler() = Navigation.findNavController(requireActivity(), R.id.nav_host)