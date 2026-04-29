.class public Lcom/pushwoosh/internal/network/a;
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

.field private b:Ljava/lang/String;

.field private c:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/internal/network/PushRequest;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/internal/network/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/pushwoosh/internal/network/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/pushwoosh/internal/network/a;->c:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/internal/network/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/internal/network/a;->c:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/internal/network/a;->b:Ljava/lang/String;

    return-object v0
.end method
