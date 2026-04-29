.class public Lcom/pushwoosh/notification/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/notification/e$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/pushwoosh/repository/RegistrationPrefs;

.field private final b:Lcom/pushwoosh/internal/registrar/PushRegistrar;

.field private c:Lcom/pushwoosh/notification/PushMessage;

.field private d:Lcom/pushwoosh/internal/utils/d;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/pushwoosh/internal/registrar/PushRegistrar;Lcom/pushwoosh/internal/utils/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/pushwoosh/notification/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/pushwoosh/notification/e;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/pushwoosh/notification/e;->d:Lcom/pushwoosh/internal/utils/d;

    iput-object p1, p0, Lcom/pushwoosh/notification/e;->b:Lcom/pushwoosh/internal/registrar/PushRegistrar;

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/notification/e;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    return-void
.end method


# virtual methods
.method public a(Lcom/pushwoosh/notification/LocalNotification;)Lcom/pushwoosh/notification/LocalNotificationRequest;
    .locals 1

    invoke-virtual {p1}, Lcom/pushwoosh/notification/LocalNotification;->b()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pushwoosh/notification/LocalNotification;->a()I

    move-result p1

    invoke-static {v0, p1}, Lcom/pushwoosh/notification/LocalNotificationReceiver;->scheduleNotification(Landroid/os/Bundle;I)I

    move-result p1

    new-instance v0, Lcom/pushwoosh/notification/LocalNotificationRequest;

    invoke-direct {v0, p1}, Lcom/pushwoosh/notification/LocalNotificationRequest;-><init>(I)V

    return-object v0
.end method

.method public a()V
    .locals 3

    invoke-static {}, Lcom/pushwoosh/notification/handlers/message/user/MessageHandleChainProvider;->init()V

    invoke-static {}, Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandleChainProvider;->init()V

    invoke-static {}, Lcom/pushwoosh/notification/handlers/notification/NotificationOpenHandlerChainProvider;->init()V

    iget-object v0, p0, Lcom/pushwoosh/notification/e;->b:Lcom/pushwoosh/internal/registrar/PushRegistrar;

    invoke-interface {v0}, Lcom/pushwoosh/internal/registrar/PushRegistrar;->init()V

    iget-object v0, p0, Lcom/pushwoosh/notification/e;->d:Lcom/pushwoosh/internal/utils/d;

    invoke-interface {v0}, Lcom/pushwoosh/internal/utils/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/notification/e;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->applicationId()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/notification/e;->d:Lcom/pushwoosh/internal/utils/d;

    invoke-interface {v0}, Lcom/pushwoosh/internal/utils/d;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;->getInstance()Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;->projectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/pushwoosh/notification/e;->b(Ljava/lang/String;)V

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/pushwoosh/notification/e;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/pushwoosh/function/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/lang/String;",
            "Lcom/pushwoosh/exception/RegisterForPushNotificationsException;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/pushwoosh/notification/e;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->communicationEnable()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "NotificationManager"

    const-string v0, "Communication with Pushwoosh is disabled"

    invoke-static {p1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/notification/e;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->isRegisteredForPush()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->set(Z)V

    invoke-static {p1}, Lcom/pushwoosh/notification/f;->a(Lcom/pushwoosh/function/Callback;)V

    iget-object p1, p0, Lcom/pushwoosh/notification/e;->b:Lcom/pushwoosh/internal/registrar/PushRegistrar;

    iget-object v0, p0, Lcom/pushwoosh/notification/e;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->applicationId()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/pushwoosh/internal/registrar/PushRegistrar;->checkDevice(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/pushwoosh/notification/e;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {p1}, Lcom/pushwoosh/repository/RegistrationPrefs;->pushToken()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/pushwoosh/notification/e;->b:Lcom/pushwoosh/internal/registrar/PushRegistrar;

    invoke-interface {p1}, Lcom/pushwoosh/internal/registrar/PushRegistrar;->registerPW()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/pushwoosh/notification/event/RegistrationSuccessEvent;

    invoke-direct {v0, p1}, Lcom/pushwoosh/notification/event/RegistrationSuccessEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pushwoosh/internal/event/EventBus;->sendEvent(Lcom/pushwoosh/internal/event/Event;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->exception(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/pushwoosh/notification/event/RegistrationErrorEvent;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/pushwoosh/notification/event/RegistrationErrorEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pushwoosh/internal/event/EventBus;->sendEvent(Lcom/pushwoosh/internal/event/Event;)Z

    :goto_0
    return-void
.end method

.method public a(Lcom/pushwoosh/notification/PushMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/notification/e;->c:Lcom/pushwoosh/notification/PushMessage;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationManager"

    invoke-static {v1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/pushwoosh/notification/e;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->applicationId()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/pushwoosh/notification/e;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, p0, Lcom/pushwoosh/notification/e;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v2}, Lcom/pushwoosh/repository/RegistrationPrefs;->registeredOnServer()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "App id changed unregister form previous application"

    invoke-static {v1, v2}, Lcom/pushwoosh/internal/utils/PWLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pushwoosh/notification/e;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v1}, Lcom/pushwoosh/repository/RegistrationPrefs;->pushToken()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pushwoosh/notification/e;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v2}, Lcom/pushwoosh/repository/RegistrationPrefs;->baseUrl()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pushwoosh/repository/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/q;->p()V

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRequestStorage()Lcom/pushwoosh/internal/network/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/internal/network/f;->a()V

    iget-object v1, p0, Lcom/pushwoosh/notification/e;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v1}, Lcom/pushwoosh/repository/RegistrationPrefs;->removeAppId()V

    iget-object v1, p0, Lcom/pushwoosh/notification/e;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v1}, Lcom/pushwoosh/repository/RegistrationPrefs;->forceRegister()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v1

    iget-object v2, p0, Lcom/pushwoosh/notification/e;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v2}, Lcom/pushwoosh/repository/RegistrationPrefs;->isRegisteredForPush()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->set(Z)V

    new-instance v1, Lcom/pushwoosh/internal/event/AppIdChangedEvent;

    invoke-direct {v1, p1, v0}, Lcom/pushwoosh/internal/event/AppIdChangedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/pushwoosh/internal/event/EventBus;->sendEvent(Lcom/pushwoosh/internal/event/Event;)Z

    const/4 v4, 0x1

    :cond_1
    iget-object v0, p0, Lcom/pushwoosh/notification/e;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/repository/RegistrationPrefs;->setAppId(Ljava/lang/String;)V

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/pushwoosh/internal/network/NetworkModule;->getRequestManager()Lcom/pushwoosh/internal/network/RequestManager;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/pushwoosh/notification/e;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->baseUrl()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/pushwoosh/internal/network/RequestManager;->updateBaseUrl(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/pushwoosh/notification/e;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Lcom/pushwoosh/notification/e$a;

    invoke-direct {p1}, Lcom/pushwoosh/notification/e$a;-><init>()V

    invoke-static {p1}, Lcom/pushwoosh/internal/event/EventBus;->sendEvent(Lcom/pushwoosh/internal/event/Event;)Z

    iget-object p1, p0, Lcom/pushwoosh/notification/e;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Application id is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/notification/e;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->pushToken()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lcom/pushwoosh/function/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/lang/String;",
            "Lcom/pushwoosh/exception/UnregisterForPushNotificationException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/pushwoosh/notification/j;->a(Lcom/pushwoosh/function/Callback;)V

    iget-object p1, p0, Lcom/pushwoosh/notification/e;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {p1}, Lcom/pushwoosh/repository/RegistrationPrefs;->isRegisteredForPush()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->set(Z)V

    iget-object p1, p0, Lcom/pushwoosh/notification/e;->b:Lcom/pushwoosh/internal/registrar/PushRegistrar;

    invoke-interface {p1}, Lcom/pushwoosh/internal/registrar/PushRegistrar;->unregisterPW()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sender ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationManager"

    invoke-static {v1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/pushwoosh/notification/e;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->projectId()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Sender ID changed, clearing token"

    invoke-static {v1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pushwoosh/notification/e;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->pushToken()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    iget-object v0, p0, Lcom/pushwoosh/notification/e;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->removeSenderId()V

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/notification/e;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->projectId()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->set(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/pushwoosh/notification/e;->b:Lcom/pushwoosh/internal/registrar/PushRegistrar;

    invoke-interface {p1}, Lcom/pushwoosh/internal/registrar/PushRegistrar;->registerPW()V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sender id is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Lcom/pushwoosh/notification/PushMessage;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/e;->c:Lcom/pushwoosh/notification/PushMessage;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->pushToken()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->set(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/pushwoosh/repository/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pushwoosh/notification/e;->c:Lcom/pushwoosh/notification/PushMessage;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/pushwoosh/notification/event/RegistrationErrorEvent;

    invoke-direct {v0, p1}, Lcom/pushwoosh/notification/event/RegistrationErrorEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pushwoosh/internal/event/EventBus;->sendEvent(Lcom/pushwoosh/internal/event/Event;)Z

    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/notification/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NotificationManager"

    const-string v1, "Local pushes already rescheduled"

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/utils/PWLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v1, Lcom/pushwoosh/notification/RescheduleNotificationsWorker;

    invoke-direct {v0, v1}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v0

    check-cast v0, Landroidx/work/OneTimeWorkRequest;

    sget-object v1, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    const-string v2, "RescheduleNotificationsWorker"

    invoke-static {v0, v2, v1}, Lcom/pushwoosh/PushwooshWorkManagerHelper;->enqueueOneTimeUniqueWork(Landroidx/work/OneTimeWorkRequest;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;)V

    iget-object v0, p0, Lcom/pushwoosh/notification/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/e;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->clearSenderIdInfo()V

    invoke-static {p1}, Lcom/pushwoosh/repository/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/pushwoosh/notification/event/DeregistrationErrorEvent;

    invoke-direct {v0, p1}, Lcom/pushwoosh/notification/event/DeregistrationErrorEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pushwoosh/internal/event/EventBus;->sendEvent(Lcom/pushwoosh/internal/event/Event;)Z

    return-void
.end method
