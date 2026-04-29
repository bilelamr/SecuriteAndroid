.class public Lcom/pushwoosh/DeepLinkActivity;
.super Lcom/pushwoosh/internal/utils/TranslucentActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/internal/utils/TranslucentActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/pushwoosh/internal/network/c;

    invoke-static {}, Lcom/pushwoosh/internal/platform/utils/a;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Imported from the app"

    invoke-direct {v0, v1, v2}, Lcom/pushwoosh/internal/network/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pushwoosh/internal/network/NetworkModule;->getRequestManager()Lcom/pushwoosh/internal/network/RequestManager;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    const-string v1, "Test device registration has been failed. RequestManager is null"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/pushwoosh/b;->a(Landroid/content/Context;)Lcom/pushwoosh/function/Callback;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/pushwoosh/internal/network/RequestManager;->sendRequest(Lcom/pushwoosh/internal/network/PushRequest;Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/pushwoosh/function/Result;)V
    .locals 3

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "Test device has been registered."

    :goto_0
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Test device registration has been failed. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p1, ""

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/internal/network/NetworkException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_2
    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 4

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/repository/RegistrationPrefs;->applicationId()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pw-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "DeepLinkActivity"

    if-eqz v0, :cond_1

    const-string v0, "createTestDevice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pushwoosh/DeepLinkActivity;->a(Landroid/content/Context;)V

    goto :goto_1

    :cond_0
    const-string p1, "unrecognized pushwoosh command"

    goto :goto_0

    :cond_1
    const-string p1, "This is not pushwoosh scheme"

    :goto_0
    invoke-static {v1, p1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/pushwoosh/internal/utils/TranslucentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/pushwoosh/DeepLinkActivity;->a(Landroid/net/Uri;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
