.class final Lcom/pushwoosh/amazon/a/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/specific/DeviceSpecific;


# instance fields
.field private final a:Lcom/pushwoosh/internal/registrar/PushRegistrar;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/pushwoosh/amazon/a/a/a;

    invoke-direct {v0}, Lcom/pushwoosh/amazon/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/amazon/a/b/a;->a:Lcom/pushwoosh/internal/registrar/PushRegistrar;

    return-void
.end method


# virtual methods
.method public deviceType()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public permission(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".permission.RECEIVE_ADM_MESSAGE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public projectId()Ljava/lang/String;
    .locals 1

    const-string v0, "AMAZON_DEVICE"

    return-object v0
.end method

.method public pushRegistrar()Lcom/pushwoosh/internal/registrar/PushRegistrar;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/amazon/a/b/a;->a:Lcom/pushwoosh/internal/registrar/PushRegistrar;

    return-object v0
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Amazon"

    return-object v0
.end method
