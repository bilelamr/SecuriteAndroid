.class final Lcom/pushwoosh/PluginAPI;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleTokenRefresh()V
    .locals 2

    invoke-static {}, Lcom/pushwoosh/internal/utils/NotificationRegistrarHelper;->clearToken()V

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->g()Lcom/pushwoosh/notification/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pushwoosh/notification/e;->a(Lcom/pushwoosh/function/Callback;)V

    :cond_0
    return-void
.end method
