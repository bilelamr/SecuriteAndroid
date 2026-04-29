.class public Lcom/pushwoosh/GDPRManager;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "GDPRManager"


# instance fields
.field private a:Lcom/pushwoosh/repository/s;

.field private b:Lcom/pushwoosh/notification/e;

.field private c:Lcom/pushwoosh/inapp/c;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/pushwoosh/repository/s;Lcom/pushwoosh/notification/e;Lcom/pushwoosh/inapp/c;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "Application Version"

    const-string v2, "Language"

    const-string v3, "Last Application Open"

    const-string v4, "First Install"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/pushwoosh/GDPRManager;->d:Ljava/util/Set;

    iput-object p1, p0, Lcom/pushwoosh/GDPRManager;->a:Lcom/pushwoosh/repository/s;

    iput-object p2, p0, Lcom/pushwoosh/GDPRManager;->b:Lcom/pushwoosh/notification/e;

    iput-object p3, p0, Lcom/pushwoosh/GDPRManager;->c:Lcom/pushwoosh/inapp/c;

    return-void
.end method

.method private a(Lcom/pushwoosh/tags/TagsBundle;)Lcom/pushwoosh/tags/TagsBundle;
    .locals 3

    new-instance v0, Lcom/pushwoosh/tags/TagsBundle$Builder;

    invoke-direct {v0}, Lcom/pushwoosh/tags/TagsBundle$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/pushwoosh/tags/TagsBundle;->getMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pushwoosh/tags/TagsBundle$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/pushwoosh/tags/TagsBundle$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/pushwoosh/tags/TagsBundle$Builder;->build()Lcom/pushwoosh/tags/TagsBundle;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/pushwoosh/GDPRManager;Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/function/Result;)V
    .locals 1

    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/pushwoosh/GDPRManager;->a(Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/exception/PushwooshException;)V

    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/pushwoosh/GDPRManager;->a:Lcom/pushwoosh/repository/s;

    invoke-virtual {p0}, Lcom/pushwoosh/repository/s;->h()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/GDPRManager;ZLcom/pushwoosh/function/Callback;Lcom/pushwoosh/function/Result;)V
    .locals 0

    invoke-direct {p0, p1, p3, p2}, Lcom/pushwoosh/GDPRManager;->a(ZLcom/pushwoosh/function/Result;Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method private a(Lcom/pushwoosh/function/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/lang/Void;",
            "Lcom/pushwoosh/exception/PushwooshException;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/pushwoosh/GDPRManager;->TAG:Ljava/lang/String;

    const-string v1, "The GDPR solution isn\u2019t available for this account"

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/pushwoosh/exception/PushwooshException;

    invoke-direct {v0, v1}, Lcom/pushwoosh/exception/PushwooshException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pushwoosh/function/Result;->fromException(Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    return-void
.end method

.method private a(Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/exception/PushwooshException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/lang/Void;",
            "Lcom/pushwoosh/exception/PushwooshException;",
            ">;",
            "Lcom/pushwoosh/exception/PushwooshException;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/pushwoosh/function/Result;->fromException(Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    invoke-static {p2}, Lcom/pushwoosh/function/Result;->fromData(Ljava/lang/Object;)Lcom/pushwoosh/function/Result;

    move-result-object p2

    :goto_0
    invoke-interface {p1, p2}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    return-void
.end method

.method private a(Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/function/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/lang/Void;",
            "Lcom/pushwoosh/exception/PushwooshException;",
            ">;",
            "Lcom/pushwoosh/function/Result<",
            "Lcom/pushwoosh/tags/TagsBundle;",
            "Lcom/pushwoosh/exception/GetTagsException;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/pushwoosh/tags/TagsBundle;

    invoke-direct {p0, p2}, Lcom/pushwoosh/GDPRManager;->a(Lcom/pushwoosh/tags/TagsBundle;)Lcom/pushwoosh/tags/TagsBundle;

    move-result-object p2

    iget-object v0, p0, Lcom/pushwoosh/GDPRManager;->a:Lcom/pushwoosh/repository/s;

    invoke-static {p0, p1}, Lcom/pushwoosh/h;->a(Lcom/pushwoosh/GDPRManager;Lcom/pushwoosh/function/Callback;)Lcom/pushwoosh/function/Callback;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/pushwoosh/repository/s;->a(Lcom/pushwoosh/tags/TagsBundle;Lcom/pushwoosh/function/Callback;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p2

    invoke-static {p2}, Lcom/pushwoosh/function/Result;->fromException(Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lcom/pushwoosh/function/Result;Lcom/pushwoosh/function/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Result<",
            "Ljava/lang/Void;",
            "Lcom/pushwoosh/exception/PostEventException;",
            ">;",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/lang/Void;",
            "Lcom/pushwoosh/exception/PushwooshException;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/pushwoosh/GDPRManager;->a:Lcom/pushwoosh/repository/s;

    invoke-static {p0, p2}, Lcom/pushwoosh/g;->a(Lcom/pushwoosh/GDPRManager;Lcom/pushwoosh/function/Callback;)Lcom/pushwoosh/function/Callback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/pushwoosh/repository/s;->a(Lcom/pushwoosh/function/Callback;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object v0

    invoke-static {v0}, Lcom/pushwoosh/function/Result;->fromException(Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    :cond_1
    sget-object p2, Lcom/pushwoosh/GDPRManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p1

    const-string v0, "cant remove all device data"

    invoke-static {p2, v0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private a(ZLcom/pushwoosh/function/Result;Lcom/pushwoosh/function/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/pushwoosh/function/Result<",
            "Ljava/lang/Void;",
            "Lcom/pushwoosh/exception/PostEventException;",
            ">;",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/lang/Void;",
            "Lcom/pushwoosh/exception/PushwooshException;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/pushwoosh/GDPRManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cant set Communication Enable to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p1

    invoke-static {p1}, Lcom/pushwoosh/function/Result;->fromException(Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    :cond_0
    return-void

    :cond_1
    iget-object p2, p0, Lcom/pushwoosh/GDPRManager;->a:Lcom/pushwoosh/repository/s;

    invoke-virtual {p2, p1}, Lcom/pushwoosh/repository/s;->a(Z)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/pushwoosh/GDPRManager;->b:Lcom/pushwoosh/notification/e;

    invoke-static {p0, p3}, Lcom/pushwoosh/d;->a(Lcom/pushwoosh/GDPRManager;Lcom/pushwoosh/function/Callback;)Lcom/pushwoosh/function/Callback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/pushwoosh/notification/e;->a(Lcom/pushwoosh/function/Callback;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/pushwoosh/GDPRManager;->b:Lcom/pushwoosh/notification/e;

    invoke-static {p0, p3}, Lcom/pushwoosh/e;->a(Lcom/pushwoosh/GDPRManager;Lcom/pushwoosh/function/Callback;)Lcom/pushwoosh/function/Callback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/pushwoosh/notification/e;->b(Lcom/pushwoosh/function/Callback;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/pushwoosh/GDPRManager;Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/function/Result;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/pushwoosh/GDPRManager;->b(Lcom/pushwoosh/function/Result;Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method private b(Lcom/pushwoosh/function/Result;Lcom/pushwoosh/function/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Result<",
            "Ljava/lang/Void;",
            "Lcom/pushwoosh/exception/PushwooshException;",
            ">;",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/lang/Void;",
            "Lcom/pushwoosh/exception/PushwooshException;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/pushwoosh/GDPRManager;->b:Lcom/pushwoosh/notification/e;

    invoke-static {p0, p2}, Lcom/pushwoosh/i;->a(Lcom/pushwoosh/GDPRManager;Lcom/pushwoosh/function/Callback;)Lcom/pushwoosh/function/Callback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/pushwoosh/notification/e;->b(Lcom/pushwoosh/function/Callback;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/pushwoosh/GDPRManager;Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/function/Result;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pushwoosh/GDPRManager;->a(Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/function/Result;)V

    return-void
.end method

.method static synthetic d(Lcom/pushwoosh/GDPRManager;Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/function/Result;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/pushwoosh/GDPRManager;->a(Lcom/pushwoosh/function/Result;Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method static synthetic e(Lcom/pushwoosh/GDPRManager;Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/function/Result;)V
    .locals 0

    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/pushwoosh/GDPRManager;->a(Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/exception/PushwooshException;)V

    return-void
.end method

.method static synthetic f(Lcom/pushwoosh/GDPRManager;Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/function/Result;)V
    .locals 0

    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/pushwoosh/GDPRManager;->a(Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/exception/PushwooshException;)V

    return-void
.end method

.method public static getInstance()Lcom/pushwoosh/GDPRManager;
    .locals 1

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->l()Lcom/pushwoosh/GDPRManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isAvailable()Z
    .locals 2

    sget-object v0, Lcom/pushwoosh/GDPRManager;->TAG:Ljava/lang/String;

    const-string v1, "isAvailable"

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pushwoosh/GDPRManager;->a:Lcom/pushwoosh/repository/s;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/s;->k()Z

    move-result v0

    return v0
.end method

.method public isCommunicationEnabled()Z
    .locals 2

    sget-object v0, Lcom/pushwoosh/GDPRManager;->TAG:Ljava/lang/String;

    const-string v1, "isCommunicationEnabled"

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pushwoosh/GDPRManager;->a:Lcom/pushwoosh/repository/s;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/s;->j()Z

    move-result v0

    return v0
.end method

.method public isDeviceDataRemoved()Z
    .locals 2

    sget-object v0, Lcom/pushwoosh/GDPRManager;->TAG:Ljava/lang/String;

    const-string v1, "isDeviceDataRemoved"

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pushwoosh/GDPRManager;->a:Lcom/pushwoosh/repository/s;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/s;->i()Z

    move-result v0

    return v0
.end method

.method public removeAllDeviceData(Lcom/pushwoosh/function/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/lang/Void;",
            "Lcom/pushwoosh/exception/PushwooshException;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/pushwoosh/GDPRManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/pushwoosh/GDPRManager;->a(Lcom/pushwoosh/function/Callback;)V

    return-void

    :cond_0
    new-instance v0, Lcom/pushwoosh/tags/TagsBundle$Builder;

    invoke-direct {v0}, Lcom/pushwoosh/tags/TagsBundle$Builder;-><init>()V

    const/4 v1, 0x1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lcom/pushwoosh/tags/TagsBundle$Builder;->putBoolean(Ljava/lang/String;Z)Lcom/pushwoosh/tags/TagsBundle$Builder;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "device_type"

    invoke-virtual {v0, v2, v1}, Lcom/pushwoosh/tags/TagsBundle$Builder;->putInt(Ljava/lang/String;I)Lcom/pushwoosh/tags/TagsBundle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/tags/TagsBundle$Builder;->build()Lcom/pushwoosh/tags/TagsBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/GDPRManager;->c:Lcom/pushwoosh/inapp/c;

    if-eqz v1, :cond_1

    invoke-static {p0, p1}, Lcom/pushwoosh/f;->a(Lcom/pushwoosh/GDPRManager;Lcom/pushwoosh/function/Callback;)Lcom/pushwoosh/function/Callback;

    move-result-object p1

    const-string v2, "GDPRDelete"

    invoke-virtual {v1, v2, v0, p1}, Lcom/pushwoosh/inapp/c;->a(Ljava/lang/String;Lcom/pushwoosh/tags/TagsBundle;Lcom/pushwoosh/function/Callback;)V

    :cond_1
    return-void
.end method

.method public setCommunicationEnabled(ZLcom/pushwoosh/function/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/lang/Void;",
            "Lcom/pushwoosh/exception/PushwooshException;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/pushwoosh/GDPRManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/pushwoosh/GDPRManager;->a(Lcom/pushwoosh/function/Callback;)V

    return-void

    :cond_0
    new-instance v0, Lcom/pushwoosh/tags/TagsBundle$Builder;

    invoke-direct {v0}, Lcom/pushwoosh/tags/TagsBundle$Builder;-><init>()V

    const-string v1, "channel"

    invoke-virtual {v0, v1, p1}, Lcom/pushwoosh/tags/TagsBundle$Builder;->putBoolean(Ljava/lang/String;Z)Lcom/pushwoosh/tags/TagsBundle$Builder;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "device_type"

    invoke-virtual {v0, v2, v1}, Lcom/pushwoosh/tags/TagsBundle$Builder;->putInt(Ljava/lang/String;I)Lcom/pushwoosh/tags/TagsBundle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/tags/TagsBundle$Builder;->build()Lcom/pushwoosh/tags/TagsBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/GDPRManager;->c:Lcom/pushwoosh/inapp/c;

    invoke-static {p0, p1, p2}, Lcom/pushwoosh/c;->a(Lcom/pushwoosh/GDPRManager;ZLcom/pushwoosh/function/Callback;)Lcom/pushwoosh/function/Callback;

    move-result-object p1

    const-string p2, "GDPRConsent"

    invoke-virtual {v1, p2, v0, p1}, Lcom/pushwoosh/inapp/c;->a(Ljava/lang/String;Lcom/pushwoosh/tags/TagsBundle;Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public showGDPRConsentUI()V
    .locals 2

    sget-object v0, Lcom/pushwoosh/GDPRManager;->TAG:Ljava/lang/String;

    const-string v1, "showGDPRConsentUI"

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pushwoosh/GDPRManager;->c:Lcom/pushwoosh/inapp/c;

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/c;->c()V

    return-void
.end method

.method public showGDPRDeletionUI()V
    .locals 2

    sget-object v0, Lcom/pushwoosh/GDPRManager;->TAG:Ljava/lang/String;

    const-string v1, "showGDPRDeletionUI"

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pushwoosh/GDPRManager;->c:Lcom/pushwoosh/inapp/c;

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/c;->d()V

    return-void
.end method
