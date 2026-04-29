.class Lcom/pushwoosh/inbox/internal/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/inbox/internal/a/b;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p1}, Lcom/pushwoosh/inbox/c/a;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/pushwoosh/internal/richmedia/ResourceAction;->performRemoteUrlAction(Ljava/lang/String;)V

    return-void
.end method
