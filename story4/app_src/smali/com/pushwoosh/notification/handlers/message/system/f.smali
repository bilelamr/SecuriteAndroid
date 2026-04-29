.class Lcom/pushwoosh/notification/handlers/message/system/f;
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
.method public preHandleMessage(Landroid/os/Bundle;)Z
    .locals 0

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->b(Landroid/os/Bundle;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
