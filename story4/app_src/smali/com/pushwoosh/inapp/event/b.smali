.class public Lcom/pushwoosh/inapp/event/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/event/Event;


# instance fields
.field private a:Lcom/pushwoosh/function/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/function/Result<",
            "Ljava/lang/String;",
            "Lcom/pushwoosh/exception/RegisterForPushNotificationsException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pushwoosh/function/Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Result<",
            "Ljava/lang/String;",
            "Lcom/pushwoosh/exception/RegisterForPushNotificationsException;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/event/b;->a:Lcom/pushwoosh/function/Result;

    return-void
.end method


# virtual methods
.method public a()Lcom/pushwoosh/function/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pushwoosh/function/Result<",
            "Ljava/lang/String;",
            "Lcom/pushwoosh/exception/RegisterForPushNotificationsException;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/inapp/event/b;->a:Lcom/pushwoosh/function/Result;

    return-object v0
.end method
