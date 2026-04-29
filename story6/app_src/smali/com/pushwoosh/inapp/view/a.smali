.class public Lcom/pushwoosh/inapp/view/a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/inapp/view/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/pushwoosh/function/Result<",
        "Lcom/pushwoosh/inapp/d/a;",
        "Lcom/pushwoosh/inapp/b/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/pushwoosh/inapp/e/b/b;

.field private final b:Lcom/pushwoosh/inapp/view/a$a;

.field private final c:Lcom/pushwoosh/inapp/e/c;


# direct methods
.method public constructor <init>(Lcom/pushwoosh/inapp/e/b/b;Lcom/pushwoosh/inapp/view/a$a;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-static {}, Lcom/pushwoosh/inapp/b;->c()Lcom/pushwoosh/inapp/e/c;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/a;->c:Lcom/pushwoosh/inapp/e/c;

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/a;->a:Lcom/pushwoosh/inapp/e/b/b;

    iput-object p2, p0, Lcom/pushwoosh/inapp/view/a;->b:Lcom/pushwoosh/inapp/view/a$a;

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "OS Version"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/pushwoosh/internal/platform/utils/a;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Device Model"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/pushwoosh/internal/platform/utils/GeneralUtils;->isStoreApp()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "0"

    goto :goto_0

    :cond_1
    const-string v0, "1"

    :goto_0
    const-string v1, "Jailbroken"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/pushwoosh/inapp/c/a;->a(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/pushwoosh/function/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/pushwoosh/function/Result<",
            "Lcom/pushwoosh/inapp/d/a;",
            "Lcom/pushwoosh/inapp/b/a;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getNotificationPreferences()Lcom/pushwoosh/repository/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/repository/p;->p()Lcom/pushwoosh/internal/preference/PreferenceJsonObjectValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/internal/preference/PreferenceJsonObjectValue;->get()Lorg/json/JSONObject;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lcom/pushwoosh/internal/utils/JsonUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pushwoosh/inapp/view/a;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/a;->a:Lcom/pushwoosh/inapp/e/b/b;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inapp/e/b/b;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed parse tags"

    invoke-static {v0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p1, p0, Lcom/pushwoosh/inapp/view/a;->c:Lcom/pushwoosh/inapp/e/c;

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/a;->a:Lcom/pushwoosh/inapp/e/b/b;

    invoke-virtual {p1, v0}, Lcom/pushwoosh/inapp/e/c;->a(Lcom/pushwoosh/inapp/e/b/b;)Lcom/pushwoosh/function/Result;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/pushwoosh/function/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Result<",
            "Lcom/pushwoosh/inapp/d/a;",
            "Lcom/pushwoosh/inapp/b/a;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/pushwoosh/inapp/event/d;

    iget-object v1, p0, Lcom/pushwoosh/inapp/view/a;->a:Lcom/pushwoosh/inapp/e/b/b;

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/pushwoosh/inapp/event/d;-><init>(Lcom/pushwoosh/inapp/e/b/b;Lcom/pushwoosh/exception/PushwooshException;)V

    invoke-static {v0}, Lcom/pushwoosh/internal/event/EventBus;->sendEvent(Lcom/pushwoosh/internal/event/Event;)Z

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/inapp/view/a;->b:Lcom/pushwoosh/inapp/view/a$a;

    invoke-interface {v0, p1}, Lcom/pushwoosh/inapp/view/a$a;->a(Lcom/pushwoosh/function/Result;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inapp/view/a;->a([Ljava/lang/Void;)Lcom/pushwoosh/function/Result;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/pushwoosh/function/Result;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inapp/view/a;->a(Lcom/pushwoosh/function/Result;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/a;->b:Lcom/pushwoosh/inapp/view/a$a;

    invoke-interface {v0}, Lcom/pushwoosh/inapp/view/a$a;->a()V

    return-void
.end method
