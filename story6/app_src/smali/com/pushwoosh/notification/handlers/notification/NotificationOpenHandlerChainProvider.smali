.class public final Lcom/pushwoosh/notification/handlers/notification/NotificationOpenHandlerChainProvider;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/pushwoosh/internal/chain/Chain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/internal/chain/Chain<",
            "Lcom/pushwoosh/notification/handlers/notification/PushNotificationOpenHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/pushwoosh/internal/chain/Chain;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pushwoosh/internal/chain/Chain<",
            "Lcom/pushwoosh/notification/handlers/notification/PushNotificationOpenHandler;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/pushwoosh/notification/handlers/notification/c$a;

    invoke-direct {v0}, Lcom/pushwoosh/notification/handlers/notification/c$a;-><init>()V

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/q;->c()Lcom/pushwoosh/notification/handlers/notification/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/notification/handlers/notification/c$a;->a(Lcom/pushwoosh/notification/handlers/notification/PushNotificationOpenHandler;)Lcom/pushwoosh/notification/handlers/notification/c$a;

    move-result-object v0

    new-instance v1, Lcom/pushwoosh/notification/handlers/notification/a;

    invoke-direct {v1}, Lcom/pushwoosh/notification/handlers/notification/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pushwoosh/notification/handlers/notification/c$a;->a(Lcom/pushwoosh/notification/handlers/notification/PushNotificationOpenHandler;)Lcom/pushwoosh/notification/handlers/notification/c$a;

    move-result-object v0

    new-instance v1, Lcom/pushwoosh/notification/handlers/notification/f;

    invoke-direct {v1}, Lcom/pushwoosh/notification/handlers/notification/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pushwoosh/notification/handlers/notification/c$a;->a(Lcom/pushwoosh/notification/handlers/notification/PushNotificationOpenHandler;)Lcom/pushwoosh/notification/handlers/notification/c$a;

    move-result-object v0

    new-instance v1, Lcom/pushwoosh/notification/handlers/notification/g;

    invoke-direct {v1}, Lcom/pushwoosh/notification/handlers/notification/g;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pushwoosh/notification/handlers/notification/c$a;->a(Lcom/pushwoosh/notification/handlers/notification/PushNotificationOpenHandler;)Lcom/pushwoosh/notification/handlers/notification/c$a;

    move-result-object v0

    new-instance v1, Lcom/pushwoosh/notification/handlers/notification/b;

    invoke-direct {v1}, Lcom/pushwoosh/notification/handlers/notification/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pushwoosh/notification/handlers/notification/c$a;->a(Lcom/pushwoosh/notification/handlers/notification/PushNotificationOpenHandler;)Lcom/pushwoosh/notification/handlers/notification/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/notification/handlers/notification/c$a;->a()Lcom/pushwoosh/notification/handlers/notification/c;

    move-result-object v0

    return-object v0
.end method

.method public static getNotificationOpenHandlerChain()Lcom/pushwoosh/internal/chain/Chain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pushwoosh/internal/chain/Chain<",
            "Lcom/pushwoosh/notification/handlers/notification/PushNotificationOpenHandler;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/pushwoosh/notification/handlers/notification/NotificationOpenHandlerChainProvider;->a:Lcom/pushwoosh/internal/chain/Chain;

    return-object v0
.end method

.method public static init()V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/notification/handlers/notification/NotificationOpenHandlerChainProvider;->a()Lcom/pushwoosh/internal/chain/Chain;

    move-result-object v0

    sput-object v0, Lcom/pushwoosh/notification/handlers/notification/NotificationOpenHandlerChainProvider;->a:Lcom/pushwoosh/internal/chain/Chain;

    return-void
.end method
