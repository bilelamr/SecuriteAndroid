.class final synthetic Lcom/pushwoosh/inapp/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/inapp/a/a$c;


# instance fields
.field private final a:Lcom/pushwoosh/inapp/a/i;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inapp/a/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/a/m;->a:Lcom/pushwoosh/inapp/a/i;

    return-void
.end method

.method public static a(Lcom/pushwoosh/inapp/a/i;)Lcom/pushwoosh/inapp/a/a$c;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inapp/a/m;

    invoke-direct {v0, p0}, Lcom/pushwoosh/inapp/a/m;-><init>(Lcom/pushwoosh/inapp/a/i;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/a/m;->a:Lcom/pushwoosh/inapp/a/i;

    invoke-static {v0}, Lcom/pushwoosh/inapp/a/i;->b(Lcom/pushwoosh/inapp/a/i;)Z

    move-result v0

    return v0
.end method
