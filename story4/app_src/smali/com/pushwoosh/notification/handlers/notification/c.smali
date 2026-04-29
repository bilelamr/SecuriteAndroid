.class public Lcom/pushwoosh/notification/handlers/notification/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/chain/Chain;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/notification/handlers/notification/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pushwoosh/internal/chain/Chain<",
        "Lcom/pushwoosh/notification/handlers/notification/PushNotificationOpenHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/notification/handlers/notification/PushNotificationOpenHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/notification/handlers/notification/PushNotificationOpenHandler;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/notification/handlers/notification/c;->a:Ljava/util/Collection;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collection;Lcom/pushwoosh/notification/handlers/notification/c$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/notification/handlers/notification/c;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/pushwoosh/notification/handlers/notification/PushNotificationOpenHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/handlers/notification/c;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic addItem(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/pushwoosh/notification/handlers/notification/PushNotificationOpenHandler;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/notification/handlers/notification/c;->a(Lcom/pushwoosh/notification/handlers/notification/PushNotificationOpenHandler;)V

    return-void
.end method

.method public b(Lcom/pushwoosh/notification/handlers/notification/PushNotificationOpenHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/handlers/notification/c;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public getIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/pushwoosh/notification/handlers/notification/PushNotificationOpenHandler;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/notification/handlers/notification/c;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic removeItem(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/pushwoosh/notification/handlers/notification/PushNotificationOpenHandler;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/notification/handlers/notification/c;->b(Lcom/pushwoosh/notification/handlers/notification/PushNotificationOpenHandler;)V

    return-void
.end method
