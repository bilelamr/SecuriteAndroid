.class public Lcom/pushwoosh/inapp/view/a/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/pushwoosh/inapp/view/a/d;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lcom/pushwoosh/inapp/view/a/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/a/e;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/pushwoosh/inapp/view/a/e;->b:Lcom/pushwoosh/inapp/view/a/d;

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/inapp/view/a/e;Ljava/lang/String;Ljava/lang/String;Lcom/pushwoosh/function/Result;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/pushwoosh/inapp/view/a/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebView;

    if-eqz p0, :cond_1

    invoke-virtual {p3}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "javascript:%s();"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p2, p1, v2

    invoke-virtual {p3}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p2

    check-cast p2, Lcom/pushwoosh/exception/PostEventException;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "javascript:%s(\'%s\');"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public closeInApp()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/a/e;->b:Lcom/pushwoosh/inapp/view/a/d;

    invoke-interface {v0}, Lcom/pushwoosh/inapp/view/a/d;->a()V

    return-void
.end method

.method public isCommunicationEnabled()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/pushwoosh/GDPRManager;->getInstance()Lcom/pushwoosh/GDPRManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/GDPRManager;->isCommunicationEnabled()Z

    move-result v0

    return v0
.end method

.method public isDeviceDataRemoved()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/pushwoosh/GDPRManager;->getInstance()Lcom/pushwoosh/GDPRManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/GDPRManager;->isDeviceDataRemoved()Z

    move-result v0

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "[InApp]PushManagerJSInterface"

    invoke-static {v0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public postEvent(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "event"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "attributes"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    :try_start_1
    const-string v3, "success"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v3, v2

    :goto_0
    :try_start_2
    const-string v4, "error"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :try_start_3
    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->i()Lcom/pushwoosh/inapp/c;

    move-result-object v0

    invoke-static {v1}, Lcom/pushwoosh/tags/Tags;->fromJson(Lorg/json/JSONObject;)Lcom/pushwoosh/tags/TagsBundle;

    move-result-object v1

    invoke-static {p0, v3, v2}, Lcom/pushwoosh/inapp/view/a/f;->a(Lcom/pushwoosh/inapp/view/a/e;Ljava/lang/String;Ljava/lang/String;)Lcom/pushwoosh/function/Callback;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/pushwoosh/inapp/c;->a(Ljava/lang/String;Lcom/pushwoosh/tags/TagsBundle;Lcom/pushwoosh/function/Callback;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    const-string v0, "Invalid arguments"

    invoke-static {v0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public registerForPushNotifications()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->g()Lcom/pushwoosh/notification/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pushwoosh/notification/e;->a(Lcom/pushwoosh/function/Callback;)V

    :cond_0
    return-void
.end method

.method public removeAllDeviceData()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/pushwoosh/GDPRManager;->getInstance()Lcom/pushwoosh/GDPRManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pushwoosh/GDPRManager;->removeAllDeviceData(Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public sendTags(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/pushwoosh/tags/TagsBundle$Builder;

    invoke-direct {p1}, Lcom/pushwoosh/tags/TagsBundle$Builder;-><init>()V

    invoke-virtual {p1, v0}, Lcom/pushwoosh/tags/TagsBundle$Builder;->putAll(Lorg/json/JSONObject;)Lcom/pushwoosh/tags/TagsBundle$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/tags/TagsBundle$Builder;->build()Lcom/pushwoosh/tags/TagsBundle;

    move-result-object p1

    invoke-static {}, Lcom/pushwoosh/Pushwoosh;->getInstance()Lcom/pushwoosh/Pushwoosh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/Pushwoosh;->sendTags(Lcom/pushwoosh/tags/TagsBundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Invalid tags format, expected object with string properties"

    invoke-static {v0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setCommunicationEnabled(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/pushwoosh/GDPRManager;->getInstance()Lcom/pushwoosh/GDPRManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/pushwoosh/GDPRManager;->setCommunicationEnabled(ZLcom/pushwoosh/function/Callback;)V

    return-void
.end method
