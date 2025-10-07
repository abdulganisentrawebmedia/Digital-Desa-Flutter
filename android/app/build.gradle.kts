plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
    // Hapus atau comment line ini dulu
    // id("com.google.gms.google-services")
}

android {
    namespace = "com.example.digital_desa"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.example.digital_desa"
        minSdk = flutter.minSdkVersion  // Set minimal SDK
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
        multiDexEnabled = true
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
    // Hapus atau comment dependencies Firebase dulu
    // implementation(platform("com.google.firebase:firebase-bom:32.7.0"))
    // implementation("com.google.firebase:firebase-messaging")
}
