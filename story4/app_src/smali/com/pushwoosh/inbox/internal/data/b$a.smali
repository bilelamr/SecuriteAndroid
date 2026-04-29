.class public Lcom/pushwoosh/inbox/internal/data/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/inbox/internal/data/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/pushwoosh/inbox/data/InboxMessageType;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

.field private m:Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)Lcom/pushwoosh/inbox/internal/data/b$a;
    .locals 0

    iput-wide p1, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->b:J

    return-object p0
.end method

.method public a(Landroid/os/Bundle;)Lcom/pushwoosh/inbox/internal/data/b$a;
    .locals 4

    const-string v0, "rt"

    const-string v1, "image"

    invoke-static {p1}, Lcom/pushwoosh/inbox/c/a;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->b:J

    invoke-static {p1}, Lcom/pushwoosh/inbox/c/a;->b(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/pushwoosh/inbox/c/a;->d(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->g:Ljava/lang/String;

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/pushwoosh/inbox/c/a;->e(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->h:Ljava/lang/String;

    :cond_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->c:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Problem with parsing inboxParams"

    invoke-static {v1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1}, Lcom/pushwoosh/inbox/c/a;->c(Landroid/os/Bundle;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->d:J

    invoke-static {p1}, Lcom/pushwoosh/inbox/c/a;->f(Landroid/os/Bundle;)Lcom/pushwoosh/inbox/data/InboxMessageType;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->i:Lcom/pushwoosh/inbox/data/InboxMessageType;

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/JsonUtils;->bundleToJsonWithUserData(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->j:Ljava/lang/String;

    invoke-static {p1}, Lcom/pushwoosh/inbox/c/a;->g(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->e:Ljava/lang/String;

    sget-object p1, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->DELIVERED:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    iput-object p1, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->l:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    sget-object p1, Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;->PUSH:Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;

    iput-object p1, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->m:Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;

    return-object p0
.end method

.method public a(Lcom/pushwoosh/inbox/data/InboxMessage;)Lcom/pushwoosh/inbox/internal/data/b$a;
    .locals 2

    invoke-interface {p1}, Lcom/pushwoosh/inbox/data/InboxMessage;->getCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->b:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->c:J

    invoke-interface {p1}, Lcom/pushwoosh/inbox/data/InboxMessage;->getSendDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->d:J

    invoke-interface {p1}, Lcom/pushwoosh/inbox/data/InboxMessage;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->f:Ljava/lang/String;

    invoke-interface {p1}, Lcom/pushwoosh/inbox/data/InboxMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->g:Ljava/lang/String;

    invoke-interface {p1}, Lcom/pushwoosh/inbox/data/InboxMessage;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->h:Ljava/lang/String;

    invoke-interface {p1}, Lcom/pushwoosh/inbox/data/InboxMessage;->getType()Lcom/pushwoosh/inbox/data/InboxMessageType;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->i:Lcom/pushwoosh/inbox/data/InboxMessageType;

    invoke-interface {p1}, Lcom/pushwoosh/inbox/data/InboxMessage;->isActionPerformed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->OPEN:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/pushwoosh/inbox/data/InboxMessage;->isRead()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->READ:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->DELIVERED:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    :goto_0
    iput-object p1, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->l:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    const-string p1, ""

    iput-object p1, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->j:Ljava/lang/String;

    sget-object v0, Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;->SERVICE:Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;

    iput-object v0, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->m:Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;

    iput-object p1, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lcom/pushwoosh/inbox/data/InboxMessageType;)Lcom/pushwoosh/inbox/internal/data/b$a;
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->i:Lcom/pushwoosh/inbox/data/InboxMessageType;

    return-object p0
.end method

.method public a(Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;)Lcom/pushwoosh/inbox/internal/data/b$a;
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->m:Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;

    return-object p0
.end method

.method public a(Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;)Lcom/pushwoosh/inbox/internal/data/b$a;
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->l:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/pushwoosh/inbox/internal/data/b$a;
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/pushwoosh/inbox/internal/data/b$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/pushwoosh/inbox/internal/data/b$b;
        }
    .end annotation

    const-string v0, "inbox_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "order"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "rt"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "text"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "action_type"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "status"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->b:J

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->c:J

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->g:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/pushwoosh/inbox/data/InboxMessageType;->getByCode(I)Lcom/pushwoosh/inbox/data/InboxMessageType;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->i:Lcom/pushwoosh/inbox/data/InboxMessageType;

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->getByCode(I)Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->l:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    const-string v0, "send_date"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->d:J

    :cond_0
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->f:Ljava/lang/String;

    :cond_1
    const-string v0, "image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->h:Ljava/lang/String;

    :cond_2
    const-string v0, "action_params"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/pushwoosh/inbox/internal/data/b$a;->g(Ljava/lang/String;)Lcom/pushwoosh/inbox/internal/data/b$a;

    :cond_3
    const-string v0, "hash"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->e:Ljava/lang/String;

    :cond_4
    sget-object p1, Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;->SERVICE:Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;

    iput-object p1, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->m:Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;

    return-object p0

    :cond_5
    new-instance p1, Lcom/pushwoosh/inbox/internal/data/b$b;

    invoke-direct {p1}, Lcom/pushwoosh/inbox/internal/data/b$b;-><init>()V

    throw p1
.end method

.method public a()Lcom/pushwoosh/inbox/internal/data/b;
    .locals 21

    move-object/from16 v0, p0

    new-instance v19, Lcom/pushwoosh/inbox/internal/data/b;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/pushwoosh/inbox/internal/data/b$a;->a:Ljava/lang/String;

    iget-wide v3, v0, Lcom/pushwoosh/inbox/internal/data/b$a;->b:J

    iget-wide v5, v0, Lcom/pushwoosh/inbox/internal/data/b$a;->c:J

    iget-wide v7, v0, Lcom/pushwoosh/inbox/internal/data/b$a;->d:J

    iget-object v9, v0, Lcom/pushwoosh/inbox/internal/data/b$a;->e:Ljava/lang/String;

    iget-object v10, v0, Lcom/pushwoosh/inbox/internal/data/b$a;->f:Ljava/lang/String;

    iget-object v11, v0, Lcom/pushwoosh/inbox/internal/data/b$a;->g:Ljava/lang/String;

    iget-object v12, v0, Lcom/pushwoosh/inbox/internal/data/b$a;->h:Ljava/lang/String;

    iget-object v13, v0, Lcom/pushwoosh/inbox/internal/data/b$a;->i:Lcom/pushwoosh/inbox/data/InboxMessageType;

    iget-object v14, v0, Lcom/pushwoosh/inbox/internal/data/b$a;->j:Ljava/lang/String;

    iget-object v15, v0, Lcom/pushwoosh/inbox/internal/data/b$a;->k:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/pushwoosh/inbox/internal/data/b$a;->l:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/pushwoosh/inbox/internal/data/b$a;->m:Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;

    move-object/from16 v17, v1

    const/16 v18, 0x0

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v18}, Lcom/pushwoosh/inbox/internal/data/b;-><init>(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pushwoosh/inbox/data/InboxMessageType;Ljava/lang/String;Ljava/lang/String;Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;Lcom/pushwoosh/inbox/internal/data/b$1;)V

    return-object v19
.end method

.method public b(J)Lcom/pushwoosh/inbox/internal/data/b$a;
    .locals 0

    iput-wide p1, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->c:J

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/pushwoosh/inbox/internal/data/b$a;
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public c(J)Lcom/pushwoosh/inbox/internal/data/b$a;
    .locals 0

    iput-wide p1, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->d:J

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/pushwoosh/inbox/internal/data/b$a;
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/pushwoosh/inbox/internal/data/b$a;
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/pushwoosh/inbox/internal/data/b$a;
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/pushwoosh/inbox/internal/data/b$a;
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->j:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/internal/data/b$a;->g(Ljava/lang/String;)Lcom/pushwoosh/inbox/internal/data/b$a;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/pushwoosh/inbox/internal/data/b$a;
    .locals 2

    const-string v0, "b"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/inbox/internal/data/b$a;->k:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p0
.end method
