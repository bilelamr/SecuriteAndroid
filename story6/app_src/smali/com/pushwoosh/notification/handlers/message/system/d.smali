.class Lcom/pushwoosh/notification/handlers/message/system/d;
.super Lcom/pushwoosh/notification/handlers/message/system/c;


# instance fields
.field private final a:Lcom/pushwoosh/repository/RegistrationPrefs;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/pushwoosh/notification/handlers/message/system/c;-><init>()V

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/notification/handlers/message/system/d;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "setLogLevel"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->A(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/pushwoosh/notification/handlers/message/system/d;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {p2}, Lcom/pushwoosh/repository/RegistrationPrefs;->logLevel()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->set(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
