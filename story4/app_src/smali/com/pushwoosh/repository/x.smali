.class Lcom/pushwoosh/repository/x;
.super Lcom/pushwoosh/repository/a;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/repository/a;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/repository/x;->a:Ljava/lang/String;

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

    invoke-super {p0, p1}, Lcom/pushwoosh/repository/a;->buildParams(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/pushwoosh/repository/x;->a:Ljava/lang/String;

    const-string v1, "push_token"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/pushwoosh/internal/platform/utils/GeneralUtils;->getRawResourses()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v0, "sounds"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "registerDevice"

    return-object v0
.end method
