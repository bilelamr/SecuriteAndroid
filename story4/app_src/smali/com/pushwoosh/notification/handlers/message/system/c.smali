.class abstract Lcom/pushwoosh/notification/handlers/message/system/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/os/Bundle;Ljava/lang/String;)Z
.end method

.method public final preHandleMessage(Landroid/os/Bundle;)Z
    .locals 1

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->c(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->d(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/pushwoosh/notification/handlers/message/system/c;->a(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
