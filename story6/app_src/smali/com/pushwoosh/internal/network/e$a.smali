.class Lcom/pushwoosh/internal/network/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/internal/network/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(IILorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/pushwoosh/internal/network/e$a;->b:I

    iput p2, p0, Lcom/pushwoosh/internal/network/e$a;->a:I

    iput-object p3, p0, Lcom/pushwoosh/internal/network/e$a;->c:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lcom/pushwoosh/internal/network/e$a;->b:I

    return v0
.end method

.method b()I
    .locals 1

    iget v0, p0, Lcom/pushwoosh/internal/network/e$a;->a:I

    return v0
.end method

.method c()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/internal/network/e$a;->c:Lorg/json/JSONObject;

    return-object v0
.end method
