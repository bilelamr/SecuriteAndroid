.class public final Lcom/pushwoosh/internal/richmedia/ResourceAction;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static performRemoteUrlAction(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/pushwoosh/inapp/view/b/a/b$a;

    invoke-direct {v0}, Lcom/pushwoosh/inapp/view/b/a/b$a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/pushwoosh/inapp/view/b/a/b$a;->b(Ljava/lang/String;)Lcom/pushwoosh/inapp/view/b/a/b$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/pushwoosh/inapp/view/b/a/b$a;->a()Lcom/pushwoosh/inapp/view/b/a/b;

    move-result-object p0

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->j()Lcom/pushwoosh/richmedia/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/pushwoosh/richmedia/a;->a(Lcom/pushwoosh/inapp/view/b/a/b;)V

    :cond_0
    return-void
.end method

.method public static performRichMediaAction(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/pushwoosh/inapp/view/b/a/b$a;

    invoke-direct {v0}, Lcom/pushwoosh/inapp/view/b/a/b$a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/pushwoosh/inapp/view/b/a/b$a;->a(Ljava/lang/String;)Lcom/pushwoosh/inapp/view/b/a/b$a;

    move-result-object p0

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getNotificationPreferences()Lcom/pushwoosh/repository/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->i()Lcom/pushwoosh/internal/preference/PreferenceIntValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceIntValue;->get()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/pushwoosh/inapp/view/b/a/b$a;->a(J)Lcom/pushwoosh/inapp/view/b/a/b$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/pushwoosh/inapp/view/b/a/b$a;->a()Lcom/pushwoosh/inapp/view/b/a/b;

    move-result-object p0

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->j()Lcom/pushwoosh/richmedia/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/pushwoosh/richmedia/a;->a(Lcom/pushwoosh/inapp/view/b/a/b;)V

    :cond_0
    return-void
.end method
