.class public Lcom/pushwoosh/inapp/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/inapp/c$a;,
        Lcom/pushwoosh/inapp/c$d;,
        Lcom/pushwoosh/inapp/c$c;,
        Lcom/pushwoosh/inapp/c$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/pushwoosh/repository/RegistrationPrefs;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/pushwoosh/inapp/e/c;

.field private e:Lcom/pushwoosh/inapp/g;


# direct methods
.method public constructor <init>(Lcom/pushwoosh/inapp/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/inapp/c;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/inapp/c;->c:Ljava/util/Map;

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inapp/c;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-static {}, Lcom/pushwoosh/inapp/b;->c()Lcom/pushwoosh/inapp/e/c;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inapp/c;->d:Lcom/pushwoosh/inapp/e/c;

    iput-object p1, p0, Lcom/pushwoosh/inapp/c;->e:Lcom/pushwoosh/inapp/g;

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/inapp/c;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/c;->d:Lcom/pushwoosh/inapp/e/c;

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/e/c;->c()Lcom/pushwoosh/inapp/e/b/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pushwoosh/inapp/c;->a(Lcom/pushwoosh/inapp/e/b/b;)V

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/inapp/c;Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/function/Result;)V
    .locals 2

    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result v0

    const-string v1, "[InApp]PushwooshInApp"

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/pushwoosh/inapp/e/b/b;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pushwoosh/function/Result;->fromData(Ljava/lang/Object;)Lcom/pushwoosh/function/Result;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/pushwoosh/inapp/c;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {p1}, Lcom/pushwoosh/repository/RegistrationPrefs;->communicationEnable()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p2}, Lcom/pushwoosh/inapp/c;->a(Lcom/pushwoosh/inapp/e/b/b;)V

    goto :goto_1

    :cond_2
    const-string p0, "cant show inApp because all communication disable"

    invoke-static {v1, p0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p0

    invoke-static {p0}, Lcom/pushwoosh/function/Result;->fromException(Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    :cond_4
    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p0

    if-nez p0, :cond_5

    const-string p0, ""

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p0

    check-cast p0, Lcom/pushwoosh/exception/PostEventException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/inapp/c;Lcom/pushwoosh/inapp/e/b/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/inapp/c;->a(Lcom/pushwoosh/inapp/e/b/b;)V

    return-void
.end method

.method private a(Lcom/pushwoosh/inapp/e/b/b;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "[InApp]PushwooshInApp"

    const-string v0, "resource is null, can not finds resource"

    invoke-static {p1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/pushwoosh/inapp/view/b/a/b$a;

    invoke-direct {v0}, Lcom/pushwoosh/inapp/view/b/a/b$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inapp/view/b/a/b$a;->a(Lcom/pushwoosh/inapp/e/b/b;)Lcom/pushwoosh/inapp/view/b/a/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/view/b/a/b$a;->a()Lcom/pushwoosh/inapp/view/b/a/b;

    move-result-object p1

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->j()Lcom/pushwoosh/richmedia/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/pushwoosh/richmedia/a;->a(Lcom/pushwoosh/inapp/view/b/a/b;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/pushwoosh/inapp/c;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/c;->d:Lcom/pushwoosh/inapp/e/c;

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/e/c;->b()Lcom/pushwoosh/inapp/e/b/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pushwoosh/inapp/c;->a(Lcom/pushwoosh/inapp/e/b/b;)V

    return-void
.end method

.method static synthetic c(Lcom/pushwoosh/inapp/c;)Lcom/pushwoosh/inapp/e/c;
    .locals 0

    iget-object p0, p0, Lcom/pushwoosh/inapp/c;->d:Lcom/pushwoosh/inapp/e/c;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/c;->e:Lcom/pushwoosh/inapp/g;

    invoke-interface {v0}, Lcom/pushwoosh/inapp/g;->a()V

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/c;->b:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/c;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->userId()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/inapp/c;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->userId()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->set(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pushwoosh/inapp/c;->d:Lcom/pushwoosh/inapp/e/c;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inapp/e/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/pushwoosh/tags/TagsBundle;Lcom/pushwoosh/function/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pushwoosh/tags/TagsBundle;",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/lang/Void;",
            "Lcom/pushwoosh/exception/PostEventException;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/inapp/c;->d:Lcom/pushwoosh/inapp/e/c;

    invoke-static {p0, p3}, Lcom/pushwoosh/inapp/d;->a(Lcom/pushwoosh/inapp/c;Lcom/pushwoosh/function/Callback;)Lcom/pushwoosh/function/Callback;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/pushwoosh/inapp/e/c;->a(Ljava/lang/String;Lcom/pushwoosh/tags/TagsBundle;Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/c;->c:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/pushwoosh/inapp/c;->d:Lcom/pushwoosh/inapp/e/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/pushwoosh/inapp/e/c;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public b()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/pushwoosh/inapp/c;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/pushwoosh/inapp/c;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to instantiate javascript interface for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[InApp]PushwooshInApp"

    invoke-static {v4, v3, v2}, Lcom/pushwoosh/internal/utils/PWLog;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c()V
    .locals 2

    new-instance v0, Lcom/pushwoosh/inapp/c$b;

    invoke-static {p0}, Lcom/pushwoosh/inapp/e;->a(Lcom/pushwoosh/inapp/c;)Lcom/pushwoosh/inapp/c$a;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pushwoosh/inapp/c$b;-><init>(Lcom/pushwoosh/inapp/c;Lcom/pushwoosh/inapp/c$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public d()V
    .locals 2

    new-instance v0, Lcom/pushwoosh/inapp/c$c;

    invoke-static {p0}, Lcom/pushwoosh/inapp/f;->a(Lcom/pushwoosh/inapp/c;)Lcom/pushwoosh/inapp/c$a;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pushwoosh/inapp/c$c;-><init>(Lcom/pushwoosh/inapp/c;Lcom/pushwoosh/inapp/c$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
