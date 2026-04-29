.class public final Lcom/pushwoosh/internal/utils/NotificationRegistrarHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/internal/utils/NotificationRegistrarHelper$a;,
        Lcom/pushwoosh/internal/utils/NotificationRegistrarHelper$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->m()Lcom/pushwoosh/notification/NotificationServiceExtension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pushwoosh/notification/NotificationServiceExtension;->handleMessage(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/pushwoosh/internal/utils/PWLog;->exception(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static clearToken()V
    .locals 2

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->pushToken()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->set(Ljava/lang/String;)V

    return-void
.end method

.method public static handleMessage(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Lcom/pushwoosh/internal/utils/NotificationRegistrarHelper$b;

    invoke-static {p0}, Lcom/pushwoosh/internal/utils/f;->a(Landroid/os/Bundle;)Lcom/pushwoosh/internal/utils/NotificationRegistrarHelper$a;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pushwoosh/internal/utils/NotificationRegistrarHelper$b;-><init>(Landroid/os/Bundle;Lcom/pushwoosh/internal/utils/NotificationRegistrarHelper$a;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static isRegisteredForRemoteNotifications()Z
    .locals 1

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->isRegisteredForPush()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->get()Z

    move-result v0

    return v0
.end method

.method public static onFailedToRegisterForRemoteNotifications(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->g()Lcom/pushwoosh/notification/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pushwoosh/notification/e;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static onFailedToUnregisterFromRemoteNotifications(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->g()Lcom/pushwoosh/notification/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pushwoosh/notification/e;->f(Ljava/lang/String;)V

    return-void
.end method

.method public static onRegisteredForRemoteNotifications(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/internal/utils/NotificationRegistrarHelper;->isRegisteredForRemoteNotifications()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->g()Lcom/pushwoosh/notification/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pushwoosh/notification/e;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static onUnregisteredFromRemoteNotifications(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->g()Lcom/pushwoosh/notification/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pushwoosh/notification/e;->e(Ljava/lang/String;)V

    return-void
.end method
