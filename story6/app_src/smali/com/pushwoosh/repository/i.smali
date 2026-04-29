.class public Lcom/pushwoosh/repository/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "i"


# instance fields
.field private b:Lcom/pushwoosh/internal/network/RequestManager;

.field private c:Lcom/pushwoosh/repository/y;

.field private d:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

.field private e:Lcom/pushwoosh/internal/utils/c;

.field private f:Lcom/pushwoosh/notification/e;

.field private g:Lcom/pushwoosh/repository/RegistrationPrefs;

.field private h:Lcom/pushwoosh/repository/d;

.field private i:Z

.field private j:Z

.field private k:Lcom/pushwoosh/tags/TagsBundle;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/pushwoosh/internal/network/RequestManager;Lcom/pushwoosh/repository/y;Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;Lcom/pushwoosh/internal/utils/c;Lcom/pushwoosh/notification/e;Lcom/pushwoosh/repository/RegistrationPrefs;Lcom/pushwoosh/repository/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/repository/i;->b:Lcom/pushwoosh/internal/network/RequestManager;

    iput-object p2, p0, Lcom/pushwoosh/repository/i;->c:Lcom/pushwoosh/repository/y;

    iput-object p3, p0, Lcom/pushwoosh/repository/i;->d:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    iput-object p4, p0, Lcom/pushwoosh/repository/i;->e:Lcom/pushwoosh/internal/utils/c;

    iput-object p5, p0, Lcom/pushwoosh/repository/i;->f:Lcom/pushwoosh/notification/e;

    iput-object p6, p0, Lcom/pushwoosh/repository/i;->g:Lcom/pushwoosh/repository/RegistrationPrefs;

    iput-object p7, p0, Lcom/pushwoosh/repository/i;->h:Lcom/pushwoosh/repository/d;

    return-void
.end method

.method private a(Lcom/pushwoosh/function/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Result<",
            "Ljava/lang/Void;",
            "Lcom/pushwoosh/exception/PushwooshException;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/pushwoosh/repository/i;->d:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->set(Z)V

    sget-object p1, Lcom/pushwoosh/repository/i;->a:Ljava/lang/String;

    const-string v0, "migration success"

    invoke-static {p1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/repository/i;Lcom/pushwoosh/function/Result;)V
    .locals 3

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/tags/TagsBundle;

    invoke-virtual {v0}, Lcom/pushwoosh/tags/TagsBundle;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/tags/TagsBundle;

    iput-object p1, p0, Lcom/pushwoosh/repository/i;->k:Lcom/pushwoosh/tags/TagsBundle;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/pushwoosh/repository/i;->d:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    invoke-virtual {p1, v1}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->set(Z)V

    sget-object p1, Lcom/pushwoosh/repository/i;->a:Ljava/lang/String;

    const-string v0, "getTags empty"

    invoke-static {p1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-enter p0

    :try_start_0
    iput-boolean v1, p0, Lcom/pushwoosh/repository/i;->i:Z

    iget-boolean p1, p0, Lcom/pushwoosh/repository/i;->j:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/pushwoosh/repository/i;->b()V

    :cond_1
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/internal/network/NetworkException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status_code"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v2, "status_message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd2

    if-ne p1, v2, :cond_3

    const-string p1, "Device not found"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/pushwoosh/repository/i;->d:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    invoke-virtual {p0, v1}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->set(Z)V

    sget-object p0, Lcom/pushwoosh/repository/i;->a:Ljava/lang/String;

    const-string p1, "getTags returned \"Device not found\""

    invoke-static {p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/pushwoosh/repository/i;Lcom/pushwoosh/function/Result;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/repository/i;->e()V

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/repository/i;->d:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/repository/i;->l:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/pushwoosh/internal/platform/utils/a;->d()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/pushwoosh/repository/h;

    invoke-direct {v1, v0}, Lcom/pushwoosh/repository/h;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pushwoosh/repository/i;->b:Lcom/pushwoosh/internal/network/RequestManager;

    invoke-static {p0}, Lcom/pushwoosh/repository/k;->a(Lcom/pushwoosh/repository/i;)Lcom/pushwoosh/function/Callback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/pushwoosh/internal/network/RequestManager;->sendRequest(Lcom/pushwoosh/internal/network/PushRequest;Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method static synthetic c(Lcom/pushwoosh/repository/i;Lcom/pushwoosh/function/Result;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/repository/i;->a(Lcom/pushwoosh/function/Result;)V

    return-void
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/i;->f:Lcom/pushwoosh/notification/e;

    invoke-virtual {v0}, Lcom/pushwoosh/notification/e;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/repository/i;->g:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->isRegisteredForPush()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lcom/pushwoosh/repository/i;->k:Lcom/pushwoosh/tags/TagsBundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pushwoosh/tags/TagsBundle;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lcom/pushwoosh/repository/i;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data for migration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pushwoosh/repository/i;->c:Lcom/pushwoosh/repository/y;

    invoke-static {p0}, Lcom/pushwoosh/repository/l;->a(Lcom/pushwoosh/repository/i;)Lcom/pushwoosh/function/Callback;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/pushwoosh/repository/y;->a(Lorg/json/JSONObject;Lcom/pushwoosh/function/Callback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, Lcom/pushwoosh/repository/i;->a:Ljava/lang/String;

    const-string v1, "prepare migration"

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pushwoosh/internal/platform/utils/a;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/repository/i;->e:Lcom/pushwoosh/internal/utils/c;

    invoke-virtual {v1}, Lcom/pushwoosh/internal/utils/c;->e()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/repository/i;->d:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->set(Z)V

    :cond_1
    iget-object v0, p0, Lcom/pushwoosh/repository/i;->d:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->get()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/pushwoosh/repository/i;->c()V

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/i;->d:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object p1, Lcom/pushwoosh/repository/i;->a:Ljava/lang/String;

    const-string p2, "migration tags already done"

    invoke-static {p1, p2}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iput-object p2, p0, Lcom/pushwoosh/repository/i;->l:Ljava/lang/String;

    iput-object p1, p0, Lcom/pushwoosh/repository/i;->m:Ljava/lang/String;

    iget-object p1, p0, Lcom/pushwoosh/repository/i;->d:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    invoke-virtual {p1}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->get()Z

    move-result p1

    const/4 p2, 0x1

    monitor-enter p0

    if-nez p1, :cond_4

    :try_start_0
    iput-boolean p2, p0, Lcom/pushwoosh/repository/i;->j:Z

    iget-boolean p1, p0, Lcom/pushwoosh/repository/i;->i:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/pushwoosh/repository/i;->b()V

    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :try_start_1
    iput-boolean p2, p0, Lcom/pushwoosh/repository/i;->j:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-direct {p0}, Lcom/pushwoosh/repository/i;->c()V

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method protected b()V
    .locals 5

    invoke-direct {p0}, Lcom/pushwoosh/repository/i;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pushwoosh/repository/i;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/pushwoosh/repository/i;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/repository/i;->g:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->lastPushRegistration()Lcom/pushwoosh/internal/preference/PreferenceLongValue;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/pushwoosh/internal/preference/PreferenceLongValue;->set(J)V

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/repository/i;->g:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->lastPushRegistration()Lcom/pushwoosh/internal/preference/PreferenceLongValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceLongValue;->get()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/pushwoosh/repository/j;->a(Lcom/pushwoosh/repository/i;)Lcom/pushwoosh/function/Callback;

    move-result-object v0

    invoke-static {v0}, Lcom/pushwoosh/notification/f;->a(Lcom/pushwoosh/function/Callback;)V

    iget-object v0, p0, Lcom/pushwoosh/repository/i;->h:Lcom/pushwoosh/repository/d;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/d;->a()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/pushwoosh/repository/i;->e()V

    :goto_0
    return-void
.end method
