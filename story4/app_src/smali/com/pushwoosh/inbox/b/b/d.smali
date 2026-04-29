.class public Lcom/pushwoosh/inbox/b/b/d;
.super Lcom/pushwoosh/inbox/b/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pushwoosh/inbox/b/b/a<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLcom/pushwoosh/inbox/internal/data/InboxMessageStatus;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/inbox/b/b/a;-><init>()V

    iput-wide p1, p0, Lcom/pushwoosh/inbox/b/b/d;->a:J

    iput-object p3, p0, Lcom/pushwoosh/inbox/b/b/d;->b:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    iput-object p4, p0, Lcom/pushwoosh/inbox/b/b/d;->c:Ljava/lang/String;

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

    invoke-super {p0, p1}, Lcom/pushwoosh/internal/network/PushRequest;->buildParams(Lorg/json/JSONObject;)V

    iget-wide v0, p0, Lcom/pushwoosh/inbox/b/b/d;->a:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "inbox_code"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/pushwoosh/inbox/b/b/d;->b:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->getCode()I

    move-result v0

    const-string v1, "status"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/pushwoosh/inbox/b/b/d;->c:Ljava/lang/String;

    const-string v1, "hash"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "inboxStatus"

    return-object v0
.end method
