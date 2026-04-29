.class public Lcom/pushwoosh/inbox/internal/a/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/pushwoosh/inbox/internal/data/b;)V
    .locals 3

    invoke-virtual {p0}, Lcom/pushwoosh/inbox/internal/data/b;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pushwoosh/inbox/c/a;->a(Ljava/lang/String;)Lcom/pushwoosh/inbox/data/InboxMessageType;

    move-result-object v0

    sget-object v1, Lcom/pushwoosh/inbox/internal/a/c$1;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown inbox message type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/pushwoosh/inbox/internal/data/b;->i()Lcom/pushwoosh/inbox/data/InboxMessageType;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/pushwoosh/inbox/internal/a/e;

    invoke-direct {v0}, Lcom/pushwoosh/inbox/internal/a/e;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/pushwoosh/inbox/internal/a/a;

    invoke-direct {v0}, Lcom/pushwoosh/inbox/internal/a/a;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/pushwoosh/inbox/internal/a/g;

    invoke-direct {v0}, Lcom/pushwoosh/inbox/internal/a/g;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/pushwoosh/inbox/internal/a/f;

    invoke-direct {v0}, Lcom/pushwoosh/inbox/internal/a/f;-><init>()V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/pushwoosh/inbox/internal/a/d;

    invoke-direct {v0}, Lcom/pushwoosh/inbox/internal/a/d;-><init>()V

    :goto_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/pushwoosh/inbox/internal/data/b;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/pushwoosh/inbox/internal/a/b;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action params is invalid for inbox: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/pushwoosh/inbox/internal/data/b;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
