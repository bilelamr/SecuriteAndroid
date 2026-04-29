.class public Lcom/pushwoosh/inbox/b/b/b;
.super Lcom/pushwoosh/inbox/b/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pushwoosh/inbox/b/b/a<",
        "Lcom/pushwoosh/inbox/b/b/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/inbox/b/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/pushwoosh/inbox/b/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/pushwoosh/inbox/b/b/c;

    invoke-direct {v0, p1}, Lcom/pushwoosh/inbox/b/b/c;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "getInboxMessages"

    return-object v0
.end method

.method public synthetic parseResponse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/b/b/b;->a(Lorg/json/JSONObject;)Lcom/pushwoosh/inbox/b/b/c;

    move-result-object p1

    return-object p1
.end method
