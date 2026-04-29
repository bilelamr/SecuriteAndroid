.class Lcom/pushwoosh/repository/g;
.super Lcom/pushwoosh/internal/network/PushRequest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pushwoosh/internal/network/PushRequest<",
        "Lcom/pushwoosh/tags/TagsBundle;",
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
.method public a(Lorg/json/JSONObject;)Lcom/pushwoosh/tags/TagsBundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/pushwoosh/tags/Tags;->fromJson(Lorg/json/JSONObject;)Lcom/pushwoosh/tags/TagsBundle;

    move-result-object p1

    return-object p1
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "getTags"

    return-object v0
.end method

.method public synthetic parseResponse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/pushwoosh/repository/g;->a(Lorg/json/JSONObject;)Lcom/pushwoosh/tags/TagsBundle;

    move-result-object p1

    return-object p1
.end method
