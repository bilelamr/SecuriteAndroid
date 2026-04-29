.class public Lcom/pushwoosh/repository/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/utils/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/repository/y$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pushwoosh/internal/utils/a$a<",
        "Lcom/pushwoosh/repository/y$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/pushwoosh/internal/utils/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/internal/utils/a<",
            "Lcom/pushwoosh/repository/y$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/pushwoosh/internal/utils/a;

    const/16 v1, 0x3e8

    invoke-direct {v0, p0, v1}, Lcom/pushwoosh/internal/utils/a;-><init>(Lcom/pushwoosh/internal/utils/a$a;I)V

    iput-object v0, p0, Lcom/pushwoosh/repository/y;->a:Lcom/pushwoosh/internal/utils/a;

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/repository/y;Ljava/util/List;Lcom/pushwoosh/function/Result;)V
    .locals 1

    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/repository/y$a;

    invoke-virtual {p1}, Lcom/pushwoosh/repository/y$a;->b()Lcom/pushwoosh/function/Callback;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/pushwoosh/repository/y$a;->b()Lcom/pushwoosh/function/Callback;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Lcom/pushwoosh/function/Result;->fromData(Ljava/lang/Object;)Lcom/pushwoosh/function/Result;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p2

    check-cast p2, Lcom/pushwoosh/internal/network/NetworkException;

    invoke-direct {p0, p1, p2}, Lcom/pushwoosh/repository/y;->a(Ljava/util/List;Lcom/pushwoosh/internal/network/NetworkException;)V

    :cond_2
    return-void
.end method

.method private a(Ljava/util/List;Lcom/pushwoosh/internal/network/NetworkException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pushwoosh/repository/y$a;",
            ">;",
            "Lcom/pushwoosh/internal/network/NetworkException;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->setTagsFailed()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->set(Z)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/repository/y$a;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/y$a;->b()Lcom/pushwoosh/function/Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/y$a;->b()Lcom/pushwoosh/function/Callback;

    move-result-object v0

    invoke-static {p2}, Lcom/pushwoosh/function/Result;->fromException(Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pushwoosh/repository/y$a;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pushwoosh/repository/y$a;

    invoke-virtual {v2}, Lcom/pushwoosh/repository/y$a;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/pushwoosh/internal/utils/JsonUtils;->mergeJson(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/pushwoosh/internal/network/NetworkModule;->getRequestManager()Lcom/pushwoosh/internal/network/RequestManager;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Lcom/pushwoosh/internal/network/NetworkException;

    const-string v1, "Request manager is null"

    invoke-direct {v0, v1}, Lcom/pushwoosh/internal/network/NetworkException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/pushwoosh/repository/y;->a(Ljava/util/List;Lcom/pushwoosh/internal/network/NetworkException;)V

    return-void

    :cond_1
    new-instance v2, Lcom/pushwoosh/repository/ab;

    invoke-direct {v2, v0}, Lcom/pushwoosh/repository/ab;-><init>(Lorg/json/JSONObject;)V

    invoke-static {p0, p1}, Lcom/pushwoosh/repository/z;->a(Lcom/pushwoosh/repository/y;Ljava/util/List;)Lcom/pushwoosh/function/Callback;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lcom/pushwoosh/internal/network/RequestManager;->sendRequest(Lcom/pushwoosh/internal/network/PushRequest;Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/pushwoosh/function/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/lang/Void;",
            "Lcom/pushwoosh/exception/PushwooshException;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/repository/y;->a:Lcom/pushwoosh/internal/utils/a;

    new-instance v1, Lcom/pushwoosh/repository/y$a;

    invoke-direct {v1, p1, p2}, Lcom/pushwoosh/repository/y$a;-><init>(Lorg/json/JSONObject;Lcom/pushwoosh/function/Callback;)V

    invoke-virtual {v0, v1}, Lcom/pushwoosh/internal/utils/a;->a(Ljava/lang/Object;)V

    return-void
.end method
