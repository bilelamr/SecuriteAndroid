.class public Lio/invertase/firebase/common/UniversalFirebaseModule;
.super Ljava/lang/Object;
.source "UniversalFirebaseModule.java"


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
.field private final context:Landroid/content/Context;

.field private final serviceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/invertase/firebase/common/UniversalFirebaseModule;->executors:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lio/invertase/firebase/common/UniversalFirebaseModule;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lio/invertase/firebase/common/UniversalFirebaseModule;->serviceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lio/invertase/firebase/common/UniversalFirebaseModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

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

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 41
    iget-object v0, p0, Lio/invertase/firebase/common/UniversalFirebaseModule;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 3

    .line 49
    sget-object v0, Lio/invertase/firebase/common/UniversalFirebaseModule;->executors:Ljava/util/Map;

    invoke-virtual {p0}, Lio/invertase/firebase/common/UniversalFirebaseModule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    return-object v0

    .line 51
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 52
    sget-object v1, Lio/invertase/firebase/common/UniversalFirebaseModule;->executors:Ljava/util/Map;

    invoke-virtual {p0}, Lio/invertase/firebase/common/UniversalFirebaseModule;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Universal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/invertase/firebase/common/UniversalFirebaseModule;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Module"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTearDown()V
    .locals 2

    .line 62
    sget-object v0, Lio/invertase/firebase/common/UniversalFirebaseModule;->executors:Ljava/util/Map;

    invoke-virtual {p0}, Lio/invertase/firebase/common/UniversalFirebaseModule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 65
    sget-object v0, Lio/invertase/firebase/common/UniversalFirebaseModule;->executors:Ljava/util/Map;

    invoke-virtual {p0}, Lio/invertase/firebase/common/UniversalFirebaseModule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
