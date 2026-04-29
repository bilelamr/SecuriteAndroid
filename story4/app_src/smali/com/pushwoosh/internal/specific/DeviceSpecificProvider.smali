.class public Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/internal/specific/DeviceSpecificProvider$Builder;
    }
.end annotation


# static fields
.field private static a:Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;


# instance fields
.field private final b:Lcom/pushwoosh/internal/specific/DeviceSpecific;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/internal/specific/DeviceSpecific;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;->b:Lcom/pushwoosh/internal/specific/DeviceSpecific;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pushwoosh/internal/specific/DeviceSpecific;Lcom/pushwoosh/internal/specific/DeviceSpecificProvider$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;-><init>(Lcom/pushwoosh/internal/specific/DeviceSpecific;)V

    return-void
.end method

.method static synthetic a()Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;->a:Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;

    return-object v0
.end method

.method static synthetic a(Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;)Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;
    .locals 0

    sput-object p0, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;->a:Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;

    return-object p0
.end method

.method public static getInstance()Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;->a:Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;

    return-object v0
.end method

.method public static isInited()Z
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;->a:Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public deviceType()I
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;->b:Lcom/pushwoosh/internal/specific/DeviceSpecific;

    invoke-interface {v0}, Lcom/pushwoosh/internal/specific/DeviceSpecific;->deviceType()I

    move-result v0

    return v0
.end method

.method public isFirebase()Z
    .locals 2

    invoke-virtual {p0}, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;->type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Android FCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public permission(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;->b:Lcom/pushwoosh/internal/specific/DeviceSpecific;

    invoke-interface {v0, p1}, Lcom/pushwoosh/internal/specific/DeviceSpecific;->permission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public projectId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;->b:Lcom/pushwoosh/internal/specific/DeviceSpecific;

    invoke-interface {v0}, Lcom/pushwoosh/internal/specific/DeviceSpecific;->projectId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pushRegistrar()Lcom/pushwoosh/internal/registrar/PushRegistrar;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;->b:Lcom/pushwoosh/internal/specific/DeviceSpecific;

    invoke-interface {v0}, Lcom/pushwoosh/internal/specific/DeviceSpecific;->pushRegistrar()Lcom/pushwoosh/internal/registrar/PushRegistrar;

    move-result-object v0

    return-object v0
.end method

.method public type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;->b:Lcom/pushwoosh/internal/specific/DeviceSpecific;

    invoke-interface {v0}, Lcom/pushwoosh/internal/specific/DeviceSpecific;->type()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
