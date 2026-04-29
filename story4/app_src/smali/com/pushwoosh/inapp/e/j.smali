.class public Lcom/pushwoosh/inapp/e/j;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/pushwoosh/inapp/e/b/b;

.field private final c:Z


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inapp/e/j;->a:Ljava/lang/String;

    const-string v0, "required"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/pushwoosh/inapp/e/j;->c:Z

    iget-object p1, p0, Lcom/pushwoosh/inapp/e/j;->a:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/pushwoosh/inapp/b;->b()Lcom/pushwoosh/inapp/f/d;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/inapp/e/j;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/pushwoosh/inapp/f/d;->a(Ljava/lang/String;)Lcom/pushwoosh/inapp/e/b/b;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/inapp/e/j;->b:Lcom/pushwoosh/inapp/e/b/b;

    goto :goto_1

    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/pushwoosh/inapp/e/j;->b:Lcom/pushwoosh/inapp/e/b/b;

    :goto_1
    return-void
.end method


# virtual methods
.method public a()Lcom/pushwoosh/inapp/e/b/b;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/e/j;->b:Lcom/pushwoosh/inapp/e/b/b;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/e/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pushwoosh/inapp/e/j;->c:Z

    return v0
.end method
