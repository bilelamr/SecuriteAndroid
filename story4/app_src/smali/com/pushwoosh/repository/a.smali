.class Lcom/pushwoosh/repository/a;
.super Lcom/pushwoosh/internal/network/PushRequest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pushwoosh/internal/network/PushRequest<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/internal/network/PushRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "required_inapps"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/pushwoosh/inapp/a/i;->a(Lorg/json/JSONObject;)V

    invoke-super {p0, p1}, Lcom/pushwoosh/internal/network/PushRequest;->parseResponse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method

.method protected buildParams(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {}, Lcom/pushwoosh/internal/platform/utils/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Tablet"

    goto :goto_0

    :cond_0
    const-string v0, "Phone"

    :goto_0
    const-string v1, "device_name"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->language()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-string v2, "timezone"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getAppInfoProvider()Lcom/pushwoosh/internal/platform/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/pushwoosh/internal/platform/a/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android_package"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/pushwoosh/internal/platform/utils/GeneralUtils;->isStoreApp()Z

    move-result v0

    const-string v1, "jailbroken"

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/pushwoosh/internal/platform/utils/a;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_model"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "os_version"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getAppInfoProvider()Lcom/pushwoosh/internal/platform/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/pushwoosh/internal/platform/a/a;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "app_version"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getInstance()Lcom/pushwoosh/internal/platform/AndroidPlatformModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getPermissionController()Lcom/pushwoosh/m;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/pushwoosh/m;->a()I

    move-result v0

    const-string v1, "notificationTypes"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    return-void
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "applicationOpen"

    return-object v0
.end method

.method public synthetic parseResponse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/pushwoosh/repository/a;->a(Lorg/json/JSONObject;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
