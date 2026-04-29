.class final synthetic Lcom/pushwoosh/inapp/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/inapp/a/a$b;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/a/e;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/pushwoosh/inapp/a/a$b;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inapp/a/e;

    invoke-direct {v0, p0}, Lcom/pushwoosh/inapp/a/e;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/pushwoosh/internal/event/Event;)Z
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/a/e;->a:Ljava/lang/String;

    check-cast p1, Lcom/pushwoosh/inapp/view/d;

    invoke-static {v0, p1}, Lcom/pushwoosh/inapp/a/a;->a(Ljava/lang/String;Lcom/pushwoosh/inapp/view/d;)Z

    move-result p1

    return p1
.end method
