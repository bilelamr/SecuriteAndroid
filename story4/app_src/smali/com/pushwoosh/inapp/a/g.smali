.class public Lcom/pushwoosh/inapp/a/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/pushwoosh/inapp/e/b/b;)Lcom/pushwoosh/inapp/a/g;
    .locals 3

    new-instance v0, Lcom/pushwoosh/inapp/a/g;

    invoke-direct {v0}, Lcom/pushwoosh/inapp/a/g;-><init>()V

    invoke-virtual {p0}, Lcom/pushwoosh/inapp/e/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pushwoosh/inapp/a/g;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/pushwoosh/inapp/e/b/b;->d()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/pushwoosh/inapp/a/g;->b:J

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/pushwoosh/inapp/a/g;
    .locals 3

    new-instance v0, Lcom/pushwoosh/inapp/a/g;

    invoke-direct {v0}, Lcom/pushwoosh/inapp/a/g;-><init>()V

    const-string v1, "code"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pushwoosh/inapp/a/g;->a:Ljava/lang/String;

    const-string v1, "updated"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/pushwoosh/inapp/a/g;->b:J

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/a/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/pushwoosh/inapp/a/g;->b:J

    return-wide v0
.end method
