.class public Lcom/pushwoosh/inapp/PushwooshInApp;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/pushwoosh/inapp/PushwooshInApp;


# instance fields
.field private final b:Lcom/pushwoosh/inapp/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/pushwoosh/inapp/PushwooshInApp;

    invoke-direct {v0}, Lcom/pushwoosh/inapp/PushwooshInApp;-><init>()V

    sput-object v0, Lcom/pushwoosh/inapp/PushwooshInApp;->a:Lcom/pushwoosh/inapp/PushwooshInApp;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->i()Lcom/pushwoosh/inapp/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/pushwoosh/q;->a()V

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/pushwoosh/inapp/PushwooshInApp;->b:Lcom/pushwoosh/inapp/c;

    return-void
.end method

.method public static getInstance()Lcom/pushwoosh/inapp/PushwooshInApp;
    .locals 1

    sget-object v0, Lcom/pushwoosh/inapp/PushwooshInApp;->a:Lcom/pushwoosh/inapp/PushwooshInApp;

    return-object v0
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/PushwooshInApp;->b:Lcom/pushwoosh/inapp/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/pushwoosh/inapp/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/PushwooshInApp;->b:Lcom/pushwoosh/inapp/c;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->userId()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public mergeUserId(Ljava/lang/String;Ljava/lang/String;ZLcom/pushwoosh/function/Callback;)V
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

    iget-object v0, p0, Lcom/pushwoosh/inapp/PushwooshInApp;->b:Lcom/pushwoosh/inapp/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/pushwoosh/inapp/c;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/pushwoosh/function/Callback;)V

    :cond_0
    return-void
.end method

.method public postEvent(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inapp/PushwooshInApp;->b:Lcom/pushwoosh/inapp/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/pushwoosh/inapp/c;->a(Ljava/lang/String;Lcom/pushwoosh/tags/TagsBundle;Lcom/pushwoosh/function/Callback;)V

    :cond_0
    return-void
.end method

.method public postEvent(Ljava/lang/String;Lcom/pushwoosh/tags/TagsBundle;)V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inapp/PushwooshInApp;->b:Lcom/pushwoosh/inapp/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/pushwoosh/inapp/c;->a(Ljava/lang/String;Lcom/pushwoosh/tags/TagsBundle;Lcom/pushwoosh/function/Callback;)V

    :cond_0
    return-void
.end method

.method public postEvent(Ljava/lang/String;Lcom/pushwoosh/tags/TagsBundle;Lcom/pushwoosh/function/Callback;)V
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

    iget-object v0, p0, Lcom/pushwoosh/inapp/PushwooshInApp;->b:Lcom/pushwoosh/inapp/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/pushwoosh/inapp/c;->a(Ljava/lang/String;Lcom/pushwoosh/tags/TagsBundle;Lcom/pushwoosh/function/Callback;)V

    :cond_0
    return-void
.end method

.method public registerJavascriptInterface(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/PushwooshInApp;->b:Lcom/pushwoosh/inapp/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/pushwoosh/inapp/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/PushwooshInApp;->b:Lcom/pushwoosh/inapp/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inapp/c;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public resetBusinessCasesFrequencyCapping()V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->k()Lcom/pushwoosh/inapp/a/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/a/i;->a()V

    :cond_0
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/PushwooshInApp;->b:Lcom/pushwoosh/inapp/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inapp/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
