.class public Lcom/pushwoosh/internal/network/c;
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
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/internal/network/PushRequest;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/internal/network/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/pushwoosh/internal/network/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected buildParams(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/internal/network/c;->a:Ljava/lang/String;

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/pushwoosh/internal/network/c;->b:Ljava/lang/String;

    const-string v1, "description"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->pushToken()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v0

    const-string v1, "push_token"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "createTestDevice"

    return-object v0
.end method
