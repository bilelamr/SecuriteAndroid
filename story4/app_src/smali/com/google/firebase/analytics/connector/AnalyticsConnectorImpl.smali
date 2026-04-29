.class public Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-api@@17.2.1"

# interfaces
.implements Lcom/google/firebase/analytics/connector/AnalyticsConnector;


# static fields
.field private static volatile zzb:Lcom/google/firebase/analytics/connector/AnalyticsConnector;


# instance fields
.field private final zzc:Lcom/google/android/gms/measurement/AppMeasurement;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/AppMeasurement;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zzc:Lcom/google/android/gms/measurement/AppMeasurement;

    .line 4
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;Landroid/content/Context;Lcom/google/firebase/events/Subscriber;)Lcom/google/firebase/analytics/connector/AnalyticsConnector;
    .locals 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zzb:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    if-nez v0, :cond_2

    .line 11
    const-class v0, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;

    monitor-enter v0

    .line 12
    :try_start_0
    sget-object v1, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zzb:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    if-nez v1, :cond_1

    .line 13
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 14
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->isDefaultApp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    const-class v2, Lcom/google/firebase/DataCollectionDefaultChange;

    sget-object v3, Lcom/google/firebase/analytics/connector/zzb;->zza:Ljava/util/concurrent/Executor;

    sget-object v4, Lcom/google/firebase/analytics/connector/zza;->zza:Lcom/google/firebase/events/EventHandler;

    invoke-interface {p2, v2, v3, v4}, Lcom/google/firebase/events/Subscriber;->subscribe(Ljava/lang/Class;Ljava/util/concurrent/Executor;Lcom/google/firebase/events/EventHandler;)V

    const-string p2, "dataCollectionDefaultEnabled"

    .line 17
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->isDataCollectionDefaultEnabled()Z

    move-result p0

    .line 18
    invoke-virtual {v1, p2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19
    :cond_0
    new-instance p0, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;

    .line 20
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/AppMeasurement;->zza(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;-><init>(Lcom/google/android/gms/measurement/AppMeasurement;)V

    sput-object p0, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zzb:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    .line 21
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 22
    :cond_2
    :goto_0
    sget-object p0, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zzb:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    return-object p0
.end method

.method static final synthetic zza(Lcom/google/firebase/events/Event;)V
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/google/firebase/events/Event;->getPayload()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/DataCollectionDefaultChange;

    iget-boolean p0, p0, Lcom/google/firebase/DataCollectionDefaultChange;->enabled:Z

    .line 78
    const-class v0, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;

    monitor-enter v0

    .line 79
    :try_start_0
    sget-object v1, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zzb:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    check-cast v1, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;

    iget-object v1, v1, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zzc:Lcom/google/android/gms/measurement/AppMeasurement;

    .line 80
    invoke-virtual {v1, p0}, Lcom/google/android/gms/measurement/AppMeasurement;->zza(Z)V

    .line 81
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    if-nez p3, :cond_0

    .line 26
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 27
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/analytics/connector/internal/zzd;->zza(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 29
    :cond_1
    invoke-static {p2, p3}, Lcom/google/firebase/analytics/connector/internal/zzd;->zza(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 31
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/google/firebase/analytics/connector/internal/zzd;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 33
    :cond_3
    iget-object v0, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zzc:Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/AppMeasurement;->logEventInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setUserProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 35
    invoke-static {p1}, Lcom/google/firebase/analytics/connector/internal/zzd;->zza(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-static {p1, p2}, Lcom/google/firebase/analytics/connector/internal/zzd;->zza(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zzc:Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/AppMeasurement;->setUserPropertyInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
