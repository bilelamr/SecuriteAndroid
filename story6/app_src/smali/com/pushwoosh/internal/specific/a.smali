.class final Lcom/pushwoosh/internal/specific/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/specific/DeviceSpecific;


# instance fields
.field private final a:Lcom/pushwoosh/internal/registrar/PushRegistrar;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/pushwoosh/internal/registrar/a;

    invoke-direct {v0}, Lcom/pushwoosh/internal/registrar/a;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/internal/specific/a;->a:Lcom/pushwoosh/internal/registrar/PushRegistrar;

    return-void
.end method


# virtual methods
.method public deviceType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public permission(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".permission.C2D_MESSAGE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public projectId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/pushwoosh/internal/platform/utils/GeneralUtils;->getSenderId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pushRegistrar()Lcom/pushwoosh/internal/registrar/PushRegistrar;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/internal/specific/a;->a:Lcom/pushwoosh/internal/registrar/PushRegistrar;

    return-object v0
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Android FCM"

    return-object v0
.end method
