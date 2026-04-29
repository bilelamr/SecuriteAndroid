.class public interface abstract Lcom/pushwoosh/internal/network/RequestManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract sendRequest(Lcom/pushwoosh/internal/network/PushRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Response:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/pushwoosh/internal/network/PushRequest<",
            "TResponse;>;)V"
        }
    .end annotation
.end method

.method public abstract sendRequest(Lcom/pushwoosh/internal/network/PushRequest;Lcom/pushwoosh/function/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Response:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/pushwoosh/internal/network/PushRequest<",
            "TResponse;>;",
            "Lcom/pushwoosh/function/Callback<",
            "TResponse;",
            "Lcom/pushwoosh/internal/network/NetworkException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendRequest(Lcom/pushwoosh/internal/network/PushRequest;Ljava/lang/String;Lcom/pushwoosh/function/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Response:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/pushwoosh/internal/network/PushRequest<",
            "TResponse;>;",
            "Ljava/lang/String;",
            "Lcom/pushwoosh/function/Callback<",
            "TResponse;",
            "Lcom/pushwoosh/internal/network/NetworkException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendRequestSync(Lcom/pushwoosh/internal/network/PushRequest;)Lcom/pushwoosh/function/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Response:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/pushwoosh/internal/network/PushRequest<",
            "TResponse;>;)",
            "Lcom/pushwoosh/function/Result<",
            "TResponse;",
            "Lcom/pushwoosh/internal/network/NetworkException;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateBaseUrl(Ljava/lang/String;)V
.end method
