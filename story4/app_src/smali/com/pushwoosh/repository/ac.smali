.class Lcom/pushwoosh/repository/ac;
.super Lcom/pushwoosh/internal/network/PushRequest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pushwoosh/internal/network/PushRequest<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Date;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/internal/network/PushRequest;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/repository/ac;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/pushwoosh/repository/ac;->b:Ljava/util/Date;

    iput-object p2, p0, Lcom/pushwoosh/repository/ac;->e:Ljava/math/BigDecimal;

    iput-object p3, p0, Lcom/pushwoosh/repository/ac;->d:Ljava/lang/String;

    const-wide/16 p1, 0x1

    iput-wide p1, p0, Lcom/pushwoosh/repository/ac;->c:J

    return-void
.end method


# virtual methods
.method protected buildParams(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/repository/ac;->a:Ljava/lang/String;

    const-string v1, "productIdentifier"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/pushwoosh/repository/ac;->b:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-string v2, "transactionDate"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-wide v0, p0, Lcom/pushwoosh/repository/ac;->c:J

    const-string v2, "quantity"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/pushwoosh/repository/ac;->d:Ljava/lang/String;

    const-string v1, "currency"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/pushwoosh/repository/ac;->e:Ljava/math/BigDecimal;

    const-string v1, "price"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "setPurchase"

    return-object v0
.end method
