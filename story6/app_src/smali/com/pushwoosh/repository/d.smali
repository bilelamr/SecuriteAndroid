.class public Lcom/pushwoosh/repository/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/repository/RegistrationPrefs;Ljava/lang/String;Lcom/pushwoosh/function/Result;)V
    .locals 4

    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result v0

    const-string v1, "DeviceRegistrar"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/pushwoosh/repository/RegistrationPrefs;->registeredOnServer()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->set(Z)V

    new-instance p2, Lcom/pushwoosh/notification/event/RegistrationSuccessEvent;

    invoke-direct {p2, p1}, Lcom/pushwoosh/notification/event/RegistrationSuccessEvent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/pushwoosh/internal/event/EventBus;->sendEvent(Lcom/pushwoosh/internal/event/Event;)Z

    invoke-virtual {p0}, Lcom/pushwoosh/repository/RegistrationPrefs;->lastPushRegistration()Lcom/pushwoosh/internal/preference/PreferenceLongValue;

    move-result-object p0

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/pushwoosh/internal/preference/PreferenceLongValue;->set(J)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Registered for push notifications: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/pushwoosh/internal/utils/PWLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p0

    check-cast p0, Lcom/pushwoosh/internal/network/NetworkException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "Pushwoosh registration error"

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Registration error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/pushwoosh/notification/event/RegistrationErrorEvent;

    invoke-direct {p1, p0}, Lcom/pushwoosh/notification/event/RegistrationErrorEvent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/pushwoosh/internal/event/EventBus;->sendEvent(Lcom/pushwoosh/internal/event/Event;)Z

    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "DeviceRegistrar"

    const-string v1, "Registering for pushes..."

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v0

    new-instance v1, Lcom/pushwoosh/repository/x;

    invoke-direct {v1, p0}, Lcom/pushwoosh/repository/x;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pushwoosh/internal/network/NetworkModule;->getRequestManager()Lcom/pushwoosh/internal/network/RequestManager;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance p0, Lcom/pushwoosh/notification/event/RegistrationErrorEvent;

    const-string v0, "Request manager is null"

    invoke-direct {p0, v0}, Lcom/pushwoosh/notification/event/RegistrationErrorEvent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/pushwoosh/internal/event/EventBus;->sendEvent(Lcom/pushwoosh/internal/event/Event;)Z

    return-void

    :cond_0
    invoke-static {v0, p0}, Lcom/pushwoosh/repository/e;->a(Lcom/pushwoosh/repository/RegistrationPrefs;Ljava/lang/String;)Lcom/pushwoosh/function/Callback;

    move-result-object p0

    invoke-interface {v2, v1, p0}, Lcom/pushwoosh/internal/network/RequestManager;->sendRequest(Lcom/pushwoosh/internal/network/PushRequest;Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Lcom/pushwoosh/repository/RegistrationPrefs;Lcom/pushwoosh/function/Result;)V
    .locals 2

    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result v0

    const-string v1, "DeviceRegistrar"

    if-eqz v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unregistered for pushes: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/pushwoosh/internal/utils/PWLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/pushwoosh/notification/event/DeregistrationSuccessEvent;

    invoke-direct {p2, p0}, Lcom/pushwoosh/notification/event/DeregistrationSuccessEvent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/pushwoosh/internal/event/EventBus;->sendEvent(Lcom/pushwoosh/internal/event/Event;)Z

    invoke-virtual {p1}, Lcom/pushwoosh/repository/RegistrationPrefs;->lastPushRegistration()Lcom/pushwoosh/internal/preference/PreferenceLongValue;

    move-result-object p0

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/pushwoosh/internal/preference/PreferenceLongValue;->set(J)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p0

    check-cast p0, Lcom/pushwoosh/internal/network/NetworkException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "Pushwoosh unregistration error"

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unregistration error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/pushwoosh/notification/event/DeregistrationErrorEvent;

    invoke-direct {p1, p0}, Lcom/pushwoosh/notification/event/DeregistrationErrorEvent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/pushwoosh/internal/event/EventBus;->sendEvent(Lcom/pushwoosh/internal/event/Event;)Z

    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "DeviceRegistrar"

    const-string v1, "Unregistering for pushes..."

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->registeredOnServer()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->set(Z)V

    new-instance v1, Lcom/pushwoosh/repository/ad;

    invoke-direct {v1}, Lcom/pushwoosh/repository/ad;-><init>()V

    invoke-static {}, Lcom/pushwoosh/internal/network/NetworkModule;->getRequestManager()Lcom/pushwoosh/internal/network/RequestManager;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance p0, Lcom/pushwoosh/notification/event/DeregistrationErrorEvent;

    const-string p1, "Request manager is null"

    invoke-direct {p0, p1}, Lcom/pushwoosh/notification/event/DeregistrationErrorEvent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/pushwoosh/internal/event/EventBus;->sendEvent(Lcom/pushwoosh/internal/event/Event;)Z

    return-void

    :cond_0
    invoke-static {p0, v0}, Lcom/pushwoosh/repository/f;->a(Ljava/lang/String;Lcom/pushwoosh/repository/RegistrationPrefs;)Lcom/pushwoosh/function/Callback;

    move-result-object p0

    invoke-interface {v2, v1, p1, p0}, Lcom/pushwoosh/internal/network/RequestManager;->sendRequest(Lcom/pushwoosh/internal/network/PushRequest;Ljava/lang/String;Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/pushwoosh/repository/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b()Z
    .locals 7

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xc

    const/16 v4, -0xa

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->lastPushRegistration()Lcom/pushwoosh/internal/preference/PreferenceLongValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceLongValue;->get()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->pushToken()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->forceRegister()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->get()Z

    move-result v2

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->forceRegister()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->set(Z)V

    if-nez v2, :cond_0

    invoke-static {}, Lcom/pushwoosh/repository/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {v1}, Lcom/pushwoosh/repository/d;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
