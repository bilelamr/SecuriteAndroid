.class public Lio/invertase/firebase/crashlytics/ReactNativeFirebaseCrashlyticsInitProvider;
.super Lio/invertase/firebase/common/ReactNativeFirebaseInitProvider;
.source "ReactNativeFirebaseCrashlyticsInitProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RNFBCrashlyticsInit"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lio/invertase/firebase/common/ReactNativeFirebaseInitProvider;-><init>()V

    return-void
.end method

.method static isCrashlyticsCollectionEnabled()Z
    .locals 6

    .line 37
    invoke-static {}, Lio/invertase/firebase/common/ReactNativeFirebaseJSON;->getSharedInstance()Lio/invertase/firebase/common/ReactNativeFirebaseJSON;

    move-result-object v0

    .line 38
    invoke-static {}, Lio/invertase/firebase/common/ReactNativeFirebaseMeta;->getSharedInstance()Lio/invertase/firebase/common/ReactNativeFirebaseMeta;

    move-result-object v1

    .line 39
    invoke-static {}, Lio/invertase/firebase/common/ReactNativeFirebasePreferences;->getSharedInstance()Lio/invertase/firebase/common/ReactNativeFirebasePreferences;

    move-result-object v2

    const-string v3, "crashlytics_auto_collection_enabled"

    .line 41
    invoke-virtual {v2, v3}, Lio/invertase/firebase/common/ReactNativeFirebasePreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 42
    invoke-virtual {v2, v3, v5}, Lio/invertase/firebase/common/ReactNativeFirebasePreferences;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v0, v3}, Lio/invertase/firebase/common/ReactNativeFirebaseJSON;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    invoke-virtual {v0, v3, v5}, Lio/invertase/firebase/common/ReactNativeFirebaseJSON;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v1, v3, v5}, Lio/invertase/firebase/common/ReactNativeFirebaseMeta;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public getEmptyProviderAuthority()Ljava/lang/String;
    .locals 1

    const-string v0, "io.invertase.firebase.crashlytics.reactnativefirebasecrashlyticsinitprovider"

    return-object v0
.end method

.method public onCreate()Z
    .locals 8

    .line 59
    invoke-super {p0}, Lio/invertase/firebase/common/ReactNativeFirebaseInitProvider;->onCreate()Z

    .line 61
    invoke-static {}, Lio/invertase/firebase/crashlytics/ReactNativeFirebaseCrashlyticsInitProvider;->isCrashlyticsCollectionEnabled()Z

    move-result v0

    const-string v1, "RNFBCrashlyticsInit"

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    invoke-static {}, Lio/invertase/firebase/common/ReactNativeFirebaseJSON;->getSharedInstance()Lio/invertase/firebase/common/ReactNativeFirebaseJSON;

    move-result-object v0

    const-string v3, "crashlytics_ndk_enabled"

    .line 63
    invoke-virtual {v0, v3, v2}, Lio/invertase/firebase/common/ReactNativeFirebaseJSON;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "crashlytics_debug_enabled"

    .line 64
    invoke-virtual {v0, v5, v4}, Lio/invertase/firebase/common/ReactNativeFirebaseJSON;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 67
    :try_start_0
    new-instance v5, Lio/fabric/sdk/android/Fabric$Builder;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lio/fabric/sdk/android/Fabric$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v6, Lcom/crashlytics/android/Crashlytics$Builder;

    invoke-direct {v6}, Lcom/crashlytics/android/Crashlytics$Builder;-><init>()V

    new-instance v7, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    invoke-direct {v7}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;-><init>()V

    .line 70
    invoke-virtual {v7, v4}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->disabled(Z)Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    invoke-virtual {v7}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->build()Lcom/crashlytics/android/core/CrashlyticsCore;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/crashlytics/android/Crashlytics$Builder;->core(Lcom/crashlytics/android/core/CrashlyticsCore;)Lcom/crashlytics/android/Crashlytics$Builder;

    .line 71
    invoke-virtual {v6}, Lcom/crashlytics/android/Crashlytics$Builder;->build()Lcom/crashlytics/android/Crashlytics;

    move-result-object v6

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [Lio/fabric/sdk/android/Kit;

    aput-object v6, v3, v4

    .line 74
    new-instance v6, Lcom/crashlytics/android/ndk/CrashlyticsNdk;

    invoke-direct {v6}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;-><init>()V

    aput-object v6, v3, v2

    invoke-virtual {v5, v3}, Lio/fabric/sdk/android/Fabric$Builder;->kits([Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric$Builder;

    goto :goto_0

    :cond_0
    new-array v3, v2, [Lio/fabric/sdk/android/Kit;

    aput-object v6, v3, v4

    .line 76
    invoke-virtual {v5, v3}, Lio/fabric/sdk/android/Fabric$Builder;->kits([Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric$Builder;

    .line 79
    :goto_0
    invoke-virtual {v5, v0}, Lio/fabric/sdk/android/Fabric$Builder;->debuggable(Z)Lio/fabric/sdk/android/Fabric$Builder;

    .line 81
    invoke-virtual {v5}, Lio/fabric/sdk/android/Fabric$Builder;->build()Lio/fabric/sdk/android/Fabric;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->with(Lio/fabric/sdk/android/Fabric;)Lio/fabric/sdk/android/Fabric;

    const-string v0, "initialization successful"

    .line 83
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "initialization failed"

    .line 85
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4

    :cond_1
    const-string v0, "auto collection disabled, skipping initialization"

    .line 89
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v2
.end method
