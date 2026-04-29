.class Lcom/pushwoosh/repository/o;
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


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/internal/network/PushRequest;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/repository/o;->a:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/pushwoosh/repository/o;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "hash"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "messageDeliveryEvent"

    return-object v0
.end method
