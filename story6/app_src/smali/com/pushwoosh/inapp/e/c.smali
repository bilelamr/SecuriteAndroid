.class public Lcom/pushwoosh/inapp/e/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/pushwoosh/internal/network/RequestManager;

.field private final b:Lcom/pushwoosh/inapp/f/d;

.field private final c:Lcom/pushwoosh/inapp/e/a/c;

.field private final d:Lcom/pushwoosh/inapp/e/b;

.field private final e:Lcom/pushwoosh/inapp/c/b;

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final g:Lcom/pushwoosh/repository/RegistrationPrefs;


# direct methods
.method public constructor <init>(Lcom/pushwoosh/internal/network/RequestManager;Lcom/pushwoosh/inapp/f/d;Lcom/pushwoosh/inapp/e/a/c;Lcom/pushwoosh/inapp/c/b;Lcom/pushwoosh/inapp/f/c;Lcom/pushwoosh/repository/RegistrationPrefs;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/pushwoosh/inapp/e/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/pushwoosh/inapp/e/c;->a:Lcom/pushwoosh/internal/network/RequestManager;

    iput-object p2, p0, Lcom/pushwoosh/inapp/e/c;->b:Lcom/pushwoosh/inapp/f/d;

    iput-object p3, p0, Lcom/pushwoosh/inapp/e/c;->c:Lcom/pushwoosh/inapp/e/a/c;

    iput-object p4, p0, Lcom/pushwoosh/inapp/e/c;->e:Lcom/pushwoosh/inapp/c/b;

    iput-object p6, p0, Lcom/pushwoosh/inapp/e/c;->g:Lcom/pushwoosh/repository/RegistrationPrefs;

    new-instance p3, Lcom/pushwoosh/inapp/e/b;

    invoke-direct {p3, p2, p5}, Lcom/pushwoosh/inapp/e/b;-><init>(Lcom/pushwoosh/inapp/f/d;Lcom/pushwoosh/inapp/f/c;)V

    iput-object p3, p0, Lcom/pushwoosh/inapp/e/c;->d:Lcom/pushwoosh/inapp/e/b;

    const-class p2, Lcom/pushwoosh/inapp/view/d;

    invoke-static {p1}, Lcom/pushwoosh/inapp/e/d;->a(Lcom/pushwoosh/internal/network/RequestManager;)Lcom/pushwoosh/internal/event/EventListener;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/pushwoosh/internal/event/EventBus;->subscribe(Ljava/lang/Class;Lcom/pushwoosh/internal/event/EventListener;)Lcom/pushwoosh/internal/event/Subscription;

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/function/Result;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/pushwoosh/function/Result;->fromData(Ljava/lang/Object;)Lcom/pushwoosh/function/Result;

    move-result-object p1

    :goto_0
    invoke-interface {p0, p1}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/pushwoosh/exception/MergeUserException;

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/internal/network/NetworkException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/pushwoosh/exception/MergeUserException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pushwoosh/function/Result;->fromException(Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/inapp/e/b/b;[Lcom/pushwoosh/inapp/event/a$a;Ljava/util/concurrent/CountDownLatch;Lcom/pushwoosh/inapp/event/a;)V
    .locals 2

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/pushwoosh/inapp/event/a;->b()Lcom/pushwoosh/inapp/event/a$a;

    move-result-object v0

    sget-object v1, Lcom/pushwoosh/inapp/event/a$a;->d:Lcom/pushwoosh/inapp/event/a$a;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/pushwoosh/inapp/event/a;->b()Lcom/pushwoosh/inapp/event/a$a;

    move-result-object v0

    sget-object v1, Lcom/pushwoosh/inapp/event/a$a;->c:Lcom/pushwoosh/inapp/event/a$a;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/pushwoosh/inapp/event/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pushwoosh/inapp/e/b/b;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p3}, Lcom/pushwoosh/inapp/event/a;->b()Lcom/pushwoosh/inapp/event/a$a;

    move-result-object p3

    aput-object p3, p1, p0

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/internal/network/RequestManager;Lcom/pushwoosh/inapp/view/d;)V
    .locals 1

    new-instance v0, Lcom/pushwoosh/inapp/e/l;

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/view/d;->a()Lcom/pushwoosh/inapp/e/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/pushwoosh/inapp/e/l;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/pushwoosh/internal/network/RequestManager;->sendRequest(Lcom/pushwoosh/internal/network/PushRequest;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pushwoosh/inapp/e/b/b;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/inapp/e/b/b;

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/e/b/b;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/pushwoosh/inapp/e/c;->g:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->gdprEnable()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->set(Z)V

    return-void
.end method

.method private b(Ljava/util/List;)Lcom/pushwoosh/inapp/e/a/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pushwoosh/inapp/e/b/b;",
            ">;)",
            "Lcom/pushwoosh/inapp/e/a/a;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pushwoosh/inapp/e/b/b;

    iget-object v2, p0, Lcom/pushwoosh/inapp/e/c;->d:Lcom/pushwoosh/inapp/e/b;

    invoke-virtual {v2, v1}, Lcom/pushwoosh/inapp/e/b;->a(Lcom/pushwoosh/inapp/e/b/b;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/pushwoosh/inapp/e/a/a;->a()Lcom/pushwoosh/inapp/e/a/a;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/pushwoosh/inapp/e/c;->c:Lcom/pushwoosh/inapp/e/a/c;

    invoke-virtual {p1, v0}, Lcom/pushwoosh/inapp/e/a/c;->a(Ljava/util/List;)Lcom/pushwoosh/inapp/e/a/a;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/function/Result;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/inapp/e/j;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/e/j;->a()Lcom/pushwoosh/inapp/e/b/b;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/e/j;->c()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/pushwoosh/inapp/e/b/b;

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/e/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/e/j;->c()Z

    move-result v0

    invoke-direct {p1, v1, v0}, Lcom/pushwoosh/inapp/e/b/b;-><init>(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/pushwoosh/inapp/e/j;->a()Lcom/pushwoosh/inapp/e/b/b;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Lcom/pushwoosh/function/Result;->fromData(Ljava/lang/Object;)Lcom/pushwoosh/function/Result;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/internal/network/NetworkException;

    if-nez p1, :cond_4

    return-void

    :cond_4
    new-instance v0, Lcom/pushwoosh/exception/PostEventException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pushwoosh/exception/PostEventException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pushwoosh/function/Result;->fromException(Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[InApp]InAppRepository"

    invoke-static {v0, p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private b(Lcom/pushwoosh/inapp/e/b/b;)Z
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inapp/e/c;->d:Lcom/pushwoosh/inapp/e/b;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inapp/e/b;->a(Lcom/pushwoosh/inapp/e/b/b;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pushwoosh/inapp/e/c;->c:Lcom/pushwoosh/inapp/e/a/c;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inapp/e/a/c;->a(Lcom/pushwoosh/inapp/e/b/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/pushwoosh/inapp/e/c;->c(Lcom/pushwoosh/inapp/e/b/b;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/inapp/e/c;->c:Lcom/pushwoosh/inapp/e/a/c;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inapp/e/a/c;->a(Ljava/util/List;)Lcom/pushwoosh/inapp/e/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/a/a;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_1
    return v1
.end method

.method private c(Lcom/pushwoosh/inapp/e/b/b;)Z
    .locals 4

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v1, v1, [Lcom/pushwoosh/inapp/event/a$a;

    sget-object v2, Lcom/pushwoosh/inapp/event/a$a;->d:Lcom/pushwoosh/inapp/event/a$a;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lcom/pushwoosh/inapp/event/a;

    invoke-static {p1, v1, v0}, Lcom/pushwoosh/inapp/e/e;->a(Lcom/pushwoosh/inapp/e/b/b;[Lcom/pushwoosh/inapp/event/a$a;Ljava/util/concurrent/CountDownLatch;)Lcom/pushwoosh/internal/event/EventListener;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/pushwoosh/internal/event/EventBus;->subscribe(Ljava/lang/Class;Lcom/pushwoosh/internal/event/EventListener;)Lcom/pushwoosh/internal/event/Subscription;

    move-result-object p1

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    invoke-virtual {p1}, Lcom/pushwoosh/internal/event/Subscription;->unsubscribe()V

    aget-object p1, v1, v3

    sget-object v0, Lcom/pushwoosh/inapp/event/a$a;->c:Lcom/pushwoosh/inapp/event/a$a;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "Deploy interrupted"

    invoke-static {v0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/e/c;->a:Lcom/pushwoosh/internal/network/RequestManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/pushwoosh/internal/network/NetworkModule;->getRequestManager()Lcom/pushwoosh/internal/network/RequestManager;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inapp/e/c;->a:Lcom/pushwoosh/internal/network/RequestManager;

    iget-object v0, p0, Lcom/pushwoosh/inapp/e/c;->a:Lcom/pushwoosh/internal/network/RequestManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private e()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Wait until getInApps finished"

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/pushwoosh/inapp/e/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    const-wide/16 v1, 0xc8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/inapp/e/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "InApp wait timeout"

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public a()Lcom/pushwoosh/function/Result;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pushwoosh/function/Result<",
            "Ljava/lang/Void;",
            "Lcom/pushwoosh/internal/network/NetworkException;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Lcom/pushwoosh/inapp/e/a;

    invoke-direct {v1}, Lcom/pushwoosh/inapp/e/a;-><init>()V

    invoke-direct {p0}, Lcom/pushwoosh/inapp/e/c;->d()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/pushwoosh/inapp/e/c;->a:Lcom/pushwoosh/internal/network/RequestManager;

    if-nez v2, :cond_0

    goto :goto_4

    :cond_0
    iget-object v2, p0, Lcom/pushwoosh/inapp/e/c;->a:Lcom/pushwoosh/internal/network/RequestManager;

    invoke-interface {v2, v1}, Lcom/pushwoosh/internal/network/RequestManager;->sendRequestSync(Lcom/pushwoosh/internal/network/PushRequest;)Lcom/pushwoosh/function/Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/function/Result;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/pushwoosh/function/Result;->fromException(Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v2, p0, Lcom/pushwoosh/inapp/e/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object v1

    :cond_1
    const/4 v1, 0x0

    if-eqz v2, :cond_4

    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/pushwoosh/inapp/e/c;->b:Lcom/pushwoosh/inapp/f/d;

    invoke-interface {v4, v2}, Lcom/pushwoosh/inapp/f/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v2}, Lcom/pushwoosh/inapp/a/i;->a(Ljava/util/List;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/pushwoosh/inapp/e/c;->c:Lcom/pushwoosh/inapp/e/a/c;

    invoke-virtual {v5, v4}, Lcom/pushwoosh/inapp/e/a/c;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-direct {p0, v2}, Lcom/pushwoosh/inapp/e/c;->a(Ljava/util/List;)V

    invoke-direct {p0, v2}, Lcom/pushwoosh/inapp/e/c;->b(Ljava/util/List;)Lcom/pushwoosh/inapp/e/a/a;

    :cond_4
    :goto_3
    invoke-static {v1}, Lcom/pushwoosh/function/Result;->fromData(Ljava/lang/Object;)Lcom/pushwoosh/function/Result;

    move-result-object v1

    goto :goto_1

    :cond_5
    :goto_4
    new-instance v1, Lcom/pushwoosh/internal/network/NetworkException;

    const-string v2, "Request Manager is null"

    invoke-direct {v1, v2}, Lcom/pushwoosh/internal/network/NetworkException;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/pushwoosh/inapp/e/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method

.method public a(Lcom/pushwoosh/inapp/e/b/b;)Lcom/pushwoosh/function/Result;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/inapp/e/b/b;",
            ")",
            "Lcom/pushwoosh/function/Result<",
            "Lcom/pushwoosh/inapp/d/a;",
            "Lcom/pushwoosh/inapp/b/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mapToHtmlData for resource "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " inApp is required: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " inAppLoaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pushwoosh/inapp/e/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->i()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/pushwoosh/inapp/e/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/pushwoosh/inapp/e/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/inapp/e/c;->b:Lcom/pushwoosh/inapp/f/d;

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/pushwoosh/inapp/f/d;->a(Ljava/lang/String;)Lcom/pushwoosh/inapp/e/b/b;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/pushwoosh/inapp/b/a;

    const-string v3, "Rich media with code %s does not exist."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/pushwoosh/inapp/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pushwoosh/function/Result;->fromException(Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    new-instance v3, Lcom/pushwoosh/inapp/b/a;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->a()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "Can\'t download or update richMedia: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v0}, Lcom/pushwoosh/inapp/b/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/pushwoosh/function/Result;->fromException(Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/pushwoosh/inapp/e/c;->d:Lcom/pushwoosh/inapp/e/b;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inapp/e/b;->a(Lcom/pushwoosh/inapp/e/b/b;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/pushwoosh/inapp/e/c;->b(Lcom/pushwoosh/inapp/e/b/b;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/pushwoosh/inapp/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t download or update richMedia: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/pushwoosh/inapp/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pushwoosh/function/Result;->fromException(Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object p1

    return-object p1

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/pushwoosh/inapp/e/c;->e:Lcom/pushwoosh/inapp/c/b;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inapp/c/b;->a(Lcom/pushwoosh/inapp/e/b/b;)Lcom/pushwoosh/inapp/d/a;

    move-result-object v0

    invoke-static {v0}, Lcom/pushwoosh/function/Result;->fromData(Ljava/lang/Object;)Lcom/pushwoosh/function/Result;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception v0

    new-instance v3, Lcom/pushwoosh/inapp/b/a;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->a()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "Can\'t mapping resource %s to htmlData"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v0}, Lcom/pushwoosh/inapp/b/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/pushwoosh/function/Result;->fromException(Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/pushwoosh/inapp/e/k;

    invoke-direct {v0, p1}, Lcom/pushwoosh/inapp/e/k;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/pushwoosh/inapp/e/c;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/pushwoosh/inapp/e/c;->a:Lcom/pushwoosh/internal/network/RequestManager;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/pushwoosh/function/a;

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRequestStorage()Lcom/pushwoosh/internal/network/f;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/pushwoosh/function/a;-><init>(Lcom/pushwoosh/internal/network/PushRequest;Lcom/pushwoosh/internal/network/f;)V

    invoke-interface {p1, v0, v1}, Lcom/pushwoosh/internal/network/RequestManager;->sendRequest(Lcom/pushwoosh/internal/network/PushRequest;Lcom/pushwoosh/function/Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/pushwoosh/tags/TagsBundle;Lcom/pushwoosh/function/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pushwoosh/tags/TagsBundle;",
            "Lcom/pushwoosh/function/Callback<",
            "Lcom/pushwoosh/inapp/e/b/b;",
            "Lcom/pushwoosh/exception/PostEventException;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->h()Lcom/pushwoosh/repository/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/s;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/pushwoosh/inapp/e/i;

    invoke-direct {v1, p1, v0, p2}, Lcom/pushwoosh/inapp/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pushwoosh/tags/TagsBundle;)V

    invoke-direct {p0}, Lcom/pushwoosh/inapp/e/c;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/pushwoosh/inapp/e/c;->a:Lcom/pushwoosh/internal/network/RequestManager;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/pushwoosh/inapp/e/f;->a(Lcom/pushwoosh/function/Callback;)Lcom/pushwoosh/function/Callback;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lcom/pushwoosh/internal/network/RequestManager;->sendRequest(Lcom/pushwoosh/internal/network/PushRequest;Lcom/pushwoosh/function/Callback;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    new-instance p1, Lcom/pushwoosh/exception/PostEventException;

    const-string p2, "Request Manager is null"

    invoke-direct {p1, p2}, Lcom/pushwoosh/exception/PostEventException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/pushwoosh/function/Result;->fromException(Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZLcom/pushwoosh/function/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/lang/Void;",
            "Lcom/pushwoosh/exception/MergeUserException;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/pushwoosh/inapp/e/h;

    invoke-direct {v0, p1, p2, p3}, Lcom/pushwoosh/inapp/e/h;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/pushwoosh/inapp/e/c;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/pushwoosh/inapp/e/c;->a:Lcom/pushwoosh/internal/network/RequestManager;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lcom/pushwoosh/inapp/e/g;->a(Lcom/pushwoosh/function/Callback;)Lcom/pushwoosh/function/Callback;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/pushwoosh/internal/network/RequestManager;->sendRequest(Lcom/pushwoosh/internal/network/PushRequest;Lcom/pushwoosh/function/Callback;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    new-instance p1, Lcom/pushwoosh/exception/MergeUserException;

    const-string p2, "Request Manager is null"

    invoke-direct {p1, p2}, Lcom/pushwoosh/exception/MergeUserException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/pushwoosh/function/Result;->fromException(Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    :cond_2
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/pushwoosh/function/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/pushwoosh/function/Result<",
            "Lcom/pushwoosh/inapp/e/b/b;",
            "Lcom/pushwoosh/inapp/b/a;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/pushwoosh/inapp/e/b/b;->a(Ljava/lang/String;)Lcom/pushwoosh/inapp/e/b/b;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pushwoosh/inapp/e/c;->b(Lcom/pushwoosh/inapp/e/b/b;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/pushwoosh/inapp/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t download or update richMedia: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/pushwoosh/inapp/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pushwoosh/function/Result;->fromException(Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/pushwoosh/function/Result;->fromData(Ljava/lang/Object;)Lcom/pushwoosh/function/Result;

    move-result-object p1
    :try_end_0
    .catch Lcom/pushwoosh/inapp/b/a; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/pushwoosh/function/Result;->fromException(Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/pushwoosh/inapp/e/b/b;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/e/c;->b:Lcom/pushwoosh/inapp/f/d;

    invoke-interface {v0}, Lcom/pushwoosh/inapp/f/d;->a()Lcom/pushwoosh/inapp/e/b/b;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/pushwoosh/inapp/e/b/b;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/e/c;->b:Lcom/pushwoosh/inapp/f/d;

    invoke-interface {v0}, Lcom/pushwoosh/inapp/f/d;->b()Lcom/pushwoosh/inapp/e/b/b;

    move-result-object v0

    return-object v0
.end method
