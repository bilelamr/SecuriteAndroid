.class public Lcom/pushwoosh/amazon/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/registrar/PushRegistrar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/amazon/a/a/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/pushwoosh/amazon/a/a/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkDevice(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/amazon/a/a/a;->a:Lcom/pushwoosh/amazon/a/a/a$a;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/amazon/a/a/a$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public init()V
    .locals 1

    new-instance v0, Lcom/pushwoosh/amazon/a/a/a$a;

    invoke-direct {v0}, Lcom/pushwoosh/amazon/a/a/a$a;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/amazon/a/a/a;->a:Lcom/pushwoosh/amazon/a/a/a$a;

    return-void
.end method

.method public registerPW()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/amazon/a/a/a;->a:Lcom/pushwoosh/amazon/a/a/a$a;

    invoke-virtual {v0}, Lcom/pushwoosh/amazon/a/a/a$a;->a()V

    return-void
.end method

.method public unregisterPW()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/amazon/a/a/a;->a:Lcom/pushwoosh/amazon/a/a/a$a;

    invoke-virtual {v0}, Lcom/pushwoosh/amazon/a/a/a$a;->b()V

    return-void
.end method
