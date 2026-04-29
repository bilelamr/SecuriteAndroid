.class public Lcom/pushwoosh/internal/registrar/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/registrar/PushRegistrar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/internal/registrar/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/pushwoosh/internal/registrar/a$a;


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

    iget-object v0, p0, Lcom/pushwoosh/internal/registrar/a;->a:Lcom/pushwoosh/internal/registrar/a$a;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/internal/registrar/a$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public init()V
    .locals 2

    new-instance v0, Lcom/pushwoosh/internal/checker/b;

    invoke-direct {v0}, Lcom/pushwoosh/internal/checker/b;-><init>()V

    invoke-virtual {v0}, Lcom/pushwoosh/internal/checker/b;->check()Z

    new-instance v0, Lcom/pushwoosh/internal/registrar/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pushwoosh/internal/registrar/a$a;-><init>(Lcom/pushwoosh/internal/registrar/a$1;)V

    iput-object v0, p0, Lcom/pushwoosh/internal/registrar/a;->a:Lcom/pushwoosh/internal/registrar/a$a;

    return-void
.end method

.method public registerPW()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/internal/registrar/a;->a:Lcom/pushwoosh/internal/registrar/a$a;

    invoke-virtual {v0}, Lcom/pushwoosh/internal/registrar/a$a;->a()V

    return-void
.end method

.method public unregisterPW()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/internal/registrar/a;->a:Lcom/pushwoosh/internal/registrar/a$a;

    invoke-virtual {v0}, Lcom/pushwoosh/internal/registrar/a$a;->b()V

    return-void
.end method
