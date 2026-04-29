.class public Lcom/pushwoosh/inbox/c/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Lcom/pushwoosh/inbox/data/InboxMessageType;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/pushwoosh/inbox/data/InboxMessageType;->PLAIN:Lcom/pushwoosh/inbox/data/InboxMessageType;

    return-object p0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pushwoosh/inbox/c/a;->d(Lorg/json/JSONObject;)Lcom/pushwoosh/inbox/data/InboxMessageType;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "Failed to parse inbox type from actionPayload"

    invoke-static {p0}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;)V

    sget-object p0, Lcom/pushwoosh/inbox/data/InboxMessageType;->PLAIN:Lcom/pushwoosh/inbox/data/InboxMessageType;

    return-object p0
.end method

.method public static a(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    const-string v0, "pw_inbox"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "l"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    const-string v0, "header"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "r"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/os/Bundle;)J
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "google.sent_time"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "rm"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private static d(Lorg/json/JSONObject;)Lcom/pushwoosh/inbox/data/InboxMessageType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p0}, Lcom/pushwoosh/inbox/c/a;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/pushwoosh/inbox/data/InboxMessageType;->RICH_MEDIA:Lcom/pushwoosh/inbox/data/InboxMessageType;

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/pushwoosh/inbox/c/a;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string p0, "http"

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/pushwoosh/inbox/data/InboxMessageType;->URL:Lcom/pushwoosh/inbox/data/InboxMessageType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/pushwoosh/inbox/data/InboxMessageType;->DEEP_LINK:Lcom/pushwoosh/inbox/data/InboxMessageType;

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/pushwoosh/inbox/c/a;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/pushwoosh/inbox/data/InboxMessageType;->REMOTE_URL:Lcom/pushwoosh/inbox/data/InboxMessageType;

    return-object p0

    :cond_3
    sget-object p0, Lcom/pushwoosh/inbox/data/InboxMessageType;->PLAIN:Lcom/pushwoosh/inbox/data/InboxMessageType;

    return-object p0
.end method

.method public static d(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "title"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "inbox_params"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/os/Bundle;)Lcom/pushwoosh/inbox/data/InboxMessageType;
    .locals 0

    invoke-static {p0}, Lcom/pushwoosh/internal/utils/JsonUtils;->bundleToJsonWithUserData(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Lcom/pushwoosh/inbox/c/a;->d(Lorg/json/JSONObject;)Lcom/pushwoosh/inbox/data/InboxMessageType;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "Failed to parse inbox type form bundle"

    invoke-static {p0}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;)V

    sget-object p0, Lcom/pushwoosh/inbox/data/InboxMessageType;->PLAIN:Lcom/pushwoosh/inbox/data/InboxMessageType;

    return-object p0
.end method

.method public static g(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    const-string v0, "p"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
