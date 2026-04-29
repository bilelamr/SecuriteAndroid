.class final synthetic Lcom/pushwoosh/inapp/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/inapp/a/a$b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/pushwoosh/inapp/a/a$a;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/pushwoosh/inapp/a/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/a/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/pushwoosh/inapp/a/f;->b:Lcom/pushwoosh/inapp/a/a$a;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/pushwoosh/inapp/a/a$a;)Lcom/pushwoosh/inapp/a/a$b;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inapp/a/f;

    invoke-direct {v0, p0, p1}, Lcom/pushwoosh/inapp/a/f;-><init>(Ljava/lang/String;Lcom/pushwoosh/inapp/a/a$a;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/pushwoosh/internal/event/Event;)Z
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inapp/a/f;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/pushwoosh/inapp/a/f;->b:Lcom/pushwoosh/inapp/a/a$a;

    check-cast p1, Lcom/pushwoosh/inapp/view/e;

    invoke-static {v0, v1, p1}, Lcom/pushwoosh/inapp/a/a;->a(Ljava/lang/String;Lcom/pushwoosh/inapp/a/a$a;Lcom/pushwoosh/inapp/view/e;)Z

    move-result p1

    return p1
.end method
