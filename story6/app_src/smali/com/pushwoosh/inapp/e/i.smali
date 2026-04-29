.class Lcom/pushwoosh/inapp/e/i;
.super Lcom/pushwoosh/internal/network/PushRequest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pushwoosh/internal/network/PushRequest<",
        "Lcom/pushwoosh/inapp/e/j;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/pushwoosh/tags/TagsBundle;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/pushwoosh/tags/TagsBundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/internal/network/PushRequest;-><init>()V

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/pushwoosh/tags/Tags;->empty()Lcom/pushwoosh/tags/TagsBundle;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lcom/pushwoosh/inapp/e/i;->b:Lcom/pushwoosh/tags/TagsBundle;

    iput-object p2, p0, Lcom/pushwoosh/inapp/e/i;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/pushwoosh/inapp/e/i;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/pushwoosh/inapp/e/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/pushwoosh/inapp/e/j;

    invoke-direct {v0, p1}, Lcom/pushwoosh/inapp/e/j;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method protected buildParams(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/inapp/e/i;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/pushwoosh/tags/TagsBundle$Builder;

    invoke-direct {v0}, Lcom/pushwoosh/tags/TagsBundle$Builder;-><init>()V

    iget-object v1, p0, Lcom/pushwoosh/inapp/e/i;->b:Lcom/pushwoosh/tags/TagsBundle;

    invoke-virtual {v1}, Lcom/pushwoosh/tags/TagsBundle;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/tags/TagsBundle$Builder;->putAll(Lorg/json/JSONObject;)Lcom/pushwoosh/tags/TagsBundle$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/inapp/e/i;->a:Ljava/lang/String;

    const-string v2, "msgHash"

    invoke-virtual {v0, v2, v1}, Lcom/pushwoosh/tags/TagsBundle$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/pushwoosh/tags/TagsBundle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/tags/TagsBundle$Builder;->build()Lcom/pushwoosh/tags/TagsBundle;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inapp/e/i;->b:Lcom/pushwoosh/tags/TagsBundle;

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/inapp/e/i;->b:Lcom/pushwoosh/tags/TagsBundle;

    invoke-virtual {v0}, Lcom/pushwoosh/tags/TagsBundle;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "attributes"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/pushwoosh/inapp/e/i;->c:Ljava/lang/String;

    const-string v1, "event"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    int-to-long v3, v0

    add-long/2addr v3, v1

    const-string v0, "timestampUTC"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "timestampCurrent"

    invoke-virtual {p1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-void
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "postEvent"

    return-object v0
.end method

.method public synthetic parseResponse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inapp/e/i;->a(Lorg/json/JSONObject;)Lcom/pushwoosh/inapp/e/j;

    move-result-object p1

    return-object p1
.end method
