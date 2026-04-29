.class public Lcom/pushwoosh/internal/specific/DeviceSpecificProvider$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/pushwoosh/internal/specific/DeviceSpecific;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Z)Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider$Builder;->a:Lcom/pushwoosh/internal/specific/DeviceSpecific;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;->a()Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    new-instance p1, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;

    iget-object v0, p0, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider$Builder;->a:Lcom/pushwoosh/internal/specific/DeviceSpecific;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;-><init>(Lcom/pushwoosh/internal/specific/DeviceSpecific;Lcom/pushwoosh/internal/specific/DeviceSpecificProvider$1;)V

    invoke-static {p1}, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;->a(Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;)Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;

    :cond_1
    invoke-static {}, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;->a()Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must setup deviceSpecific"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDeviceSpecific(Lcom/pushwoosh/internal/specific/DeviceSpecific;)Lcom/pushwoosh/internal/specific/DeviceSpecificProvider$Builder;
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider$Builder;->a:Lcom/pushwoosh/internal/specific/DeviceSpecific;

    return-object p0
.end method
