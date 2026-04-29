.class Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$RegisterForPushNotificationCallback;
.super Ljava/lang/Object;
.source "PushwooshPlugin.java"

# interfaces
.implements Lcom/pushwoosh/function/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisterForPushNotificationCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pushwoosh/function/Callback<",
        "Ljava/lang/String;",
        "Lcom/pushwoosh/exception/RegisterForPushNotificationsException;",
        ">;"
    }
.end annotation


# instance fields
.field private error:Lcom/facebook/react/bridge/Callback;

.field private success:Lcom/facebook/react/bridge/Callback;

.field final synthetic this$0:Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;


# direct methods
.method public constructor <init>(Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$RegisterForPushNotificationCallback;->this$0:Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iput-object p2, p0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$RegisterForPushNotificationCallback;->success:Lcom/facebook/react/bridge/Callback;

    .line 486
    iput-object p3, p0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$RegisterForPushNotificationCallback;->error:Lcom/facebook/react/bridge/Callback;

    return-void
.end method


# virtual methods
.method public process(Lcom/pushwoosh/function/Result;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Result<",
            "Ljava/lang/String;",
            "Lcom/pushwoosh/exception/RegisterForPushNotificationsException;",
            ">;)V"
        }
    .end annotation

    .line 491
    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$RegisterForPushNotificationCallback;->success:Lcom/facebook/react/bridge/Callback;

    if-eqz v0, :cond_1

    new-array v3, v3, [Ljava/lang/Object;

    .line 493
    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 494
    iput-object v1, p0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$RegisterForPushNotificationCallback;->success:Lcom/facebook/react/bridge/Callback;

    goto :goto_0

    .line 496
    :cond_0
    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$RegisterForPushNotificationCallback;->error:Lcom/facebook/react/bridge/Callback;

    if-eqz v0, :cond_1

    new-array v3, v3, [Ljava/lang/Object;

    .line 498
    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/exception/RegisterForPushNotificationsException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 499
    iput-object v1, p0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$RegisterForPushNotificationCallback;->error:Lcom/facebook/react/bridge/Callback;

    :cond_1
    :goto_0
    return-void
.end method
