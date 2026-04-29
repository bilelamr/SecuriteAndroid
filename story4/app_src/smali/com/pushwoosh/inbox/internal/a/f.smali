.class Lcom/pushwoosh/inbox/internal/a/f;
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

    invoke-static {p1}, Lcom/pushwoosh/inbox/c/a;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Incorrect richMedia action"

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/pushwoosh/internal/richmedia/ResourceAction;->performRichMediaAction(Ljava/lang/String;)V

    return-void
.end method
