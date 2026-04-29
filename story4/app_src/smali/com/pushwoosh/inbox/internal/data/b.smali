.class public Lcom/pushwoosh/inbox/internal/data/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/inbox/internal/data/b$b;,
        Lcom/pushwoosh/inbox/internal/data/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/pushwoosh/inbox/internal/data/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Lcom/pushwoosh/inbox/data/InboxMessageType;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

.field private final m:Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;


# direct methods
.method private constructor <init>(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pushwoosh/inbox/data/InboxMessageType;Ljava/lang/String;Ljava/lang/String;Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/pushwoosh/inbox/internal/data/b;->a:Ljava/lang/String;

    move-wide v1, p2

    iput-wide v1, v0, Lcom/pushwoosh/inbox/internal/data/b;->b:J

    move-wide v1, p4

    iput-wide v1, v0, Lcom/pushwoosh/inbox/internal/data/b;->c:J

    move-wide v1, p6

    iput-wide v1, v0, Lcom/pushwoosh/inbox/internal/data/b;->d:J

    move-object v1, p8

    iput-object v1, v0, Lcom/pushwoosh/inbox/internal/data/b;->e:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/pushwoosh/inbox/internal/data/b;->f:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/pushwoosh/inbox/internal/data/b;->g:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/pushwoosh/inbox/internal/data/b;->h:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/pushwoosh/inbox/internal/data/b;->i:Lcom/pushwoosh/inbox/data/InboxMessageType;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/pushwoosh/inbox/internal/data/b;->j:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/pushwoosh/inbox/internal/data/b;->k:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/pushwoosh/inbox/internal/data/b;->l:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/pushwoosh/inbox/internal/data/b;->m:Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pushwoosh/inbox/data/InboxMessageType;Ljava/lang/String;Ljava/lang/String;Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;Lcom/pushwoosh/inbox/internal/data/b$1;)V
    .locals 0

    invoke-direct/range {p0 .. p16}, Lcom/pushwoosh/inbox/internal/data/b;-><init>(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pushwoosh/inbox/data/InboxMessageType;Ljava/lang/String;Ljava/lang/String;Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/pushwoosh/inbox/internal/data/b;)I
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/inbox/internal/data/b;->m:Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;

    iget-object v1, p1, Lcom/pushwoosh/inbox/internal/data/b;->m:Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;->compare(Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/pushwoosh/inbox/internal/data/b;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p1, Lcom/pushwoosh/inbox/internal/data/b;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/pushwoosh/inbox/internal/data/b;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p1, Lcom/pushwoosh/inbox/internal/data/b;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    :cond_1
    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/pushwoosh/inbox/internal/data/b;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v2, p1, Lcom/pushwoosh/inbox/internal/data/b;->f:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/pushwoosh/inbox/internal/data/b;->f:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/pushwoosh/inbox/internal/data/b;->f:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/pushwoosh/inbox/internal/data/b;->f:Ljava/lang/String;

    if-eqz v1, :cond_4

    const/4 v0, -0x1

    :cond_4
    :goto_0
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/pushwoosh/inbox/internal/data/b;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/pushwoosh/inbox/internal/data/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_5
    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/internal/data/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/pushwoosh/inbox/internal/data/b;->b:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/pushwoosh/inbox/internal/data/b;->c:J

    return-wide v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/pushwoosh/inbox/internal/data/b;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/internal/data/b;->a(Lcom/pushwoosh/inbox/internal/data/b;)I

    move-result p1

    return p1
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/pushwoosh/inbox/internal/data/b;->d:J

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/internal/data/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-class v2, Lcom/pushwoosh/inbox/internal/data/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/pushwoosh/inbox/internal/data/b;

    iget-object v2, p0, Lcom/pushwoosh/inbox/internal/data/b;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/pushwoosh/inbox/internal/data/b;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/internal/data/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/internal/data/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/internal/data/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/internal/data/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Lcom/pushwoosh/inbox/data/InboxMessageType;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/internal/data/b;->i:Lcom/pushwoosh/inbox/data/InboxMessageType;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/internal/data/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/internal/data/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/internal/data/b;->l:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    return-object v0
.end method

.method public m()Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/internal/data/b;->m:Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;

    return-object v0
.end method

.method n()Z
    .locals 4

    sget-object v0, Lcom/pushwoosh/inbox/internal/data/b$1;->a:[I

    iget-object v1, p0, Lcom/pushwoosh/inbox/internal/data/b;->l:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    :cond_0
    return v2

    :cond_1
    return v1

    :cond_2
    return v2
.end method

.method o()Z
    .locals 4

    sget-object v0, Lcom/pushwoosh/inbox/internal/data/b$1;->a:[I

    iget-object v1, p0, Lcom/pushwoosh/inbox/internal/data/b;->l:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    :cond_0
    return v2

    :cond_1
    return v1

    :cond_2
    return v2
.end method

.method public p()Z
    .locals 4

    sget-object v0, Lcom/pushwoosh/inbox/internal/data/b$1;->a:[I

    iget-object v1, p0, Lcom/pushwoosh/inbox/internal/data/b;->l:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    return v1
.end method

.method public q()Ljava/lang/String;
    .locals 4

    const-string v0, "md"

    iget-object v1, p0, Lcom/pushwoosh/inbox/internal/data/b;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/pushwoosh/inbox/internal/data/b;->j:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;)V

    :cond_1
    return-object v2
.end method
