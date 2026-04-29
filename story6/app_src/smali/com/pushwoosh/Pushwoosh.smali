.class public Lcom/pushwoosh/Pushwoosh;
.super Ljava/lang/Object;


# static fields
.field public static final PUSH_HISTORY_CAPACITY:I = 0x10

.field public static final PUSH_RECEIVE_EVENT:Ljava/lang/String; = "PUSH_RECEIVE_EVENT"

.field private static final a:Lcom/pushwoosh/Pushwoosh;


# instance fields
.field private final b:Lcom/pushwoosh/notification/e;

.field private final c:Lcom/pushwoosh/repository/s;

.field private final d:Lcom/pushwoosh/GDPRManager;

.field private e:Lcom/pushwoosh/internal/event/Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/internal/event/Subscription<",
            "Lcom/pushwoosh/inapp/event/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/pushwoosh/Pushwoosh;

    invoke-direct {v0}, Lcom/pushwoosh/Pushwoosh;-><init>()V

    sput-object v0, Lcom/pushwoosh/Pushwoosh;->a:Lcom/pushwoosh/Pushwoosh;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/pushwoosh/q;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pushwoosh/Pushwoosh;->b:Lcom/pushwoosh/notification/e;

    iput-object v0, p0, Lcom/pushwoosh/Pushwoosh;->c:Lcom/pushwoosh/repository/s;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/pushwoosh/q;->g()Lcom/pushwoosh/notification/e;

    move-result-object v1

    iput-object v1, p0, Lcom/pushwoosh/Pushwoosh;->b:Lcom/pushwoosh/notification/e;

    invoke-virtual {v0}, Lcom/pushwoosh/q;->h()Lcom/pushwoosh/repository/s;

    move-result-object v1

    iput-object v1, p0, Lcom/pushwoosh/Pushwoosh;->c:Lcom/pushwoosh/repository/s;

    invoke-virtual {v0}, Lcom/pushwoosh/q;->l()Lcom/pushwoosh/GDPRManager;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/pushwoosh/Pushwoosh;->d:Lcom/pushwoosh/GDPRManager;

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/Pushwoosh;->e:Lcom/pushwoosh/internal/event/Subscription;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/event/Subscription;->unsubscribe()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pushwoosh/Pushwoosh;->e:Lcom/pushwoosh/internal/event/Subscription;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/Pushwoosh;Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/inapp/event/b;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/pushwoosh/inapp/event/b;->a()Lcom/pushwoosh/function/Result;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    :cond_0
    invoke-direct {p0}, Lcom/pushwoosh/Pushwoosh;->a()V

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/Pushwoosh;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/inapp/a/h;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/pushwoosh/Pushwoosh;->a()V

    sget-object p1, Lcom/pushwoosh/inapp/a/h;->a:Lcom/pushwoosh/inapp/a/h;

    if-eq p3, p1, :cond_0

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/pushwoosh/Pushwoosh;->b:Lcom/pushwoosh/notification/e;

    invoke-virtual {p0, p2}, Lcom/pushwoosh/notification/e;->a(Lcom/pushwoosh/function/Callback;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p0, 0x0

    new-instance p1, Lcom/pushwoosh/exception/RegisterForPushNotificationsException;

    const-string p3, "Stopped by in-app"

    invoke-direct {p1, p3}, Lcom/pushwoosh/exception/RegisterForPushNotificationsException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/pushwoosh/function/Result;->from(Ljava/lang/Object;Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lcom/pushwoosh/function/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/lang/String;",
            "Lcom/pushwoosh/exception/RegisterForPushNotificationsException;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-class v0, Lcom/pushwoosh/inapp/event/b;

    invoke-static {p0, p1}, Lcom/pushwoosh/o;->a(Lcom/pushwoosh/Pushwoosh;Lcom/pushwoosh/function/Callback;)Lcom/pushwoosh/internal/event/EventListener;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/pushwoosh/internal/event/EventBus;->subscribe(Ljava/lang/Class;Lcom/pushwoosh/internal/event/EventListener;)Lcom/pushwoosh/internal/event/Subscription;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/Pushwoosh;->e:Lcom/pushwoosh/internal/event/Subscription;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/pushwoosh/Pushwoosh;
    .locals 1

    sget-object v0, Lcom/pushwoosh/Pushwoosh;->a:Lcom/pushwoosh/Pushwoosh;

    return-object v0
.end method


# virtual methods
.method public clearLaunchNotification()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/Pushwoosh;->b:Lcom/pushwoosh/notification/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pushwoosh/notification/e;->d()V

    :cond_0
    return-void
.end method

.method public clearPushHistory()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/Pushwoosh;->c:Lcom/pushwoosh/repository/s;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getNotificationPreferences()Lcom/pushwoosh/repository/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->o()Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;->clear()V

    :cond_0
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/Pushwoosh;->c:Lcom/pushwoosh/repository/s;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->applicationId()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getHwid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/Pushwoosh;->b:Lcom/pushwoosh/notification/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/Pushwoosh;->c:Lcom/pushwoosh/repository/s;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/s;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/Pushwoosh;->c:Lcom/pushwoosh/repository/s;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->language()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getLaunchNotification()Lcom/pushwoosh/notification/PushMessage;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/Pushwoosh;->b:Lcom/pushwoosh/notification/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pushwoosh/notification/e;->c()Lcom/pushwoosh/notification/PushMessage;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPushHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pushwoosh/notification/PushMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/Pushwoosh;->c:Lcom/pushwoosh/repository/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/s;->g()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getPushToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/Pushwoosh;->b:Lcom/pushwoosh/notification/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pushwoosh/notification/e;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/Pushwoosh;->b:Lcom/pushwoosh/notification/e;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->projectId()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getTags(Lcom/pushwoosh/function/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Callback<",
            "Lcom/pushwoosh/tags/TagsBundle;",
            "Lcom/pushwoosh/exception/GetTagsException;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/Pushwoosh;->c:Lcom/pushwoosh/repository/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/repository/s;->a(Lcom/pushwoosh/function/Callback;)V

    :cond_0
    return-void
.end method

.method public registerForPushNotifications()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pushwoosh/Pushwoosh;->registerForPushNotifications(Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public registerForPushNotifications(Lcom/pushwoosh/function/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/lang/String;",
            "Lcom/pushwoosh/exception/RegisterForPushNotificationsException;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/pushwoosh/Pushwoosh;->a()V

    iget-object v0, p0, Lcom/pushwoosh/Pushwoosh;->b:Lcom/pushwoosh/notification/e;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/q;->k()Lcom/pushwoosh/inapp/a/i;

    move-result-object v1

    invoke-static {p0, v0, p1}, Lcom/pushwoosh/n;->a(Lcom/pushwoosh/Pushwoosh;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/pushwoosh/function/Callback;)Lcom/pushwoosh/inapp/a/a$a;

    move-result-object v2

    const-string v3, "push-register"

    invoke-virtual {v1, v3, v2}, Lcom/pushwoosh/inapp/a/i;->a(Ljava/lang/String;Lcom/pushwoosh/inapp/a/a$a;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/pushwoosh/Pushwoosh;->a(Lcom/pushwoosh/function/Callback;)V

    :cond_0
    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/q;->k()Lcom/pushwoosh/inapp/a/i;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "push-unregister"

    invoke-virtual {p1, v1, v0}, Lcom/pushwoosh/inapp/a/i;->a(Ljava/lang/String;Lcom/pushwoosh/inapp/a/a$a;)V

    :cond_1
    return-void
.end method

.method public scheduleLocalNotification(Lcom/pushwoosh/notification/LocalNotification;)Lcom/pushwoosh/notification/LocalNotificationRequest;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/Pushwoosh;->b:Lcom/pushwoosh/notification/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/notification/e;->a(Lcom/pushwoosh/notification/LocalNotification;)Lcom/pushwoosh/notification/LocalNotificationRequest;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public sendAppOpen()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/Pushwoosh;->c:Lcom/pushwoosh/repository/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/s;->b()V

    :cond_0
    return-void
.end method

.method public sendInappPurchase(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/Pushwoosh;->c:Lcom/pushwoosh/repository/s;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/pushwoosh/repository/s;->a(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/util/Date;)V

    :cond_0
    return-void
.end method

.method public sendTags(Lcom/pushwoosh/tags/TagsBundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/pushwoosh/Pushwoosh;->sendTags(Lcom/pushwoosh/tags/TagsBundle;Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public sendTags(Lcom/pushwoosh/tags/TagsBundle;Lcom/pushwoosh/function/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/tags/TagsBundle;",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/lang/Void;",
            "Lcom/pushwoosh/exception/PushwooshException;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/Pushwoosh;->c:Lcom/pushwoosh/repository/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/pushwoosh/repository/s;->a(Lcom/pushwoosh/tags/TagsBundle;Lcom/pushwoosh/function/Callback;)V

    :cond_0
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/Pushwoosh;->b:Lcom/pushwoosh/notification/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/notification/e;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/repository/RegistrationPrefs;->setLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public setSenderId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/Pushwoosh;->b:Lcom/pushwoosh/notification/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/notification/e;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unregisterForPushNotifications()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pushwoosh/Pushwoosh;->unregisterForPushNotifications(Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public unregisterForPushNotifications(Lcom/pushwoosh/function/Callback;)V
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

    iget-object v0, p0, Lcom/pushwoosh/Pushwoosh;->b:Lcom/pushwoosh/notification/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/notification/e;->b(Lcom/pushwoosh/function/Callback;)V

    :cond_0
    return-void
.end method
