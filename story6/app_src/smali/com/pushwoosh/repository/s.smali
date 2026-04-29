.class public Lcom/pushwoosh/repository/s;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/pushwoosh/internal/network/RequestManager;

.field private final b:Lcom/pushwoosh/repository/y;

.field private final c:Lcom/pushwoosh/repository/RegistrationPrefs;

.field private final d:Lcom/pushwoosh/repository/p;

.field private final e:Lcom/pushwoosh/internal/network/f;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pushwoosh/repository/config/Channel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pushwoosh/internal/network/RequestManager;Lcom/pushwoosh/repository/y;Lcom/pushwoosh/repository/RegistrationPrefs;Lcom/pushwoosh/repository/p;Lcom/pushwoosh/internal/network/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/repository/s;->a:Lcom/pushwoosh/internal/network/RequestManager;

    iput-object p2, p0, Lcom/pushwoosh/repository/s;->b:Lcom/pushwoosh/repository/y;

    iput-object p3, p0, Lcom/pushwoosh/repository/s;->c:Lcom/pushwoosh/repository/RegistrationPrefs;

    iput-object p4, p0, Lcom/pushwoosh/repository/s;->d:Lcom/pushwoosh/repository/p;

    iput-object p5, p0, Lcom/pushwoosh/repository/s;->e:Lcom/pushwoosh/internal/network/f;

    invoke-virtual {p3}, Lcom/pushwoosh/repository/RegistrationPrefs;->setTagsFailed()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p4}, Lcom/pushwoosh/repository/p;->p()Lcom/pushwoosh/internal/preference/PreferenceJsonObjectValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/internal/preference/PreferenceJsonObjectValue;->get()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p4, "Resending application tags"

    invoke-static {p4}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/pushwoosh/repository/t;->a(Lcom/pushwoosh/repository/RegistrationPrefs;)Lcom/pushwoosh/function/Callback;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/pushwoosh/repository/y;->a(Lorg/json/JSONObject;Lcom/pushwoosh/function/Callback;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/repository/RegistrationPrefs;Lcom/pushwoosh/function/Result;)V
    .locals 0

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/pushwoosh/repository/RegistrationPrefs;->setTagsFailed()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->set(Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/repository/s;Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/function/Result;)V
    .locals 1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->getData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/pushwoosh/tags/Tags;->empty()Lcom/pushwoosh/tags/TagsBundle;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/pushwoosh/tags/TagsBundle;

    :goto_0
    iget-object p0, p0, Lcom/pushwoosh/repository/s;->d:Lcom/pushwoosh/repository/p;

    invoke-virtual {p0}, Lcom/pushwoosh/repository/p;->p()Lcom/pushwoosh/internal/preference/PreferenceJsonObjectValue;

    move-result-object p0

    invoke-virtual {p2}, Lcom/pushwoosh/tags/TagsBundle;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pushwoosh/internal/preference/PreferenceJsonObjectValue;->set(Lorg/json/JSONObject;)V

    invoke-static {p2}, Lcom/pushwoosh/function/Result;->fromData(Ljava/lang/Object;)Lcom/pushwoosh/function/Result;

    move-result-object p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/pushwoosh/repository/s;->d:Lcom/pushwoosh/repository/p;

    invoke-virtual {p0}, Lcom/pushwoosh/repository/p;->p()Lcom/pushwoosh/internal/preference/PreferenceJsonObjectValue;

    move-result-object p0

    invoke-virtual {p0}, Lcom/pushwoosh/internal/preference/PreferenceJsonObjectValue;->get()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/pushwoosh/tags/Tags;->fromJson(Lorg/json/JSONObject;)Lcom/pushwoosh/tags/TagsBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/pushwoosh/function/Result;->fromData(Ljava/lang/Object;)Lcom/pushwoosh/function/Result;

    move-result-object p0

    :goto_1
    invoke-interface {p1, p0}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    goto :goto_3

    :cond_2
    new-instance p0, Lcom/pushwoosh/exception/GetTagsException;

    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p2, ""

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p2

    check-cast p2, Lcom/pushwoosh/internal/network/NetworkException;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-direct {p0, p2}, Lcom/pushwoosh/exception/GetTagsException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/pushwoosh/function/Result;->fromException(Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object p0

    goto :goto_1

    :cond_4
    :goto_3
    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/repository/s;Lcom/pushwoosh/function/Result;)V
    .locals 1

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/pushwoosh/repository/s;->g:Ljava/util/List;

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/pushwoosh/repository/s;Lcom/pushwoosh/function/Result;)V
    .locals 2

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/pushwoosh/repository/s;->c:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {p0}, Lcom/pushwoosh/repository/RegistrationPrefs;->lastAttributesRegistration()Lcom/pushwoosh/internal/preference/PreferenceLongValue;

    move-result-object p0

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/pushwoosh/internal/preference/PreferenceLongValue;->set(J)V

    :cond_0
    return-void
.end method

.method private m()Z
    .locals 6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xa

    const/16 v3, -0x18

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/pushwoosh/repository/s;->c:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v4}, Lcom/pushwoosh/repository/RegistrationPrefs;->lastAttributesRegistration()Lcom/pushwoosh/internal/preference/PreferenceLongValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pushwoosh/internal/preference/PreferenceLongValue;->get()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/s;->f:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/pushwoosh/function/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Callback<",
            "Lcom/pushwoosh/tags/TagsBundle;",
            "Lcom/pushwoosh/exception/GetTagsException;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/pushwoosh/repository/g;

    invoke-direct {v0}, Lcom/pushwoosh/repository/g;-><init>()V

    iget-object v1, p0, Lcom/pushwoosh/repository/s;->a:Lcom/pushwoosh/internal/network/RequestManager;

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/pushwoosh/exception/GetTagsException;

    const-string v1, "Request Manager is null"

    invoke-direct {v0, v1}, Lcom/pushwoosh/exception/GetTagsException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pushwoosh/function/Result;->fromException(Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/pushwoosh/repository/w;->a(Lcom/pushwoosh/repository/s;Lcom/pushwoosh/function/Callback;)Lcom/pushwoosh/function/Callback;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/pushwoosh/internal/network/RequestManager;->sendRequest(Lcom/pushwoosh/internal/network/PushRequest;Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public a(Lcom/pushwoosh/tags/TagsBundle;Lcom/pushwoosh/function/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/tags/TagsBundle;",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/lang/Void;",
            "Lcom/pushwoosh/exception/PushwooshException;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/pushwoosh/tags/TagsBundle;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/pushwoosh/repository/s;->d:Lcom/pushwoosh/repository/p;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->p()Lcom/pushwoosh/internal/preference/PreferenceJsonObjectValue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/internal/preference/PreferenceJsonObjectValue;->merge(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->exception(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lcom/pushwoosh/repository/s;->b:Lcom/pushwoosh/repository/y;

    invoke-virtual {v0, p1, p2}, Lcom/pushwoosh/repository/y;->a(Lorg/json/JSONObject;Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/repository/s;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/repository/s;->d:Lcom/pushwoosh/repository/p;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->j()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Push stat for ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") already sent"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->warn(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/repository/s;->d:Lcom/pushwoosh/repository/p;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->j()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->set(Ljava/lang/String;)V

    new-instance v0, Lcom/pushwoosh/repository/r;

    invoke-direct {v0, p1, p2}, Lcom/pushwoosh/repository/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/pushwoosh/repository/s;->a:Lcom/pushwoosh/internal/network/RequestManager;

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p2, Lcom/pushwoosh/function/a;

    iget-object v1, p0, Lcom/pushwoosh/repository/s;->e:Lcom/pushwoosh/internal/network/f;

    invoke-direct {p2, v0, v1}, Lcom/pushwoosh/function/a;-><init>(Lcom/pushwoosh/internal/network/PushRequest;Lcom/pushwoosh/internal/network/f;)V

    invoke-interface {p1, v0, p2}, Lcom/pushwoosh/internal/network/RequestManager;->sendRequest(Lcom/pushwoosh/internal/network/PushRequest;Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/util/Date;)V
    .locals 1

    new-instance v0, Lcom/pushwoosh/repository/ac;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/pushwoosh/repository/ac;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/util/Date;)V

    iget-object p1, p0, Lcom/pushwoosh/repository/s;->a:Lcom/pushwoosh/internal/network/RequestManager;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p2, Lcom/pushwoosh/function/a;

    iget-object p3, p0, Lcom/pushwoosh/repository/s;->e:Lcom/pushwoosh/internal/network/f;

    invoke-direct {p2, v0, p3}, Lcom/pushwoosh/function/a;-><init>(Lcom/pushwoosh/internal/network/PushRequest;Lcom/pushwoosh/internal/network/f;)V

    invoke-interface {p1, v0, p2}, Lcom/pushwoosh/internal/network/RequestManager;->sendRequest(Lcom/pushwoosh/internal/network/PushRequest;Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/s;->c:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->communicationEnable()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->set(Z)V

    return-void
.end method

.method public b()V
    .locals 4

    new-instance v0, Lcom/pushwoosh/repository/a;

    invoke-direct {v0}, Lcom/pushwoosh/repository/a;-><init>()V

    iget-object v1, p0, Lcom/pushwoosh/repository/s;->a:Lcom/pushwoosh/internal/network/RequestManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Lcom/pushwoosh/function/a;

    iget-object v3, p0, Lcom/pushwoosh/repository/s;->e:Lcom/pushwoosh/internal/network/f;

    invoke-direct {v2, v0, v3}, Lcom/pushwoosh/function/a;-><init>(Lcom/pushwoosh/internal/network/PushRequest;Lcom/pushwoosh/internal/network/f;)V

    invoke-interface {v1, v0, v2}, Lcom/pushwoosh/internal/network/RequestManager;->sendRequest(Lcom/pushwoosh/internal/network/PushRequest;Lcom/pushwoosh/function/Callback;)V

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->k()Lcom/pushwoosh/inapp/a/i;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "welcome-inapp"

    invoke-virtual {v0, v2, v1}, Lcom/pushwoosh/inapp/a/i;->a(Ljava/lang/String;Lcom/pushwoosh/inapp/a/a$a;)V

    const-string v2, "app-update-message"

    invoke-virtual {v0, v2, v1}, Lcom/pushwoosh/inapp/a/i;->a(Ljava/lang/String;Lcom/pushwoosh/inapp/a/a$a;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/pushwoosh/repository/o;

    invoke-direct {v0, p1}, Lcom/pushwoosh/repository/o;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/pushwoosh/repository/s;->a:Lcom/pushwoosh/internal/network/RequestManager;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/pushwoosh/function/a;

    iget-object v2, p0, Lcom/pushwoosh/repository/s;->e:Lcom/pushwoosh/internal/network/f;

    invoke-direct {v1, v0, v2}, Lcom/pushwoosh/function/a;-><init>(Lcom/pushwoosh/internal/network/PushRequest;Lcom/pushwoosh/internal/network/f;)V

    invoke-interface {p1, v0, v1}, Lcom/pushwoosh/internal/network/RequestManager;->sendRequest(Lcom/pushwoosh/internal/network/PushRequest;Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public c()V
    .locals 3

    invoke-direct {p0}, Lcom/pushwoosh/repository/s;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pushwoosh/repository/s;->a:Lcom/pushwoosh/internal/network/RequestManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/pushwoosh/repository/aa;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/pushwoosh/repository/aa;-><init>(Ljava/util/List;)V

    invoke-static {p0}, Lcom/pushwoosh/repository/u;->a(Lcom/pushwoosh/repository/s;)Lcom/pushwoosh/function/Callback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/pushwoosh/internal/network/RequestManager;->sendRequest(Lcom/pushwoosh/internal/network/PushRequest;Lcom/pushwoosh/function/Callback;)V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/repository/s;->a:Lcom/pushwoosh/internal/network/RequestManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/pushwoosh/repository/config/a;

    invoke-direct {v1}, Lcom/pushwoosh/repository/config/a;-><init>()V

    invoke-static {p0}, Lcom/pushwoosh/repository/v;->a(Lcom/pushwoosh/repository/s;)Lcom/pushwoosh/function/Callback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/pushwoosh/internal/network/RequestManager;->sendRequest(Lcom/pushwoosh/internal/network/PushRequest;Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pushwoosh/repository/config/Channel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/repository/s;->g:Ljava/util/List;

    return-object v0
.end method

.method public f()V
    .locals 2

    new-instance v0, Lcom/pushwoosh/repository/g;

    invoke-direct {v0}, Lcom/pushwoosh/repository/g;-><init>()V

    iget-object v1, p0, Lcom/pushwoosh/repository/s;->a:Lcom/pushwoosh/internal/network/RequestManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v1, v0}, Lcom/pushwoosh/internal/network/RequestManager;->sendRequestSync(Lcom/pushwoosh/internal/network/PushRequest;)Lcom/pushwoosh/function/Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/pushwoosh/function/Result;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/pushwoosh/function/Result;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/tags/TagsBundle;

    invoke-virtual {v0}, Lcom/pushwoosh/tags/TagsBundle;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/pushwoosh/repository/s;->d:Lcom/pushwoosh/repository/p;

    invoke-virtual {v1}, Lcom/pushwoosh/repository/p;->p()Lcom/pushwoosh/internal/preference/PreferenceJsonObjectValue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pushwoosh/internal/preference/PreferenceJsonObjectValue;->set(Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method public g()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pushwoosh/notification/PushMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/repository/s;->d:Lcom/pushwoosh/repository/p;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->o()Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;->get()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_0

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/pushwoosh/notification/PushMessage;

    invoke-direct {v2, v3}, Lcom/pushwoosh/notification/PushMessage;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/pushwoosh/internal/utils/PWLog;->exception(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/repository/s;->d:Lcom/pushwoosh/repository/p;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->p()Lcom/pushwoosh/internal/preference/PreferenceJsonObjectValue;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pushwoosh/internal/preference/PreferenceJsonObjectValue;->set(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/pushwoosh/repository/s;->c:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->removeAllDeviceData()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->set(Z)V

    return-void
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/s;->c:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->removeAllDeviceData()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->get()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/s;->c:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->communicationEnable()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->get()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/s;->c:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->gdprEnable()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->get()Z

    move-result v0

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/s;->c:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->hwid()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
