.class public Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;
.super Lio/invertase/firebase/common/UniversalFirebaseModule;
.source "UniversalFirebaseAnalyticsModule.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/common/UniversalFirebaseModule;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$logEvent$0$UniversalFirebaseAnalyticsModule(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lio/invertase/firebase/common/UniversalFirebaseModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$resetAnalyticsData$8$UniversalFirebaseAnalyticsModule()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lio/invertase/firebase/common/UniversalFirebaseModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->resetAnalyticsData()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic lambda$setAnalyticsCollectionEnabled$1$UniversalFirebaseAnalyticsModule(Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lio/invertase/firebase/common/UniversalFirebaseModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setAnalyticsCollectionEnabled(Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$setAnalyticsCollectionEnabled$2$UniversalFirebaseAnalyticsModule(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lio/invertase/firebase/common/UniversalFirebaseModule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v1

    .line 64
    invoke-virtual {v1, p1, p2, p3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic lambda$setMinimumSessionDuration$3$UniversalFirebaseAnalyticsModule(J)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lio/invertase/firebase/common/UniversalFirebaseModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setMinimumSessionDuration(J)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$setSessionTimeoutDuration$4$UniversalFirebaseAnalyticsModule(J)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lio/invertase/firebase/common/UniversalFirebaseModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setSessionTimeoutDuration(J)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$setUserId$5$UniversalFirebaseAnalyticsModule(Ljava/lang/String;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lio/invertase/firebase/common/UniversalFirebaseModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserId(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$setUserProperties$7$UniversalFirebaseAnalyticsModule(Landroid/os/Bundle;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lio/invertase/firebase/common/UniversalFirebaseModule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v1

    .line 102
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 103
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$setUserProperty$6$UniversalFirebaseAnalyticsModule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lio/invertase/firebase/common/UniversalFirebaseModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method logEvent(Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$ZQe_Xsa0OplZCH9I7qfMtrOQi6Q;

    invoke-direct {v0, p0, p1, p2}, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$ZQe_Xsa0OplZCH9I7qfMtrOQi6Q;-><init>(Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method resetAnalyticsData()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$aM0CgFaeKtONDCCRZZGoXyDH_DY;

    invoke-direct {v0, p0}, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$aM0CgFaeKtONDCCRZZGoXyDH_DY;-><init>(Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method setAnalyticsCollectionEnabled(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$5Vcp9ETmuG_gh4oUNm60nEw0HwQ;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$5Vcp9ETmuG_gh4oUNm60nEw0HwQ;-><init>(Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method setAnalyticsCollectionEnabled(Ljava/lang/Boolean;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$h7XtGyeEPyOdtSL3TV6rQUGC5N8;

    invoke-direct {v0, p0, p1}, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$h7XtGyeEPyOdtSL3TV6rQUGC5N8;-><init>(Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;Ljava/lang/Boolean;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method setMinimumSessionDuration(J)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$JnHFCu7TZaM00_CREOiOM674i2o;

    invoke-direct {v0, p0, p1, p2}, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$JnHFCu7TZaM00_CREOiOM674i2o;-><init>(Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;J)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method setSessionTimeoutDuration(J)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$YApIZA2YmiY3He1-O7vOmxxg1os;

    invoke-direct {v0, p0, p1, p2}, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$YApIZA2YmiY3He1-O7vOmxxg1os;-><init>(Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;J)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method setUserId(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$4p09_oArHa1z_-vszG2UAEy-nvo;

    invoke-direct {v0, p0, p1}, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$4p09_oArHa1z_-vszG2UAEy-nvo;-><init>(Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method setUserProperties(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$qxHxClcEQszOxHcTi2xe-tRflhw;

    invoke-direct {v0, p0, p1}, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$qxHxClcEQszOxHcTi2xe-tRflhw;-><init>(Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method setUserProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$gtG_bdqJJMx5tzdt-g1GVqbw36s;

    invoke-direct {v0, p0, p1, p2}, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$gtG_bdqJJMx5tzdt-g1GVqbw36s;-><init>(Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
