.class public Lio/invertase/firebase/crashlytics/ReactNativeFirebaseCrashlyticsModule;
.super Lio/invertase/firebase/common/ReactNativeFirebaseModule;
.source "ReactNativeFirebaseCrashlyticsModule.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Crashlytics"


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    const-string v0, "Crashlytics"

    .line 35
    invoke-direct {p0, p1, v0}, Lio/invertase/firebase/common/ReactNativeFirebaseModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;)V

    return-void
.end method

.method private recordJavaScriptError(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 8

    const-string v0, "message"

    .line 136
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "frames"

    .line 137
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReadableArray;

    const-string v2, "isUnhandledRejection"

    .line 138
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 142
    new-instance p1, Lio/invertase/firebase/crashlytics/UnhandledPromiseRejection;

    invoke-direct {p1, v0}, Lio/invertase/firebase/crashlytics/UnhandledPromiseRejection;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_0
    new-instance p1, Lio/invertase/firebase/crashlytics/JavaScriptError;

    invoke-direct {p1, v0}, Lio/invertase/firebase/crashlytics/JavaScriptError;-><init>(Ljava/lang/String;)V

    .line 147
    :goto_0
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    const/4 v2, 0x0

    .line 149
    :goto_1
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 150
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/bridge/ReadableMap;

    const-string v4, "fn"

    .line 151
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "file"

    .line 152
    invoke-interface {v3, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 153
    new-instance v5, Ljava/lang/StackTraceElement;

    const/4 v6, -0x1

    const-string v7, ""

    invoke-direct {v5, v7, v4, v3, v6}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 156
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 158
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/CrashlyticsCore;->logException(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public crash()V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 40
    invoke-static {}, Lio/invertase/firebase/crashlytics/ReactNativeFirebaseCrashlyticsInitProvider;->isCrashlyticsCollectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    const-string v1, "Crash Test"

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/CrashlyticsCore;->log(Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/crashlytics/android/core/CrashTest;

    invoke-direct {v0}, Lcom/crashlytics/android/core/CrashTest;-><init>()V

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/core/CrashTest;->crashAsyncTask(J)V

    :cond_0
    return-void
.end method

.method public getConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 166
    invoke-static {}, Lio/invertase/firebase/crashlytics/ReactNativeFirebaseCrashlyticsInitProvider;->isCrashlyticsCollectionEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isCrashlyticsCollectionEnabled"

    .line 164
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 49
    invoke-static {}, Lio/invertase/firebase/crashlytics/ReactNativeFirebaseCrashlyticsInitProvider;->isCrashlyticsCollectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/CrashlyticsCore;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public logPromise(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 57
    invoke-static {}, Lio/invertase/firebase/crashlytics/ReactNativeFirebaseCrashlyticsInitProvider;->isCrashlyticsCollectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/CrashlyticsCore;->log(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 60
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public recordError(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 122
    invoke-static {}, Lio/invertase/firebase/crashlytics/ReactNativeFirebaseCrashlyticsInitProvider;->isCrashlyticsCollectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0, p1}, Lio/invertase/firebase/crashlytics/ReactNativeFirebaseCrashlyticsModule;->recordJavaScriptError(Lcom/facebook/react/bridge/ReadableMap;)V

    :cond_0
    return-void
.end method

.method public recordErrorPromise(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 129
    invoke-static {}, Lio/invertase/firebase/crashlytics/ReactNativeFirebaseCrashlyticsInitProvider;->isCrashlyticsCollectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0, p1}, Lio/invertase/firebase/crashlytics/ReactNativeFirebaseCrashlyticsModule;->recordJavaScriptError(Lcom/facebook/react/bridge/ReadableMap;)V

    :cond_0
    const/4 p1, 0x0

    .line 132
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 65
    invoke-static {}, Lio/invertase/firebase/crashlytics/ReactNativeFirebaseCrashlyticsInitProvider;->isCrashlyticsCollectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0, p1, p2}, Lcom/crashlytics/android/core/CrashlyticsCore;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 68
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public setAttributes(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 73
    invoke-static {}, Lio/invertase/firebase/crashlytics/ReactNativeFirebaseCrashlyticsInitProvider;->isCrashlyticsCollectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v0

    .line 75
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v1

    iget-object v1, v1, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    .line 77
    :goto_0
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-virtual {v1, v2, v3}, Lcom/crashlytics/android/core/CrashlyticsCore;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 84
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public setCrashlyticsCollectionEnabled(Ljava/lang/Boolean;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 115
    invoke-static {}, Lio/invertase/firebase/common/ReactNativeFirebasePreferences;->getSharedInstance()Lio/invertase/firebase/common/ReactNativeFirebasePreferences;

    move-result-object v0

    .line 116
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "crashlytics_auto_collection_enabled"

    invoke-virtual {v0, v1, p1}, Lio/invertase/firebase/common/ReactNativeFirebasePreferences;->setBooleanValue(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 117
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public setUserEmail(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 106
    invoke-static {}, Lio/invertase/firebase/crashlytics/ReactNativeFirebaseCrashlyticsInitProvider;->isCrashlyticsCollectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/CrashlyticsCore;->setUserEmail(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 109
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 90
    invoke-static {}, Lio/invertase/firebase/crashlytics/ReactNativeFirebaseCrashlyticsInitProvider;->isCrashlyticsCollectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/CrashlyticsCore;->setUserIdentifier(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 93
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public setUserName(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 98
    invoke-static {}, Lio/invertase/firebase/crashlytics/ReactNativeFirebaseCrashlyticsInitProvider;->isCrashlyticsCollectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/CrashlyticsCore;->setUserName(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 101
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method
