.class Lcom/pushwoosh/repository/ad;
.super Lcom/pushwoosh/internal/network/PushRequest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pushwoosh/internal/network/PushRequest<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/pushwoosh/internal/network/PushRequest;-><init>()V

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->applicationId()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/repository/ad;->a:Ljava/lang/String;

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->userId()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/repository/ad;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getApplicationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/ad;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "unregisterDevice"

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/ad;->b:Ljava/lang/String;

    return-object v0
.end method
