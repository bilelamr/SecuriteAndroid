.class public Lcom/pushwoosh/reactnativeplugin/EventDispatcher;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# instance fields
.field private subscribers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/Callback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/reactnativeplugin/EventDispatcher;->subscribers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public varargs dispatchEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/pushwoosh/reactnativeplugin/EventDispatcher;->subscribers:Ljava/util/Map;

    monitor-enter v0

    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/pushwoosh/reactnativeplugin/EventDispatcher;->subscribers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    monitor-exit v0

    return-void

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/pushwoosh/reactnativeplugin/EventDispatcher;->subscribers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/bridge/Callback;

    .line 40
    invoke-interface {v2, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 44
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 45
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public sendJSEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 1

    .line 49
    const-class v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 50
    invoke-interface {p1, p2, p3}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public subscribe(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/reactnativeplugin/EventDispatcher;->subscribers:Ljava/util/Map;

    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/pushwoosh/reactnativeplugin/EventDispatcher;->subscribers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 24
    iget-object v1, p0, Lcom/pushwoosh/reactnativeplugin/EventDispatcher;->subscribers:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/pushwoosh/reactnativeplugin/EventDispatcher;->subscribers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 28
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
