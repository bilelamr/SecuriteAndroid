.class Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$3;
.super Ljava/lang/Object;
.source "PushwooshPlugin.java"

# interfaces
.implements Lcom/pushwoosh/function/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->getTags(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pushwoosh/function/Callback<",
        "Lcom/pushwoosh/tags/TagsBundle;",
        "Lcom/pushwoosh/exception/GetTagsException;",
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

    .line 188
    iput-object p1, p0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$3;->this$0:Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;

    iput-object p2, p0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$3;->val$success:Lcom/facebook/react/bridge/Callback;

    iput-object p3, p0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$3;->val$error:Lcom/facebook/react/bridge/Callback;

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
            "Lcom/pushwoosh/tags/TagsBundle;",
            "Lcom/pushwoosh/exception/GetTagsException;",
            ">;)V"
        }
    .end annotation

    .line 191
    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$3;->val$success:Lcom/facebook/react/bridge/Callback;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$3;->val$success:Lcom/facebook/react/bridge/Callback;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/tags/TagsBundle;

    invoke-virtual {p1}, Lcom/pushwoosh/tags/TagsBundle;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/pushwoosh/reactnativeplugin/ConversionUtil;->toWritableMap(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$3;->val$error:Lcom/facebook/react/bridge/Callback;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$3;->val$error:Lcom/facebook/react/bridge/Callback;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/exception/GetTagsException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
