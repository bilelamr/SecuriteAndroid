.class public Lio/invertase/firebase/analytics/ReactNativeFirebaseAnalyticsModule;
.super Lio/invertase/firebase/common/ReactNativeFirebaseModule;
.source "ReactNativeFirebaseAnalyticsModule.java"


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String; = "Analytics"


# instance fields
.field private final module:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    const-string v0, "Analytics"

    .line 36
    invoke-direct {p0, p1, v0}, Lio/invertase/firebase/common/ReactNativeFirebaseModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;)V

    .line 37
    new-instance v1, Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

    invoke-direct {v1, p1, v0}, Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lio/invertase/firebase/analytics/ReactNativeFirebaseAnalyticsModule;->module:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

    return-void
.end method

.method static synthetic lambda$logEvent$0(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p0, p1}, Lio/invertase/firebase/common/ReactNativeFirebaseModule;->rejectPromiseWithExceptionMap(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$resetAnalyticsData$8(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 138
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p0, p1}, Lio/invertase/firebase/common/ReactNativeFirebaseModule;->rejectPromiseWithExceptionMap(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$setAnalyticsCollectionEnabled$1(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p0, p1}, Lio/invertase/firebase/common/ReactNativeFirebaseModule;->rejectPromiseWithExceptionMap(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$setCurrentScreen$2(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 71
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p0, p1}, Lio/invertase/firebase/common/ReactNativeFirebaseModule;->rejectPromiseWithExceptionMap(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$setMinimumSessionDuration$3(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 82
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p0, p1}, Lio/invertase/firebase/common/ReactNativeFirebaseModule;->rejectPromiseWithExceptionMap(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$setSessionTimeoutDuration$4(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 93
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p0, p1}, Lio/invertase/firebase/common/ReactNativeFirebaseModule;->rejectPromiseWithExceptionMap(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$setUserId$5(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 104
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p0, p1}, Lio/invertase/firebase/common/ReactNativeFirebaseModule;->rejectPromiseWithExceptionMap(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$setUserProperties$7(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 127
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p0, p1}, Lio/invertase/firebase/common/ReactNativeFirebaseModule;->rejectPromiseWithExceptionMap(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$setUserProperty$6(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 115
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p0, p1}, Lio/invertase/firebase/common/ReactNativeFirebaseModule;->rejectPromiseWithExceptionMap(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public logEvent(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 42
    iget-object v0, p0, Lio/invertase/firebase/analytics/ReactNativeFirebaseAnalyticsModule;->module:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

    invoke-static {p2}, Lcom/facebook/react/bridge/Arguments;->toBundle(Lcom/facebook/react/bridge/ReadableMap;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/analytics/-$$Lambda$ReactNativeFirebaseAnalyticsModule$0yXduU3GHsluj1bjmLKwUvpdPpQ;

    invoke-direct {p2, p3}, Lio/invertase/firebase/analytics/-$$Lambda$ReactNativeFirebaseAnalyticsModule$0yXduU3GHsluj1bjmLKwUvpdPpQ;-><init>(Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public resetAnalyticsData(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 137
    iget-object v0, p0, Lio/invertase/firebase/analytics/ReactNativeFirebaseAnalyticsModule;->module:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

    invoke-virtual {v0}, Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;->resetAnalyticsData()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lio/invertase/firebase/analytics/-$$Lambda$ReactNativeFirebaseAnalyticsModule$U-kylgwerysTx5Tg8iOh6BxBPAA;

    invoke-direct {v1, p1}, Lio/invertase/firebase/analytics/-$$Lambda$ReactNativeFirebaseAnalyticsModule$U-kylgwerysTx5Tg8iOh6BxBPAA;-><init>(Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setAnalyticsCollectionEnabled(Ljava/lang/Boolean;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 53
    iget-object v0, p0, Lio/invertase/firebase/analytics/ReactNativeFirebaseAnalyticsModule;->module:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

    invoke-virtual {v0, p1}, Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;->setAnalyticsCollectionEnabled(Ljava/lang/Boolean;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lio/invertase/firebase/analytics/-$$Lambda$ReactNativeFirebaseAnalyticsModule$i0ljZS0lBC3zJ5mwEKBDXxX1vYk;

    invoke-direct {v0, p2}, Lio/invertase/firebase/analytics/-$$Lambda$ReactNativeFirebaseAnalyticsModule$i0ljZS0lBC3zJ5mwEKBDXxX1vYk;-><init>(Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setCurrentScreen(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 68
    iget-object v0, p0, Lio/invertase/firebase/analytics/ReactNativeFirebaseAnalyticsModule;->module:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

    .line 69
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;->setAnalyticsCollectionEnabled(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/analytics/-$$Lambda$ReactNativeFirebaseAnalyticsModule$_7_BYLDBsJWklPlIcBhvK6r42_k;

    invoke-direct {p2, p3}, Lio/invertase/firebase/analytics/-$$Lambda$ReactNativeFirebaseAnalyticsModule$_7_BYLDBsJWklPlIcBhvK6r42_k;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 70
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setMinimumSessionDuration(DLcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 81
    iget-object v0, p0, Lio/invertase/firebase/analytics/ReactNativeFirebaseAnalyticsModule;->module:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

    double-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;->setMinimumSessionDuration(J)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/analytics/-$$Lambda$ReactNativeFirebaseAnalyticsModule$faVXyRHxy-tGkB0ekftRc_-sJvs;

    invoke-direct {p2, p3}, Lio/invertase/firebase/analytics/-$$Lambda$ReactNativeFirebaseAnalyticsModule$faVXyRHxy-tGkB0ekftRc_-sJvs;-><init>(Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setSessionTimeoutDuration(DLcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 92
    iget-object v0, p0, Lio/invertase/firebase/analytics/ReactNativeFirebaseAnalyticsModule;->module:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

    double-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;->setSessionTimeoutDuration(J)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/analytics/-$$Lambda$ReactNativeFirebaseAnalyticsModule$FJc3ER0Z0BhAkJV0ebthx8FU_2c;

    invoke-direct {p2, p3}, Lio/invertase/firebase/analytics/-$$Lambda$ReactNativeFirebaseAnalyticsModule$FJc3ER0Z0BhAkJV0ebthx8FU_2c;-><init>(Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setUserId(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 103
    iget-object v0, p0, Lio/invertase/firebase/analytics/ReactNativeFirebaseAnalyticsModule;->module:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

    invoke-virtual {v0, p1}, Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;->setUserId(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lio/invertase/firebase/analytics/-$$Lambda$ReactNativeFirebaseAnalyticsModule$trZXTSAO9V7PtewJkzbAoaf102o;

    invoke-direct {v0, p2}, Lio/invertase/firebase/analytics/-$$Lambda$ReactNativeFirebaseAnalyticsModule$trZXTSAO9V7PtewJkzbAoaf102o;-><init>(Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setUserProperties(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 126
    iget-object v0, p0, Lio/invertase/firebase/analytics/ReactNativeFirebaseAnalyticsModule;->module:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

    invoke-static {p1}, Lcom/facebook/react/bridge/Arguments;->toBundle(Lcom/facebook/react/bridge/ReadableMap;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;->setUserProperties(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lio/invertase/firebase/analytics/-$$Lambda$ReactNativeFirebaseAnalyticsModule$lpHs3DxZmUAffgSQxImRDf7P4rs;

    invoke-direct {v0, p2}, Lio/invertase/firebase/analytics/-$$Lambda$ReactNativeFirebaseAnalyticsModule$lpHs3DxZmUAffgSQxImRDf7P4rs;-><init>(Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setUserProperty(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 114
    iget-object v0, p0, Lio/invertase/firebase/analytics/ReactNativeFirebaseAnalyticsModule;->module:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

    invoke-virtual {v0, p1, p2}, Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/analytics/-$$Lambda$ReactNativeFirebaseAnalyticsModule$nQKYmwf22_0Af7sk0j7Rs9Ee8VY;

    invoke-direct {p2, p3}, Lio/invertase/firebase/analytics/-$$Lambda$ReactNativeFirebaseAnalyticsModule$nQKYmwf22_0Af7sk0j7Rs9Ee8VY;-><init>(Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
