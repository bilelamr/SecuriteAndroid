.class public Lcom/pushwoosh/internal/registrar/RegistrarWorker;
.super Landroidx/work/Worker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method private static a()V
    .locals 5

    const-string v0, "RegistrarWorker"

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/q;->g()Lcom/pushwoosh/notification/e;

    move-result-object v1

    :try_start_0
    invoke-static {}, Lcom/pushwoosh/Pushwoosh;->getInstance()Lcom/pushwoosh/Pushwoosh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pushwoosh/Pushwoosh;->getSenderId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v3

    const-string v4, "FCM"

    invoke-virtual {v3, v2, v4}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FCM token is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/pushwoosh/internal/utils/PWLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/pushwoosh/internal/utils/NotificationRegistrarHelper;->onRegisteredForRemoteNotifications(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "FCM token is empty"

    invoke-static {v0, v2}, Lcom/pushwoosh/internal/utils/PWLog;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FCM registration error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string v2, "FCM registration error: Failed to retrieve token. Is firebase configured correctly?"

    invoke-static {v0, v2}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/pushwoosh/notification/e;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static b()V
    .locals 4

    const-string v0, "RegistrarWorker"

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/q;->g()Lcom/pushwoosh/notification/e;

    move-result-object v1

    :try_start_0
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->deleteInstanceId()V

    const-string v2, "Fcm deregistration success"

    invoke-static {v0, v2}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pushwoosh/repository/RegistrationPrefs;->pushToken()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pushwoosh/notification/e;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Fcm deregstration error"

    invoke-static {v0, v3, v2}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/pushwoosh/notification/e;->f(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 4

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "DATA_REGISTER"

    invoke-virtual {v0, v2, v1}, Landroidx/work/Data;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    move-result-object v2

    const-string v3, "DATA_UNREGISTER"

    invoke-virtual {v2, v3, v1}, Landroidx/work/Data;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/pushwoosh/internal/registrar/RegistrarWorker;->a()V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/pushwoosh/internal/registrar/RegistrarWorker;->b()V

    :cond_1
    :goto_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method
