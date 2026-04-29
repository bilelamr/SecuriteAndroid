.class public final Lcom/pushwoosh/amazon/a/b/b;
.super Ljava/lang/Object;


# direct methods
.method public static a()Lcom/pushwoosh/internal/specific/DeviceSpecific;
    .locals 1

    invoke-static {}, Lcom/pushwoosh/amazon/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/pushwoosh/amazon/a/b/a;

    invoke-direct {v0}, Lcom/pushwoosh/amazon/a/b/a;-><init>()V

    return-object v0

    :cond_0
    invoke-static {}, Lcom/pushwoosh/internal/specific/FcmDeviceSpecificIniter;->create()Lcom/pushwoosh/internal/specific/DeviceSpecific;

    move-result-object v0

    return-object v0
.end method
