.class public Lcom/pushwoosh/repository/h;
.super Lcom/pushwoosh/repository/g;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/repository/g;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/repository/h;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lorg/json/JSONObject;)Lcom/pushwoosh/tags/TagsBundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/pushwoosh/repository/g;->a(Lorg/json/JSONObject;)Lcom/pushwoosh/tags/TagsBundle;

    move-result-object p1

    return-object p1
.end method

.method protected getHwid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getMethod()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/pushwoosh/repository/g;->getMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
