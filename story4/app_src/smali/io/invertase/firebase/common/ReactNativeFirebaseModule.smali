.class public Lio/invertase/firebase/common/ReactNativeFirebaseModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "ReactNativeFirebaseModule.java"

# interfaces
.implements Lio/invertase/firebase/interfaces/ContextProvider;


# static fields
.field private static executors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private moduleName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/invertase/firebase/common/ReactNativeFirebaseModule;->executors:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 40
    iput-object p2, p0, Lio/invertase/firebase/common/ReactNativeFirebaseModule;->moduleName:Ljava/lang/String;

    return-void
.end method

.method public static rejectPromiseWithCodeAndMessage(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 48
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "code"

    .line 49
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "message"

    .line 50
    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-interface {p0, p1, p2, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public static rejectPromiseWithCodeAndMessage(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 60
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "code"

    .line 61
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "message"

    .line 62
    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "nativeErrorMessage"

    .line 63
    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-interface {p0, p1, p2, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public static rejectPromiseWithExceptionMap(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V
    .locals 1

    .line 44
    invoke-static {p1}, Lio/invertase/firebase/common/SharedUtils;->getExceptionMap(Ljava/lang/Exception;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getConstants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getContext()Lcom/facebook/react/bridge/ReactContext;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    return-object v0
.end method

.method public getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 3

    .line 77
    sget-object v0, Lio/invertase/firebase/common/ReactNativeFirebaseModule;->executors:Ljava/util/Map;

    invoke-virtual {p0}, Lio/invertase/firebase/common/ReactNativeFirebaseModule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    return-object v0

    .line 79
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 80
    sget-object v1, Lio/invertase/firebase/common/ReactNativeFirebaseModule;->executors:Ljava/util/Map;

    invoke-virtual {p0}, Lio/invertase/firebase/common/ReactNativeFirebaseModule;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RNFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/invertase/firebase/common/ReactNativeFirebaseModule;->moduleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Module"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/facebook/react/bridge/BaseJavaModule;->initialize()V

    return-void
.end method

.method public onCatalystInstanceDestroy()V
    .locals 2

    .line 86
    sget-object v0, Lio/invertase/firebase/common/ReactNativeFirebaseModule;->executors:Ljava/util/Map;

    invoke-virtual {p0}, Lio/invertase/firebase/common/ReactNativeFirebaseModule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 89
    sget-object v0, Lio/invertase/firebase/common/ReactNativeFirebaseModule;->executors:Ljava/util/Map;

    invoke-virtual {p0}, Lio/invertase/firebase/common/ReactNativeFirebaseModule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
