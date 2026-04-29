.class Lcom/pushwoosh/notification/handlers/notification/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/notification/handlers/notification/PushNotificationOpenHandler;


# instance fields
.field private final a:Lcom/pushwoosh/repository/p;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getNotificationPreferences()Lcom/pushwoosh/repository/p;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/notification/handlers/notification/g;->a:Lcom/pushwoosh/repository/p;

    return-void
.end method


# virtual methods
.method public postHandleNotification(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->B(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/pushwoosh/inapp/view/b/a/b$a;

    invoke-direct {v1}, Lcom/pushwoosh/inapp/view/b/a/b$a;-><init>()V

    invoke-virtual {v1, v0}, Lcom/pushwoosh/inapp/view/b/a/b$a;->a(Ljava/lang/String;)Lcom/pushwoosh/inapp/view/b/a/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/notification/handlers/notification/g;->a:Lcom/pushwoosh/repository/p;

    invoke-virtual {v1}, Lcom/pushwoosh/repository/p;->i()Lcom/pushwoosh/internal/preference/PreferenceIntValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/internal/preference/PreferenceIntValue;->get()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/pushwoosh/inapp/view/b/a/b$a;->a(J)Lcom/pushwoosh/inapp/view/b/a/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/view/b/a/b$a;->a()Lcom/pushwoosh/inapp/view/b/a/b;

    move-result-object v0

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->y(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getNotificationPreferences()Lcom/pushwoosh/repository/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/repository/p;->r()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->set(Ljava/lang/String;)V

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/q;->j()Lcom/pushwoosh/richmedia/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/pushwoosh/richmedia/a;->a(Lcom/pushwoosh/inapp/view/b/a/b;)V

    :cond_0
    return-void
.end method
