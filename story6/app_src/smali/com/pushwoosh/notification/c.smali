.class public Lcom/pushwoosh/notification/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Lcom/pushwoosh/notification/PushMessage;
    .locals 1

    new-instance v0, Lcom/pushwoosh/notification/PushMessage;

    invoke-direct {v0, p1}, Lcom/pushwoosh/notification/PushMessage;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method
