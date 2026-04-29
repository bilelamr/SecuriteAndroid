.class Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$6;
.super Ljava/lang/Object;
.source "PushwooshPlugin.java"

# interfaces
.implements Lcom/pushwoosh/function/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->getUnReadMessagesCount(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pushwoosh/function/Callback<",
        "Ljava/lang/Integer;",
        "Lcom/pushwoosh/inbox/exception/InboxMessagesException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;

.field final synthetic val$error:Lcom/facebook/react/bridge/Callback;

.field final synthetic val$success:Lcom/facebook/react/bridge/Callback;


# direct methods
.method constructor <init>(Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$6;->this$0:Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;

    iput-object p2, p0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$6;->val$success:Lcom/facebook/react/bridge/Callback;

    iput-object p3, p0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$6;->val$error:Lcom/facebook/react/bridge/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/pushwoosh/function/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Result<",
            "Ljava/lang/Integer;",
            "Lcom/pushwoosh/inbox/exception/InboxMessagesException;",
            ">;)V"
        }
    .end annotation

    .line 395
    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$6;->val$success:Lcom/facebook/react/bridge/Callback;

    if-eqz v0, :cond_1

    new-array v2, v2, [Ljava/lang/Object;

    .line 397
    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$6;->val$error:Lcom/facebook/react/bridge/Callback;

    if-eqz v0, :cond_1

    new-array v2, v2, [Ljava/lang/Object;

    .line 401
    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/inbox/exception/InboxMessagesException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
