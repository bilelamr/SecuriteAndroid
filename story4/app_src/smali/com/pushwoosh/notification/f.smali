.class public final Lcom/pushwoosh/notification/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/pushwoosh/function/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/lang/String;",
            "Lcom/pushwoosh/exception/RegisterForPushNotificationsException;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/pushwoosh/internal/event/Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/internal/event/Subscription<",
            "Lcom/pushwoosh/notification/event/RegistrationSuccessEvent;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/pushwoosh/internal/event/Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/internal/event/Subscription<",
            "Lcom/pushwoosh/notification/event/RegistrationErrorEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/pushwoosh/function/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/lang/String;",
            "Lcom/pushwoosh/exception/RegisterForPushNotificationsException;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/notification/f;->a:Lcom/pushwoosh/function/Callback;

    return-void
.end method

.method private a()V
    .locals 2

    const-class v0, Lcom/pushwoosh/notification/event/RegistrationSuccessEvent;

    invoke-static {p0}, Lcom/pushwoosh/notification/g;->a(Lcom/pushwoosh/notification/f;)Lcom/pushwoosh/internal/event/EventListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/event/EventBus;->subscribe(Ljava/lang/Class;Lcom/pushwoosh/internal/event/EventListener;)Lcom/pushwoosh/internal/event/Subscription;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/notification/f;->b:Lcom/pushwoosh/internal/event/Subscription;

    const-class v0, Lcom/pushwoosh/notification/event/RegistrationErrorEvent;

    invoke-static {p0}, Lcom/pushwoosh/notification/h;->a(Lcom/pushwoosh/notification/f;)Lcom/pushwoosh/internal/event/EventListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/event/EventBus;->subscribe(Ljava/lang/Class;Lcom/pushwoosh/internal/event/EventListener;)Lcom/pushwoosh/internal/event/Subscription;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/notification/f;->c:Lcom/pushwoosh/internal/event/Subscription;

    return-void
.end method

.method public static a(Lcom/pushwoosh/function/Callback;)V
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

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/pushwoosh/notification/f;

    invoke-direct {v0, p0}, Lcom/pushwoosh/notification/f;-><init>(Lcom/pushwoosh/function/Callback;)V

    invoke-direct {v0}, Lcom/pushwoosh/notification/f;->a()V

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/notification/f;Lcom/pushwoosh/notification/event/RegistrationErrorEvent;)V
    .locals 1

    invoke-direct {p0}, Lcom/pushwoosh/notification/f;->b()V

    iget-object p0, p0, Lcom/pushwoosh/notification/f;->a:Lcom/pushwoosh/function/Callback;

    new-instance v0, Lcom/pushwoosh/exception/RegisterForPushNotificationsException;

    invoke-virtual {p1}, Lcom/pushwoosh/internal/event/DataEvent;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/pushwoosh/exception/RegisterForPushNotificationsException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pushwoosh/function/Result;->fromException(Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/notification/f;Lcom/pushwoosh/notification/event/RegistrationSuccessEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/notification/f;->b()V

    iget-object p0, p0, Lcom/pushwoosh/notification/f;->a:Lcom/pushwoosh/function/Callback;

    invoke-virtual {p1}, Lcom/pushwoosh/internal/event/DataEvent;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/pushwoosh/function/Result;->fromData(Ljava/lang/Object;)Lcom/pushwoosh/function/Result;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/f;->b:Lcom/pushwoosh/internal/event/Subscription;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/event/Subscription;->unsubscribe()V

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/notification/f;->c:Lcom/pushwoosh/internal/event/Subscription;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/pushwoosh/internal/event/Subscription;->unsubscribe()V

    :cond_1
    return-void
.end method
